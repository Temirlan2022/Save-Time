import 'package:flutter/material.dart';

class stoliki_widget extends StatelessWidget {
  const stoliki_widget({
    Key key,
    this.red,
    this.razmer,
    this.razmer2,
    this.text,
  });
  final Color red;
  final double razmer;
  final double razmer2;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: Colors.white),
      )),
      height: razmer,
      width: razmer2,
      decoration: BoxDecoration(
        color: red,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
