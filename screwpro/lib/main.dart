import 'package:flutter/material.dart';
import 'inicio_sesion.dart';
import 'registro.dart'; // Importar la pantalla de registro

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InicioSesion(), // Inicio con la pantalla de inicio de sesión
    );
  }
}


