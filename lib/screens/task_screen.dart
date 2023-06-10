import 'package:flutter/material.dart';
import 'package:taskapp/constants/dimes.dart';

import '../item_view/item_view.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SizedBox(width: kPadSmall,)
          ],
        ),
        body: const ItemView(),
        );
  }
}