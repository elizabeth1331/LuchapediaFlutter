import 'package:flutter/material.dart';
import 'package:luchapedia/bio_fighter.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blueAccent[700],
      title: 'Material App',
      home: BioFighter(),
    );
  }
}