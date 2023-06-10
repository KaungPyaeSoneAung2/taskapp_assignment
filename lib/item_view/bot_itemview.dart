import 'package:flutter/material.dart';
import 'package:taskapp/constants/dimes.dart';

import '../widgets/task_list_tile.dart';

class BotItemView extends StatelessWidget {
  const BotItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height *0.6,
      child: const Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: kPadLarge,top: kPadLarge),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Task",
                  style: TextStyle(fontSize: kFontMid, fontWeight: FontWeight.bold),
                ),
              ),
            ),
    
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[    
                  TaskListTile(taskName: "Project name"),
                  TaskListTile(taskName: "Project name"),
                  TaskListTile(taskName: "Project name"),
                  TaskListTile(taskName: "Project name"),
                    ],
                  ),
                ),
              ),
          ],
      ),
    );
  }
}