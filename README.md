# CV-S

CVs de Carlos Giovanni Reyes Medina en [Typst](https://typst.app), uno por tipo de vacante.

## Estructura

- `lib/template.typ`: diseño compartido (colores, secciones, encabezado, 2 columnas). No tiene contenido.
- `cvs/base.typ`: CV base (Gobierno de TI y Ciberseguridad). Una sola hoja A4.
- `cvs/<puesto>.typ`: una variante por vacante.
- `out/`: PDFs generados (ignorado por git).

## Compilar

```bash
make            # todos los CVs -> out/*.pdf
typst compile --root . cvs/base.typ out/base.pdf   # uno solo
```

`--root .` es obligatorio porque los CVs importan `../lib/template.typ`.

## Paquetes

- [`@preview/octique:0.1.1`](https://typst.app/universe/package/octique): íconos SVG sutiles en el contacto y los títulos de sección. Va embebido en el paquete, así que no hace falta instalar fuentes.
- Typst lo descarga solo la primera vez, así que necesita internet en esa compilación.
- Evita paquetes de íconos que usan fuentes del sistema (`fontawesome`, `lucide`): fallan o cambian si la fuente no está instalada.
- Para agregar un ícono: `side-block("Título", icon: "nombre")` o `cv-section("Título", icon: "nombre")`. Los nombres son los de [Octicons](https://primer.style/foundations/icons).

## Crear una variante para una vacante

1. `cp cvs/base.typ cvs/<puesto>.typ`
2. Saca de la oferta los KPIs y palabras clave (herramientas, normas, responsabilidades).
3. Ajusta, sin inventar nada que no sea verdad:
   - `headline` y `doc-title`.
   - **Perfil Profesional:** primera frase con el rol que pide la oferta.
   - **Habilidades:** reordena para que lo que pide la oferta quede arriba.
   - **Experiencia y proyectos:** reordena viñetas y reescribe con el vocabulario de la oferta. Si hay un número real (cuentas, RFCs, activos), úsalo.
   - `availability: none` quita la etiqueta de disponibilidad.
4. `make` y confirma que siga en **1 página**.
