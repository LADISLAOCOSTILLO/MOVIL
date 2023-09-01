import 'package:flutter/material.dart'; //es una declaración de importación en Dart

void main() {
  runApp(
    Center(
      child: Text(
        'HOLA MUNDO!',

        style: TextStyle(fontSize: 50),
        //style: TextStyle(fontSize: 24),
        
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
