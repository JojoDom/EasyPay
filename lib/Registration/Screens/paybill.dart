import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class PayBill extends StatefulWidget {
  const PayBill({Key? key}) : super(key: key);

  @override
  State<PayBill> createState() => _PayBillState();
}

void makePayment(amount) async{
  var uuid = const Uuid();
  String username = 'adwoadadson60@gmail.com';
  String password = '3erlin5A@';
  var apiUrl = Uri.parse("https://billboxcore.doersops.com/billing/pay");
  String today =  DateTime.now().toString();
  String uuidV4 = uuid.v4();

  final response = await http.post(
    apiUrl, 
    headers: <String, String>{
    'authorization': 'Basic ' + base64Encode(utf8.encode('$username:$password')),
    },
    body: {
      "serviceCode": "14",
      "reference": "12212595",
      "amount":  amount,
      "transactionId": uuidV4,
      "transactionDate": today,
      "payer": "adwoadadson@gmail.com",
      "payerContact": "adwoadadson@gmail.com",
      "comment": "This is a test"
    }
  );

  final responseJson = jsonDecode(response.body);

  // ignore: avoid_print
  print(responseJson);
}

class _PayBillState extends State<PayBill> {
  var _amount = '';
  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pay Bill")),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                decoration: const InputDecoration(labelText: "amount"),
                onChanged: (amount) => _amount = amount
                ),
            const SizedBox(height: 32),            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("Pay Bill"),
        onPressed: () async {
          makePayment(_amount);  
        },
      ),
    );
  }
}
