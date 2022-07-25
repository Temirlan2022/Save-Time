import 'package:flutter/material.dart';
import 'package:group_3/screens/menu_screen1.dart';
import '../constants.dart';

class KafeshkiWidgets extends StatelessWidget {
  const KafeshkiWidgets(
      {Key key, this.title, this.img, this.height, this.width, this.top})
      : super(key: key);
  final String title;
  final String img;
  final double height;
  final double width;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MenuScreen()));},
          child: Container(
            height: height ?? 213.0,
            width: width ?? 307.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
              ),
            ),
          ),
        ),
        Positioned(
          left: 35,
          top: top ?? 137.0,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: TextStyle4),
                Row(
                  children: [
                    Icon(Icons.star, size: 11.0, color: Color(0xff1F8BA7)),
                    Icon(Icons.star, size: 11.0, color: Color(0xff1F8BA7)),
                    Icon(Icons.star, size: 11.0, color: Color(0xff1F8BA7)),
                    Icon(Icons.star, size: 11.0, color: Color(0xff1F8BA7)),
                    Icon(
                      Icons.star_border,
                      size: 11.0,
                    ),
                    Text('  4.0'),
                    SizedBox(width: 22.0),
                    Text('2054 Просмотров')
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 15.0,
                        color: Color(0xff9E0000),
                      ),
                      Text(' 30 min', style: TextStyle5),
                      SizedBox(width: 17.0),
                      Icon(
                        Icons.circle,
                        size: 15.0,
                        color: Color(0xffFF3D00),
                      ),
                      Text(' normal', style: TextStyle6),
                      SizedBox(width: 30.0),
                      Icon(
                        Icons.location_on,
                        size: 15.0,
                        color: Color(0xff1F8BA7),
                      ),
                      Text('2.1 km', style: TextStyle7)
                    ],
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: Color(0xFFD9D9D9)),
            width: 238.0,
            height: 76.0,
          ),
        ),
      ],
    );
  }
}
