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
          )
          body: Container(
            child: const Text('SC'),
          )
      )
    );
  }
}