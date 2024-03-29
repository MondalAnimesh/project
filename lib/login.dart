import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.width * 0.05,
                left: MediaQuery.of(context).size.width * 0.04,
                child: Icon(Icons.arrow_back),
              ),
              Image(
                image: AssetImage("Images/main.png"),
                height: MediaQuery.of(context).size.height * 0.38,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(13, 10, 0, 0),
            child: Text(
              "Let's sign you in.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(13, 12, 0, 0),
            child: Text(
              "Walcome back.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(13, 0, 0, 17),
            child: Text(
              "You have been missed!",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(13, 15, 13, 5),
            child: SizedBox(
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: "Email")),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(13, 8, 13, 5),
            child: SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelText: "Password",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(13, 15, 13, 0),
            child: CupertinoButton(
              onPressed: () async {
                var x = await showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('login'),
                    content: const Text('do you want to login'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, "false"),
                        child: const Text('no'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, "true"),
                        child: const Text('yes'),
                      ),
                    ],
                  ),
                );

                if (x == "true") {
                  Navigator.pushNamed(context, "Task");
                }
              },
              child: Text("Login"),
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
