import 'package:flutter/material.dart';

void main(){
  runApp(Homepage());
}

// ignore: must_be_immutable
class Homepage extends StatelessWidget {

    var name="Nitesh";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.dehaze,color: Colors.black,),
          actions: [
            Icon(Icons.face,color: Colors.black,size: 40.0,),
            Padding(padding: EdgeInsets.only(right:30)),
          ],
        elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.only(top:10,left: 30),
          child: Column(
            children: [
              Text("Hi $name!",style: TextStyle(fontSize:30,color:Colors.black,fontStyle: FontStyle.italic,),),
              Text("Good Evening ",style: TextStyle(fontSize:20,color:Colors.black,fontStyle: FontStyle.italic,),)
            ],
          ),
        ),
      ),
    );
  }
}