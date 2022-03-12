import 'package:easy_pay/intro_slider.dart';
import "package:flutter/material.dart";



void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     debugShowCheckedModeBanner: false,
     title : "EasyPay",
     theme: ThemeData(
       primarySwatch: Colors.orange
     ),
     home : const IntroPage()
    
    );
  }
}

