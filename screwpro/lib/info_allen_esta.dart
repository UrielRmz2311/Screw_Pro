import 'package:flutter/material.dart';
import 'inicio_sesion.dart';

class InfoAllenEstaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informacion Allen Estandar'),
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Logo centrado
              Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/img/Logo2.jpg',
                      height: 125,
                      width: 125,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10), // Espacio entre el logo y el botón
                  ElevatedButton(
                    onPressed: () {
                      // No hay acción asignada
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 248, 255, 42),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: const Text(
                      'ESTÁNDAR',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 10), // Espacio entre el botón y el texto adicional
                  const Text(
                    '"1/4 X 2"',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 30), // Espacio entre el logo y las secciones de información
              // Información con imágenes y textos
              _buildInfoSection(
                'assets/img/diametro.jpg',
                'Diámetro: 1/4 (1/4 pulgada de diámetro nominal)',
                'Diámetro',
              ),
              const SizedBox(height: 20), // Espacio entre las secciones
              _buildInfoSection(
                'assets/img/largo.jpg',
                'Longitud: 2" pulgadas',
                'Largo',
              ),
              const SizedBox(height: 20), // Espacio entre las secciones
              _buildInfoSection(
                'assets/img/paso.jpg',
                'Paso de rosca: Depende del estándar de rosca utilizado (por ejemplo, métrico fino o grueso)',
                'Paso de rosca',
              ),
              const SizedBox(height: 20), // Espacio entre las secciones
              _buildInfoSection(
                'assets/img/cabeza.jpg',
                'Cabeza del tornillo: Cabeza hexagonal interior, diseñada para ser utilizada con una llave Allen o llave hexagonal correspondiente',
                'Cabeza del tornillo',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }

  // Función para construir cada sección de información con imagen y texto centrados
  Widget _buildInfoSection(String imagePath, String description, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Texto del título
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8), // Espacio entre el título y la imagen
        // Imagen
        Image.asset(
          imagePath,
          height: 50,
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8), // Espacio entre la imagen y el texto de descripción
        // Texto de descripción
        Text(
          description,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
