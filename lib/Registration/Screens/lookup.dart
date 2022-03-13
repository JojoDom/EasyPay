import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:uuid/uuid.dart';

import 'package:http/http.dart' as http;

class LookUpBill extends StatefulWidget {
  const LookUpBill({Key? key}) : super(key: key);

  @override
  State<LookUpBill> createState() => _LookUpBillState();
}

void lookUp(service) async {
  var apiUrl = Uri.parse("https://billboxcore.doersops.com/billing/lookup");
  var uuid = const Uuid();

  String username = 'adwoadadson60@gmail.com';
  String password = '3erlin5A@';
  String uuidV4 = uuid.v4();

  final response = await http.post(apiUrl, headers: <String, String>{
    'authorization': 'Basic ' + base64Encode(utf8.encode('$username:$password')),
  }, body: {
    "requestId": uuidV4,
    "serviceCode": service,
    "reference": "12212595"
  });

  final responseJson = jsonDecode(response.body);

  // ignore: avoid_print
  print(responseJson);
}

class _LookUpBillState extends State<LookUpBill> {
  var _service = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pay Bill")),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                decoration: const InputDecoration(labelText: "Service code"),
                onChanged: (service) => _service = service),
            const SizedBox(height: 32),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("Look Up Bill"),
        onPressed: () async {
          lookUp(_service);
        },
      ),
    );
  }
}
