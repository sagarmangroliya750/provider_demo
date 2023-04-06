
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'myclass.dart';

class providerdemo extends StatefulWidget {
  const providerdemo({Key? key}) : super(key: key);

  @override
  State<providerdemo> createState() => _providerdemoState();
}

class _providerdemoState extends State<providerdemo> {
  
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    myclass m = Provider.of(context);

    return Scaffold(
      appBar: AppBar(title:Text("Provider"),centerTitle:true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(controller: t1,keyboardType:TextInputType.number,
            decoration:InputDecoration(border:OutlineInputBorder(borderRadius:BorderRadius.circular(30)),
              hintText:"Enter First Value",suffixIcon:IconButton(onPressed: () {
                setState(() {
                  t1.text = "";
                  m.sum = 0;
                });
              }, icon:Icon(Icons.clear,color:Colors.red))
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(controller: t2,keyboardType:TextInputType.number,
            decoration:InputDecoration(border:OutlineInputBorder(borderRadius:BorderRadius.circular(30)),
                hintText:"Enter Second Value",suffixIcon:IconButton(onPressed: () {
                 setState(() {
                   t2.text = "";
                   m.sum = 0;
                 });
                }, icon:Icon(Icons.clear,color:Colors.red))
            ),
            ),
          ),
          Container(
            height:40,width:150,
            alignment:Alignment.center,
            margin:EdgeInsets.only(top:30,bottom:30),
            decoration:BoxDecoration(borderRadius:BorderRadius.circular(5),border:Border.all(color:Colors.green)),
            child: Text("Sum = ${m.sum}",style:TextStyle(fontSize:20,color:Colors.green)),
          ),
          ElevatedButton(style: ElevatedButton.styleFrom(
            shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),elevation:4,
            fixedSize:Size(150, 40)
          ),
              onPressed: () {
            String a = t1.text;
            String b = t2.text;
            m.total(a,b);

          }, child: Text("Answer Of Sum",style:TextStyle(letterSpacing:1.5),)),
        ],
      ),
    );
  }
}
