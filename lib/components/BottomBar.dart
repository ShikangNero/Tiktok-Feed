import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  BottomBar({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.home, color: Colors.white, size: 34,),
            Text("Home", style: TextStyle(color: Colors.white, fontSize: 10),)
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.search, color: Colors.white, size: 34,),
            Text("Discover", style: TextStyle(color: Colors.white, fontSize: 10),)
          ],
        ),
        AddButton(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.message, color: Colors.white, size: 34,),
            Text("Inbox", style: TextStyle(color: Colors.white, fontSize: 10),)
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.person, color: Colors.white, size: 34,),
            Text("Me", style: TextStyle(color: Colors.white, fontSize: 10),)
          ],
        ),
      ],
    );
  }
}

class AddButton extends StatelessWidget {
  AddButton({ Key key }) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      width: 50,
      child: Stack(
        children: <Widget>[
          Positioned(
            height: 26,
            width: 40,
            left: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.cyan, borderRadius: BorderRadius.circular(6)),
            ),
          ),
          Positioned(
            height: 26,
            width: 40,
            right: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(6)),
            ),
          ),
          Positioned(
            height: 26,
            width: 40,
            left: 5,
            child: Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(6)),
              child: Icon(
                Icons.add,
              ),
            ),
          )
        ],
      ),
    );
  }
  
}