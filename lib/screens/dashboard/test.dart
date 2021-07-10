import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Text("POG CHAMOP"),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
