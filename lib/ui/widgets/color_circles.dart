import 'package:Todo/ui/responsiveness/size_config.dart';
import 'package:flutter/material.dart';

class ColorCircles extends StatefulWidget {
  final Color firstColor;
  final Color secondColor;
  final Icon icon;
  ColorCircles({this.firstColor, this.secondColor, this.icon});

  @override
  _ColorCirclesState createState() => _ColorCirclesState();
}

class _ColorCirclesState extends State<ColorCircles> {
  bool onPressed = false;

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
              widget.firstColor,
              widget.secondColor,
            ]),
      ),
      child: Center(child: widget.icon),
    );
  }
}
