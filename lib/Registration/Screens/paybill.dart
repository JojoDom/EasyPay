import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:easy_pay/models/user_model.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class PayBill extends StatefulWidget {
  const PayBill({ Key? key }) : super(key: key);

  @override
  State<PayBill> createState() => _PayBillState();
}


Future<UserModel?> createUser( String serviceCode, 
String reference,  String amount, String transactionId, String transactionDate,
String payer, String payerContact) async{

  
  
  var apiUrl = Uri.parse("https://billboxcore.doersops.com/billing/pay");

  final response = await http.post(apiUrl, 
  //headers:  <String, String>{},
  body: {
	"serviceCode": serviceCode,
	"reference": reference,
	"amount": amount,
	"transactionId": transactionId,
	"transactionDate": transactionDate,
	"payer": payer,
	"payerContact": payerContact,
	"comment": "This is a test"
} 
  
  );
  // ignore: avoid_print
  print(response.statusCode);
  if(response.statusCode==200) {
    final String responseString = response.body;
    return userModelFromJson(responseString);
  }
  else{return null;}

}

class _PayBillState extends State<PayBill> {
   UserModel ?_user; 

  final TextEditingController referenceController  = TextEditingController();
  final TextEditingController serviceCodeController  = TextEditingController();
  final TextEditingController amountController  = TextEditingController();
  final TextEditingController transactionIdController  = TextEditingController();
  final TextEditingController transactionDateController  = TextEditingController();
  final TextEditingController payerController  = TextEditingController();
  final TextEditingController payerContactController  = TextEditingController();


  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : const Text("Pay Bill")
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
           TextField(
             decoration: const InputDecoration(labelText:"Service Code" ),
             controller: serviceCodeController,
           ),

           TextField(
             decoration: const InputDecoration(labelText:"reference" ),
             controller: referenceController,
           ),

           TextField(
             decoration: const InputDecoration(labelText:"amount" ),
             controller : amountController
           ),

           TextField(
             decoration: const InputDecoration(labelText:"TransactionId" ),
             controller: transactionIdController
           ),

           TextField(
             decoration: const InputDecoration(labelText:"TransactionDate" ),
             controller: transactionDateController,
           ),

           TextField(
             decoration: const InputDecoration(labelText:"Payer" ),
             controller: payerController,
           ),

           TextField(
             decoration: const InputDecoration(labelText:"payerContact" ),
             controller: payerContactController,
           ),

         const SizedBox( height : 32),
         // ignore: avoid_unnecessary_containers
         _user == null ? Container ( ) : Text(_user!.message)
         


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("Pay Bill"),
        onPressed: () async{
          final String serviceCode =serviceCodeController.text;
          final String reference = referenceController.text;
          final String amount =amountController.text;
          final String transactionId =transactionIdController.text;
          final String transactionDate =transactionDateController.text;
          final String payer =payerController.text;
          final String payerContact =payerContactController.text;

          final UserModel? user = await createUser(serviceCode, reference, amount, transactionId, transactionDate,payer,payerContact );
            
            setState(() {
              _user = user;
            });
        },

      ),
    );
  }
}