import 'package:firstapp/Pages/counter_app.dart';
import 'package:firstapp/Pages/quiz_app.dart';
import 'package:flutter/material.dart';

class Menubar2 extends StatefulWidget {
  const Menubar2({super.key});

  @override
  State<Menubar2> createState() => _Menubar2State();
}

class _Menubar2State extends State<Menubar2> {
  var idx = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Counterapp(),
    Quizapp(),
  ];
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 2,
        child: Scaffold(
          body: TabBarView(children: _widgetOptions),
        ));
  }
}
