import 'package:flutter/material.dart';

class ActionsToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        _getSocialAction(
            iconData: Icons.favorite, title: '3.2m', isShare: false),
        _getSocialAction(
            iconData: Icons.chat_bubble, title: '16.4k', isShare: false),
        _getSocialAction(iconData: Icons.share, title: 'Share', isShare: false),
      ]),
    );
  }

  Widget _getSocialAction({IconData iconData, String title, bool isShare}) {
    return Container(
      width: 60.0,
      height: 60.0,
      child: Column(
        children: <Widget>[
          Icon(
            iconData,
            size: isShare ? 30.0 : 32.0,
            color: Colors.grey[200],
          ),
          Padding(
            padding: EdgeInsets.only(top: isShare ? 4.0 : 2.0),
            child: Text(
              title,
              style: TextStyle(fontSize: isShare ? 10.0 : 12.0),
            ),
          )
        ],
      ),
    );
  }
}
