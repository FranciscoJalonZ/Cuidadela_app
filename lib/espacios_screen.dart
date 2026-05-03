import 'package:flutter/material.dart';

class EspaciosScreen extends StatelessWidget {
  const EspaciosScreen({super.key});

  // Datos estáticos para los espacios comunes
  final List<Map<String, dynamic>> espaciosComunes = const [
    {'nombre': 'Cancha de Uso Múltiple', 'disponible': true},
    {'nombre': 'Área de BBQ', 'disponible': false},
    {'nombre': 'Piscina Central', 'disponible': true},
    {'nombre': 'Salón de Eventos', 'disponible': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reserva de Espacios'),
      ),
      body: ListView.builder(
        itemCount: espaciosComunes.length,
        itemBuilder: (context, index) {
          final espacio = espaciosComunes[index];
          final bool isDisponible = espacio['disponible'];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(espacio['nombre'], style: const TextStyle(fontSize: 18)),
              subtitle: Text(
                isDisponible ? 'Disponible para reserva' : 'En mantenimiento / Ocupado',
                style: TextStyle(color: isDisponible ? Colors.black54 : Colors.red),
              ),
              trailing: ElevatedButton(
                onPressed: isDisponible
                    ? () {
                        // Muestra un mensaje temporal de selección
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Has seleccionado: ${espacio['nombre']}'),
                            backgroundColor: Colors.blueGrey,
                          ),
                        );
                      }
                    : null, // Desactiva el botón si no está disponible
                child: const Text('Reservar'),
              ),
            ),
          );
        },
      ),
    );
  }
}