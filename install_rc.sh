#!/bin/sh

echo "Install..."


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

grep -qxF "/data/dbus-bsc-can/install_rc.sh" $filename || echo "/data/dbus-bsc-can/install_rc.sh" >> $filename

#copy new qml files
cp -f /data/dbus-bsc-can/qml/PageBattery.qml /opt/victronenergy/gui/qml/
cp -f /data/dbus-bsc-can/qml/PageBatteryBsc.qml /opt/victronenergy/gui/qml/
cp -f /data/dbus-bsc-can/qml/PageBatteryBscBms.qml /opt/victronenergy/gui/qml/
cp -f /data/dbus-bsc-can/qml/PageBatteryBscTemp.qml /opt/victronenergy/gui/qml/


#stop gui
svc -d /service/gui

#sleep 1 sec
sleep 1

#start gui
svc -u /service/gui




