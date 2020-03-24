import 'package:flutter/material.dart';

class TopTab extends StatefulWidget {
  TopTab({ Key key}) : super(key: key);

  _TopTabState createState() => _TopTabState();
}

class _TopTabState extends State<TopTab> with SingleTickerProviderStateMixin {

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      
      // padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        // Expanded(
        //   flex: 1,
        //   child: Icon(
        //     Icons.search, 
        //     color: Colors.white,
        //   ),
        // ),
        Expanded(
          flex: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80),
            // width: 240,
            child: TabBar(
              indicatorColor: Colors.transparent,
              labelStyle: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontSize: 16, color: Colors.grey[700]),
              controller: _controller,
              tabs: <Widget>[
                Text("Following"),
                Text("For You")
              ],
            ),
          ) 
        ),
        // Expanded(
        //   flex: 1,
        //   child: Icon(
        //     Icons.live_tv,
        //     color: Colors.white,
        //   ),
        // )
      ],
      ),

    );
   
  }
}