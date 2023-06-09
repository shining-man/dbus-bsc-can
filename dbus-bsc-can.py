#!/usr/bin/env python3

from gi.repository import GLib
import platform
import argparse
import logging
import sys
import os
import dbus
from array import *
import time
import configparser
import can


if sys.version_info.major == 2:
    import gobject
else:
    from gi.repository import GLib as gobject
    
# our own packages
sys.path.insert(1, os.path.join(os.path.dirname(__file__), '/opt/victronenergy/dbus-systemcalc-py/ext/velib_python'))
from vedbus import VeDbusService


bsc_temp = [0 for x in range(64)] 

bsc_cellVoltage = [[0 for x in range(16)] for y in range(20)] 
stateFETCharge = [0 for x in range(20)] 
stateFETDischarge = [0 for x in range(20)] 
stateBalancingActive = [0 for x in range(20)] 
balancingCurrent = [0 for x in range(20)] 

  
def parseData(message):
    canId = message.arbitration_id
    
    if len(message.data) == 0:
        logging.info("id=%i, len=0", canId)
        return
        
    try:
        #canId = message.arbitration_id
        
        #Temperaturen
        if canId>=0x380 and canId<0x38f:
            tempSensNr=(canId-0x380)*4
            for i in range(4):
                bsc_temp[tempSensNr+i] = ((message.data[(i*2)+1]<<8) | message.data[i*2])/100.0
            return
            
        #BMS data
        for bmsNr in range(18):
            candIdStart = 0x400+(0x32*bmsNr)
            #candIdEnd = 0x400+0x32+(0x32*bmsNr)
            
            #Cellvoltages
            if canId>=candIdStart and canId<candIdStart+4:
                cellNr=(canId-0x400-(0x32*bmsNr))*4
                for i in range(4):
                    bsc_cellVoltage[bmsNr][cellNr+i] = ((message.data[(i*2)+1]<<8) | message.data[i*2])/1000.0
                    
            #Ohter data
            candIdStart=candIdStart+4
            if canId>=candIdStart and canId<candIdStart+1:     
                stateFETCharge[bmsNr] = message.data[0]
                stateFETDischarge[bmsNr] = message.data[1]
                stateBalancingActive[bmsNr] = message.data[2]
                    
            #Ohter data
            candIdStart=candIdStart+1
            if canId>=candIdStart and canId<candIdStart+1:     
                balancingCurrent[bmsNr] = ((message.data[1]<<8) | message.data[0])/100.0

        return
          
    except Exception as e:
       logging.critical('Error at %s', 'parseData', exc_info=e)
       logging.critical('canId %i, %i', canId, len(message.data))
       return  
            
def get_bus():
    return (
        dbus.SessionBus()
        if "DBUS_SESSION_BUS_ADDRESS" in os.environ
        else dbus.SystemBus()
    )

    
class DbusBscService(object):
    def __init__(self, servicename, deviceinstance, productname='BSC Details', connection='BSC service'):
        #self._dbusservice = VeDbusService(servicename)

        self._dbusservice = VeDbusService(
            servicename,
            get_bus()
        )
        
        logging.debug("%s /DeviceInstance = %d" % (servicename, deviceinstance))

        # Create the management objects, as specified in the ccgx dbus-api document
        self._dbusservice.add_path('/Mgmt/ProcessName', __file__)
        self._dbusservice.add_path('/Mgmt/ProcessVersion', 'Python ' + platform.python_version())
        self._dbusservice.add_path('/Mgmt/Connection', connection)

        # Create the mandatory objects
        self._dbusservice.add_path('/DeviceInstance', deviceinstance)
        self._dbusservice.add_path('/ProductId', 0)
        self._dbusservice.add_path('/ProductName', productname)
        self._dbusservice.add_path('/FirmwareVersion', 1)
        self._dbusservice.add_path('/HardwareVersion', 1)
        self._dbusservice.add_path('/Connected', 1)
    
        #Temperatures
        for i in range(64):
            temppath = '/bsc/Temp' + str(i+1)
            self._dbusservice.add_path(temppath, None, writeable=True, gettextcallback=lambda p, v: "{:1.2f}°C".format(v))
            
        #BMS
        for n in range(7+3+8):
            for i in range(16):
                cellpath = '/bsc/bms' + str(n) + '/Voltages/Cell' + str(i+1)
                self._dbusservice.add_path(cellpath, None, writeable=True, gettextcallback=lambda p, v: "{:1.3f}V".format(v))
                
            cellpath = '/bsc/bms' + str(n) + '/StateFETCharge'
            self._dbusservice.add_path(cellpath, None, writeable=True)
                
            cellpath = '/bsc/bms' + str(n) + '/StateFETDischarge'
            self._dbusservice.add_path(cellpath, None, writeable=True)
                
            cellpath = '/bsc/bms' + str(n) + '/StateBalancingActive'
            self._dbusservice.add_path(cellpath, None, writeable=True)
                
            cellpath = '/bsc/bms' + str(n) + '/BalancingCurrent'
            self._dbusservice.add_path(cellpath, None, writeable=True, gettextcallback=lambda p, v: "{:1.1f}A".format(v))
                
        GLib.timeout_add(10000, self._update)


    def _update(self):
        try:
            #BMS
            for i in range(7+3+8):                    
                for n in range(16):
                    temppath = '/bsc/bms' + str(i) + '/Voltages/Cell' + str(n+1)
                    self._dbusservice[temppath] = bsc_cellVoltage[i][n]
        
                temppath = '/bsc/bms' + str(i) + '/StateFETCharge'
                self._dbusservice[temppath] = "Off" if stateFETCharge[i] == 0 else "On"
                
                temppath = '/bsc/bms' + str(i) + '/StateFETDischarge'
                self._dbusservice[temppath] = "Off" if stateFETDischarge[i] == 0 else "On"
                
                temppath = '/bsc/bms' + str(i) + '/StateBalancingActive'
                self._dbusservice[temppath] = "Off" if stateBalancingActive[i] == 0 else "On"
                
                temppath = '/bsc/bms' + str(i) + '/BalancingCurrent'
                self._dbusservice[temppath] = balancingCurrent[i]
  
            #Temp
            for i in range(64):
                temppath = '/bsc/Temp' + str(i+1)
                self._dbusservice[temppath] = bsc_temp[i]
          
            self._lastUpdate = time.time() 

        except Exception as e:
           logging.critical('Error at %s', '_update_', exc_info=e)
           return True
       
        return True



    def _handlechangedvalue(self, path, value):
        logging.debug("someone else updated %s to %s" % (path, value))
        return True # accept the change


def getConfig():
    config = configparser.ConfigParser()
    config.read("%s/config.ini" % (os.path.dirname(os.path.realpath(__file__))))
    return config;
    
def main():
    logging.basicConfig(filename='dbus-bsc-can.log', level=logging.INFO)
    
    config = getConfig()
    canDevice = config['DEFAULT']['canDevice']    
    logging.info('CAN device: %s', canDevice)
    
    bus = can.interface.Bus(interface='socketcan', channel=canDevice)
    notifier = can.Notifier(bus,[parseData])

    from dbus.mainloop.glib import DBusGMainLoop
    DBusGMainLoop(set_as_default=True)
      
    bsc_output = DbusBscService(
        servicename='com.victronenergy.battery.bsc',
        deviceinstance=1)

    logging.info('Connected to dbus, and switching over to GLib.MainLoop() (= event based)')
    mainloop = GLib.MainLoop()
    try:
        mainloop.run()
    except KeyboardInterrupt:
        pass

if __name__ == "__main__":
    main()
