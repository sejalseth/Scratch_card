import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AppBody(),
      ),
    );
  }
}

class AppBody extends StatelessWidget {

  Future<void>scratchCardDialogue(context){
    return showDialog(context: context,builder: (BuildContext context)
  {
    return AlertDialog(
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(30.0)),
      title: Align(
        alignment: Alignment.center,
        child: Text('You have won a scratch card',
        style:TextStyle(
          color:Colors.black,fontWeight: FontWeight.bold,
          fontSize: 18),
        ),
      ),

      content: Scratcher(
        accuracy: ScratchAccuracy.low,
        brushSize: 50,
        threshold: 50,
        image:Image.asset('images/diamond.png'),
        onChange: (value) { print("Scratch progress: $value%"); },
        onThreshold: () { print("Threshold reached, you won!"); },
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blueGrey,
          alignment: Alignment.center,
          child: Text(
            '200\$ ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color:Colors.black,
            ),
          ),
        ),
      ),
    );
  },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 35),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35.0),
          borderSide: BorderSide.none,
        ),
        color: Colors.blueGrey,
        child: Text('Get a scrachter card ',
        style:TextStyle(color:Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,
        ),
        ),
        onPressed: () => scratchCardDialogue(context),
      ),
    );
  }
}



