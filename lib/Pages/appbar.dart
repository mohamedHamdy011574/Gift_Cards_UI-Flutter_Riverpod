import 'package:firstapp/Pages/counter_app.dart';
import 'package:firstapp/Pages/home_page.dart';
import 'package:firstapp/Pages/quiz_app.dart';
import 'package:flutter/material.dart';

class Menubar extends StatefulWidget {
  const Menubar({super.key});

  @override
  State<Menubar> createState() => _MenubarState();
}

class _MenubarState extends State<Menubar> {
  int idx = 1;
  static const List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    Counterapp(),
    Quizapp(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[idx],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            idx = value;
            if (idx == 0) {
              Navigator.pushReplacementNamed(context, "Homepage");
            }
          });
        },
        currentIndex: idx,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.control_point_duplicate_sharp),
              label: "Counter App"),
          BottomNavigationBarItem(
              label: "Quiz App",
              icon: Icon(
                Icons.question_answer,
              )),
        ],
      ),
    );
  }
}
