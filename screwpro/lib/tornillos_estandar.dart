import 'package:flutter/material.dart';
import 'inicio_sesion.dart'; // Importa la pantalla de inicio de sesión
import 'allen_esta.dart'; // Importa la pantalla ALLEN estándar
import 'torx_esta.dart'; // Importa la pantalla TORX estándar
import 'hexagonal_esta.dart'; // Importa la pantalla HEXAGONAL estándar
import 'gota_esta.dart'; // Importa la pantalla GOTA estándar
import 'auto_esta.dart'; // Importa la pantalla AUTOMOTRIZ estándar
import 'cruz_esta.dart'; // Importa la pantalla CRUZ estándar

class TornillosEstandarScreen extends StatelessWidget {
  final List<String> buttonNames = [
    'ALLEN',
    'TORX',
    'HEXAGONAL',
    'GOTA',
    'AUTOMOTRIZ',
    'CRUZ'
  ];

  final List<Widget> screens = [
    AllenEstaScreen(),
    TorxEstaScreen(),
    HexagonalEstaScreen(),
    GotaEstaScreen(),
    AutoEstaScreen(),
    CruzEstaScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tornillos Estándar'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => InicioSesion()),
              );
            },
            child: const Text(
              'Cerrar Sesión',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            ClipOval(
              child: Image.asset(
                'assets/img/Logo2.jpg', // Imagen local
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20), // Espacio entre el logo y la cuadrícula
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Número de columnas en la cuadrícula
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: List.generate(6, (index) {
                  return Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/img/${index + 1}.jpg', // Imagen local
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => screens[index]),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue, // Color del botón azul cielo
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                        child: Text(buttonNames[index]),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey, // Color de fondo gris
    );
  }
}
