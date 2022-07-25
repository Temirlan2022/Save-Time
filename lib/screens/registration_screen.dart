import 'package:flutter/material.dart';
import 'package:group_3/screens/kafeshki_screen.dart';
import 'package:group_3/widgets/facebook_Google_widget.dart';

import '../constants.dart';
import '../widgets/Registration_field_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  void initState() {
    super.initState();
    print(activeColor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 142),
      child: Column(
        children: [
          Text(
            'Регистрация',
            style: TextStyle11,
          ),
          SizedBox(height: 64),
          Registration_field_widget(
            img: 'assets/images/person_icon.png',
            hintText: 'Имя',
          ),
          Divider(
            indent: 26,
            endIndent: 26,
            height: 15,
          ),
          SizedBox(height: 12),
          Registration_field_widget(
            img: 'assets/images/email_icon.png',
            hintText: 'Эл.почта',
          ),
          Divider(
            indent: 26,
            endIndent: 26,
            height: 15,
          ),
          SizedBox(height: 12),
          Registration_field_widget(
            img: 'assets/images/password_icon.png',
            hintText: 'Пароль',
          ),
          Divider(
            indent: 26,
            endIndent: 26,
            height: 15,
          ),
          SizedBox(height: 54),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => kafeshkiScreen())));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Text(
                  'Регистрация',
                  style: TextStyle9,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    activeColor == true ? Colors.blue : Color(0xFFC4C4C4)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                )),
              ))
        ],
      ),
    ));
  }
}
