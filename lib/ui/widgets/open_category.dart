import 'package:Todo/core/routes/route_names.dart';

import 'package:Todo/ui/views/category_view.dart';
import 'package:Todo/ui/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:Todo/ui/app_colors.dart';

class OpenCategory extends StatelessWidget {
  OpenCategory({this.category, this.taskCount});
  final String category;
  final String taskCount;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => WorkView(
              category: category,
            ),
          ),
        );
      },
      child: CategoryCard(
        category: category,
        taskCount: taskCount,
        startColor: category == 'WORK'
            ? AppColors.workStartColor
            : category == 'TOTAL' ? AppColors.totalStartColor : AppColors.white,
        endColor: category == 'WORK'
            ? AppColors.workEndColor
            : category == 'TOTAL' ? AppColors.totalEndColor : AppColors.white,
      ),
    );
  }
}
