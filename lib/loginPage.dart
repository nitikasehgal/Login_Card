import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loginpage/homepage.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset('assets/images/logo.png'),
        ));
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'name@gmail.com',
      decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'Some Password!',
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginbutton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(309.0),
        shadowColor: Colors.lightBlueAccent,
        elevation: 5.0,
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          minWidth: 200.0,
          height: 42.0,
          color: Colors.lightBlueAccent,
          child: Text(
            "Log In!",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    final forgetLabel = TextButton(
      child: Text("Forgot Password?", style: TextStyle(color: Colors.black54)),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        children: [
          logo,
          SizedBox(
            height: 48,
          ),
          email,
          SizedBox(
            height: 8,
          ),
          password,
          SizedBox(
            height: 24,
          ),
          loginbutton,
          forgetLabel
        ],
      )),
    );
  }
}
