import 'package:flutter/material.dart';
import 'package:taskapp/constants/dimes.dart';
import 'package:taskapp/item_view/item_view.dart';


//Constants are not well imported yet Teacher
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(Icons.arrow_back, color: Colors.black, size: 40),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.black,
              size: 40,
            ),
            SizedBox(width: padSmall,)
          ],
        ),
        body: const ItemView(),
        )
        );
  }
}
