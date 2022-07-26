import 'package:flutter/material.dart';
import 'dart:io';

import 'package:group_3/screens/welcome_screen.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void Sleep() {
    Future.delayed(Duration(seconds: 7), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    Sleep();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Image.asset('assets/images/логотип.png'))],
      ),
    );
  }
}
