import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final String time;

  Indicator(this.time);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.bottomCenter,
        heightFactor: 0.8,
        child: Container(
          height: 58,
          child: Text(
            '$time',
            style: TextStyle(fontSize: 10.0),
          ),
        ),
      ),
    );
  }
}
