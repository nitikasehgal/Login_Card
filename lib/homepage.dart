import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final card = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
            radius: 72.0,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/images.jpg')),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Welcome to this login page design!",
        style: TextStyle(fontSize: 28, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae volutpat magna, vel hendrerit ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse eget maximus lorem, vel sagittis turpis. Curabitur orci diam, tempor a aliquet sed, eleifend at ante. Ut tempus libero vitae lorem consectetur viverra. Suspendisse nec nulla nunc. Cras vitae ultrices odio. Ut a ultricies purus. Ut rutrum ex ante, vel finibus sem vehicula ut. Mauris consectetur, neque eget feugiat euismod, libero augue rhoncus diam, non consequat dolor eros ac nulla.",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.blue, Colors.lightBlueAccent])),
      child: Column(
        children: [card, welcome, lorem],
      ),
    );
    return Scaffold(
      body: body,
    );
  }
}
