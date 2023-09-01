import 'package:firstapp/Model/data_base.dart';
import 'package:flutter/material.dart';

// we will be creating a widget for text field
Widget inputFile(
    {required String label, obscureText = false, bool login = false}) {
  Widget returnwed = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        onChanged: (value) {
          if (login) {
            olduserdata[label] = value;
            print(olduserdata[label]);
          } else {
            userdata[label] = value;
            print(userdata[label]);
          }
        },
        obscureText: obscureText,
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );

  return returnwed;
}
