import 'package:flutter/material.dart';
import 'package:cuidadela_app/alicuota_screen.dart';
import 'package:cuidadela_app/espacios_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panel de Control'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Concepto de la Pregunta 10
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.location_city, size: 100, color: Colors.blueGrey),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              icon: const Icon(Icons.receipt_long),
              label: const Text('Estado de Alícuotas', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              onPressed: () {
                // Concepto de la Pregunta 3
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlicuotaScreen()),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.park),
              label: const Text('Espacios Comunes', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EspaciosScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}