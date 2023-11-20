import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key}) : super(key: key);
  
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Paolo'),
          backgroundColor: Colors.lightBlue,
          ),
          body: Container(
            margin: const EdgeInsets.all(100),
            padding: const EdgeInsets.all(100),
            color: Colors.amber,
            height: 100,
            width: 100,
            child: const Text('Come va?'),
          )
      )
    );
  }
}