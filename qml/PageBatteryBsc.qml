import QtQuick 1.1
import com.victron.velib 1.0

MbPage {
	id: root
	property VBusItem _bms0CellVolt: VBusItem { bind: service.path("/bsc/bms0/Voltages/Cell1") }
	property VBusItem _bms1CellVolt: VBusItem { bind: service.path("/bsc/bms1/Voltages/Cell1") }
	property VBusItem _bms2CellVolt: VBusItem { bind: service.path("/bsc/bms2/Voltages/Cell1") }
	property VBusItem _bms3CellVolt: VBusItem { bind: service.path("/bsc/bms3/Voltages/Cell1") }
	property VBusItem _bms4CellVolt: VBusItem { bind: service.path("/bsc/bms4/Voltages/Cell1") }
	property VBusItem _bms5CellVolt: VBusItem { bind: service.path("/bsc/bms5/Voltages/Cell1") }
	property VBusItem _bms6CellVolt: VBusItem { bind: service.path("/bsc/bms6/Voltages/Cell1") }
	property VBusItem _bms7CellVolt: VBusItem { bind: service.path("/bsc/bms7/Voltages/Cell1") }
	property VBusItem _bms8CellVolt: VBusItem { bind: service.path("/bsc/bms8/Voltages/Cell1") }
	property VBusItem _bms9CellVolt: VBusItem { bind: service.path("/bsc/bms9/Voltages/Cell1") }
	property VBusItem _bms10CellVolt: VBusItem { bind: service.path("/bsc/bms10/Voltages/Cell1") }
	property VBusItem _bms11CellVolt: VBusItem { bind: service.path("/bsc/bms11/Voltages/Cell1") }
	property VBusItem _bms12CellVolt: VBusItem { bind: service.path("/bsc/bms12/Voltages/Cell1") }
	property VBusItem _bms13CellVolt: VBusItem { bind: service.path("/bsc/bms13/Voltages/Cell1") }
	property VBusItem _bms14CellVolt: VBusItem { bind: service.path("/bsc/bms14/Voltages/Cell1") }
	property VBusItem _bms15CellVolt: VBusItem { bind: service.path("/bsc/bms15/Voltages/Cell1") }
	property VBusItem _bms16CellVolt: VBusItem { bind: service.path("/bsc/bms16/Voltages/Cell1") }
	property VBusItem _bms17CellVolt: VBusItem { bind: service.path("/bsc/bms17/Voltages/Cell1") }
	
	property string bindPrefix
	title: service.description

	model: VisualItemModel {
		MbSubMenu {
			description: qsTr("Temperature")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscTemp {
					bindPrefix: service.path("")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 0")
			show: _bms0CellVolt.value>0.0 && _bms0CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms0")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 1")
			show: _bms1CellVolt.value>0.0 && _bms1CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms1")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 2")
			show: _bms2CellVolt.value>0.0 && _bms2CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms2")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 3")
			show: _bms3CellVolt.value>0.0 && _bms3CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms3")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 4")
			show: _bms4CellVolt.value>0.0 && _bms4CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms4")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 5")
			show: _bms5CellVolt.value>0.0 && _bms5CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms5")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 6")
			show: _bms6CellVolt.value>0.0 && _bms6CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms6")
				}				
			}
		}

		
		MbSubMenu {
			description: qsTr("BMS serial 0")
			show: _bms7CellVolt.value>0.0 && _bms7CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms7")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 1")
			show: _bms8CellVolt.value>0.0 && _bms8CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms8")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 2")
			show: _bms9CellVolt.value>0.0 && _bms9CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms9")
				}				
			}
		}
		
		MbSubMenu {
			description: qsTr("BMS serial 3")
			show: _bms10CellVolt.value>0.0 && _bms10CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms10")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 4")
			show: _bms11CellVolt.value>0.0 && _bms11CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms11")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 5")
			show: _bms12CellVolt.value>0.0 && _bms12CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms12")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 6")
			show: _bms13CellVolt.value>0.0 && _bms13CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms13")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 7")
			show: _bms14CellVolt.value>0.0 && _bms14CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms14")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 8")
			show: _bms15CellVolt.value>0.0 && _bms15CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms15")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 9")
			show: _bms16CellVolt.value>0.0 && _bms16CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms16")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 10")
			show: _bms17CellVolt.value>0.0 && _bms17CellVolt.value<65.0
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms17")
				}				
			}
		}
	}
}
