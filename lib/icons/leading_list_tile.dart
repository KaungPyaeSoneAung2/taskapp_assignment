import 'package:flutter/material.dart';

class LeadingListTile extends StatelessWidget {
  const LeadingListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.purpleAccent,
      child: Icon(Icons.notes, color: Colors.white),
    );
  }
}