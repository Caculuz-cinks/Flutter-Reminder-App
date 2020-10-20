import 'package:flutter/material.dart';

class WorkView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthOfScreen = MediaQuery.of(context).size.width;
    var heightOfScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: heightOfScreen,
        width: widthOfScreen,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
              stops: [
                0.1,
                1.0
              ],
              colors: [
                Color(0xff597CF2),
                Color(0xff7B43F4),
              ]),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
