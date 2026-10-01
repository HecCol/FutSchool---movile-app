# Estrategia de versionamiento

**Sistema:** Git. **Plataforma:** GitHub.

**Repositorio:** https://github.com/HecCol/FutSchool---movile-app

## Ramas y commits

GitHub Flow: `main` contiene cambios revisados. Las ramas temporales `develop/*`,
`fix/*`, `docs/*` y `chore/*` salen de `main` y se integran mediante PR.
No se utiliza una rama `develop` permanente.

Nombres: `tipo/id-descripcion`, en minúsculas, sin acentos y con guiones.
Commits: `tipo(ambito): descripcion` de Conventional Commits.
Consulta ejemplos y pasos en [CONTRIBUTING.md](../CONTRIBUTING.md).

Tags de entrega: `vMAJOR.MINOR.PATCH`, comenzando por `v0.1.0` cuando se apruebe
el prototipo. El número de build se mantiene por separado en `pubspec.yaml`
(`0.1.0+1` en la base inicial).

## Revisión e integración

Cada PR vincula su tarea, explica el resultado y aporta verificaciones. Se requiere
una aprobación independiente, conversaciones resueltas y CI satisfactorio.
Después se integra con squash merge y se elimina la rama temporal. No se realiza
push directo ni force push sobre `main`.

Los administradores deben configurar la protección o el ruleset de `main` con
esos requisitos, incluyendo **Formato, analisis y pruebas** y **Compilar Android**
después de la primera ejecución. Este archivo y el workflow no activan por sí
mismos la protección del repositorio.

## Responsabilidades

| Actividad | Responsable | Apoyo |
| --- | --- | --- |
| Crear PR | Autor del cambio | Vincula tarea, pruebas y evidencias |
| Revisar PR | Héctor Coronel Limias y María Belén Rodríguez Gómez | Otra persona revisa cuando uno de ellos es autor |
| Revisar código y pruebas | Héctor Coronel Limias y Ernesto Pérez Barrios | Nadie aprueba su propio cambio |
| Integrar cambios | Paloma Jimena Bustillo Molina | Suplente: Daniel Michel Cruz Verde |
| Mantener `main` | Paloma Jimena Bustillo Molina | Daniel Michel apoya CI, dependencias y entregas |
| Resolver conflictos | Autor de la rama | Héctor y el autor concurrente; Paloma confirma la integración |

La asignación conserva la Parte 5. Cuando Paloma o Daniel sean autores, el otro
integrará después de la revisión independiente. Las decisiones se registrarán
en el PR y el canal de desarrollo de Teams.

## Referencias

- [GitHub Flow](https://docs.github.com/en/get-started/using-github/github-flow).
- [Protección de ramas](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches).
- [Conventional Commits](https://www.conventionalcommits.org/es/v1.0.0/).
- [Semantic Versioning](https://semver.org/lang/es/).
