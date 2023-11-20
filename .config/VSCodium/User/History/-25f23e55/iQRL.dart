import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({ Key? key}) : super(key: key);

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
              menuElements.add(Text("poul"));
            },
          ),
      )
    );
  }
}