import 'package:easy_pay/models/list_collection.dart';
import 'package:flutter/material.dart';
import 'package:easy_pay/Registration/Screens/paybill.dart';
//import 'package:http/http.dart';


class Services extends StatefulWidget {
  const Services({ Key? key }) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        elevation:0,
        title : const Text("Pay Bills")
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.blue
        ),
        child : ListView.builder(
      itemCount: dummyData.length,
      itemBuilder : (context, i) => Column(
        children: <Widget>[
         const SizedBox(height:10.0),
          ListTile (
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(dummyData[i].image)
              
            ),
            
            title: 
                Text(
                        dummyData[i].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
            
                      ),
                      // List Collection
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> const PayBill()));
            }
          )
        ],
        
     ) )));
  }
}