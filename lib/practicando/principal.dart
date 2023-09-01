import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
 }
class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HOLA CHOCHE',
      home: Scaffold( 
        appBar: AppBar(  
          title: Text('PROGRAMACION MOVIL -- LADISLAO COSTILLO CAMACHO'),
          elevation: 20,
          ),
        body: Center(
          child: Container( 
            child: Text("HOLA COMPAÑEROS"), 
            
            
          ),
        ),
          bottomNavigationBar:BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.verified_user_outlined),
                label: 'ATRAS'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'INICIO'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'ADELANTE'
              ),
          ]) ,
        

        ),


      );



    
    }
    }