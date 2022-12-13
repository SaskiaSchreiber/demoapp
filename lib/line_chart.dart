import 'package:fl_chart/fl_chart.dart';
import 'package:demo_app/price_point.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<PricePoint> points;


  const LineChartWidget(this.points, {Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {

    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(
          LineChartData(
            backgroundColor: Colors.black12,
            gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine: (value){
                return FlLine(
                  color: const Color(0xff37434d),
                  strokeWidth: 1,
                );
              },
                getDrawingVerticalLine: (value){
                  return FlLine(
                    color: const Color(0xff37434d),
                    strokeWidth: 1,
                  );
                }
            ),
              lineBarsData: [
                LineChartBarData(
                  spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
                  isCurved: true,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.blue.withOpacity(0.3),
                  ),
                  dotData: FlDotData(show:false)
                )
              ]),
          swapAnimationDuration: const Duration(milliseconds: 150),
          swapAnimationCurve: Curves.linear,
      ),
    );
  }
}
