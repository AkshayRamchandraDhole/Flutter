import 'package:flutter/material.dart';

import 'package:pie_chart/pie_chart.dart';

class PieChartScreen extends StatefulWidget{
  const PieChartScreen({super.key});

  @override 
   @override
  State createState() => _PieChartScreenState(); 
}
class _PieChartScreenState extends State{

  Map<String,double> data = {
    "Food" : 20,
    "Movies" : 10,
    "Entertaiment" : 50
  };
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title:  const Text("Pie Chart Demo"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: PieChart(
            dataMap: data,
            chartType: ChartType.ring,
            chartRadius: 200,
            ringStrokeWidth: 100,
            centerText: "Total",
            chartValuesOptions: const ChartValuesOptions(
              showChartValuesInPercentage: true
            ),
            legendOptions: const LegendOptions(
              legendPosition: LegendPosition.bottom,
              legendShape: BoxShape.rectangle,
             // showLegends: false
            ),
            
            )
        ,),
    );
}
}
