import "package:flutter/material.dart";
import 'package:group_3/constants.dart';

import '../widgets/drawer_list_widget.dart';
import '../widgets/kafeshki_widgets.dart';
import '../widgets/my_drawer_menu.dart';

class kafeshkiScreen extends StatefulWidget {
  kafeshkiScreen({Key key}) : super(key: key);

  @override
  State<kafeshkiScreen> createState() => _kafeshkiScreenState();
}

class _kafeshkiScreenState extends State<kafeshkiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Drawer(
              child: SingleChildScrollView(
                child: Container(
                    child: Column(
                  children: [MyHeaderDrawer(), MyDrawerList()],
                )),
              ),
            );
          },
          child: Icon(
            Icons.account_circle_rounded,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFF1F8BA7),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
              ),
            ),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/kafe_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Популярные', style: TextStyle1),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 21.0),
              child: Container(
                height: 215,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    KafeshkiWidgets(
                        title: 'Империя пицы',
                        img: 'assets/images/imperia_pitsa.png'),
                    SizedBox(width: 25.0),
                    KafeshkiWidgets(
                        title: 'Додо пица',
                        img: 'assets/images/dodo_pitsa.png'),
                    SizedBox(width: 25.0),
                    KafeshkiWidgets(
                        title: 'Папа Джонс',
                        img: 'assets/images/papa_djons.png'),
                    SizedBox(width: 25.0),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 21.0),
              child: Text(
                'Все',
                style: TextStyle1,
              ),
            ),
            Center(
              child: KafeshkiWidgets(
                title: 'Додо пица',
                img: 'assets/images/dodo_pitsa.png',
                height: 227.0,
                width: 340.0,
                top: 151.0,
              ),
            ),
            SizedBox(height: 21.0),
            Center(
              child: KafeshkiWidgets(
                title: 'Папа Джонс',
                img: 'assets/images/papa_djons.png',
                height: 227.0,
                width: 340.0,
                top: 151.0,
              ),
            ),
            SizedBox(
              height: 21.0,
            ),
            Center(
              child: KafeshkiWidgets(
                title: 'Додо пица',
                img: 'assets/images/dodo_pitsa.png',
                height: 227.0,
                width: 340.0,
                top: 151.0,
              ),
            ),
            SizedBox(height: 21.0),
            Center(
              child: KafeshkiWidgets(
                title: 'Папа Джонс',
                img: 'assets/images/papa_djons.png',
                height: 227.0,
                width: 340.0,
                top: 151.0,
              ),
            ),
          ],
        ),
      ),
      // drawer: Drawer(
      //   child: SingleChildScrollView(
      //     child: Container(
      //         child: Column(
      //       children: [MyHeaderDrawer(), MyDrawerList()],
      //     )),
      //   ),
      // ),
    );
  }
}

Widget MyDrawerList() {
  return Container(
    padding: const EdgeInsets.only(top: 15.0),
    child: Column(
      children: [MenuIten()],
    ),
  );
}
