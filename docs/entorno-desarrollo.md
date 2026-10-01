# Entorno de desarrollo

## Herramientas

| Herramienta | Versión o requisito | Uso |
| --- | --- | --- |
| Flutter | **3.47.5 estable** | Desarrollo, análisis, pruebas y compilación |
| Dart | **3.13.4**, incluido en Flutter | Lenguaje y formato |
| Git | Equipo revisado: 2.51.2.windows.1 | Historial, ramas y colaboración |
| VS Code | Equipo revisado: 1.132.1 | Editor y depuración con Dart/Flutter |
| Android Studio | Equipo revisado: 2026.1.3 | SDK Manager y Device Manager |
| Android SDK | Según proyecto generado y `flutter doctor` | Compilación Android |
| JDK | Java **17** en CI | Ejecución del wrapper Gradle 9.3.1 |
| GitHub Actions | Servicio web | Verificaciones en los PR |
| macOS y Xcode | Solo para iOS | Compilar y ejecutar el cliente iOS |

Las versiones del equipo revisado son referencia del documento inicial. Flutter
y Dart se fijan como base común. El SDK incluye análisis y pruebas.

## Requisitos

Windows de 64 bits para Android. Con Android Studio y emulador se requieren al
menos 16 GB de RAM y espacio para SDK, imágenes y builds. Un teléfono con
depuración USB puede sustituir al emulador. Se necesita Internet para las descargas.

## Instalación y configuración

1. Instala Git, VS Code y Android Studio desde sus sitios oficiales.
2. Descarga Flutter 3.47.5 del [archivo oficial](https://docs.flutter.dev/install/archive)
   y extráelo en una ruta corta, por ejemplo `C:\develop\flutter`.
3. Añade `C:\develop\flutter\bin` al PATH del usuario y abre otra terminal.
4. Instala las extensiones **Flutter** y **Dart** de Dart Code en VS Code.
5. En SDK Manager instala Platform-Tools, Command-line Tools, Emulator y las
   plataformas y Build-Tools que requieran el proyecto y `flutter doctor`.
   `compileSdk` y `targetSdk` utilizan las versiones gestionadas por Flutter.
6. Crea un AVD en Device Manager o conecta un teléfono con depuración USB.
7. Revisa el diagnóstico, completa las licencias y comprueba el dispositivo:

   ```sh
   flutter --version
   dart --version
   flutter doctor -v
   flutter doctor --android-licenses
   flutter devices
   ```

Si Flutter no reconoce SDK o JDK, proporciona las rutas locales con
`flutter config --android-sdk RUTA` o `flutter config --jdk-dir RUTA`.
No versiones `local.properties` ni rutas de un equipo.

## Ejecutar y verificar

```sh
cd mobile
flutter pub get --enforce-lockfile
dart format --output=none --set-exit-if-changed lib test
flutter analyze
flutter test
flutter run
flutter build apk --debug
```

En macOS configura Xcode y ejecuta `flutter build ios --no-codesign` para verificar
sin firma de distribución. `mx.futschool.futschool` es el identificador inicial;
el equipo confirmará identificador definitivo y firma antes de publicar.

## Evidencias y guías

Guarda capturas reales de diagnóstico y ejecución en
[`evidencias/`](evidencias/README.md). Registra fecha, versión y resultado observado.

- [Crear una aplicación Flutter](https://docs.flutter.dev/reference/create-new-app).
- [Preparar Android](https://docs.flutter.dev/platform-integration/android/setup).
- [Preparar iOS](https://docs.flutter.dev/platform-integration/ios/setup).
- [Pruebas Flutter](https://docs.flutter.dev/testing/overview).
