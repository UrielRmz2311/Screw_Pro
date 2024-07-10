import 'package:flutter/material.dart';
import 'inicio_sesion.dart';

class LargoHexagonalEstaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Largo Hexagonal Estandar'),
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
                  const SizedBox(height: 10), // Espacio entre el logo y el botón
                  ElevatedButton(
                    onPressed: () {
                      // Acción para el botón "LARGO"
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 8, 169, 8), // Color del botón rojo
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: const Text(
                      'LARGO',
                      style: TextStyle(fontSize: 16, color: Colors.black), // Color del texto del botón
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Espacio entre el logo y los botones
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: List.generate(9, (index) {
                      String buttonText = _getButtonLabelForIndex1(index);
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0), // Separación vertical entre botones
                        child: ElevatedButton(
                          onPressed: () {
                            // Acción para el botón
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 208, 73, 73), // Color del botón
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          ),
                          child: Text(
                            buttonText,
                            style: const TextStyle(color: Colors.black), // Color del texto del botón
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(width: 20), // Espacio entre las dos columnas de botones
                  Column(
                    children: List.generate(8, (index) {
                      String buttonText = _getButtonLabelForIndex2(index + 9);
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0), // Separación vertical entre botones
                        child: ElevatedButton(
                          onPressed: () {
                            // Acción para el botón
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 208, 73, 73), // Color del botón
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          ),
                          child: Text(
                            buttonText,
                            style: const TextStyle(color: Colors.black), // Color del texto del botón
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
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
        return '1/2"';
      case 1:
        return '3/4"';
      case 2:
        return '1"';
      case 3:
        return '1 1/4"';
      case 4:
        return '1 1/2"';
      case 5:
        return '1 3/4"';
      case 6:
        return '2"';
      case 7:
        return '2 1/2"';
      case 8:
        return '3"';
      default:
        return '';
    }
  }

  String _getButtonLabelForIndex2(int index) {
    switch (index) {
      case 9:
        return '3 1/2"';
      case 10:
        return '4"';
      case 11:
        return '4 1/2"';
      case 12:
        return '5"';
      case 13:
        return '5 1/2"';
      case 14:
        return '6"';
      case 15:
        return '6 1/2"';
      case 16:
        return '7"';
      default:
        return '';
    }
  }
}
