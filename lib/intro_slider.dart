import 'package:easy_pay/Registration/signup.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';


class IntroPage extends StatefulWidget {
  const IntroPage({ Key? key }) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List<Slide> listSlides = [];

  @override
  Widget build(BuildContext context) {
    
    return IntroSlider(
      slides: listSlides,
      onDonePress: onPressedDone,
    );
  }
  

  @override
  void initState() {
    
    super.initState();
    listSlides.add(Slide(
      title: "EasyPay",
      description: "Make payments with a single click", 
      backgroundColor: Colors.pinkAccent,
    ));
    listSlides.add(Slide(
      title: "Pay Utility Bills",
      description: "Pay your utility bills with a simple click",
      
      backgroundColor: Colors.deepOrangeAccent,
    ));
    listSlides.add(Slide(
      title: "School fees",
      description: "Pay sch fees easily",
      
      backgroundColor: Colors.redAccent,
    ));
    
    
  }
 
   onPressedDone() {
       Navigator.push(context, MaterialPageRoute(builder:(context)=> const SignUp()),);
  }
 
}
 
