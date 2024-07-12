import 'package:flutter/material.dart';
import 'registro.dart'; // Importar la pantalla de registro
import 'home.dart'; // Importar la pantalla home

class InicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio Sesión'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Imagen local arriba de los labels
            ClipOval(
              child: Image.asset(
                'assets/img/Logo2.jpg', // Imagen local
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(
                  'USUARIO:',
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
                      hintText: 'USUARIO',
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()), // Navegar a la pantalla home
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue, // Color del botón azul cielo
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                    ),
                  ),
                  child: const Text('Entrar'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Registro()), // Navegar a la pantalla de registro
                    );
                  },
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(color: Colors.blueAccent), // Botón transparente
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                  },
                  child: const Text(
                    'Olvidé mi contraseña',
                    style: TextStyle(color: Colors.blueAccent), // Botón transparente
                  ),
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
