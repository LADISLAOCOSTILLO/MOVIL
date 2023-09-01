import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor:
            //Colors.blueGrey,
            Color(0xffccd5ae),
        body: SafeArea(
          
          
          child: Row(children: [

            Container(
              color: Color.fromARGB(255, 189, 16, 4),
              height:80.0,
              width: 120.0,
            ),
              Container(
              color: Color.fromARGB(230, 245, 247, 248),
              height: 70.0,
              width: 70.0,
              ),
              Container(
              color:Color.fromARGB(255, 189, 16, 4),
              height: 70.0,
              width: 70.0,

              )
              ],
            )
          )),
        ),
      );
    
  
}