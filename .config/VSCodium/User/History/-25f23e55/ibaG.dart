import 'package:flutter/material.dart';
import 'package:mtg_counter/player.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({ Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var menuElements = <Widget>[Text("poul")];

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
            children: menuElements,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
              });
              menuElements.add(Text("poul"));
            },
          ),
        
      )
    );
  }
}