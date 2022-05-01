import 'package:flutter/material.dart';
import 'choice_item.dart';
import 'package:tp/Item.dart';

class Footer extends StatelessWidget {
  final List<Item> _items = List.generate(3, (int index) {
    final List<String> _tag = ["Yone", "R6S", "LOL"];
    return Item(_tag[index]);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
          child: Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                for ( var i in _items )
                  GestureDetector(
                      child: ChoiceItems(myItem: i),
                    onTap: (){
                        i.counter = i.counter + 1;
                        i.status = true;
                        if (i.counter%2 == 0){

                        }
                    },
                  )
              ],
            ),
          ),
      ),
    );
  }
}
