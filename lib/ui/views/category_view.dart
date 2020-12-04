import 'package:Todo/ui/app_colors.dart';
import 'package:Todo/ui/responsiveness/size_config.dart';
import 'package:Todo/ui/views/add_task.dart';

import 'package:Todo/ui/widgets/item_card_list.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  CategoryView({this.category});
  final String category;

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
                  stops: [
                    0.1,
                    1.0
                  ],
                  colors: [
                    category == 'WORK'
                        ? AppColors.workStartColor
                        : category == 'TOTAL'
                            ? AppColors.totalStartColor
                            : AppColors.white,
                    category == 'WORK'
                        ? AppColors.workEndColor
                        : category == 'TOTAL'
                            ? AppColors.totalEndColor
                            : AppColors.white,
                  ]),
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
                            category,
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
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) {
                                return SingleChildScrollView(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom),
                                    child: AddTask(),
                                  ),
                                );
                              });
                        },
                        child: Container(
                          height: Config.yMargin(context, 6.5),
                          width: Config.xMargin(context, 12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            Icons.add,
                            size: Config.textSize(context, 8),
                            color: Colors.black,
                          ),
                        ),
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
                              ' 1\nPM',
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
                                color1: Color(0xff5C77F2).withRed(110),
                                color2: Color(0xff8B73F5),
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
                              '10\nAM',
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
                                color1: Color(0xff5C77F2).withRed(110),
                                color2: Color(0xff8B73F5),
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
