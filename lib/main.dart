import 'package:flutter/material.dart';
import 'package:scratcher/scratch.dart';

void main() => runApp(MaterialApp(
  home:Scaffold(
    backgroundColor: Colors.blueGrey,
    appBar: AppBar(
      title: Center(
          child: Text('Scratch card')),
      backgroundColor: Colors.black54,
    ),
    body:Center(
      child: Container(
        margin: EdgeInsets.all(200.0),
        child: Icon(
          Icons.add_location,
          size: 40.0,
          color:Colors.black54,
        ),
        )
      ),
    floatingActionButton: FloatingActionButton(
    onPressed: ((){
      print ('You are from agra');
    }),
      child: Text('Start'
      ),
      backgroundColor: Colors.black54,
  )
),
)
);


