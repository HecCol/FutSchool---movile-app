# Cómo contribuir a FutSchool

1. Selecciona una Issue, revisa sus criterios y asígnate la tarea. Mueve su estado
   a **In Progress** en el tablero.
2. Actualiza `main` y crea una rama temporal:

   ```sh
   git switch main
   git pull --ff-only origin main
   git switch -c develop/hu-02-registro-usuario
   ```

3. Implementa el cambio dentro de su módulo. Añade pruebas de comportamiento
   y verifica la pantalla en Android cuando corresponda.
4. Desde `mobile/`, ejecuta:

   ```sh
   dart format lib test
   flutter analyze
   flutter test
   ```

5. Revisa `git diff`, añade las rutas modificadas con `git add`, registra un
   commit convencional y publica tu rama:

   ```sh
   git commit -m "feat(auth): registrar usuario"
   git push -u origin develop/hu-02-registro-usuario
   ```

6. Abre un PR hacia `main`, completa la plantilla, vincula la Issue, solicita
   revisión independiente y mueve la tarea a **Review**.
7. Atiende los comentarios y espera CI. El responsable integrará con squash merge
   después de una aprobación de otra persona.
8. Después elimina la rama temporal, actualiza `main` y mueve la tarea a **Done**.

## Nombres de ramas

Regla: `tipo/id-descripcion`, en minúsculas, sin acentos y con guiones.
El identificador será una historia `hu-XX`, una `issue-N` o una tarea `s0-NN`.

| Prefijo | Uso | Ejemplo |
| --- | --- | --- |
| `develop/` | Nuevas funciones | `develop/hu-02-registro-usuario` |
| `fix/` | Errores | `fix/hu-03-validacion-credenciales` |
| `docs/` | Documentación | `docs/issue-27-guia-instalacion` |
| `chore/` | Entorno, dependencias y automatización | `chore/s0-estructura-repositorio` |

Los ejemplos no crean ni asignan historias. No existe una rama `develop` permanente.

## Commits y versiones

Conventional Commits: `tipo(ambito): descripcion`. El ámbito es opcional;
la descripción debe ser concreta y en español.

```text
feat(auth): registrar usuario
fix(torneos): validar fechas del torneo
docs: actualizar guia de instalacion
test(equipos): comprobar jugador duplicado
refactor(api): separar repositorio de torneos
chore: actualizar dependencias
ci: configurar analisis y pruebas
```

Usa `!` o `BREAKING CHANGE:` si se rompe un contrato público definido.
Las entregas siguen `vMAJOR.MINOR.PATCH`; `0.1.0+1` es la versión inicial del
cliente. El tag de entrega se creará cuando el equipo apruebe el prototipo.

## Conflictos

En tu rama, ejecuta `git fetch origin` y `git merge origin/main`, resuelve los
archivos afectados, repite las verificaciones y publica el resultado.
Solicita una nueva revisión si el código cambia después de la aprobación.

Consulta [las responsabilidades y reglas de integración](docs/versionamiento.md).
