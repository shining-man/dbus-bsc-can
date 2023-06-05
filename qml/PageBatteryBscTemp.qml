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
				MbTextBlock { item { bind: service.path("/bsc/Temp1") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp2") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp3") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp4") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (5-8)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp5") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp6") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp7") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp8") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (9-12)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp9") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp10") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp11") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp12") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (13-16)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp13") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp14") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp15") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp16") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (17-20)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp17") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp18") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp19") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp20") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (21-24)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp21") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp22") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp23") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp24") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (25-28)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp25") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp26") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp27") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp28") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (29-32)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp29") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp30") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp31") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp32") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (33-36)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp33") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp34") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp35") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp36") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (37-40)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp37") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp38") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp39") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp40") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (41-44)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp41") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp42") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp43") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp44") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (45-48)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp45") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp46") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp47") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp48") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (49-52)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp49") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp50") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp51") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp52") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (53-56)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp53") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp54") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp55") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp56") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (57-60)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp57") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp58") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp59") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp60") } width: 70; height: 25; color: colour }
			]
		}
		MbItemRow {
			description: qsTr("Temp (61-64)")
			values: [
				MbTextBlock { item { bind: service.path("/bsc/Temp61") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp62") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp63") } width: 70; height: 25; color: colour },
				MbTextBlock { item { bind: service.path("/bsc/Temp64") } width: 70; height: 25; color: colour }
			]
		}

	}
}
