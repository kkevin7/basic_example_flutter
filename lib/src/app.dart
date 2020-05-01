import 'package:flutter/material.dart';
// My Imports
import 'package:contador/src/pages/contador_page.dart';


class MyApp extends StatelessWidget{
  @override
  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: HomePage(),
        child: ContadorPage(),
      )
    );
  }
}