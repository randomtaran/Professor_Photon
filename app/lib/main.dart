import 'package:flutter/material.dart';
import 'package:prof_photon2/pages/home_page.dart';
import 'package:prof_photon2/pages/chapters/nlm.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Prof. Photon",
      theme: ThemeData(
        //primarySwatch: Colors.white,
          backgroundColor: Colors.black26
      ),
      home: HomePage(),
    );
  }
}
