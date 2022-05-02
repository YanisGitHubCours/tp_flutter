import 'package:flutter/material.dart';
import 'choice_item.dart';

class Header extends StatelessWidget {
  final List<String> itemList;
  const Header({Key? key, required this.itemList}) : super(key: key);

  Widget displayItemList() {
    if (itemList.isEmpty) {
      return const Text(
        "Cliquez sur les choix en dessous !",
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      );
    }else {
      List<ChoiceItems> myWidgetList = itemList.map((item) => ChoiceItems(myItem: item)).toList();
      return Wrap(
        children: myWidgetList,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.orange,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Text(
                "Vos choix :",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: displayItemList(),
            ),
          )
        ],
      ),
    );
  }
}
