import 'package:flutter/material.dart';
import 'inicio_sesion.dart'; // Importa la pantalla de inicio de sesión

class TorxEstaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TORX Estandar'),
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
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/img/Logo2.jpg', // Imagen local
                      height: 125,
                      width: 125,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10), // Espacio entre el logo y el botón "Estándar"
                  ElevatedButton(
                    onPressed: () {
                      // No hay acción asignada para este botón
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 244, 3, 3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: const Text(
                      'Estándar',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y la imagen
                  Image.asset(
                    'assets/img/2.jpg', // Ruta de la imagen local
                    height: 125,
                    width: 125,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Espacio entre el logo y los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: List.generate(9, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0), // Separación vertical entre botones
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción para el botón número ${index + 1}
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue, // Color del botón azul cielo
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                        child: Text(_getButtonLabelForIndex1(index)),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(width: 20), // Espacio entre las dos columnas de botones
                Column(
                  children: List.generate(9, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0), // Separación vertical entre botones
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción para el botón número ${index + 10}
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue, // Color del botón azul cielo
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                        child: Text(_getButtonLabelForIndex2(index)),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey, // Color de fondo gris
    );
  }

  String _getButtonLabelForIndex1(int index) {
    switch (index) {
      case 0:
        return '1/16"';
      case 1:
        return '3/32"';
      case 2:
        return '1/8"';
      case 3:
        return '5/32"';
      case 4:
        return '3/16"';
      case 5:
        return '7/32"';
      case 6:
        return '1/4"';
      case 7:
        return '5/16"';
      case 8:
        return '3/8"';
      default:
        return '';
    }
  }

  String _getButtonLabelForIndex2(int index) {
    switch (index) {
      case 0:
        return '7/16"';
      case 1:
        return '1/2"';
      case 2:
        return '9/16"';
      case 3:
        return '5/8"';
      case 4:
        return '11/16"';
      case 5:
        return '3/4"';
      case 6:
        return '13/16"';
      case 7:
        return '7/8"';
      case 8:
        return '1"';
      default:
        return '';
    }
  }
}
