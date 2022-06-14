import 'package:first_projet/LoginPage/signPage.dart';
import 'package:flutter/material.dart';
import 'package:first_projet/LoginPage/loginPage.dart';
import 'package:first_projet/LoginPage/forgetPassword.dart';
import 'package:first_projet/homePage/homePage.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'LaDeluxe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 119, 9, 42),
      ),
      home: homePage(),
    );
  }
}