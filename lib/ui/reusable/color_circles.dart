import 'package:Todo/ui/responsiveness/size_config.dart';
import 'package:flutter/material.dart';

class ColorCircles extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  ColorCircles({this.firstColor, this.secondColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Config.yMargin(context, 10),
      width: Config.xMargin(context, 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            end: Alignment.bottomRight,
            begin: Alignment.topLeft,
            stops: [
              0.3,
              1.0
            ],
            colors: [
              firstColor,
              secondColor,
            ]),
      ),
    );
  }
}
