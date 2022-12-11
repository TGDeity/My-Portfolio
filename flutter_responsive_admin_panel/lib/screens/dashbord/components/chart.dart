import 'package:admin_panel/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
                sectionsSpace: 0,
                sections: pieChartSelectionDatas,
                startDegreeOffset: -90),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: defaultPadding),
                Text(
                  "29.1",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 0.5),
                ),
                const Text(
                  "of 128GB",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionDatas = [
  PieChartSectionData(
      color: primaryColor, value: 25, showTitle: false, radius: 25),
  PieChartSectionData(
      color: const Color.fromARGB(255, 244, 37, 37),
      value: 25,
      showTitle: false,
      radius: 25),
  PieChartSectionData(
      color: const Color.fromARGB(255, 31, 171, 64),
      value: 15,
      showTitle: false,
      radius: 25),
  PieChartSectionData(
      color: const Color.fromARGB(255, 255, 193, 7),
      value: 30,
      showTitle: false,
      radius: 25),
];
