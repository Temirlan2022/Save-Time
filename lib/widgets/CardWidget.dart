// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import '../constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key key,
      this.title,
      this.baasy,
      this.sostav,
      this.minusOnTap,
      this.plusOnTap,
      this.shtuk,
      this.img});
  final String title;
  final String baasy;
  final String sostav;
  final void Function() minusOnTap;
  final void Function() plusOnTap;
  final String shtuk;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 117,
      margin: const EdgeInsets.only(
        top: 26,
      ),
      width: double.infinity,
      child: Expanded(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Image.asset(img),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 9.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle1,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    baasy,
                    style: TextStyle2,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    sostav,
                    style: TextStyle3,
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: GestureDetector(
                          onTap: minusOnTap,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Icon(
                              Icons.remove,
                              size: 25.0,
                              color: Color(0xff9E0000),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(shtuk, style: TextStyle1),
                      ),
                      GestureDetector(
                        onTap: plusOnTap,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            Icons.add,
                            size: 25.0,
                            color: Color(0xff1F8BA7),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.0),
        color: Color(0xff1F8BA7),
      ),
    );
  }
}
