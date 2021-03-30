import 'package:flutter/material.dart';
import 'package:netflix_clonecoding/screen/home_screen.dart';
import 'package:netflix_clonecoding/screen/more_screen.dart';
import 'package:netflix_clonecoding/screen/search_screen.dart';
import 'package:netflix_clonecoding/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seungflix',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(), // 손가락으로 탭 전환 막기
            children: <Widget>[
              HomeScreen(),
              SearchScreen(),
              Container(
                child: Center(
                  child: Text('save'),
                ),
              ),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
