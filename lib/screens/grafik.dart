import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class grafik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tercihler"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        child: Center(
          child: PieChart(
            PieChartData(centerSpaceRadius: 100, sections: [
              PieChartSectionData(
                color: const Color(0xff2f8a13),
                value: 15,
                title: '15% pizza',
                radius: 15,
                titleStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff000000)),
              ),
              PieChartSectionData(
                color: const Color(0xffffc712),
                value: 35,
                title: '35% burger',
                radius: 35,
                titleStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff000000)),
              ),
              PieChartSectionData(
                color: const Color(0xffce3201),
                value: 40,
                title: '40% pide',
                radius: 40,
                titleStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff000000)),
              ),
              PieChartSectionData(

                color: const Color(0xff0272a1),
                value: 10,
                title: '10% sandviç',
                radius: 10,
                titleStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff000000)),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
