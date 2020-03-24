import 'package:flutter/material.dart';

class SpinIcon extends StatefulWidget {
   SpinIcon({ Key key}) : super(key: key);

  _SpinIconState createState() => _SpinIconState();
}

class _SpinIconState extends State<SpinIcon> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  var animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 8));
    animation = RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0)
              .animate(_controller)
              ..addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  _controller.forward(from: 0.0);
                }
              }),
      child: Icon(Icons.account_circle, size: 60,),
    );
    _controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: animation,
    );
  }

  
}

