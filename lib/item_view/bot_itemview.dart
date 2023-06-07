import 'package:flutter/material.dart';
import 'package:taskapp/constants/dimes.dart';

import '../widgets/task_list_tile.dart';

class BotItemView extends StatelessWidget {
  const BotItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height *0.6,
      child: Stack(
          children: [
            
            const Padding(
              padding: EdgeInsets.only(left: padLarge,top: padLarge),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Task",
                  style: TextStyle(fontSize: fontMid, fontWeight: FontWeight.bold),
                ),
              ),
            ),
    
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [    
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