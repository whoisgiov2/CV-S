// CV BASE — Gobierno de TI y Ciberseguridad.
// Punto de partida: copia este archivo a cvs/<puesto>.typ y ajusta el contenido.
#import "../lib/template.typ": *

#cv(
  doc-title: "CV - Carlos Giovanni Reyes Medina - Gobierno de TI y Ciberseguridad",
  headline: "ESTUDIANTE DE SEGURIDAD EN TI | GOBIERNO DE TI Y CIBERSEGURIDAD",

  // --- COLUMNA IZQUIERDA (31%) ---
  left: [
    #side-block("Educación", icon: "mortar-board")[
      #text(weight: "bold", fill: primary-color)[Lic. en Seguridad en TI] \
      Universidad Autónoma de Nuevo León (UANL) \
      _En Curso (Tercer Año)_
    ]

    #side-block("Habilidades Técnicas", icon: "terminal")[
      #list(
        [*Gobierno y Control:* Gestión de cambios (RFC), auditoría IAM, control de activos.],
        [*Auditoría y Scripting:* Python, PowerShell, Bash.],
        [*Redes e Infraestructura:* Subnetting, VLSM, routers, switches.],
        [*Seguridad Perimetral:* Firewalls, túneles VPN, hardening básico.],
        [*Sistemas Operativos:* Linux (Red Hat RH124), Windows.],
        [*SOC/SIEM/EDR:* Nociones de detección de alertas y análisis de riesgos.]
      )
    ]

    #side-block("Certificaciones", icon: "verified")[
      #list(
        [Google Cybersecurity Professional -- *Google*],
        [Red Hat System Admin I (RH124) -- *Red Hat*],
        [Fortinet Certified Fundamentals -- *Fortinet*],
        [Tech. Intro to Cybersecurity 2.0 -- *Fortinet*],
        [Getting Started in Cyber 3.0 -- *Fortinet*],
        [Intro to Threat Landscape 3.0 -- *Fortinet*]
      )
    ]

    #side-block("Idiomas", icon: "globe")[
      - *Español:* Lengua Materna
      - *Inglés:* Nivel B2+ \ _(Documentación y manuales técnicos)_
    ]
  ],

  // --- COLUMNA DERECHA (65%) ---
  right: [
    #cv-section("Perfil Profesional", icon: "person")
    #block(inset: (x: 2pt))[
      Estudiante de tercer año en Seguridad en Tecnologías de la Información (UANL) con experiencia práctica en gobierno de TI, control de cambios y auditoría de accesos. Perfil enfocado en la mitigación de riesgos operacionales, cumplimiento de políticas de seguridad y trazabilidad en infraestructura corporativa. Disponibilidad de tiempo completo en turno matutino (hasta las 6:00 PM) e inglés B2+.
    ]
    #v(0.35em)

    #cv-section("Experiencia Laboral", icon: "briefcase")
    #cv-item(
      "Gobierno de TI",
      subtitle: "Casas Javer S.A. de C.V. -- Monterrey, N.L. | Actualidad",
    )[
      - *Auditoría y control IAM:* Automatizó auditorías de identidades y conciliación de accesos con scripts en Python, neutralizando brechas por cuentas inactivas post-desvinculación (*post-offboarding*).
      - *Gestión de cambios (RFC):* Evaluó y gestionó solicitudes de cambio en infraestructura, asegurando el cumplimiento normativo interno, control de riesgos y continuidad operativa.
      - *Gobierno de activos de TI:* Supervisó el inventario tecnológico corporativo, garantizando la trazabilidad de activos para mitigar la superficie de exposición y ataque.
      - *Políticas y migración segura:* Coordinó la transición hacia Microsoft Planner aplicando principios de mínimo privilegio y segmentación de permisos de acceso.
    ]
    #cv-item(
      "Asesor Académico Especializado",
      subtitle: "Preparatoria #25 \"Dr. Eduardo Aguirre Pequeño\" -- UANL",
    )[
      - Resolución metódica de problemas, comunicación asertiva y pensamiento analítico en asesorías técnicas individuales de matemáticas, lógica y ciencias.
    ]
    #v(0.35em)

    #cv-section("Proyectos Técnicos y Laboratorios", icon: "beaker")
    #cv-item(
      "Laboratorios de Infraestructura y Seguridad Perimetral",
      subtitle: "Entorno Simulado en Cisco Packet Tracer -- UANL",
    )[
      - *Configuración de red:* Diseño e implementación de topologías corporativas con subnetting y VLSM sobre esquemas de direccionamiento real.
      - *Hardening perimetral:* Despliegue de políticas de firewall y túneles VPN site-to-site para segmentar y cifrar el tráfico intersitio.
    ]
    #cv-item(
      "Herramienta Forense y de Auditoría de Procesos",
      subtitle: "Proyecto Académico de Seguridad Defensiva",
    )[
      - *Detección de anomalías:* Automatización de scripts de auditoría en memoria y monitoreo de procesos anómalos para incidentes de seguridad en Linux/Windows.
    ]
  ],
)
