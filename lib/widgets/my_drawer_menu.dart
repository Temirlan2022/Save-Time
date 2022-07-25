import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  MyHeaderDrawer({Key key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 220, 214),
      width: double.infinity,
      height: 200.0,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            height: 70.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // image: DecorationImage(
              //     image: AssetImage('assets/images/person_icon.webp')),
            ),
          ),
          const Text(
            'Аданбаев Темирлан',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          const Text(
            '0559070590',
            style: TextStyle(color: Colors.grey, fontSize: 14.0),
          )
        ],
      ),
    );
  }
}
