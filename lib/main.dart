import 'package:flutter/material.dart';
import 'screens/kafeshki_screen.dart';
import 'screens/menu_screen1.dart';
import 'screens/registration_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'RegistrationScreen',
      routes: {
        // 'Loadingscreen': (context) => Loadingscreen(),
        'WelcomeScreen': (context) => WelcomeScreen(),
        'MenuScreen': (context) => MenuScreen(),
        'kafeshkiScreen': (context) => kafeshkiScreen(),
        'RegistrationScreen': (context) => RegistrationScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
