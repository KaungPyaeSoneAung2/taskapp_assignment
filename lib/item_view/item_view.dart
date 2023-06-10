import 'package:flutter/material.dart';
import 'package:taskapp/constants/dimes.dart';
import 'package:taskapp/item_view/bot_itemview.dart';
import 'package:taskapp/item_view/top_itemview.dart';

class ItemView extends StatelessWidget {
  const ItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children:[
        SizedBox(
            height: double.infinity,
            width: double.infinity,
            child:
                DecoratedBox(decoration: BoxDecoration(color: Colors.black12))),
        Padding(padding: EdgeInsets.only(top: kPadMid),
          child: Align(alignment: Alignment.topCenter, child: TopItemView())),
        Align(alignment: Alignment.bottomCenter, child: BotItemView()),
      ],
    );
  }
}
