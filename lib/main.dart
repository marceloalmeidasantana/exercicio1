import 'package:flutter/material.dart';
import 'exercise1/exerciseMobx.dart';
import 'exercise2/exercise.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demooo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Exercise1(),
    // home: const ExerciseMobx(),
    );
  }
}