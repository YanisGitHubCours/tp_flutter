import 'package:flutter/material.dart';


class ChoiceItems extends StatelessWidget {
  final String myItem;

  // Require an item to create a list
  const ChoiceItems({
    Key? key,
    required this.myItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 60,
        height: 20,
        child: Text(
          myItem,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            )),
      ),
    );
  }
}
