import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            "Text Widget",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        body: Center(
          child: Text.rich(
            TextSpan(
              children: [
                textStyle(text: 'Flutter \n', color: Colors.red),
                textStyle(text: 'Dart\n', color: Colors.yellow),
                textStyle(text: 'Java\n', color: Colors.greenAccent),
                textStyle(text: 'Python\n', color: Colors.blueAccent),
                textStyle(text: 'HTML', color: Colors.teal)
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

TextSpan textStyle({required String text, required Color color}) {
  return TextSpan(
    text: text,
    style: TextStyle(color: color, fontSize: 35),
  );
}
