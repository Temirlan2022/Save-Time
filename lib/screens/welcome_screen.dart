import 'package:flutter/material.dart';
import 'package:group_3/screens/menu_screen1.dart';
import '../constants.dart';
import '../widgets/facebook_Google_widget.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Registration_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 358),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()));
                  },
                  child: Text('Регистрация', style: TextStyle8),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFD9D9D9)))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Уже зарегистрированы?',
                    style: TextStyle9,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: TextButton(
                        onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()));
                        },
                        child: Text(
                          'Войти',
                          style: TextStyle1,
                        ),
                      ))
                ],
              ),
            ),
            Text(
              'Продолжить с помощю',
              style: TextStyle9,
            ),
            SizedBox(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 37, right: 19, left: 22),
                  child: Facebook_Google_widget(
                    img: 'assets/images/f.png',
                    color: Color(0xff254AA5),
                    title: '  Facebook',
                    textStyle: TextStyle1,
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 23, right: 19, left: 22, bottom: 151),
                  child: Facebook_Google_widget(
                    img: 'assets/images/g.png',
                    textStyle: TextStyle10,
                    color: Color(0xFFD9D9D9),
                    title: '  Google',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()));
                    },
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
