import 'package:easy_pay/Registration/Screens/paybill.dart';
import 'package:easy_pay/Registration/Screens/services.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(

      appBar: AppBar(
        elevation : 0

      ),
      body : SingleChildScrollView (
        child : Column(
          children : <Widget>[
            Container(
              decoration: const BoxDecoration(
                color : Colors.grey
              ),
              padding: const EdgeInsets.all(20.0),
              height : height*0.45,
              width : width,
              child :
            const  Center(
              child: Text("EasyPay")
            )),
            Container(
              decoration : const BoxDecoration(
               color: Colors.blue,               
              ),
              child: Row(
                
                children: <Widget>[
                  TextButton.icon(
                    label: const Text("Buy Airtime"),
                 icon: const Icon(Icons.phone_android),
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder:(context)=> const PayBill()),);
                 },
                 
                  ),

                  TextButton.icon(
                    label: const Text("Pay Bill"),
                 icon: const Icon(Icons.phone_android),
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder:(context)=> const PayBill()),);
                 },
                 
                  ),

                  Expanded(
                    child: Column(
                      children: <Widget>[
                       TextButton.icon(
                    label: const Text("Transactions"),
                 icon: const Icon(Icons.phone_android),
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder:(context)=> const Services()),);
                 },
                 
                  ),
                      ]
                    )
                  )
                  
                ]
              )

            )
          ]
          
        )
        
          
        
      )
    );
  }
}