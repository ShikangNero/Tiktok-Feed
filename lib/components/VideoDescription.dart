import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  VideoDescription({ Key key }) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text("@USERNAME", style: TextStyle(color: Colors.white),),
          padding: EdgeInsets.fromLTRB(12, 0, 0, 4),
        ),
        Container(
          child: Text(
            "This is a description for current video. This description will be changed with current video (limit char amount here)",
            style: TextStyle(color: Colors.white)
          ), 
          padding: EdgeInsets.fromLTRB(12, 0, 0, 8),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: <Widget>[
              Icon(Icons.music_note, size: 16, color: Colors.white ,),
              Text("Playing Music", style: TextStyle(color: Colors.white))
            ],
          ),
        )
        
      ],
    );
  }

}