import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      //home:StyleDemo()
      home: LayoutDemo(),

    );
  }
}

class StyleDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:Container(
          width:200,
          height:200,
          decoration: BoxDecoration(color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            boxShadow:[
              BoxShadow(
                color:Colors.black.withOpacity(0.25),
                spreadRadius:2,
                blurRadius:3.84,
                offset: Offset(0,2),
              ),
            ],
          ),
          child:Center(
            child:Text('Styled Component',
              style:TextStyle(color: Colors.white,
                fontSize:18,
                fontWeight: FontWeight.bold,),
            ),
          ),
        ),

      ),
    );
  }
}

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        children: [
          Container(
            height: 80,
            color:Colors.pink,
            child:Center(
              child:Padding(
                padding: EdgeInsets.only(top: 50),
                child:Text(
                  'Header',
                  style:TextStyle(
                    color:Colors.white,
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color:Color(0xFFECF0F1),
              child:Center(
                child: Text(
                  'Hello Flutter',
                  style:TextStyle(fontSize:25,
                  color:Colors.green[900],
                      fontWeight:FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            color:Color(0xFF2C3E50),
            child: Center(
              child: Text(
                'Footer',
                style:TextStyle(
                  color:Colors.white,
                  fontSize:16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}