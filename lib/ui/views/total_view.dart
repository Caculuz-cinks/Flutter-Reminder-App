import 'package:Todo/ui/app_colors.dart';
import 'package:Todo/ui/responsiveness/size_config.dart';

import 'package:Todo/ui/widgets/item_card_list.dart';
import 'package:flutter/material.dart';

class TotalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthOfScreen = MediaQuery.of(context).size.width;
    var heightOfScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xff597CF2),
        body: SafeArea(
          child: Container(
            height: heightOfScreen,
            width: widthOfScreen,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.bottomRight,
                begin: Alignment.topLeft,
                stops: [0.1, 1.0],
                colors: [
                  AppColors.totalStartColor,
                  AppColors.totalEndColor,
                ],
              ),
            ),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Config.xMargin(context, 5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Config.yMargin(context, 3),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: Config.textSize(context, 6.5),
                    ),
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 2.5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TOTAL',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Config.textSize(context, 8),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: Config.yMargin(context, 1),
                          ),
                          Text(
                            'Today',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Config.textSize(context, 6),
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Config.yMargin(context, 3),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '1h',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              width: Config.xMargin(context, 3),
                            ),
                            Expanded(
                              child: ItemCardList(
                                color1: Color(0xffFF80CE).withBlue(200),
                                color2: Color(0xffF7007C).withBlue(150),
                                location: 'Sillicon Valley',
                                item: 'Visit Apple and Google',
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Config.yMargin(context, 3),
                        ),
                        Row(
                          children: [
                            Text(
                              '4h',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              width: Config.xMargin(context, 3),
                            ),
                            Expanded(
                              child: ItemCardList(
                                color1: Color(0xffFF80CE).withBlue(200),
                                color2: Color(0xffF7007C).withBlue(150),
                                location: 'Sillicon Valley',
                                item: 'Visit Apple and Google',
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
