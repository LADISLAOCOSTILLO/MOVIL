import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget { 

@override
// TODO: implement widget
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: BlueBox(),

      ),

    );
  } 
}


class BlueBox extends StatelessWidget{
  @override
  Widget build(BuildContext context){

  return Container(
    width: 50,
    height: 50,
    color: Colors.blue,
  );
  }  
}