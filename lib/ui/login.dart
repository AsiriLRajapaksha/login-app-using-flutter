import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final TextEditingController _userController = new TextEditingController();
final TextEditingController _paswordController = new TextEditingController();

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  String loginWord = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Loging Form"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(children: <Widget>[
          new Image.asset(
            'image/face.png',
            width: 150.0,
            height: 150.0,
            color: Colors.white,
          ),
          new Padding(padding: new EdgeInsets.all(40)),
          new Container(
            width: 400.0,
            height: 180.0,
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                new TextField(
                  controller: _userController,
                  decoration: new InputDecoration(
                      hintText: "UserName", icon: new Icon(Icons.person)),
                ),
                new TextField(
                  controller: _paswordController,
                  decoration: new InputDecoration(
                      hintText: "Password", icon: new Icon(Icons.lock)
                  ),
                  obscureText: true,
                ),
              ],
            ),
          ),
        ]),
      ),
    );

  }
}
