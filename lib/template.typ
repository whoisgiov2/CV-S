// Plantilla compartida para todos los CVs.
// Los archivos en cvs/ solo definen CONTENIDO; el diseño vive aquí.

// Íconos SVG embebidos en el paquete (no requieren fuentes instaladas).
#import "@preview/octique:0.1.1": octique-inline

// --- PALETA DE COLORES CORPORATIVOS ---
#let primary-color = rgb("#1e3a8a")
#let secondary-color = rgb("#03358a")
#let box-bg = rgb("#f8fafc")
#let border-color = rgb("#e2e8f0")

// --- FUNCIONES DE DISEÑO MODULARES ---
// Ícono pequeño opcional para títulos de sección (blanco sobre barra oscura).
#let title-icon(name) = if name != none [
  #octique-inline(name, color: white, width: 0.95em, baseline: 15%)#h(0.4em)
]

// Ícono para la línea de contacto.
#let contact-icon(name) = [
  #octique-inline(name, color: secondary-color, width: 0.95em, baseline: 15%)#h(0.2em)
]

#let cv-section(title, icon: none) = {
  block(
    fill: primary-color,
    width: 100%,
    inset: (x: 8pt, y: 4.5pt),
    radius: 3.5pt,
    text(size: 10.5pt, weight: "bold", fill: white)[#title-icon(icon)#upper(title)]
  )
  v(0.18em)
}

#let side-section(title, icon: none) = {
  block(
    fill: rgb("#334155"),
    width: 100%,
    inset: (x: 7pt, y: 3.5pt),
    radius: 3pt,
    text(size: 9.5pt, weight: "bold", fill: white)[#title-icon(icon)#upper(title)]
  )
  v(0.18em)
}

#let cv-item(title, subtitle: none, body) = {
  block(
    fill: box-bg,
    stroke: (left: 3pt + primary-color, rest: 0.5pt + border-color),
    inset: (x: 8pt, y: 5pt),
    radius: (right: 3.5pt, left: 0pt),
    width: 100%,
  )[
    #text(weight: "bold", size: 10pt, fill: primary-color)[#title]
    #if subtitle != none [
      \ #text(weight: "medium", size: 8.5pt, style: "italic", fill: rgb("#475569"))[#subtitle]
    ]
    #v(0.3em)
    #body
  ]
  v(0.18em)
}

// Bloque de la columna izquierda: título + contenido con sangría ligera.
#let side-block(title, icon: none, body) = {
  side-section(title, icon: icon)
  block(inset: (left: 2pt), body)
  v(0.5em)
}

// --- DOCUMENTO COMPLETO ---
// Uso: #cv(doc-title: ..., headline: ..., left: [...], right: [...])
// `left` y `right` son el contenido de cada columna.
#let cv(
  doc-title: "CV - Carlos Giovanni Reyes Medina",
  name: "CARLOS GIOVANNI REYES MEDINA",
  headline: "",
  contact: [
    #contact-icon("location")Escobedo, N.L., México | #contact-icon("device-mobile")+52 667 604 9324 | WhatsApp: +52 81 8113 9867 | #contact-icon("mail")#link("mailto:giovanni.reyesamed@gmail.com")[giovanni.reyesamed\@gmail.com]
  ],
  availability: "DISPONIBILIDAD SOLO FINES DE SEMANA : TURNO MATUTINO",
  left: [],
  right: [],
) = {
  set document(title: doc-title, author: "Carlos Giovanni Reyes Medina")

  // Márgenes optimizados para 1 sola hoja
  set page(paper: "a4", margin: (x: 1.25cm, y: 1.2cm))

  set text(
    font: ("Inter", "Helvetica", "Arial", "sans-serif"),
    size: 9.2pt,
    fill: rgb("#1e293b"),
    lang: "es",
  )
  set par(justify: true, leading: 0.50em)
  set list(indent: 0.4em, body-indent: 0.4em, tight: true)

  // --- ENCABEZADO PRINCIPAL ---
  align(center)[
    #text(size: 20pt, weight: "bold", fill: primary-color)[#name]
    #v(0.15em)
    #text(size: 11pt, weight: "bold", fill: secondary-color)[#headline]
    #v(0.35em)
    #text(size: 9pt)[#contact]
    #if availability != none [
      #v(0.25em)
      #box(
        fill: secondary-color,
        inset: (x: 8pt, y: 3pt),
        radius: 3pt,
      )[
        #text(size: 8pt, weight: "bold", fill: white)[#availability]
      ]
    ]
  ]
  v(0.5em)

  // --- ESTRUCTURA A 2 COLUMNAS ---
  grid(
    columns: (31%, 65%),
    gutter: 4%,
    left,
    right,
  )
}
