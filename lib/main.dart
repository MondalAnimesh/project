import 'package:delisol/flash.dart';
import 'package:delisol/login.dart';
import 'package:delisol/task.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Start());
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      // initialRoute: "Login",
      // routes: {
      //   "Flash": (context) => Flash(),
      //   "Login": (context) => Login(),
      //   "Task": (context) => Task()
      // },
    );
  }
}
