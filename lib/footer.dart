import 'package:flutter/material.dart';
import 'choice_item.dart';
import 'package:tp/item.dart';

class Footer extends StatelessWidget {
  final List<Item> _items = List.generate(6, (int index) {
    final List<String> _tag = ["Yone", "R6S", "LOL", "Batman", "C <3", "Go"];
    return Item(_tag[index]);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        //Erreur dans la console a cause du wrap mais l'application marche correctement
        child: Wrap(
          runAlignment: WrapAlignment.start,
          children: [
            for (var i in _items)
              GestureDetector(
                child: ChoiceItems(myItem: i),
                onTap: () {
                  i.counter = i.counter + 1;
                  i.status = true;
                  if (i.counter % 2 == 0) {
                    i.status = false;
                  }
                },
              )
          ],
        ),
      ),
    );
  }
}
