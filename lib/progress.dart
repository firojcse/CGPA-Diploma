import 'package:flutter/material.dart';
import "package:syncfusion_flutter_charts/charts.dart";

class Chart_Class extends StatefulWidget {
  const Chart_Class({Key? key}) : super(key: key);
  // double semester1,semester2,semester3,semester4,semester5,semester6,semester7,semester8;
  // Chart_Class({Key? key,required this.semester1,required this.semester2,required this.semester3,required this.semester4,required this.semester5,required this.semester6,required this.semester7,required this.semester8}) : super(key: key);
  @override
  _Chart_ClassState createState() => _Chart_ClassState();
}

class _Chart_ClassState extends State<Chart_Class> {
  late List<SalesData>_chartData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _chartData=getChartData();
    _tooltipBehavior=TooltipBehavior(enable: true);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCartesianChart(
        title: ChartTitle(text:"CGPA in Diploma Graf Chart"),
        legend: Legend(isVisible: true),
        tooltipBehavior: _tooltipBehavior,
        series: <ChartSeries>[
          LineSeries<SalesData, double>(
              name: "Semester",
              dataSource: _chartData,
              xValueMapper: (SalesData sales,_)=>sales.yeare,
              yValueMapper: (SalesData sales,_)=>sales.sales,
              dataLabelSettings: DataLabelSettings(isVisible: true),
              enableTooltip: true
            // true
          ),
        ],
        primaryXAxis: NumericAxis(
          majorGridLines: MajorGridLines(width: 5),
            edgeLabelPlacement: EdgeLabelPlacement.shift,
          // isVisible: 3
        ),
        primaryYAxis: NumericAxis(
            majorGridLines: MajorGridLines(width: 5),
            edgeLabelPlacement: EdgeLabelPlacement.shift),

        // primaryYAxis: NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift)
      ),
    );
  }
  List<SalesData>getChartData(){
    final List<SalesData>chartData=[
      SalesData(1, 2),
      SalesData(2, 4),
      SalesData(3, 3.90),
      SalesData(4, 1),
      SalesData(5, 3.90),
      SalesData(6, 3.90),
      SalesData(7, 2),
      SalesData(8, 3.90),
    ];
    return chartData;
  }
}
class SalesData{
  SalesData(this.yeare, this.sales);
  final double yeare;
  final double sales;
}
