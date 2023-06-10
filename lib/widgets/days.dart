import 'package:flutter/material.dart';
import 'package:taskapp/constants/colors.dart';
import 'package:taskapp/constants/dimes.dart';

class Days extends StatelessWidget {
  const Days({super.key, required this.dateNOw, required this.dayNOw});

  final String dateNOw;
  final String dayNOw;
  @override
  Widget build(BuildContext context) {
    return Container(
            width: 80,
            height: 100,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kPurpleCustom
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Apr", style: TextStyle(color: Colors.white, fontSize: kFontSmall, fontWeight: FontWeight.bold),),
                Text(dateNOw, style: const TextStyle(color: Colors.white, fontSize: kFontBig, fontWeight: FontWeight.bold),),
                Text(dayNOw, style: const TextStyle(color: Colors.white, fontSize: kFontSmall, fontWeight: FontWeight.bold),),
              ],
            ),
          );
  }
}

