import 'package:flutter/material.dart';
import 'package:taskapp/constants/dimes.dart';
import 'package:taskapp/item_view/item_view.dart';
import 'package:taskapp/screens/task_screen.dart';


//Constants are not well imported yet Teacher
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: TaskScreen()
        );
  }
}
