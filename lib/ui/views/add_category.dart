import 'package:Todo/ui/responsiveness/size_config.dart';
import 'package:Todo/ui/reusable/color_circles.dart';
import 'package:flutter/material.dart';

class AddCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widthOfScreen = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
          color: Color(0xff2C2F35),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        height: Config.yMargin(context, 40),
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
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: TextField(
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
                        hintText: 'Enter Category Title',
                        fillColor: Colors.grey[400]),
                    cursorColor: Color(0xffFF80CE),
                  ),
                ),
                SizedBox(
                  height: Config.yMargin(context, 1.5),
                ),
                Text(
                  'Choose your category color',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: Config.textSize(context, 4),
                  ),
                ),
                // SizedBox(
                //   height: Config.yMargin(context, 0.5),
                // ),
                Row(
                  children: [
                    ColorCircles(
                      firstColor: Color(0xffF7B591),
                      secondColor: Color(0xffE44788),
                    ),
                    SizedBox(
                      width: Config.xMargin(context, 6),
                    ),
                    ColorCircles(
                      firstColor: Color(0xff8AF7BB),
                      secondColor: Color(0xff24E395),
                    ),
                    SizedBox(
                      width: Config.xMargin(context, 6),
                    ),
                    ColorCircles(
                      firstColor: Color(0xff597CF2),
                      secondColor: Color(0xff7B43F4),
                    ),
                    SizedBox(
                      width: Config.xMargin(context, 6),
                    ),
                    ColorCircles(
                      firstColor: Color(0xff597CF2),
                      secondColor: Color(0xff7B43F4),
                    ),
                    SizedBox(
                      width: Config.xMargin(context, 6),
                    ),
                    ColorCircles(
                      firstColor: Color(0xff597CF2),
                      secondColor: Color(0xff7B43F4),
                    ),
                    SizedBox(
                      width: Config.xMargin(context, 6),
                    ),
                    ColorCircles(
                      firstColor: Color(0xff597CF2),
                      secondColor: Color(0xff7B43F4),
                    ),
                  ],
                ),
                SizedBox(
                  height: Config.yMargin(context, 2),
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
                        'Create',
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
