import 'package:flutter/material.dart';
import 'inicio_sesion.dart';

class LargoAllenEstaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Largo Allen Estandar'),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Acción para el botón "LARGO"
                },
                child: Text('LARGO'),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 3,
              padding: const EdgeInsets.all(16.0),
              children: [
                '1/2"',
                '3/4"',
                '1"',
                '1 1/4"',
                '1 1/2"',
                '1 3/4"',
                '2"',
                '2 1/2"',
                '3"',
                '3 1/2"',
                '4"',
                '4 1/2"',
                '5"',
                '5 1/2"',
                '6"',
                '6 1/2"',
                '7"'
              ].map((text) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción para cada botón de tamaño
                    },
                    child: Text(text),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
