import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.lime,
      ),
      home: Home(),
    );
  }
}