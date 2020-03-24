import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  SideBar({ Key key }) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.supervised_user_circle, size: 50, color: Colors.white,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.favorite, size: 50, color: Colors.white,),
                Text("1.3M", style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.comment, size: 50, color: Colors.white),
                Text("5600", style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.share, size: 50, color: Colors.white),
                Text("Share", style: TextStyle(color: Colors.white))
              ],
            )
          )
        ],
      ),
    );
   
  }
  
}