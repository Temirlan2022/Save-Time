import 'package:flutter/material.dart';

import '../constants.dart';

bool activeColor = false;

class Registration_field_widget extends StatelessWidget {
  const Registration_field_widget(
      {Key key, this.hintText, this.img, this.onChanged})
      : super(key: key);
  final String hintText;
  final String img;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 43.0),
      height: 50.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(img),
          SizedBox(
            width: 37,
          ),
          Flexible(
            child: TextFormField(
                onChanged: (value) {
                  if (value != null) {
                    activeColor = true;
                    print(activeColor);
                  }
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0.0),
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  border: InputBorder.none,
                ),
                style: TextStyle4),
          ),
        ],
      ),
    );
  }
}
