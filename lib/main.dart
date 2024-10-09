import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:youtubeapp/views/auth/signup_page.dart';
//import 'package:bottom_nav_ashok//views/auth/signup_page.dart';
import 'package:bottom_nav_ashok/page1.dart';
import 'package:bottom_nav_ashok/page2.dart';
import 'package:bottom_nav_ashok/page3.dart';
import 'package:bottom_nav_ashok/page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavPage());
  }
}

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int curretntindex = 0;

  List<Widget> pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar
        appBar: AppBar(
          title: Text('Chat app Demo'),
          backgroundColor: Color(0xF419695D),
        ),
        //app bar end

        // drawer
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xF419695D),
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        //drawer end
        extendBody: true,
        backgroundColor: Colors.grey[100],
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xF419695D),
          splashColor: Colors.grey[400],
          elevation: 0,
          onPressed: () {},
          child: Icon(
            Icons.call,
            size: 30,
            color: Colors.grey[100],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          notchMargin: 5,
          child: Container(
            color: Colors.grey[100],
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  padding: EdgeInsets.only(left: 2),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      curretntindex = 0;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: curretntindex == 0
                                    ? Color(0xF419695D)
                                    : Colors.white,
                                width: 2))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: curretntindex == 0
                                ? Color(0xF419695D)
                                : Colors.brown[400],
                          ),
                          Text(
                            " home  ",
                            style: TextStyle(
                              color: curretntindex == 0
                                  ? Color(0xF419695D)
                                  : Colors.brown[400],
                            ),
                          )
                        ]),
                  ),
                ),
                MaterialButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  padding: EdgeInsets.only(right: 5),
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      curretntindex = 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: curretntindex == 1
                                    ? Color(0xF419695D)
                                    : Colors.white,
                                width: 2))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: curretntindex == 1
                                ? Color(0xF419695D)
                                : Colors.brown[400],
                          ),
                          Text(
                            "   Chat  ",
                            style: TextStyle(
                              color: curretntindex == 1
                                  ? Color(0xF419695D)
                                  : Colors.brown[400],
                            ),
                          )
                        ]),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                MaterialButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  padding: EdgeInsets.only(left: 5),
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      curretntindex = 2;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: curretntindex == 2
                                    ? Color(0xF419695D)
                                    : Colors.white,
                                width: 2))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_balance,
                            color: curretntindex == 2
                                ? Color(0xF419695D)
                                : Colors.brown[400],
                          ),
                          Text(
                            " Plans ",
                            style: TextStyle(
                              color: curretntindex == 2
                                  ? Color(0xF419695D)
                                  : Colors.brown[400],
                            ),
                          )
                        ]),
                  ),
                ),
                MaterialButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  padding: EdgeInsets.only(right: 2),
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      curretntindex = 3;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: curretntindex == 3
                                    ? Color(0xF419695D)
                                    : Colors.white,
                                width: 2))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: curretntindex == 3
                                ? Color(0xF419695D)
                                : Colors.brown[400],
                          ),
                          Text(
                            " profile",
                            style: TextStyle(
                              color: curretntindex == 3
                                  ? Color(0xF419695D)
                                  : Colors.brown[400],
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: pages[curretntindex]);
  }
}
