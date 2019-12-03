import 'package:flutter/material.dart';
import 'package:weekly_timetable/src/weekly_times.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Card(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 2.0),
        child: Row(
            children: WeeklyTimes.dates
                .map((day) => Expanded(child: Center(child: Text(day))))
                .toList()),
        elevation: 8.0,
      ),
    );
  }
}
