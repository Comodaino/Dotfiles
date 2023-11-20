import 'dart:html';

import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key}) : super(key: key);

List<Widget> MenuElements() {
    List<Widget> list = List();
    //i<5, pass your dynamic limit as per your requirment 
    for (int i = 0; i < 5; i++) {
      list.add(Text("Index $i"));//add any Widget in place of Text("Index $i")
    }
    return list;// all widget added now retrun the list here 
  }

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Paolo'),
          backgroundColor: Colors.lightBlue,
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment:  CrossAxisAlignment.end,
            children: menuElements.;
          )
      )
    );
  }
}