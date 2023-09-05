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
           
        title: Text(
          
          'PROGRAMACION MOVIL -- LADISLAO COSTILLO CAMACHO',
          style:TextStyle(
          fontSize: 14.10,
          color:Color.fromARGB(252, 243, 246, 247)
          ),
        ),
          elevation: 20,
          backgroundColor: Color.fromARGB(225, 12, 6, 196), // Cambia el color de fondo a rojo

          leading: Row(   
            children: [
          
          //actions: [
            IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
            },
            ),
            ],
            ),
            actions: [
              IconButton( 
              icon:Icon(Icons.wifi),
              onPressed: (){
              },
                    
            ),
            
            IconButton(
             icon:Icon(Icons.access_time),
              onPressed: (){
              },
            ),
            IconButton(
            icon:Icon(Icons.settings),
            onPressed: (){
            },
            ),
            ],
            ),
            
            //body: Align(
                body: Padding( 
                  padding: EdgeInsets.only(top:30.25),
                  child: Align( 
             //alignment: Alignment.bottomCenter,//La posicion parate inferior centrada
              //alignment: Alignment.bottomLeft,//alineado a la Izquierda
              //alignment: Alignment.bottomRight, //alideado a la derecha
              alignment: Alignment.topCenter,//centrado parte superior
              child:Column( 
                children: [  
                  SizedBox( 
                  //Image .asset(  
                    //"assets/images/password.png",
                    width: 70.0, //ancho de la imagen
                    height: 50.0,//alto de la imagen
                    child: ClipOval(  
                    child: Image.asset('assets/foto.jpg'),
                                      
                    )
                   
                  ),
            //child: Container( 
            //child: Text(
              Text( 
              "LADISLAO COSTILLO Y FAMILIA",
            style:TextStyle( 
              fontSize: 17.0,
              fontFamily:'MyCustomFont',
              //fontFamily: 'MyCustomFont',
              color:Colors.black
            ), 
          ),
          ],
          ),
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