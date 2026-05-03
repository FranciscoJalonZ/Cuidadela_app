Gestión Ciudadela App
Aplicación móvil/web desarrollada en Flutter para la gestión básica de una urbanización. Permite a los residentes consultar el estado de sus alícuotas mensuales y visualizar la disponibilidad de espacios comunes.

Capturas de Pantalla
Panel de Control	Mis Alícuotas	Reserva de Espacios
Menú principal con accesos rápidos	Estado de pagos por mes	Disponibilidad en tiempo real

Funcionalidades
 Panel de Control — Menú principal con navegación a todas las secciones
 Estado de Alícuotas — Visualización del estado de pago mensual (Pagado / Pendiente)
 Espacios Comunes — Lista de espacios con disponibilidad para reserva


Tecnologías Utilizadas
Tecnología	Versión	Uso
Flutter	3.x	Framework principal
Dart	3.x	Lenguaje de programación
Material Design 3	—	Sistema de diseño UI

Estructura del Proyecto

lib/
├── main.dart              # Punto de entrada, configuración de la app
├── home_screen.dart       # Pantalla principal — Panel de Control
├── alicuota_screen.dart   # Pantalla de estado de alícuotas
└── espacios_screen.dart   # Pantalla de espacios comunes


Cómo Ejecutar el Proyecto
Prerrequisitos
Flutter SDK instalado
VS Code con extensión Flutter
Google Chrome (para ejecución web)

Pasos
bash
1. Clona el repositorio
git clone https://github.com/TuUsuario/Cuidadela_app.git
2. Entra a la carpeta del proyecto
cd Cuidadela_app
3. Instala las dependencias
flutter pub get
4. Ejecuta la aplicación
flutter run

> Al ejecutar, selecciona \*\*Chrome\*\* para la versión web o conecta un dispositivo Android/iOS.

Datos del Proyecto
Los datos utilizados son estáticos, definidos directamente en Dart como listas de mapas:
dart
// Ejemplo — alicuota_screen.dart
final List<Map<String, dynamic>> alicuotas = [
{'mes': 'Enero 2026',   'monto': 65.00, 'pagado': true},
{'mes': 'Febrero 2026', 'monto': 65.00, 'pagado': true},
{'mes': 'Marzo 2026',   'monto': 65.00, 'pagado': true},
{'mes': 'Abril 2026',   'monto': 65.00, 'pagado': false},
];
dart
// Ejemplo — espacios_screen.dart
final List<Map<String, dynamic>> espaciosComunes = [
{'nombre': 'Cancha de Uso Múltiple', 'disponible': true},
{'nombre': 'Área de BBQ',            'disponible': false},
{'nombre': 'Piscina Central',        'disponible': true},
{'nombre': 'Salón de Eventos',       'disponible': true},
];

Navegación
La app implementa navegación con `Navigator.push` y `MaterialPageRoute`:

HomeScreen
├── → AlicuotaScreen   (Estado de Alícuotas)
└── → EspaciosScreen   (Reserva de Espacios)
```

\---Requisitos Cumplidos

* \[x] Diseño de interfaces con widgets de Flutter
* \[x] Navegación entre pantallas (`Navigator.push`)
* \[x] Manejo de datos estáticos (listas en Dart)
* \[x] Mínimo 2 pantallas (se implementaron 3)
* \[x] Historial de commits en GitHub







**Francisco Jalon** Z
Desarrollo de aplicaciones Móviles — Flutter  
2026

<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/f68d7b32-541d-451a-b59a-e5569f3bbd72" />
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/6d801287-3333-427c-a6e1-d4097ccdbd7b" />
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/a48e94a5-4e31-493e-9b0e-b21d70bf229e" />


## 

Este proyecto fue desarrollado con fines académicos.
