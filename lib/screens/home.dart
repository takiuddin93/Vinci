import 'package:flutter/material.dart';
import 'package:vinciapp/widgets/home/topToolbar.dart';
import 'package:vinciapp/widgets/home/videoDescription.dart';
import 'package:vinciapp/widgets/home/actionsToolbar.dart';
import 'package:vinciapp/widgets/home/bottomToolbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          //Top Section
          TopToolbar(),
          //Middle Section
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                VideoDescription(),
                ActionsToolbar(),
              ],
            ),
          ),
          //Bottom Section
          BottomToolbar()
        ],
      ),
    );
  }
}
