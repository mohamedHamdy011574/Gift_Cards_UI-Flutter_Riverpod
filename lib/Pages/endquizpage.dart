import 'package:firstapp/Model/data_base.dart';
import 'package:flutter/material.dart';

class endquizeapp extends StatefulWidget {
  const endquizeapp({super.key});

  @override
  State<endquizeapp> createState() => _endquizeappState();
}

class _endquizeappState extends State<endquizeapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(
                    "Score",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$score",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "Homepage");
                score = 0;
              },
              child: const Text("Return To Home"),
            ),
          )
        ],
      ),
    );
  }
}
