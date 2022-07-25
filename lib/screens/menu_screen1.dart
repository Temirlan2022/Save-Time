import 'package:flutter/material.dart';
import 'package:group_3/screens/zakazat_screen.dart';
import '../constants.dart';
import '../utils/function.dart';
import '../widgets/CardWidget.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({Key key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuState();
}

class _MenuState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/menu_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          constraints: const BoxConstraints.expand(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 85, right: 10.0, bottom: 90.0, left: 10.0),
              child: ListView(
                children: [
                  const Text(
                    'Империя пицы',
                    style: TextStyle1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                        child: Image.asset('assets/images/imperia_logo.png')),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 54.0),
                    child: Text(
                      'Меню',
                      style: TextStyle1,
                    ),
                  ),
                  CardWidget(
                    title: 'Куриная 30 см',
                    baasy: 'kgz     $syrnyiBaasy',
                    sostav: 'Курица сыр, соус: "Альфредо"',
                    minusOnTap: () {
                      syrnyiShtukremove();
                      setState(() {});
                    },
                    shtuk: '$syrnyiShtuk',
                    plusOnTap: () {
                      setState(() {});
                      syrnyiShtukadd();
                    },
                    img: 'assets/images/image 2.png',
                  ),
                  CardWidget(
                    title: 'Мексиканский 30 см',
                    baasy: 'kgz     $meksikanskiyBaasy',
                    sostav: 'Перец чили,твёрдый сыр,кетчуп',
                    minusOnTap: () {
                      meksikanskiyShtukremove();
                      setState(() {});
                    },
                    shtuk: '$meksikanskiyShtuk',
                    plusOnTap: () {
                      setState(() {});
                      meksikanskiyShtukadd();
                    },
                    img: 'assets/images/pitsa2.png',
                  ),
                  CardWidget(
                    title: 'ОВОЩНАЯ 30 см',
                    baasy: 'kgz     $ovoshnoiBaasy',
                    sostav: 'Перец чили,твёрдый сыр,кетчуп',
                    minusOnTap: () {
                      ovoshnoiShtukremove();
                      setState(() {});
                    },
                    shtuk: '$ovoshnoiShtuk',
                    plusOnTap: () {
                      setState(() {});
                      ovoshnoiShtukadd();
                    },
                    img: 'assets/images/pitsa3.png',
                  ),
                  CardWidget(
                    title: 'Куриная 30 см',
                    baasy: 'kgz     $syrnyiBaasy',
                    sostav: 'Курица сыр,соус: "Альфредо"',
                    minusOnTap: () {
                      syrnyiShtukremove();
                      setState(() {});
                    },
                    shtuk: '$syrnyiShtuk',
                    plusOnTap: () {
                      setState(() {});
                      syrnyiShtukadd();
                    },
                    img: 'assets/images/image 2.png',
                  ),
                  CardWidget(
                    title: 'Мексиканский 30 см',
                    baasy: 'kgz     $meksikanskiyBaasy',
                    sostav: 'Перец чили,твёрдый сыр,кетчуп',
                    minusOnTap: () {
                      meksikanskiyShtukremove();
                      setState(() {});
                    },
                    shtuk: '$meksikanskiyShtuk',
                    plusOnTap: () {
                      setState(() {});
                      meksikanskiyShtukadd();
                    },
                    img: 'assets/images/pitsa2.png',
                  ),
                  CardWidget(
                    title: 'ОВОЩНАЯ 30 см',
                    baasy: 'kgz     $ovoshnoiBaasy',
                    sostav: 'Перец чили,твёрдый сыр,кетчуп',
                    minusOnTap: () {
                      ovoshnoiShtukremove();
                      setState(() {});
                    },
                    shtuk: '$ovoshnoiShtuk',
                    plusOnTap: () {
                      setState(() {});
                      ovoshnoiShtukadd();
                    },
                    img: 'assets/images/pitsa3.png',
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: SizedBox(
            height: 70.0,
            width: double.infinity,
            child: FloatingActionButton.extended(
              backgroundColor: const Color(0xff1F8BA7),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => ZakazatScreen())));
              },
              label: Row(
                children: [
                  Text(
                    'Заказ: $baaryShtuk',
                    style: TextStyle1,
                  ),
                  Text(
                    '  $chek ',
                    style: TextStyle1,
                  ),
                  const Text(
                    'сом',
                    style: TextStyle(fontSize: 20.0, color: Color(0xff9E0000)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
