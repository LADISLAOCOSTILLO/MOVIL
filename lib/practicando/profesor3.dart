import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor:
            //Colors.blueGrey,
            Color(0xffccd5ae),
        body: SafeArea(
          
          child: Column(
            children: [//children es para agregar listas
            Container(   
              child:Text("Algoritmos 1"),
              color: Color.fromARGB(255, 23, 2, 51),
              height:50.0,
              alignment: Alignment.center
            ),

            Container(  
              child: Text("Fundamemtos de programacion"),
              color: Colors.amber,
              height: 50.0,
              alignment: Alignment.center,
            ),

            Container( 
              child:Text("Ingenieria de software"),
              color: Color.fromARGB(255, 226, 7, 73),
              height: 50.0,
              alignment: Alignment.center,
            ),
          ],)
        ),
      ),
    ),
  );
}