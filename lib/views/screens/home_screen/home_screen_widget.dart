// lib/widgets/widgets.dart

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// LineChartSample Widget
class LineChartSample extends StatelessWidget {
  const LineChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Line Chart'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: LineChart(
          LineChartData(
            gridData: const FlGridData(show: false),
            titlesData: FlTitlesData(
              show: true,
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 22,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 0:
                        return const Text('2015');
                      case 1:
                        return const Text('2016');
                      case 2:
                        return const Text('2017');
                      case 3:
                        return const Text('2018');
                      case 4:
                        return const Text('2019');
                      case 5:
                        return const Text('2020');
                      default:
                        return const Text('');
                    }
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 10,
                  reservedSize: 28,
                  getTitlesWidget: (value, meta) {
                    return Text('${value.toInt()}');
                  },
                ),
              ),
            ),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: Colors.black, width: 1),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  const FlSpot(0, 10),
                  const FlSpot(1, 30),
                  const FlSpot(2, 50),
                  const FlSpot(3, 20),
                  const FlSpot(4, 40),
                  const FlSpot(5, 35),
                ],
                isCurved: true,
                color: Colors.blue,
                barWidth: 3,
                isStrokeCapRound: true,
                belowBarData: BarAreaData(show: false),
              ),
              LineChartBarData(
                spots: [
                  const FlSpot(0, 30),
                  const FlSpot(1, 40),
                  const FlSpot(2, 25),
                  const FlSpot(3, 45),
                  const FlSpot(4, 20),
                  const FlSpot(5, 55),
                ],
                isCurved: true,
                color: Colors.red,
                barWidth: 3,
                isStrokeCapRound: true,
                belowBarData: BarAreaData(show: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CalendarWidget Widget
class CalendarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 30, // Days of the month
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7, // 7 days a week
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  backgroundColor: index == 26
                      ? Colors.orangeAccent : Colors.white, // Highlight selected date
                  child: Text('${index + 1}', style: TextStyle(color: Colors.black),),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// EventCard Widget
class EventCard extends StatelessWidget {
  final String title;
  final int total;
  final String eventType;
  final List<String> icons;

  EventCard({
    required this.title,
    required this.total,
    required this.eventType,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff3c354a),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "✨",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xfffcc440)),
                ),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                ),
                Spacer(),
                Text(
                  "✨",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xfffcc440)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: icons
                  .map((icon) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: Colors.blueAccent.withOpacity(0.6)),
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    child: Image.asset(icon, height: 35),
                  ),
                ),
              ))
                  .toList(),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total   | $total |',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffb97cf4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.share, color: Colors.white),
                    Text(
                      eventType,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
