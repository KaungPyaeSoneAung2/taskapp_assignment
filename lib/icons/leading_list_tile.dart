import 'package:flutter/material.dart';
import 'package:taskapp/constants/colors.dart';

class LeadingListTile extends StatelessWidget {
  const LeadingListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: PurpleCustom,
      child: Icon(Icons.notes, color: Colors.white),
    );
  }
}