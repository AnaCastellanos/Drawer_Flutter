import 'package:flutter/material.dart';
import 'drawer.dart';

class App extends StatefulWidget{
  @override
  _AppState createState() => new _AppState();
}

class _AppState extends State<App> {
  List<DropdownMenuItem<String>> listDrop = [];
  List<String> drop = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  String selected = null;

  void loadData() {
    listDrop = [];
    listDrop = drop.map((val) => DropdownMenuItem<String>(
      child: Text(val), value: val,)).toList();
  } 

  void _onChanged(String value){
    setState(() {
          selected = value;
    });
  }

  @override
  Widget build(context){
    loadData();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: DropdownButton(
          value: selected,
          hint: Text('Select'),
          iconSize: 40.0,
          elevation: 5,
          onChanged: (value) {
            _onChanged(value);
          },
          items: listDrop,
        )
      ),
    );
  }
}