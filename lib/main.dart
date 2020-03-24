import 'package:flutter/material.dart';
import 'components/TopTab.dart';
import 'components/BottomBar.dart';
import 'components/VideoDescription.dart';
import 'components/SpinIcon.dart';
import 'components/SideBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindCross_MVP',
     
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.redAccent), 
          child: Home(),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            decoration: BoxDecoration(color: Colors.black), 
            height: 70,
            child: BottomBar(),
          ),
        ),
      )
      
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          height: 100,
          width: screenWidth,
          child: Container(
            decoration: BoxDecoration(color: Colors.transparent),
            child: TopTab(),
          )
        ),
        Positioned(
          bottom: 0,
          width: 0.7 * screenWidth,
          height: 150,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(color: Colors.transparent),
            child: VideoDescription(),
          )
        ),
        Positioned(
          top: 0.4 * screenHeight,
          right: 0,
          height: 0.37 * screenHeight,
          width: 0.25 * screenWidth,
          child: Container(
            child: SideBar(),
            // decoration: BoxDecoration(color: Colors.yellowAccent),
          )
        ),
        Positioned(
          bottom: 0,
          right: 0,
          height: 0.25 * screenWidth,
          width: 0.25 * screenWidth,
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 4, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SpinIcon(),
              ],
            )
          )
        )
      ],
    );
  }
}