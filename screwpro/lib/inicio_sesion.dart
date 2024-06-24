import 'package:flutter/material.dart';

class InicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio Sesion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Imagen local arriba de los labels
            Image.asset(
              'assets/img/Logo.jpg', // Imagen local
              height: 200,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'USUARIO',
                      labelStyle: TextStyle(color: Colors.blue[900]), // Letra azul oscuro
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
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'CONTRASEÑA',
                      labelStyle: TextStyle(color: Colors.blue[900]), // Letra azul oscuro
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
                    // Aquí puedes agregar la lógica de inicio de sesión
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
                    // Aquí puedes agregar la lógica para recuperar la contraseña
                  },
                  child: const Text(
                    'Olvidé mi contraseña',
                    style: TextStyle(color: Colors.blue), // Botón transparente
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Aquí puedes agregar la lógica para registrarse
                  },
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(color: Colors.blue), // Botón transparente
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

void main() => runApp(MaterialApp(
  home: InicioSesion(),
));
