import 'package:flutter/material.dart';
import 'inicio_sesion.dart'; // Importa la pantalla de inicio de sesión
import 'largo_allen_esta.dart'; // Asegúrate de importar la vista correspondiente

class AllenEstaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALLEN Estandar'),
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
      body: SingleChildScrollView(
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
                      // Acción para el botón "Estándar"
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 244, 3, 3), // Color del botón azul cielo
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: const Text(
                      'Estándar',
                      style: TextStyle(fontSize: 16, color: Colors.black), // Color del texto del botón
                    ),
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y la imagen
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/img/1.jpg', // Ruta de la imagen local
                          height: 125,
                          width: 125,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10), // Espacio entre la imagen y el texto
                        Text(
                          'GRUESO',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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
                          if (buttonText == '1/4"') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LargoAllenEstaScreen()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 208, 73, 73),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                        child: Text(
                          buttonText,
                          style: TextStyle(color: Colors.black), // Color del texto del botón
                        ),
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
                          backgroundColor: Color.fromARGB(255, 208, 73, 73),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                        child: Text(
                          buttonText,
                          style: TextStyle(color: Colors.black), // Color del texto del botón
                        ),
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
        return '1/16"';
      case 2:
        return '3/32"';
      case 3:
        return '1/8"';
      case 4:
        return '5/32"';
      case 5:
        return '3/16"';
      case 6:
        return '7/32"';
      case 7:
        return '1/4"';
      case 8:
        return '5/16"';
      case 9:
        return '3/8"';
      default:
        return '';
    }
  }

  String _getButtonLabelForIndex2(int index) {
    switch (index) {
      case 10:
        return '7/16"';
      case 11:
        return '1/2"';
      case 12:
        return '9/16"';
      case 13:
        return '5/8"';
      case 14:
        return '11/16"';
      case 15:
        return '3/4"';
      case 16:
        return '13/16"';
      case 17:
        return '7/8"';
      case 18:
        return '1"';
      default:
        return '';
    }
  }
}
