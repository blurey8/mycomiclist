import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MclApp());

class MclApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyComicList',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'MyComicList'),
    );
  }
}
