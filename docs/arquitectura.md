# Arquitectura del cliente móvil

Flutter y Dart implementan el cliente. Se prevé una arquitectura cliente-servidor
con API REST por HTTPS y JSON. El backend valida datos, credenciales y permisos;
ocultar un botón en el cliente no sustituye esa validación.

## Módulos y backlog

Las carpetas corresponden a las **26 historias existentes en GitHub** al crear
la estructura. Los números son los de las Issues actuales, que amplían el backlog
inicial de los documentos académicos.

| Módulo | Responsabilidad | Issues |
| --- | --- | --- |
| `home` y `app` | Inicio y navegación global | #1 |
| `auth` | Registro, sesión, roles y cierre de sesión | #2–#5 |
| `tournaments` | Crear, consultar, editar y finalizar torneos; historial | #6–#8, #26 |
| `teams` | Registro, jugadores, integrantes y perfil de equipo | #9–#11, #24 |
| `enrollments` | Solicitar inscripción, resolverla y consultar inscritos | #12–#14 |
| `matches` | Partidos, horarios, canchas, resultados y calendario | #15–#20, #22 |
| `standings` | Tabla de posiciones | #21 |
| `notifications` | Notificaciones de cambios | #23 |
| `statistics` | Estadísticas deportivas | #25 |

Consulta los criterios completos en
[GitHub Issues](https://github.com/HecCol/FutSchool---movile-app/issues).
El acceso administrativo se organiza dentro del módulo de cada operación y
se verifica también en el servidor.

## Capas

- `presentation/`: pantallas, componentes locales y estado visual.
- `domain/`: modelos y reglas del módulo.
- `data/`: fuentes de datos y repositorios que implementan contratos del dominio.
- `core/config/`, `core/network/`, `core/errors/`: configuración, comunicación y
  tratamiento de errores que compartan varios módulos.
- `shared/widgets/`: componentes visuales reutilizables.

El punto de entrada inicia `FutSchoolApp`. `app/` concentra el tema y la futura
navegación. Evita importar presentación desde `domain/` o `data/`.

## Estado inicial

Solo se implementó la pantalla de bienvenida en `home`. Los demás módulos están
reservados para sus historias. No existe un servicio REST ni un contrato de API
en esta base.

Antes de integrar servicios, acuerden URL por entorno, endpoints, errores,
autenticación y permisos. No incrusten contraseñas o claves privadas en el cliente.
La URL pública podrá pasarse por configuración de compilación al incorporar la API.

## Pruebas

`test/` comprueba el arranque y la disposición de la pantalla inicial. Las siguientes
historias deben añadir pruebas de sus reglas y widgets. `integration_test/` se
reserva para recorridos completos en un dispositivo. CI comprueba calidad y
compilación Android; los permisos requieren validar también el backend.
