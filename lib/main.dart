import 'package:flutter/material.dart';
import 'package:mobx_random_stream/screens/random_number_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobX Stream',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: RandomNumberScreen(),
    );
  }
}
