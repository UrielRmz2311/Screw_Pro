import 'package:flutter/material.dart';
import 'inicio_sesion.dart';
import 'info_hexagonal_mili.dart'; // Asegúrate de importar la vista correspondiente

class LargoHexagonalMiliScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Largo Allen Milimetrico'),
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
                      height: 100,
                      width: 100,
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
                            if (buttonText == '18 mm') { // Ajuste aquí sin las comillas adicionales
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => InfoHexagonalMiliScreen()),
                              );
                            }
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
                            // Acción para otros botones
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
        return '4 mm'; 
      case 1:
        return '5 mm'; 
      case 2:
        return '6 mm'; 
      case 3:
        return '8 mm'; 
      case 4:
        return '10 mm'; 
      case 5:
        return '12 mm'; 
      case 6:
        return '14 mm'; 
      case 7:
        return '16 mm'; 
      case 8:
        return '18 mm'; 
      default:
        return '';
    }
  }

  String _getButtonLabelForIndex2(int index) {
    switch (index) {
      case 9:
        return '20 mm'; 
      case 10:
        return '25 mm'; 
      case 11:
        return '30 mm'; 
      case 12:
        return '35 mm'; 
      case 13:
        return '40 mm'; 
      case 14:
        return '45 mm'; 
      case 15:
        return '50 mm'; 
      case 16:
        return '55 mm'; 
      default:
        return '';
    }
  }
}
