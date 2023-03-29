import 'package:core_app/core/core_counter.dart';
import 'package:core_app/core/core_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //This a comment
      title: 'Flutter Demo V2.0',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterScreen(),
    );
    //Another comment
  }
}
