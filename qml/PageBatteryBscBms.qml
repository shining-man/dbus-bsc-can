import QtQuick 1.1
import com.victron.velib 1.0

MbPage {
	id: root
	property string bindPrefix
	property VBusItem _cellVolt1: VBusItem { bind: service.path(bindPrefix+"/Voltages/Cell1") }
	property VBusItem _cellVolt5: VBusItem { bind: service.path(bindPrefix+"/Voltages/Cell5") }
	property VBusItem _cellVolt9: VBusItem { bind: service.path(bindPrefix+"/Voltages/Cell9") }
	property VBusItem _cellVolt13: VBusItem { bind: service.path(bindPrefix+"/Voltages/Cell13") }

	property string c1: "#ddd"
	
	title: service.description + " | BMS Data"

	model: VisualItemModel {
		MbItemRow {
			description: qsTr("Charge, Discharge")
			values: [
				MbTextBlock { item { bind: service.path(bindPrefix+"/StateFETCharge") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/StateFETDischarge") } width: 70; height: 25; color: c1 }
			]
		}
		
		MbItemRow {
			description: qsTr("Balance, Balancecurrent")
			values: [
				MbTextBlock { item { bind: service.path(bindPrefix+"/StateBalancingActive") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/BalancingCurrent") } width: 70; height: 25; color: c1 }
			]
		}
		
		MbItemRow {
			show: _cellVolt1.value>0 && _cellVolt1.value<65
			description: qsTr("Cells (1-4)")
			values: [
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell1") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell2") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell3") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell4") } width: 70; height: 25; color: c1 }
			]
		}
		MbItemRow {
			show: _cellVolt5.value>0 && _cellVolt5.value<65
			description: qsTr("Cells (5-8)")
			values: [
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell5") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell6") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell7") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell8") } width: 70; height: 25; color: c1 }
			]
		}
		MbItemRow {
			show: _cellVolt9.value>0 && _cellVolt9.value<65
			description: qsTr("Cells (9-12)")
			values: [
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell9") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell10") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell11") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell12") } width: 70; height: 25; color: c1 }
			]
		}
		MbItemRow {
			show: _cellVolt13.value>0 && _cellVolt13.value<65
			description: qsTr("Cells (13-16)")
			values: [
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell13") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell14") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell15") } width: 70; height: 25; color: c1 },
				MbTextBlock { item { bind: service.path(bindPrefix+"/Voltages/Cell16") } width: 70; height: 25; color: c1 }
			]
		}
	}
}
