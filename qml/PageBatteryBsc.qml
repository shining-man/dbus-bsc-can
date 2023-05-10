import QtQuick 1.1
import com.victron.velib 1.0

MbPage {
	id: root
	property string c1: _b1.valid && _b1.text == "1" ? "#ff0000" : "#ddd"
	property string c2: _b2.valid && _b2.text == "1" ? "#ff0000" : "#ddd"
	property string c3: _b3.valid && _b3.text == "1" ? "#ff0000" : "#ddd"
	property string c4: _b4.valid && _b4.text == "1" ? "#ff0000" : "#ddd"
	property string c5: _b5.valid && _b5.text == "1" ? "#ff0000" : "#ddd"
	property string c6: _b6.valid && _b6.text == "1" ? "#ff0000" : "#ddd"
	property string c7: _b7.valid && _b7.text == "1" ? "#ff0000" : "#ddd"
	property string c8: _b8.valid && _b8.text == "1" ? "#ff0000" : "#ddd"
	property string c9: _b9.valid && _b9.text == "1" ? "#ff0000" : "#ddd"
	property string c10: _b10.valid && _b10.text == "1" ? "#ff0000" : "#ddd"
	property string c11: _b11.valid && _b11.text == "1" ? "#ff0000" : "#ddd"
	property string c12: _b12.valid && _b12.text == "1" ? "#ff0000" : "#ddd"
	property string c13: _b13.valid && _b13.text == "1" ? "#ff0000" : "#ddd"
	property string c14: _b14.valid && _b14.text == "1" ? "#ff0000" : "#ddd"
	property string c15: _b15.valid && _b15.text == "1" ? "#ff0000" : "#ddd"
	property string c16: _b16.valid && _b16.text == "1" ? "#ff0000" : "#ddd"
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
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms0")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 1")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms1")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 2")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms2")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 3")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms3")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 4")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms4")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 5")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms5")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS Bluetooth 6")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms6")
				}				
			}
		}

		
		MbSubMenu {
			description: qsTr("BMS serial 0")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms7")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 1")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms8")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 2")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms9")
				}				
			}
		}
		
		MbSubMenu {
			description: qsTr("BMS serial 3")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms10")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 4")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms11")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 5")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms12")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 6")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms13")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 7")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms14")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 8")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms15")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 9")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms16")
				}				
			}
		}
		MbSubMenu {
			description: qsTr("BMS serial 10")
			show: bsc.valid
			subpage: Component {
				PageBatteryBscBms {
					bindPrefix: qsTr("/bsc/bms17")
				}				
			}
		}
	}
}
