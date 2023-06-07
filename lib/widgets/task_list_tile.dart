import 'package:flutter/material.dart';
import 'package:taskapp/icons/leading_list_tile.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({super.key, required this.taskName});
  final String taskName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      height: 80,
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              taskName,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text('2 days ago'),
          ],
        ),
        leading:
            const SizedBox(height: double.infinity, child: LeadingListTile()),
        trailing: const SizedBox(
            height: double.infinity, child: Icon(Icons.more_vert_outlined, size: 35,)),
      ),
    );
  }
}
