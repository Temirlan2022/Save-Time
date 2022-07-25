import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:group_3/widgets/banketnye_stoliki_widget.dart';

import '../widgets/calendar_widget.dart';
import '../widgets/stoliki_widget.dart';

class ZakazatScreen extends StatefulWidget {
  ZakazatScreen({Key key});

  @override
  State<ZakazatScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ZakazatScreen> {
  int _selectedValue = 0;
  void _showPicker(BuildContext ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              width: 300,
              height: 250,
              child: CupertinoPicker(
                backgroundColor: Colors.white,
                itemExtent: 30,
                scrollController: FixedExtentScrollController(initialItem: 1),
                children: [
                  Text('0'),
                  Text('1'),
                  Text('2'),
                  Text('3'),
                  Text('4'),
                  Text('5'),
                  Text('6'),
                  Text('7'),
                  Text('8'),
                  Text('9'),
                  Text('10'),
                  Text('11'),
                  Text('12'),
                  Text('13'),
                  Text('14'),
                  Text('15'),
                  Text('16'),
                  Text('17'),
                  Text('18'),
                  Text('19'),
                  Text('20'),
                ],
                onSelectedItemChanged: (value) {
                  setState(() {
                    _selectedValue = value;
                  });
                },
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Icon(
                Icons.add,
                color: Colors.red,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                            ),
                            Text(
                              'Назад',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 40),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                height: MediaQuery.of(context).size.height * 20.0,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 147, 146, 146),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 9,
                child: Container(
                  height: MediaQuery.of(context).size.height * 20.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      ),
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  'выбрать стол',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 220, top: 100),
                child: Text(
                  'Банкетный залы',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 190),
                child: Column(
                  children: [
                    Text('10 Челевек', style: TextStyle(fontSize: 25)),
                    SizedBox(
                      height: 70,
                    ),
                    Text('15 Человек', style: TextStyle(fontSize: 25)),
                    SizedBox(
                      height: 70,
                    ),
                    Text('20 Человек', style: TextStyle(fontSize: 25))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 215,
                ),
                child: Row(
                  children: [
                    Text(
                      'Забронирован',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      'Забронирован',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 295, left: 85),
                child: Text(
                  'Ваш стол',
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 345, left: 335),
                child: Text(
                  'Забронирован',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 150, right: 100),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  stoliki_widget(
                                    text: '1',
                                    red: Color.fromARGB(255, 118, 14, 7),
                                    razmer: 50,
                                    razmer2: 50,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  stoliki_widget(
                                    text: '2',
                                    red: Colors.green,
                                    razmer: 50,
                                    razmer2: 50,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  stoliki_widget(
                                    text: '3',
                                    red: Color.fromARGB(255, 118, 14, 7),
                                    razmer: 50,
                                    razmer2: 50,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  stoliki_widget(
                                    text: '4',
                                    red: Colors.green,
                                    razmer: 50,
                                    razmer2: 50,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  stoliki_widget(
                                    text: '5',
                                    red: Colors.blue,
                                    razmer: 50,
                                    razmer2: 50,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  stoliki_widget(
                                    text: '6',
                                    red: Colors.green,
                                    razmer: 50,
                                    razmer2: 50,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 600,
                        ),
                        Column(
                          children: [
                            banketnye_stoliki_widget(
                              razmer22: 80,
                              razmer233: 80,
                              red: Colors.blue,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            banketnye_stoliki_widget(
                              razmer22: 80,
                              razmer233: 80,
                              red: Color.fromARGB(255, 118, 14, 7),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            banketnye_stoliki_widget(
                              razmer22: 80,
                              razmer233: 80,
                              red: Colors.blue,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 900,
                thickness: 1,
                indent: 10,
                endIndent: 10,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 470, left: 10),
                child: Text(
                  'Kоличества гостей:',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Divider(
                height: 1000,
                thickness: 1,
                indent: 10,
                endIndent: 10,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 515, left: 10),
                child: Text('Время',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 550),
                child: calendar_widget(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 700, left: 10),
                child: Text(
                  '16:30',
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 800,
                ),
                child: Center(
                  child: Container(
                    child: Center(
                      child: Text(
                        'Оформить заказ',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    height: 50,
                    width: 250,
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 450,
                      ),
                      child: CupertinoButton(
                        child: Text(
                          '$_selectedValue',
                          style: TextStyle(fontSize: 30),
                        ),
                        onPressed: () => _showPicker(context),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
