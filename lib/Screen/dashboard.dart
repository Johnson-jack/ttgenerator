import 'package:flutter/material.dart';
import 'package:timetable/Component/course.dart';
import 'package:timetable/Component/home.dart';
import 'package:timetable/Component/support.dart';
import 'package:timetable/Component/teachers.dart';
import 'package:timetable/Component/timetable.dart';
import 'package:timetable/Screen/login.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Color bgcolor = Color(0xffff5f52);
  Color bgcolor1 = Color(0xFF161819);
  Color bgcolor2 = Color(0xFF161819);
  Color bgcolor3 = Color(0xFF161819);
  Color bgcolor4 = Color(0xFF161819);
  double radius_value = 0;
  final List _screens = [
    HomeScreen(),
    TimeTablePage(),
    TeachersPage(),
    CoursePage(),
    SupportPage()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF313638),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height - 70,
          width: MediaQuery.of(context).size.width - 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Color(0xFF161819),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 19,
                  offset: Offset(2, 2),
                ),
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 19,
                  offset: Offset(-2, -2),
                ),
              ]),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset('assets/images/logo.png'),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'Hello, Admin ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'JosefinSans'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 19,
                                  offset: Offset(2, 2),
                                ),
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 19,
                                  offset: Offset(-2, -2),
                                ),
                              ]),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.exit_to_app,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  )
                ],
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      bgcolor = Color(0xffff5f52);
                                      bgcolor1 = Color(0xFF161819);
                                      bgcolor2 = Color(0xFF161819);
                                      bgcolor3 = Color(0xFF161819);
                                      bgcolor4 = Color(0xFF161819);
                                      radius_value = 8;
                                      _currentIndex=0;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color: bgcolor,
                                      borderRadius:
                                          BorderRadius.circular(radius_value),
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          'assets/images/home.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text('Home',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'JosefinSans')),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      bgcolor1 = Color(0xffff5f52);
                                      bgcolor = Color(0xFF161819);
                                      bgcolor2 = Color(0xFF161819);
                                      bgcolor3 = Color(0xFF161819);
                                      bgcolor4 = Color(0xFF161819);
                                      radius_value = 8;
                                      radius_value = 8;
                                      _currentIndex=1;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color: bgcolor1,
                                      borderRadius:
                                          BorderRadius.circular(radius_value),
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          'assets/images/calendar.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text('Time Table',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'JosefinSans')),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      bgcolor2 = Color(0xffff5f52);
                                      bgcolor1 = Color(0xFF161819);
                                      bgcolor = Color(0xFF161819);
                                      bgcolor3 = Color(0xFF161819);
                                      bgcolor4 = Color(0xFF161819);
                                      radius_value = 8;
                                      radius_value = 8;
                                      _currentIndex=2;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color: bgcolor2,
                                      borderRadius:
                                          BorderRadius.circular(radius_value),
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          'assets/images/teacher.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text('Teachers',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'JosefinSans')),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      bgcolor3 = Color(0xffff5f52);
                                      bgcolor1 = Color(0xFF161819);
                                      bgcolor2 = Color(0xFF161819);
                                      bgcolor = Color(0xFF161819);
                                      bgcolor4 = Color(0xFF161819);
                                      radius_value = 8;
                                      radius_value = 8;
                                      _currentIndex=3;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color: bgcolor3,
                                      borderRadius:
                                          BorderRadius.circular(radius_value),
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          'assets/images/course.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text('Course',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'JosefinSans')),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      bgcolor4 = Color(0xffff5f52);
                                      bgcolor1 = Color(0xFF161819);
                                      bgcolor2 = Color(0xFF161819);
                                      bgcolor3 = Color(0xFF161819);
                                      bgcolor = Color(0xFF161819);
                                      radius_value = 8;
                                      radius_value = 8;
                                      _currentIndex=4;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      color: bgcolor4,
                                      borderRadius:
                                          BorderRadius.circular(radius_value),
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          'assets/images/support.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text('Support',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'JosefinSans')),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff0D1011),
                                borderRadius: BorderRadius.circular(18)),
                            child: _screens[_currentIndex],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
