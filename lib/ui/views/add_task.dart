import 'package:Todo/ui/app_colors.dart';
import 'package:Todo/ui/responsiveness/size_config.dart';
import 'package:Todo/ui/widgets/circles_list.dart';

import 'package:Todo/ui/widgets/color_circles.dart';
import 'package:Todo/ui/widgets/time_wheel.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widthOfScreen = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          gradient: LinearGradient(
            end: Alignment.bottomRight,
            begin: Alignment.topLeft,
            stops: [0.1, 1.0],
            colors: [
              AppColors.workStartColor,
              AppColors.workEndColor,
            ],
          ),
        ),
        height: Config.yMargin(context, 50),
        width: widthOfScreen,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Config.xMargin(context, 5),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Config.yMargin(context, 6),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffFF80CE),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.grey[800],
                      ),
                      hintText: 'Enter Task Title',
                      fillColor: Colors.white),
                  cursorColor: Color(0xffFF80CE),
                ),
                SizedBox(
                  height: Config.yMargin(context, 3),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffFF80CE),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.grey[800],
                      ),
                      hintText: 'Enter Task Location',
                      fillColor: Colors.white),
                  cursorColor: Color(0xffFF80CE),
                ),
                SizedBox(
                  height: Config.yMargin(context, 3),
                ),
                TimeWheel(
                  color: Colors.white,
                  updateTimeChanged: (val) {},
                ),
                SizedBox(
                  height: Config.yMargin(context, 5),
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      gradient: LinearGradient(
                          end: Alignment.bottomRight,
                          begin: Alignment.topLeft,
                          stops: [
                            0.3,
                            1.0
                          ],
                          colors: [
                            Color(0xffFF80CE),
                            Color(0xffF7007C),
                          ]),
                    ),
                    height: Config.yMargin(context, 7),
                    width: Config.xMargin(context, 40),
                    child: Center(
                      child: Text(
                        'Add',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: Config.textSize(
                              context,
                              5,
                            ),
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
