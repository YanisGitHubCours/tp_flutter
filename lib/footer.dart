import 'package:flutter/material.dart';
import 'choice_item.dart';

class Footer extends StatelessWidget {
  final Function getSetState;
  final List<String> _tag = ["Yone", "R6S", "LOL", "Batman", "C <3", "Go"];

  Footer({Key? key, required this.getSetState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Wrap(
          runAlignment: WrapAlignment.start,
          children: [
            for (var i in _tag)
              GestureDetector(
                child: ChoiceItems(myItem: i),
                onTap: () => getSetState(i),
              )
          ],
        ),
      ),
    );
  }
}
