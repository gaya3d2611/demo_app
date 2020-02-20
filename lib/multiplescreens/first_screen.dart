import 'dart:math';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class firstScreen extends StatefulWidget {
  @override
  _firstScreenState createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  int variable;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black45,
      child: Center(
          child: // Text(
          //YourLuckyNumber(),
          // textDirection: TextDirection.ltr,
          //style: TextStyle(color: Colors.white, fontSize: 40.0),
          // ),
          Stack(
            children: <Widget>[
              Column( mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Your lucky number is:",
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Text((variable).toString(),
                    style: TextStyle(fontSize: 80.0),),
                  FlatButton(onPressed:(){
                    generate();
                  }, child:
                  Text(
                      "generate another lucky number!"
                  ),
                    color: Colors.blue,)
                ],
              )
            ],
          )
      ),
    );
  }
  // ignore: non_constant_identifier_names
  void YourLuckyNumber() {
    var random = Random();
    int luckyNo= random.nextInt(1000);
    setState(() {
      variable= luckyNo;
    });
  }
  void generate(){
    YourLuckyNumber();

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    YourLuckyNumber();
  }
  }

