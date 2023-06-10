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
            padding: EdgeInsets.only(left: kPadLarge),
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
              margin: const EdgeInsets.only(left: kPadSmall, right: kPadSmall),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Days(dateNOw: "3", dayNOw: "SUN"),
                  Days(dateNOw: "4", dayNOw: "MON"),
                  Days(dateNOw: "5", dayNOw: "TUE"),
                  Days(dateNOw: "6", dayNOw: "WED"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: kPadSmall),
            child: Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                          backgroundColor: MaterialStateProperty.all<Color>(kPurpleCustom)
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          "+",
                          style: TextStyle(fontSize: kFontSmall),
                        ),
                        SizedBox(width: kPadSmall),
                        Text(
                          "Add Task",
                          style: TextStyle(fontSize: kFontSmall),
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
