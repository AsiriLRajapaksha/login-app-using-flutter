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
                new Padding(padding: new EdgeInsets.all(8)),
                new Center(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(left: 38.0),
                        child: new RaisedButton(
                          onPressed: ()=>{},
                          color: Colors.red,
                          child: new Text(
                            "Login",
                            style: new TextStyle(
                                color: Colors.white, fontSize: 17.0),
                          ),
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(left: 138.0),
                        child: new RaisedButton(
                          onPressed: ()=>{},
                          color: Colors.red,
                          child: new Text(
                            "Clear",
                            style: new TextStyle(
                                color: Colors.white, fontSize: 17.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          new Padding(padding: EdgeInsets.all(10)),
          new Container(
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("$loginWord",
                      style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800)),
                ]),
          ),
        ]),
      ),
    );

  }
}
