import 'package:Todo/ui/reusable/category_card.dart';
import 'package:Todo/ui/views/work.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthOfScreen = MediaQuery.of(context).size.width;
    var heightOfScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff2C2F35),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
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
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Today',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Icon(
                                Icons.add,
                                size: 35,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'UP NEXT',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 130,
                        width: widthOfScreen,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          gradient: LinearGradient(
                              end: Alignment.bottomRight,
                              begin: Alignment.topLeft,
                              stops: [
                                0.3,
                                1.0
                              ],
                              colors: [
                                Color(0xffF4AF8C),
                                Color(0xffE97C6E),
                              ]),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: Row(
                            children: [
                              Text(
                                '2h',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Go to the grocery',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Mall',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
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
                      width: 20,
                    ),
                    CategoryCard(
                      category: 'TOTAL',
                      taskCount: '3',
                      startColor: Color(0xffFF80CE),
                      endColor: Color(0xffF7007C),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WorkView(),
                          ),
                        );
                      },
                      child: CategoryCard(
                        category: 'WORK',
                        taskCount: '1',
                        startColor: Color(0xff597CF2),
                        endColor: Color(0xff7B43F4),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryCard(
                      category: 'SHOPPING',
                      taskCount: '2',
                      startColor: Color(0xffF7B591),
                      endColor: Color(0xffE44788),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryCard(
                      category: 'PERSONAL',
                      taskCount: '0',
                      startColor: Color(0xff8AF7BB),
                      endColor: Color(0xff24E395),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
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
                padding: EdgeInsets.symmetric(horizontal: 20),
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
