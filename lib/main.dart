import 'package:flutter/material.dart';
import 'package:michy_dead_hungry/Home_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.black),
        debugShowCheckedModeBanner: false,
        title: 'Michy Muerto De Hambre',
        home: HomePage());
  }
}
