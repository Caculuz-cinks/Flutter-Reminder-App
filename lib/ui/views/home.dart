import 'package:Todo/core/routes/route_names.dart';
import 'package:Todo/ui/app_colors.dart';
import 'package:Todo/ui/responsiveness/size_config.dart';
import 'package:Todo/ui/widgets/category_card.dart';
import 'package:Todo/ui/widgets/item_card.dart';
import 'package:Todo/ui/widgets/open_category.dart';
import 'package:Todo/ui/views/add_category.dart';
import 'package:Todo/ui/views/category_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthOfScreen = MediaQuery.of(context).size.width;
    var heightOfScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff2C2F35),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.xMargin(context, 5)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Config.yMargin(context, 2),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Reminders',
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
                                        child: AddCategory(),
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
                          )
                        ],
                      ),
                      SizedBox(
                        height: Config.yMargin(context, 3),
                      ),
                      Text(
                        'UP NEXT',
                        style: TextStyle(
                            fontSize: Config.textSize(context, 4.5),
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: Config.yMargin(context, 2.5),
                      ),
                      ItemCard(
                        color1: Color(0xffF4AF8C),
                        color2: Color(0xffE97C6E),
                        hours: '12\nPM',
                        item: 'Go to the grocery',
                        location: 'Mall',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'LISTS',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
              ),
              Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: Config.xMargin(context, 5),
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, RouteNames.total),
                      child: CategoryCard(
                          category: 'TOTAL',
                          taskCount: '2',
                          startColor: AppColors.totalStartColor,
                          endColor: AppColors.totalEndColor),
                    ),
                    SizedBox(
                      width: Config.xMargin(context, 3),
                    ),
                    OpenCategory(
                      category: 'WORK',
                      taskCount: '9',
                    ),
                    SizedBox(
                      width: Config.xMargin(context, 3),
                    ),
                    CategoryCard(
                      category: 'SHOPPING',
                      taskCount: '2',
                      startColor: Color(0xffF7B591),
                      endColor: Color(0xffE44788),
                    ),
                    SizedBox(
                      width: Config.xMargin(context, 3),
                    ),
                    CategoryCard(
                      category: 'PERSONAL',
                      taskCount: '0',
                      startColor: Color(0xff8AF7BB),
                      endColor: Color(0xff24E395),
                    ),
                    SizedBox(width: Config.xMargin(context, 5)),
                  ],
                ),
              ),
              SizedBox(
                height: Config.yMargin(context, 5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.xMargin(context, 5)),
                child: Text(
                  'COMPLETED',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.xMargin(context, 5)),
                child: Text(
                  '67%',
                  style: TextStyle(
                      fontSize: 70,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
