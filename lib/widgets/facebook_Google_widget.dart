import 'package:flutter/material.dart';

class Facebook_Google_widget extends StatelessWidget {
  const Facebook_Google_widget({
    Key key,
    this.img,
    this.title,
    this.color,
    this.textStyle,
    this.onPressed
  }) : super(key: key);
  final String img;
  final String title;
  final Color color;
  final TextStyle textStyle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(img),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                title,
                style: textStyle,
              ),
            )
          ],
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          )),
        ));
  }
}
