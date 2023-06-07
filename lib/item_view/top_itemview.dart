import 'package:flutter/material.dart';
import 'package:taskapp/constants/colors.dart';
import 'package:taskapp/constants/dimes.dart';
import 'package:taskapp/widgets/days.dart';

class TopItemView extends StatelessWidget {
  const TopItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: padLarge),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Apr 3",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              margin: const EdgeInsets.only(left: padSmall, right: padSmall),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Days(dateNOw: "3", dayNOw: "SUN"),
                  Days(dateNOw: "4", dayNOw: "MON"),
                  Days(dateNOw: "5", dayNOw: "TUE"),
                  Days(dateNOw: "6", dayNOw: "WED"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: padSmall),
            child: Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                          backgroundColor: MaterialStateProperty.all<Color>(PurpleCustom)
                    ),
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Text(
                          "+",
                          style: TextStyle(fontSize: fontSmall),
                        ),
                        SizedBox(width: padSmall),
                        Text(
                          "Add Task",
                          style: TextStyle(fontSize: fontSmall),
                        )
                      ],
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
