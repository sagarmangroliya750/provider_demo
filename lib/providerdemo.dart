
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
            padding: const EdgeInsets.all(8.0),
            child: TextField(controller: t1,keyboardType:TextInputType.number,
            decoration:InputDecoration(border:OutlineInputBorder(borderRadius:BorderRadius.circular(20)),
              hintText:"Enter First Value",suffixIcon:IconButton(onPressed: () {
                setState(() {
                  t1.text = "";
                  m.sum = 0;
                });
              }, icon:Icon(Icons.clear,color:Colors.red,))
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(controller: t2,keyboardType:TextInputType.number,
            decoration:InputDecoration(border:OutlineInputBorder(borderRadius:BorderRadius.circular(20)),
                hintText:"Enter Second Value",suffixIcon:IconButton(onPressed: () {
                 setState(() {
                   t2.text = "";
                   m.sum = 0;
                 });
                }, icon:Icon(Icons.clear,color:Colors.red,))
            ),
            ),
          ),
          ElevatedButton(style: ElevatedButton.styleFrom(
            shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),elevation:4
          ),
              onPressed: () {
            String a=t1.text;
            String b=t2.text;
            m.total(a,b);

          }, child: Text("Ans Of Sum")),
          Container(
            margin:EdgeInsets.only(top:30),
            child: Text("Sum = ${m.sum}",style:TextStyle(fontSize:17),),
          )
        ],
      ),
    );
  }
}
