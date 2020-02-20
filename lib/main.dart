import "package:flutter/material.dart";

import 'multiplescreens/first_screen.dart';
void main() => runApp(new SomeClass());

class SomeClass extends StatefulWidget {
  @override
  _SomeClassState createState() => _SomeClassState();
}
class _SomeClassState extends State<SomeClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "lucky number",
        home: Scaffold(
            appBar: AppBar(title: Text("determine your lucky number",),),
            body: firstScreen()
        )
    );
  }
}
