import 'package:Todo/ui/responsiveness/size_config.dart';
import 'package:Todo/ui/widgets/color_circles.dart';
import 'package:flutter/material.dart';

class CirclesList extends StatefulWidget {
  @override
  _CirclesListState createState() => _CirclesListState();
}

class _CirclesListState extends State<CirclesList> {
  bool firstBoxSelected = false;

  bool secondBoxSelected = false;

  bool thirdBoxSelected = false;

  bool fourthBoxSelected = false;

  bool fifthBoxSelected = false;

  bool sixthBoxSelected = false;

  void selection() {
    if (firstBoxSelected == true) {
      secondBoxSelected = false;

      thirdBoxSelected = false;

      fourthBoxSelected = false;

      fifthBoxSelected = false;

      sixthBoxSelected = false;
    } else if (secondBoxSelected == true) {
      firstBoxSelected = false;
      thirdBoxSelected = false;

      fourthBoxSelected = false;

      fifthBoxSelected = false;

      sixthBoxSelected = false;
    } else if (thirdBoxSelected == true) {
      firstBoxSelected = false;
      secondBoxSelected = false;

      fourthBoxSelected = false;

      fifthBoxSelected = false;

      sixthBoxSelected = false;
    } else if (fourthBoxSelected == true) {
      firstBoxSelected = false;
      secondBoxSelected = false;

      thirdBoxSelected = false;

      fifthBoxSelected = false;

      sixthBoxSelected = false;
    } else if (fifthBoxSelected == true) {
      firstBoxSelected = false;
      secondBoxSelected = false;

      thirdBoxSelected = false;

      fourthBoxSelected = false;

      sixthBoxSelected = false;
    } else if (sixthBoxSelected == true) {
      firstBoxSelected = false;
      secondBoxSelected = false;

      thirdBoxSelected = false;

      fourthBoxSelected = false;

      fifthBoxSelected = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              firstBoxSelected = true;
            });
            selection();
          },
          child: ColorCircles(
            firstColor: Color(0xffF7B591),
            secondColor: Color(0xffE44788),
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
            });
            selection();
          },
          child: ColorCircles(
            firstColor: Color(0xff8AF7BB),
            secondColor: Color(0xff24E395),
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
            });
            selection();
          },
          child: ColorCircles(
            firstColor: Color(0xff597CF2),
            secondColor: Color(0xff7B43F4),
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
            });
            selection();
          },
          child: ColorCircles(
            firstColor: Color(0xff597CF2),
            secondColor: Color(0xff7B43F4),
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
            });
            selection();
          },
          child: ColorCircles(
            firstColor: Color(0xff597CF2),
            secondColor: Color(0xff7B43F4),
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
            });
            selection();
          },
          child: ColorCircles(
            firstColor: Color(0xff597CF2),
            secondColor: Color(0xff7B43F4),
            icon: sixthBoxSelected == true
                ? Icon(
                    Icons.check,
                    color: Colors.white,
                  )
                : Container(),
          ),
        ),
      ],
    );
  }
}
