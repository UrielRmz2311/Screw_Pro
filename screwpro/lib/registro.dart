import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/img/Logo.jpg', // Imagen local
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(
                  'NOMBRE Y APELLIDO:',
                  style: TextStyle(
                    color: Colors.blue[900], // Azul marino
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '', // Texto del label vacío
                      labelStyle: TextStyle(color: Colors.white), // Letra blanca
                      hintText: 'NOMBRE Y APELLIDO',
                      hintStyle: TextStyle(color: Colors.blue[900]), // Letra azul oscuro
                      filled: true,
                      fillColor: Colors.white, // Fondo blanco
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'NOMBRE DE USUARIO:',
                  style: TextStyle(
                    color: Colors.blue[900], // Azul marino
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '', // Texto del label vacío
                      labelStyle: TextStyle(color: Colors.white), // Letra blanca
                      hintText: 'NOMBRE DE USUARIO',
                      hintStyle: TextStyle(color: Colors.blue[900]), // Letra azul oscuro
                      filled: true,
                      fillColor: Colors.white, // Fondo blanco
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'CONTRASEÑA:',
                  style: TextStyle(
                    color: Colors.blue[900], // Azul marino
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '', // Texto del label vacío
                      labelStyle: TextStyle(color: Colors.white), // Letra blanca
                      hintText: 'CONTRASEÑA',
                      hintStyle: TextStyle(color: Colors.blue[900]), // Letra azul oscuro
                      filled: true,
                      fillColor: Colors.white, // Fondo blanco
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'REPETIR CONTRASEÑA:',
                  style: TextStyle(
                    color: Colors.blue[900], // Azul marino
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '', // Texto del label vacío
                      labelStyle: TextStyle(color: Colors.white), // Letra blanca
                      hintText: 'REPETIR CONTRASEÑA',
                      hintStyle: TextStyle(color: Colors.blue[900]), // Letra azul oscuro
                      filled: true,
                      fillColor: Colors.white, // Fondo blanco
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Aquí puedes agregar la lógica para registrarse
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Color del botón azul cielo
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                    ),
                  ),
                  child: const Text('Registrarse'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Color del botón azul cielo
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                    ),
                  ),
                  child: const Text('Volver'),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey, // Color de fondo gris
    );
  }
}
