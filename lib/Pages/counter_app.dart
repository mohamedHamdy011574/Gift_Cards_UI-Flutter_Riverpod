import 'package:flutter/material.dart';

int counter = 0;

class Counterapp extends StatefulWidget {
  const Counterapp({super.key});

  @override
  State<Counterapp> createState() => _CounterappState();
}

class _CounterappState extends State<Counterapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 180, 189, 204),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: IconButton(
                    iconSize: 30,
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    },
                    icon: const Icon(Icons.remove)),
              ),
              Text("$counter"),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 180, 189, 204),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: IconButton(
                    iconSize: 30,
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    icon: const Icon(Icons.add)),
              ),
            ],
          ),
          FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: const Text("Reset")),
        ],
      ),
    );
  }
}
