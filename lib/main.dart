import 'package:flutter/material.dart';
import 'footer.dart';
import 'header.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.amber,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String>myItem = [];

  void myCallBack(String itemClicked){
    setState(() {
      if(myItem.contains(itemClicked)){
        myItem.remove(itemClicked);
      }else {
        myItem.add(itemClicked);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Header(
                itemList: myItem,
              ),
            ),
            Expanded(
              child: Footer(
                getSetState: myCallBack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

