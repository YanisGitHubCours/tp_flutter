import 'dart:ffi';

class Item {
  final String title;
  late bool status;
  int counter = 0;

  Item(this.title);

  void setStatus(bool isClicked){
    status = isClicked;
  }
}