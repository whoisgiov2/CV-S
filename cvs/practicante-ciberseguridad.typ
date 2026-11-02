// VARIANTE — Practicante de Ciberseguridad (fines de semana, medio tiempo, hasta 3:00 PM).
// Énfasis: seguridad defensiva, certificaciones, laboratorios y automatización.
#import "../lib/template.typ": *

#cv(
  doc-title: "CV - Carlos Giovanni Reyes Medina - Practicante de Ciberseguridad",
  headline: "PRACTICANTE DE CIBERSEGURIDAD | SEGURIDAD DEFENSIVA",
  availability: "DISPONIBILIDAD: FINES DE SEMANA, MEDIO TIEMPO (HASTA LAS 3:00 PM)",

  // --- COLUMNA IZQUIERDA (31%) ---
  left: [
    #side-block("Educación")[
      #text(weight: "bold", fill: primary-color)[Lic. en Seguridad en TI] \
      Universidad Autónoma de Nuevo León (UANL) \
      _En Curso (Tercer Año)_
    ]

    #side-block("Certificaciones")[
      #list(
        [Google Cybersecurity Professional -- *Google*],
        [Red Hat System Admin I (RH124) -- *Red Hat*],
        [Fortinet Certified Fundamentals -- *Fortinet*],
        [Tech. Intro to Cybersecurity 2.0 -- *Fortinet*],
        [Getting Started in Cyber 3.0 -- *Fortinet*],
        [Intro to Threat Landscape 3.0 -- *Fortinet*]
      )
    ]

    #side-block("Habilidades Técnicas")[
      #list(
        [*SOC/SIEM/EDR:* Nociones de detección de alertas y análisis de riesgos.],
        [*Seguridad Perimetral:* Firewalls, túneles VPN, hardening básico.],
        [*Scripting y Auditoría:* Python, PowerShell, Bash.],
        [*Sistemas Operativos:* Linux (Red Hat RH124), Windows.],
        [*Redes:* Subnetting, VLSM, routers, switches.],
        [*Gobierno y Control:* Gestión de cambios (RFC), auditoría IAM, control de activos.]
      )
    ]

    #side-block("Idiomas")[
      - *Español:* Lengua Materna
      - *Inglés:* Nivel B2+ \ _(Documentación y manuales técnicos)_
    ]
  ],

  // --- COLUMNA DERECHA (65%) ---
  right: [
    #cv-section("Perfil Profesional")
    #block(inset: (x: 2pt))[
      Estudiante de tercer año en Seguridad en Tecnologías de la Información (UANL), con seis certificaciones en ciberseguridad y experiencia laboral en control de accesos, gestión de cambios y trazabilidad de activos. Busco una práctica en ciberseguridad para seguir aprendiendo en un equipo de seguridad y aportar con automatización en Python y bases de redes y Linux. Disponible fines de semana, medio tiempo (hasta las 3:00 PM). Inglés B2+.
    ]
    #v(0.35em)

    #cv-section("Proyectos Técnicos y Laboratorios")
    #cv-item(
      "Herramienta Forense y de Auditoría de Procesos",
      subtitle: "Proyecto Académico de Seguridad Defensiva",
    )[
      - *Detección de anomalías:* Automatización de scripts de auditoría en memoria y monitoreo de procesos anómalos para incidentes de seguridad en Linux/Windows.
    ]
    #cv-item(
      "Laboratorios de Infraestructura y Seguridad Perimetral",
      subtitle: "Entorno Simulado en Cisco Packet Tracer -- UANL",
    )[
      - *Hardening perimetral:* Despliegue de políticas de firewall y túneles VPN site-to-site para segmentar y cifrar el tráfico intersitio.
      - *Configuración de red:* Diseño e implementación de topologías corporativas con subnetting y VLSM sobre esquemas de direccionamiento real.
    ]
    #v(0.35em)

    #cv-section("Experiencia Laboral")
    #cv-item(
      "Gobierno de TI",
      subtitle: "Casas Javer S.A. de C.V. -- Monterrey, N.L. | Actualidad",
    )[
      - *Auditoría y control IAM:* Automatizó auditorías de identidades y conciliación de accesos con scripts en Python, neutralizando brechas por cuentas inactivas post-desvinculación (*post-offboarding*).
      - *Gobierno de activos de TI:* Supervisó el inventario tecnológico corporativo, garantizando la trazabilidad de activos para mitigar la superficie de exposición y ataque.
      - *Gestión de cambios (RFC):* Evaluó y gestionó solicitudes de cambio en infraestructura, asegurando el cumplimiento normativo interno, control de riesgos y continuidad operativa.
      - *Políticas y migración segura:* Coordinó la transición hacia Microsoft Planner aplicando principios de mínimo privilegio y segmentación de permisos de acceso.
    ]
    #cv-item(
      "Asesor Académico Especializado",
      subtitle: "Preparatoria #25 \"Dr. Eduardo Aguirre Pequeño\" -- UANL",
    )[
      - Resolución metódica de problemas, comunicación asertiva y pensamiento analítico en asesorías técnicas individuales de matemáticas, lógica y ciencias.
    ]
  ],
)
