import 'package:flutter/material.dart';
import 'inicio_sesion.dart'; // Importa la pantalla de inicio de sesión

class GotaMiliScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GOTA Milimétricos'),
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
                      backgroundColor: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: const Text(
                      'Milimetricos',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y la imagen
                  Image.asset(
                    'assets/img/4.jpg', // Ruta de la imagen local
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
                    int number = index + 1;
                    String buttonText = _getButtonLabelForIndex1(number);
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0), // Separación vertical entre botones
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción para el botón número ${number}
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue, // Color del botón azul cielo
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                        child: Text(buttonText),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(width: 20), // Espacio entre las dos columnas de botones
                Column(
                  children: List.generate(9, (index) {
                    int number = index + 10;
                    String buttonText = _getButtonLabelForIndex2(number);
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0), // Separación vertical entre botones
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción para el botón número ${number}
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue, // Color del botón azul cielo
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                        child: Text(buttonText),
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
      case 1:
        return 'M 1.6';
      case 2:
        return 'M 2';
      case 3:
        return 'M 2.5';
      case 4:
        return 'M 3';
      case 5:
        return 'M 4';
      case 6:
        return 'M 5';
      case 7:
        return 'M 6';
      case 8:
        return 'M 8';
      case 9:
        return 'M 10';
      default:
        return '';
    }
  }

  String _getButtonLabelForIndex2(int index) {
    switch (index) {
      case 10:
        return 'M 12';
      case 11:
        return 'M 14';
      case 12:
        return 'M 16';
      case 13:
        return 'M 18';
      case 14:
        return 'M 20';
      case 15:
        return 'M 22';
      case 16:
        return 'M 24';
      case 17:
        return 'M 27';
      case 18:
        return 'M 30';
      default:
        return '';
    }
  }
}
