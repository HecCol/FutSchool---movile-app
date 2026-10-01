# Cliente móvil de FutSchool

Aplicación Flutter para Android y, en una fase posterior, iOS.

La base muestra una pantalla de bienvenida. Las funciones del backlog se
implementarán por historias; todavía no hay autenticación ni conexión a una API.

## Ejecutar y verificar

Con Flutter **3.47.5** y Dart **3.13.4**, desde este directorio:

```sh
flutter pub get
flutter devices
flutter run
dart format --output=none --set-exit-if-changed lib test
flutter analyze
flutter test
flutter build apk --debug
```

El build Android requiere SDK, licencias y JDK compatibles. iOS requiere macOS
y Xcode; allí se puede ejecutar `flutter build ios --no-codesign`.
La firma para publicar en las tiendas se configurará más adelante.

## Organización

- `lib/main.dart`: entrada de la aplicación.
- `lib/app/`: aplicación, tema y futura navegación global.
- `lib/core/`: configuración, red y errores compartidos.
- `lib/shared/`: widgets comunes.
- `lib/features/`: módulos agrupados según las historias existentes.
- `assets/images/`, `assets/icons/`: recursos que se registrarán en `pubspec.yaml`
  cuando se añadan archivos reales.
- `test/`: pruebas unitarias y de widgets.
- `integration_test/`: futuros recorridos sobre un dispositivo.
- `android/`, `ios/`: proyectos nativos generados con Flutter.

Cada módulo contiene `presentation/`, `domain/` y `data/` para interfaz, modelos
y acceso a datos. Las carpetas reservadas no representan funciones implementadas.

Consulta [la arquitectura](../docs/arquitectura.md) y
[la preparación del entorno](../docs/entorno-desarrollo.md).
