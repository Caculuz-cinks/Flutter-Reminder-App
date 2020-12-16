import 'package:Todo/core/models/categories_model.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Categories category;
  final String taskCount;
  CategoryCard({this.category, this.taskCount});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200,
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
              Color(category.firstSelectedColor),
              Color(category.secondSelectedColor),
            ]),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              category.categoryName,
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
