import 'package:black_market/core/theming/app_styles.dart';
import 'package:black_market/features/home/data/models/currencies_response_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CustomPriceChart extends StatelessWidget {
  final List<CurrenciesPrice> prices;

  const CustomPriceChart({super.key, required this.prices});

  @override
  Widget build(BuildContext context) {
    if (prices.isEmpty) {
      return const Center(child: Text('No data available'));
    }

    List<Object> dates = prices.map((e) => e.date ?? '').toList();
    List<double> numericPrices = prices.map((e) => e.buyPrice ?? 0).toList();

    double maxY = numericPrices.reduce((a, b) => a > b ? a : b);
    double minY = numericPrices.reduce((a, b) => a < b ? a : b);

    double padding = (maxY - minY) * 0.3;
    if (padding == 0) padding = 1;
    maxY += padding;
    minY -= padding;
    List<LineChartBarData> bars = [];
    for (int i = 0; i < numericPrices.length - 1; i++) {
      double current = numericPrices[i];
      double next = numericPrices[i + 1];

      bars.add(LineChartBarData(
        isCurved: true,
        spots: [
          FlSpot(i.toDouble(), current),
          FlSpot((i + 1).toDouble(), next),
        ],
        barWidth: 4,
        color: next >= current ? Colors.yellow : Colors.red,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
      ));
    }
    return Container(
      color: Colors.black,
      height: 300.h,
      padding: EdgeInsets.all(16.w),
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: (numericPrices.length - 1).toDouble(),
          minY: minY,
          maxY: maxY,
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true,
                    interval: MediaQuery.sizeOf(context).width - 50,
                    getTitlesWidget: (value, meta) {
                      int index = value.toInt();
                      if (index >= 0 && index < prices.length) {
                        String formattedDate = '';
                        if (prices[index].date != null) {
                          try {
                            DateTime date =
                                DateTime.parse(prices[index].date.toString());
                            formattedDate = DateFormat('d MMM').format(date);
                          } catch (e) {
                            formattedDate = prices[index].date.toString();
                          }
                        }
                        return Text(
                          formattedDate,
                          style: AppStyles.font14WhiteMedium,
                        );
                      }
                      return const SizedBox.shrink();
                    }),
              )),
          borderData: FlBorderData(
              show: true,
              border: Border.fromBorderSide(BorderSide(color: Colors.white24))),
          lineBarsData: bars,
          lineTouchData: LineTouchData(
            enabled: true,
            touchTooltipData: LineTouchTooltipData(
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((spot) {
                  int index = spot.x.toInt();
                  return LineTooltipItem(
                    '${numericPrices[index].toStringAsFixed(2)} EGP\n${dates[index]}',
                    const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  );
                }).toList();
              },
            ),
          ),
        ),
      ),
    );
  }
}
