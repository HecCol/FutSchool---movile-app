# FutSchool — aplicación móvil

Repositorio de desarrollo de la aplicación móvil de **FutSchool**, orientada a
la organización y consulta de torneos escolares.

- **Framework:** Flutter 3.47.5 estable.
- **Lenguaje:** Dart 3.13.4, incluido en Flutter.
- **Plataformas:** Android primero; iOS en una fase posterior.
- **Repositorio:** https://github.com/HecCol/FutSchool---movile-app
- **Backlog:** [historias en GitHub Issues](https://github.com/HecCol/FutSchool---movile-app/issues).

La base incluye una pantalla de bienvenida, proyectos Android/iOS, una prueba
de arranque y controles de CI. Las funcionalidades se desarrollarán por historias.

## Estructura

```text
.
├── .github/
│   ├── ISSUE_TEMPLATE/
│   ├── workflows/flutter-ci.yml
│   └── PULL_REQUEST_TEMPLATE.md
├── .vscode/
├── docs/
│   ├── diseno/
│   └── evidencias/
├── mobile/
│   ├── android/
│   ├── ios/
│   ├── assets/
│   ├── lib/
│   │   ├── app/
│   │   ├── core/
│   │   ├── shared/
│   │   └── features/
│   ├── test/
│   ├── integration_test/
│   ├── pubspec.yaml
│   └── pubspec.lock
├── .editorconfig
├── .gitattributes
├── .gitignore
└── CONTRIBUTING.md
```

## Comenzar

```sh
git clone https://github.com/HecCol/FutSchool---movile-app.git
cd FutSchool---movile-app/mobile
flutter pub get
flutter devices
flutter run
```

Prepara Flutter, Android SDK y un dispositivo siguiendo
[la guía del entorno](docs/entorno-desarrollo.md).

## Verificar

Desde `mobile/`:

```sh
dart format --output=none --set-exit-if-changed lib test
flutter analyze
flutter test
```

GitHub Actions ejecuta esos controles y compila un APK de depuración. Las pruebas
en dispositivos y la validación de cada historia complementan estos controles.

## Documentación y colaboración

- [Arquitectura y módulos](docs/arquitectura.md).
- [Instalación, configuración y verificación](docs/entorno-desarrollo.md).
- [Ramas, commits y responsabilidades](docs/versionamiento.md).
- [Guía para contribuir](CONTRIBUTING.md).
- [Índice de documentación](docs/README.md).

Se utiliza GitHub Flow: ramas temporales desde `main`, revisión independiente
y squash merge. Consulta las convenciones antes de comenzar una tarea.
