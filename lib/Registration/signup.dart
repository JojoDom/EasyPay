import 'package:easy_pay/Registration/Screens/myhomepage.dart';
import 'package:easy_pay/Registration/signup_details.dart';
import 'package:easy_pay/constants.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
 
        return Scaffold(
      appBar: AppBar(
        elevation : 0,
        backgroundColor: Colors.white,
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        height: height,
        width : width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child:
              TextField(
               decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: const Icon(Icons.email, color: Colors.orange),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                  )
              )),

              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child:
              TextField(
                obscureText:true,
                decoration: InputDecoration(hintText: 'Password',
                suffixIcon: const Icon(Icons.visibility_off, color:Colors.orange),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
              )),

               ElevatedButton(
                child: const Text('Login', style: TextStyle(color:Colors.white),),
                style: ElevatedButton.styleFrom(
                    //padding: const EdgeInsets.all(20),
                    primary: Colors.deepOrange
           ),
                 onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder:(context)=> const MyHomePage()));
                  
                 },
                  ),
               const SizedBox(height: 20.0,),
               
               GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> const SignUpDetails()),); 
                 },
                 child: const  Text.rich(
                   TextSpan(
                     text: 'Don\'t have an account? ',
                     children: [
                       TextSpan(text: 'SignUp', style:TextStyle(color:Color(0xffEE7B23))
                     
                   ),
                     ]
                 ),
                 )
               )
            ],),
        ),
        
        


 ), 
    
    
    
    );
     
}}