import 'package:flutter/material.dart';

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
              color: Colors.purpleAccent
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Apr", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                Text(dateNOw, style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                Text(dayNOw, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            ),
          );
  }
}

