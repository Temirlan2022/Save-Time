import 'package:flutter/material.dart';

class banketnye_stoliki_widget extends StatelessWidget {
  const banketnye_stoliki_widget({
    Key key,
    this.red,
    this.razmer22,
    this.razmer233,
  });
  final Color red;
  final double razmer22;
  final double razmer233;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: razmer22,
      width: razmer233,
      decoration: BoxDecoration(
        color: red,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
