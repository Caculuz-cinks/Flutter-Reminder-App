import 'package:Todo/core/models/categories_model.dart';
import 'package:Todo/ui/responsiveness/size_config.dart';
import 'package:flutter/material.dart';

class TotalCard extends StatelessWidget {
  final Color startColor;
  final Color endColor;
  final String category;
  final String taskCount;
  TotalCard({this.startColor, this.endColor, this.category, this.taskCount});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Config.yMargin(context, 30),
      width: Config.xMargin(context, 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: LinearGradient(
            end: Alignment.bottomRight,
            begin: Alignment.topLeft,
            stops: [
              0.3,
              1.0
            ],
            colors: [
              startColor,
              endColor,
            ]),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              category,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
            Text(
              taskCount,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              'Reminders',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
