# VenusOS driver for the BSC (Battery safety controller)

Driver to display additional data of the BSC in VictronOS.<br>
The prerequisite is a CAN connection between the BSC and the VenusOS.<br><br>

The following data is displayed under 'BSC Details':
- Temperatures of the 64 OneWire sensors-
- Cell voltages of all BMSs (7x Bluetooth, 11x serial)
- FET state of the BMSs
- Balance state + current of the BMSs<br>

## Installation
```bash
wget https://github.com/shining-man/dbus-bsc-can/archive/main.zip
unzip main.zip
chmod 755 dbus-bsc-can-main/install.sh
./dbus-bsc-can-main/install.sh
```

Edit the CAN device name
```bash
nano /data/dbus-bsc-can/config.ini 
```

