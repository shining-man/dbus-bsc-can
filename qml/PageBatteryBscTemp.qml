import QtQuick 1.1
import com.victron.velib 1.0

MbPage {
	id: root
	property string bindPrefix
	property string colour: "#ddd"
	title: service.description + " | Temperature"

	model: VisualItemModel {

		MbItemRow {
			description: qsTr("Temp (1-4)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp1") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp2") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp3") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp4") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (5-8)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp5") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp6") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp7") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp8") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (9-12)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp9") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp10") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp11") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp12") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (13-16)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp13") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp14") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp15") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp16") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (17-20)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp17") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp18") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp19") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp20") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (21-24)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp21") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp22") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp23") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp24") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (25-28)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp25") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp26") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp27") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp28") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (29-32)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp29") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp30") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp31") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp32") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (33-36)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp33") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp34") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp35") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp36") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (37-40)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp37") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp38") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp39") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp40") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (41-44)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp41") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp42") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp43") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp44") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (45-48)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp45") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp46") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp47") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp48") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (49-52)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp49") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp50") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp51") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp52") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (53-56)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp53") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp54") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp55") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp56") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (57-60)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp57") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp58") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp59") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp60") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (61-64)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/temp61") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp62") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp63") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/temp64") } width: 70; height: 25; color: colour }
			]
		}

	}
}
