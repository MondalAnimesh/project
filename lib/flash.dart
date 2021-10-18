import 'package:flutter/material.dart';

class Flash extends StatefulWidget {
  const Flash({Key? key}) : super(key: key);

  @override
  _FlashState createState() => _FlashState();
}

class _FlashState extends State<Flash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Image(
          image: AssetImage("Images/Untitled.png"),
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 50,
                  blurRadius: 16,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.23,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image(
            image: const AssetImage("Images/Logo.png"),
            height: MediaQuery.of(context).size.height * 0.3,
          ),
        ),
      ]),
    );
  }
}
