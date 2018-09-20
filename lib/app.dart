import 'package:flutter/material.dart';

class App extends StatefulWidget{
  @override
  _AppState createState() => new _AppState();
}

class _AppState extends State<App> {
  List<DropdownMenuItem<int>> listDrop = [];
  String selected;

  void loadData() {
    listDrop = [];
    listDrop.add(DropdownMenuItem(child: Text('Item 1'), value: 1));
    listDrop.add(DropdownMenuItem(child: Text('Item 2'), value: 2));
    listDrop.add(DropdownMenuItem(child: Text('Item 3'), value: 3));
  } 

  @override
  Widget build(context){
    loadData();
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(
        child: DropdownButton(
          hint: Text('Select'),
          iconSize: 40.0,
          elevation: 5,
          onChanged: (value) {
            selected = value;
            setState(() {
                        
              });
          },
          items: listDrop,
        )
      ),
    );
  }
}