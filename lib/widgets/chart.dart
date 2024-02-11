import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../themes/colors.dart';

class AttendanceChart extends StatelessWidget {
  const AttendanceChart({super.key});

  final onTimeColor = CustomColor.green;
  final lateColor = CustomColor.yellow;
  final absentColor = CustomColor.red;
  final betweenSpace = 0;

  BarChartGroupData generateGroupData(
    int x,
    double onTime,
    double late,
    double absents,
  ) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: onTime,
          color: onTimeColor,
          width: 15,
        ),
        BarChartRodData(
          fromY: onTime + betweenSpace,
          toY: onTime + betweenSpace + late,
          color: lateColor,
          width: 15,
        ),
        BarChartRodData(
          fromY: onTime + betweenSpace + late + betweenSpace,
          toY: onTime + betweenSpace + late + betweenSpace + absents,
          color: absentColor,
          width: 15,
        ),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Mon';
        break;
      case 1:
        text = 'Tue';
        break;
      case 2:
        text = 'Wed';
        break;
      case 3:
        text = 'Thu';
        break;
      case 4:
        text = 'Fri';
        break;
      case 5:
        text = 'Sat';
        break;
      case 6:
        text = 'Sun';
        break;
      default:
        text = '';
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          LegendsListWidget(
            legends: [
              Legend('On-Time', onTimeColor),
              Legend('Late', lateColor),
              Legend('Absents', absentColor),
            ],
          ),
          const SizedBox(height: 14),
          AspectRatio(
            aspectRatio: 2,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceBetween,
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    drawBelowEverything: true,
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 200,
                      reservedSize: 30,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          value.toInt().toString(),
                          textAlign: TextAlign.left,
                          style: const TextStyle(fontSize: 10),
                        );
                      },
                    ),
                  ),
                  rightTitles: const AxisTitles(),
                  topTitles: const AxisTitles(),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 20,
                      getTitlesWidget: bottomTitles,
                    ),
                  ),
                ),
                barTouchData: BarTouchData(enabled: false),
                borderData: FlBorderData(show: false),
                gridData: const FlGridData(show: false),
                barGroups: [
                  generateGroupData(0, 300, 300, 200),
                  generateGroupData(1, 350, 350, 300),
                  generateGroupData(2, 200, 200, 200),
                  generateGroupData(3, 300, 300, 300),
                  generateGroupData(4, 200, 200, 300),
                  generateGroupData(5, 300, 300, 200),
                  generateGroupData(6, 300, 300, 300),
                ],
                maxY: 1000 + (betweenSpace * 5),
                minY: 0,
                extraLinesData: ExtraLinesData(
                  extraLinesOnTop: false,
                  horizontalLines: [
                    HorizontalLine(
                      y: 200,
                      color: Colors.grey.shade200,
                      strokeWidth: 1,
                    ),
                    HorizontalLine(
                      y: 400,
                      color: Colors.grey.shade200,
                      strokeWidth: 1,
                    ),
                    HorizontalLine(
                      y: 600,
                      color: Colors.grey.shade200,
                      strokeWidth: 1,
                    ),
                    HorizontalLine(
                      y: 800,
                      color: Colors.grey.shade200,
                      strokeWidth: 1,
                    ),
                    HorizontalLine(
                      y: 1000,
                      color: Colors.grey.shade200,
                      strokeWidth: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LegendWidget extends StatelessWidget {
  const LegendWidget({
    super.key,
    required this.name,
    required this.color,
  });

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          name,
          style: const TextStyle(
            color: Color(0xff757391),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class LegendsListWidget extends StatelessWidget {
  const LegendsListWidget({
    super.key,
    required this.legends,
  });

  final List<Legend> legends;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      children: legends
          .map(
            (e) => LegendWidget(
              name: e.name,
              color: e.color,
            ),
          )
          .toList(),
    );
  }
}

class Legend {
  Legend(this.name, this.color);

  final String name;
  final Color color;
}
