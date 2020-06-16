import 'package:flutter/material.dart';
import 'package:widget_bloc/login-container.dart';
import 'package:widget_bloc/social-container.dart';

class LoginWidget extends StatelessWidget {
  _columnItem() {
    //Widget opcional. Dart subentende o tipo
    return Column(
      children: <Widget>[
        Expanded(child: LoginContainer(),),
        Expanded(child: SocialContainer(),),
      ],
    );
  }

  _buttomBuild() {
    return CircleAvatar(
      maxRadius: 30.0,      
      backgroundColor: Colors.blue,
      child: Icon(Icons.keyboard_arrow_down, size: 30, color: Colors.white),
    );
  }

  _toolBar() {
    return Padding(
      padding: EdgeInsets.only(
        top: 30,
        left: 20,
        right: 20,
      ),
      child: Container(
        height: 40.0,
        child: Row(
          children: <Widget>[
            Image.asset("assets/drawer.png"),
            Expanded(
              child: Container(),
            ),
            Image.asset("assets/logo.png"),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _columnItem(),
        Center(
          child: _buttomBuild(),
        ),
        _toolBar(),
      ],
    );
  }
}
