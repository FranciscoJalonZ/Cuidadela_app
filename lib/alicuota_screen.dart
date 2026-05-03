import 'package:flutter/material.dart';
import 'package:cuidadela_app/alicuota_screen.dart';

class AlicuotaScreen extends StatelessWidget {
  const AlicuotaScreen({super.key});

  // Datos estáticos declarados en Dart
  final List<Map<String, dynamic>> historialPagos = const [
    {'mes': 'Enero 2026', 'estado': 'Pagado', 'monto': 65.00},
    {'mes': 'Febrero 2026', 'estado': 'Pagado', 'monto': 65.00},
    {'mes': 'Marzo 2026', 'estado': 'Pagado', 'monto': 65.00},
    {'mes': 'Abril 2026', 'estado': 'Pendiente', 'monto': 65.00},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Alícuotas'),
      ),
      body: ListView.builder(
        itemCount: historialPagos.length,
        itemBuilder: (context, index) {
          final pago = historialPagos[index];
          final bool isPagado = pago['estado'] == 'Pagado';

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(
                isPagado ? Icons.check_circle : Icons.warning_amber_rounded,
                color: isPagado ? Colors.green : Colors.redAccent,
                size: 30,
              ),
              title: Text(
                pago['mes'],
                style: const TextStyle(fontWeight: FontWeight.bold), // Concepto de la Pregunta 5
              ),
              subtitle: Text('Estado: ${pago['estado']}'),
              trailing: Text(
                '\$${pago['monto'].toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}