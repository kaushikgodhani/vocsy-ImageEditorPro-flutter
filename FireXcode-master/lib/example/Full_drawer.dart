import 'package:flutter/material.dart';
import 'package:firexcode/example/Rounded_drawer.dart';
import 'package:firexcode/firexcode.dart';

class FullDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: XDrawerFullWidth(
        backgrounCcolor: Colors.red,
        children: <Widget>[
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.remove,
                color: Colors.black,
              ),
            ),
            title: Textmaterial(
              color: Colors.white,
              fontsize: 25,
              text: 'Hello World',
            ),
          ),
          ListTile(
            onTap: () {
              XRoutePage(context, RoundedDrawer()).exitPush(RoundedDrawer());
            },
            leading: Icon(
              Icons.remove,
              color: Colors.white,
            ),
            title: Textmaterial(
              color: Colors.white,
              fontsize: 25,
              text: 'Page SizeTransition',
            ),
          ),
        ],
      ).animation(configMap: XAnimationType.fadeIn, autoPlay: true),
    );
  }
}
