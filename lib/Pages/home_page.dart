import 'package:firstapp/Model/data_base.dart';
import 'package:firstapp/Pages/appbar.dart';
import 'package:firstapp/Pages/counter_app.dart';
import 'package:firstapp/Pages/quiz_app.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Quizapp(),
    Counterapp(),
    Menubar(),
  ];

  void onItemTaped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome In My App")),
      body: Center(
        child: _widgetOptions[selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.person),
                      Text(
                        appUsers[olduserdata['Email']]!.userName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ])),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              selected: selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                onItemTaped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.quiz),
              title: const Text('Quiz App'),
              selected: selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                onItemTaped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.control_point_duplicate_sharp),
              title: const Text('Counter App'),
              selected: selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                onItemTaped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart_rounded),
              title: const Text('Check Nav Bars'),
              selected: selectedIndex == 3,
              onTap: () {
                // Update the state of the app
                onItemTaped(3);
                // Then close the drawer
                Navigator.pushNamed(context, "AppBar");
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Check Nav Bars 2'),
              selected: selectedIndex == 4,
              onTap: () {
                Navigator.pushNamed(context, "AppBar2");
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              selected: selectedIndex == 5,
              onTap: () {
                Navigator.pushNamed(context, "Loginpage");
              },
            ),
          ],
        ),
      ),
    );
  }
}
