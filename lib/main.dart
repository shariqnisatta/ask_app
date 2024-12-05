import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
 // int ballnumber= 1;
}
 class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballnumber=1;
 void change() {
    setState(() {
     ballnumber= Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( backgroundColor:Colors. blue ,
        appBar: AppBar(backgroundColor: Colors.red,
          title: Text("ASK/ME/ANYTHING"),
        ),
        body: Center(
           child: Container(
             margin: EdgeInsets.all(30),
             child: InkWell(
              onTap: (){
              change();
              },
               child: Image.asset("assets/images/ball$ballnumber.png"),
             ),
           ),
        ),
      ),
    );
  }
}