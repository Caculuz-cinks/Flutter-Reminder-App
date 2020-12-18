import 'package:Todo/ui/app_colors.dart';
import 'package:Todo/ui/responsiveness/size_config.dart';
import 'package:Todo/ui/views/add_category_view_model.dart';

import 'package:Todo/ui/widgets/color_circles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CirclesList extends StatefulWidget {
  @override
  _CirclesListState createState() => _CirclesListState();
}

class _CirclesListState extends State<CirclesList> {
  bool firstBoxSelected;

  bool secondBoxSelected;

  bool thirdBoxSelected;

  bool fourthBoxSelected;

  bool fifthBoxSelected;

  bool sixthBoxSelected;
  selection1() {
    if (secondBoxSelected == true) {
      firstBoxSelected = false;
      thirdBoxSelected = false;

      fourthBoxSelected = false;

      fifthBoxSelected = false;

      sixthBoxSelected = false;
    }
  }

  selection2() {
    if (thirdBoxSelected == true) {
      firstBoxSelected = false;
      secondBoxSelected = false;

      fourthBoxSelected = false;

      fifthBoxSelected = false;

      sixthBoxSelected = false;
    }
  }

  selection3() {
    if (fourthBoxSelected == true) {
      firstBoxSelected = false;
      secondBoxSelected = false;

      thirdBoxSelected = false;

      fifthBoxSelected = false;

      sixthBoxSelected = false;
    }
  }

  selection4() {
    if (fifthBoxSelected == true) {
      firstBoxSelected = false;
      secondBoxSelected = false;

      thirdBoxSelected = false;

      fourthBoxSelected = false;

      sixthBoxSelected = false;
    }
  }

  selection5() {
    if (sixthBoxSelected == true) {
      firstBoxSelected = false;
      secondBoxSelected = false;

      thirdBoxSelected = false;

      fourthBoxSelected = false;

      fifthBoxSelected = false;
    }
  }

  selection() {
    if (firstBoxSelected == true) {
      secondBoxSelected = false;

      thirdBoxSelected = false;

      fourthBoxSelected = false;

      fifthBoxSelected = false;

      sixthBoxSelected = false;
    } else
      return true;
  }

  @override
  Widget build(BuildContext context) {
    var addCategory = Provider.of<AddCategoryViewModel>(context, listen: false);
    return Container(
      height: Config.yMargin(context, 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                firstBoxSelected = true;
                selection();
              });
              addCategory.setSelectedColor1(firstCircleColor1);
              addCategory.setSelectedColor1(firstCircleColor2);
            },
            child: ColorCircles(
              firstColor: Color(int.tryParse(firstCircleColor1)),
              secondColor: Color(int.tryParse(firstCircleColor2)),
              icon: firstBoxSelected == true
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : Container(),
            ),
          ),
          SizedBox(
            width: Config.xMargin(context, 6),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                secondBoxSelected = true;
                selection1();
              });
              addCategory.setSelectedColor1(secondCircleColor1);
              addCategory.setSelectedColor1(secondCircleColor2);
            },
            child: ColorCircles(
              firstColor: Color(int.tryParse(secondCircleColor1)),
              secondColor: Color(int.tryParse(secondCircleColor2)),
              icon: secondBoxSelected == true
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : Container(),
            ),
          ),
          SizedBox(
            width: Config.xMargin(context, 6),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                thirdBoxSelected = true;
                selection2();
              });
              addCategory.setSelectedColor1(thirdCircleColor1);
              addCategory.setSelectedColor1(thirdCircleColor2);
            },
            child: ColorCircles(
              firstColor: Color(int.tryParse(thirdCircleColor1)),
              secondColor: Color(int.tryParse(thirdCircleColor2)),
              icon: thirdBoxSelected == true
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : Container(),
            ),
          ),
          SizedBox(
            width: Config.xMargin(context, 6),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                fourthBoxSelected = true;
                selection3();
              });
              addCategory.setSelectedColor1(fourthCircleColor1);
              addCategory.setSelectedColor1(fourthCircleColor2);
            },
            child: ColorCircles(
              firstColor: Color(int.tryParse(fourthCircleColor1)),
              secondColor: Color(int.tryParse(fourthCircleColor2)),
              icon: fourthBoxSelected == true
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : Container(),
            ),
          ),
          SizedBox(
            width: Config.xMargin(context, 6),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                fifthBoxSelected = true;
                selection4();
              });
              addCategory.setSelectedColor1(fifthCircleColor1);
              addCategory.setSelectedColor1(fifthCircleColor2);
            },
            child: ColorCircles(
              firstColor: Color(int.tryParse(fifthCircleColor1)),
              secondColor: Color(int.tryParse(fifthCircleColor2)),
              icon: fifthBoxSelected == true
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : Container(),
            ),
          ),
          SizedBox(
            width: Config.xMargin(context, 6),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                sixthBoxSelected = true;
                selection5();
              });
              addCategory.setSelectedColor1(sixthCircleColor1);
              addCategory.setSelectedColor1(sixthCircleColor2);
            },
            child: ColorCircles(
              firstColor: Color(int.tryParse(sixthCircleColor1)),
              secondColor: Color(int.tryParse(sixthCircleColor2)),
              icon: sixthBoxSelected == true
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : Container(),
            ),
          ),
        ],
      ),
    );
  }
}
