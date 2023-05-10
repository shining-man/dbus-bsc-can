#!/bin/sh

# install pip
if [ ! -f /usr/bin/pip3 ] 
then
    #curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
	#python get-pip.py
	
	opkg update
    opkg install python3-pip
fi

# install python-can
pip3 install python-can

cp -f -r dbus-bsc-can-main /data/dbus-bsc-can

# set permissions for script files
chmod a+x /data/dbus-bsc-can/service/run
chmod 755 /data/dbus-bsc-can/service/run

# create sym-link to run script in deamon
ln -s /data/dbus-bsc-can/service /service/dbus-bsc-can

# add install-script to rc.local to be ready for firmware update
filename=/data/rc.local
if [ ! -f $filename ]
then
    touch $filename
    chmod 755 $filename
    echo "#!/bin/bash" >> $filename
    echo >> $filename
fi


#copy new qml files
cp -f /data/dbus-bsc-can/qml/PageBattery.qml /opt/victronenergy/gui/qml/
cp -f /data/dbus-bsc-can/qml/PageBatteryBsc.qml /opt/victronenergy/gui/qml/
cp -f /data/dbus-bsc-can/qml/PageBatteryBscBms.qml /opt/victronenergy/gui/qml/
cp -f /data/dbus-bsc-can/qml/PageBatteryBscTemp.qml /opt/victronenergy/gui/qml/


#delete download data
rm main.zip
rm -r dbus-bsc-can-main


#stop gui
svc -d /service/gui

#sleep 1 sec
sleep 1

#start gui
svc -u /service/gui




