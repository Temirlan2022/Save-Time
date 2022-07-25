import 'package:flutter/material.dart';
import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';

class calendar_widget extends StatelessWidget {
  const calendar_widget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: AnimatedHorizontalCalendar(
          tableCalenderIcon: Icon(
            Icons.calendar_today,
            color: Colors.white,
          ),
          date: DateTime.now(),
          textColor: Colors.black45,
          backgroundColor: Colors.green,
          tableCalenderThemeData: ThemeData.light().copyWith(
            primaryColor: Colors.green,
            accentColor: Colors.red,
            colorScheme: ColorScheme.light(primary: Colors.green),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          selectedColor: Colors.blue,
          onDateSelected: (date) {}),
    );
  }
}
