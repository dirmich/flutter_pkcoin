import 'package:flutter/material.dart';
import 'package:flutter_pkcoin/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter PKCoin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'PKCoin'),
    );
  }
}
