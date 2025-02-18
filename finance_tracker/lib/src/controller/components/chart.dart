import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FinancialChart extends StatelessWidget {
  const FinancialChart({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
        // horizontal: screenWidth * .05,
        // vertical: screenHeight * 0.02,
      ),
      child: AspectRatio(
        aspectRatio: 1.7,
        child: Container(
          width: screenWidth*.1,
          child: LineChart(
            LineChartData(
              gridData: FlGridData(
                show: true,
                drawVerticalLine: true,
                getDrawingHorizontalLine: (value) => FlLine(
                  color: Colors.grey.withOpacity(0.3),
                  strokeWidth: 1,
                ),
                getDrawingVerticalLine: (value) => FlLine(
                  color: Colors.grey.withOpacity(0.3),
                  strokeWidth: 1,
                ),
              ),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 50,
                    getTitlesWidget: (value, meta) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        value.toStringAsFixed(0),
                        style: const TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                    reservedSize: 40,
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: (value, meta) => Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Item ${value.toInt()}',
                        style: const TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: Colors.black, width: 1),
              ),
              minX: 1,
              maxX: 5,
              minY: 50,
              maxY: 350,
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(1, 100),
                    FlSpot(2, 150),
                    FlSpot(3, 180),
                    FlSpot(4, 250),
                    FlSpot(5, 300),
                  ],
                  isCurved: true,
                  color: Colors.blue,
                  barWidth: 4,
                  isStrokeCapRound: true,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.blue.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
