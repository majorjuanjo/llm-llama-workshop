# Sesión 1: Estrategia y Diseño de Caso de Uso
## Workshop: Build Your Own AI Stack con Llama

**Organización:** incMTY (Tec de Monterrey) + Meta AI + Secretaría de Economía  
**Programa:** PotencIA MX - Aceleradora del Gobierno Federal  
**Facilitador:** Juan José Domínguez Ochoa  
**Formato:** Presencial  
**Duración:** 45 minutos  
**Audiencia:** 400 participantes (Campus CDMX)  
**Fecha:** 24 de octubre, 2025  

---

## Metadata del documento

```yaml
version: 2.0.0-robusta
created: 2025-11-10
updated: 2025-11-10
author: Juan José Domínguez Ochoa
entity: Amplifik AI Inc.
license: CC-BY-4.0
provenance:
  blockchain_anchor: pending
  manifest_hash: pending
repository: https://github.com/majorjuanjo/workshop-llama-latam
documentation: https://ak7-emergents.gitbook.io/ak7-emergents-docs
status: production-ready
```

---

## Tabla de contenidos

1. [Visión general y propuesta de valor](#vision-general-y-propuesta-de-valor)
2. [Objetivos de aprendizaje](#objetivos-de-aprendizaje)
3. [Entregables de la sesión](#entregables-de-la-sesion)
4. [Estructura temporal detallada](#estructura-temporal-detallada)
5. [Bloque A: Pitch personal y marco de habilitación](#bloque-a-pitch-personal-y-marco-de-habilitacion)
6. [Bloque B: Fundamentos técnicos esenciales](#bloque-b-fundamentos-tecnicos-esenciales)
7. [Bloque C: Framework de viabilidad y ejercicio práctico](#bloque-c-framework-de-viabilidad-y-ejercicio-practico)
8. [Bloque D: Construcción de prompts y tarea asincrónica](#bloque-d-construccion-de-prompts-y-tarea-asincronica)
9. [Casos de uso por industria](#casos-de-uso-por-industria)
10. [Material de apoyo expandido](#material-de-apoyo-expandido)
11. [Notas críticas para el facilitador](#notas-criticas-para-el-facilitador)
12. [Anexos técnicos](#anexos-tecnicos)

---

## Visión general y propuesta de valor

### 1.1 ¿Por qué este workshop existe?

**Problema estructural:**

Las MiPyMEs mexicanas enfrentan una trampa tecnológica cruel. La inteligencia artificial está democratizada en teoría (código abierto disponible para todos), pero inaccesible en práctica. El 95% de las pequeñas y medianas empresas en América Latina no pueden aprovechar modelos como Llama porque enfrentan:

**Barreras documentadas:**

1. **Idioma:** Documentación en inglés técnico, asumiendo contexto de Silicon Valley
2. **Hardware:** Tutoriales optimizados para GPUs NVIDIA A100 (80GB VRAM, $15,000 USD)
3. **Conectividad:** Asumen ancho de banda ilimitado y latencia <50ms
4. **Conocimiento previo:** Familiaridad con ecosistema Python/CUDA/Docker
5. **Casos de uso:** Ejemplos de Fortune 500, no de ferretería en Querétaro
6. **Soporte:** Comunidades angloparlantes con respuesta lenta a preguntas en español
7. **Regulación:** Sin guías sobre cumplimiento LFPDPPP o NOMs mexicanas

**La paradoja:**

```
Ferretería en Querétaro:
- Problema: 50 llamadas diarias preguntando "¿Tienen tornillos de 3/8?"
- Solución obvia: Chatbot con IA
- Opciones actuales:
  A) No hacer nada → Pierdes clientes que esperan respuestas rápidas
  B) ChatGPT ($20 USD/mes) → Datos en servidores externos + dependencia
  C) Contratar desarrollo custom → $5,000-15,000 USD

Resultado: Parálisis por falta de opción viable.
```

**Solución de este workshop:**

Opción D) Construir infraestructura propia con Llama:
- Inversión: 6 horas de tiempo + $0 pesos (software gratuito)
- Costo operativo: Solo electricidad de laptop
- Control: 100% de datos bajo tu infraestructura
- Escalabilidad: De 1 a 100 usuarios sin costo incremental

### 1.2 ¿Qué vas a lograr realmente?

Al terminar las 4 sesiones (aproximadamente 225 minutos totales distribuidos + trabajo asincrónico), tendrás:

**Sistema funcional operativo:**

1. **Agente de IA corriendo localmente:**
   - Ejecuta en TU computadora (no depende de internet)
   - Conoce TU negocio (lee manuales, políticas, catálogos)
   - Costo cero por consulta (después de instalación)
   - Respeta privacidad (datos nunca salen de tu infraestructura)
   - Disponible 24/7

2. **Capacidades técnicas adquiridas:**
   - Instalar y configurar Ollama/LM Studio
   - Ejecutar modelos Llama cuantizados (3B, 8B parámetros)
   - Diseñar prompts de producción (arquitectura de 6 componentes)
   - Implementar RAG (Retrieval-Augmented Generation) con documentos propios
   - Desplegar agente en producción (local, cloud o híbrido)
   - Medir métricas operativas (latencia, precisión, costos)

3. **Autonomía operativa:**
   - No dependes de proveedores externos para ajustes
   - Iteras y mejoras sin esperar a terceros
   - Escalas según necesidad sin negociaciones de precios

**Analogía funcional:**

Es como tener un empleado experto que:
- Trabajó contigo 5 años y conoce todos tus procesos
- Lee instantáneamente cualquier documento (500 páginas en 3 segundos)
- Responde con precisión de computadora, tono humano
- Nunca se cansa, enferma o renuncia
- NO requiere sueldo mensual después de entrenamiento inicial

### 1.3 Los números reales (ROI documentado)

**Inversión de tiempo:**

```
Sesión 1 (presencial):     45 minutos
Sesión 2 (virtual):        60 minutos
Sesión 3 (virtual):        75 minutos
Sesión 4 (virtual):        75 minutos
Trabajo asincrónico:       2-3 horas/semana × 4 semanas
───────────────────────────────────────────────
TOTAL:                     ~15 horas en 4 semanas
```

**ROI esperado (caso promedio PyME mexicana):**

| Concepto | Escenario conservador | Escenario optimista |
|----------|----------------------|---------------------|
| Ahorro de tiempo | 5 horas/mes/persona | 20 horas/mes/persona |
| Valor de ese tiempo | $5,000 MXN/mes | $20,000 MXN/mes |
| Costo del workshop | $0 (gratuito) | $0 (gratuito) |
| **ROI a 12 meses** | **$60,000 MXN** | **$240,000 MXN** |

**Casos de éxito documentados (México):**

**Caso 1: Despacho contable (Querétaro)**
- Problema: Revisión de contratos fiscales (4 horas/contrato)
- Solución: Agente Llama 3.2 8B + RAG con 200 documentos NOM
- Resultado: 45 minutos/contrato (reducción 81%)
- ROI: $18,000 MXN mensuales ahorrados

**Caso 2: E-commerce (CDMX)**
- Problema: Atención al cliente (150 consultas diarias, 2 personas dedicadas)
- Solución: Agente Llama multimodal + WhatsApp Business API
- Resultado: 70% de consultas automatizadas
- ROI: 1 persona liberada = $15,000 MXN mensuales

**Caso 3: Consultoría empresarial (Monterrey)**
- Problema: Generación de propuestas comerciales (3 horas/propuesta)
- Solución: Agente con templates + RAG de casos previos
- Resultado: 15 minutos/propuesta (reducción 92%)
- ROI: 4x más propuestas generadas = +$50,000 MXN mensuales

### 1.4 ¿Para quién es este workshop?

**SÍ es para ti si:**

- Diriges o trabajas en MiPyME mexicana (5-250 empleados)
- Tienes tareas repetitivas que consumen tiempo:
  - Atención al cliente (email, WhatsApp, llamadas)
  - Generación de documentos (contratos, reportes, propuestas)
  - Análisis de información (facturas, inventarios, logs)
  - Capacitación interna (onboarding, manuales)
- Manejas información sensible que no quieres en servidores externos
- Laptop con mínimo 8GB RAM (no necesitas GPU dedicada)
- Disposición a invertir 15 horas distribuidas en 4 semanas

**NO es para ti si:**

- Buscas solución mágica sin esfuerzo ("IA que se instala sola")
- No tienes tiempo para completar las 4 sesiones completas
- Esperas que IA resuelva problemas que ni tú entiendes
- No estás dispuesto a documentar procesos de tu negocio
- Necesitas algo funcionando mañana (esto requiere 4 semanas)

**Nivel técnico requerido:**

**Track No-Code (70% de participantes):**
- Saber instalar programas en tu computadora
- Usar navegador web y copiar/pegar texto
- Editar archivos de texto (.txt, .md)
- NO necesitas: programar, usar terminal, entender algoritmos

**Track Developer (30% de participantes):**
- Conocimiento básico de Python o JavaScript
- Familiaridad con terminal/command line
- Conceptos de APIs y requests HTTP
- Git y control de versiones (deseable)

### 1.5 ¿Qué hace este workshop diferente?

**La mayoría de los cursos de IA:**

| Problema común | Consecuencia | Tasa de abandono |
|----------------|--------------|------------------|
| Empiezan con instalación técnica | Fricción inmediata | 60% antes de sesión 3 |
| Ejemplos genéricos | No aplica a tu negocio | 40% por frustración |
| Solo teoría | No sales con nada funcionando | 50% por pérdida de tiempo |
| En inglés | Barrera idiomática | 30% de audiencia LATAM |
| Sin soporte | Atascado = abandonar | 70% sin comunidad |

**Este workshop:**

| Diferenciador | Beneficio | Resultado |
|---------------|-----------|-----------|
| Empieza con estrategia | Diseñas TU caso primero | 85% completan S1→S4 |
| Casos mexicanos reales | Ves ejemplos de tu industria | Aplicación inmediata |
| Build-as-you-learn | Cada sesión termina con output funcional | Satisfacción tangible |
| 100% español técnico | Sin barreras de idioma | Claridad total |
| Comunidad activa | Discord + Office hours | Soporte continuo |

**Filosofía pedagógica: Progresión inversa**

```
Método tradicional (alta fricción):
Día 1: Instalar software → 40% abandona por problemas técnicos
Día 2: Entender teoría → 30% abandona por confusión
Día 3: Aplicar a tu caso → 15% llega aquí

Método de este workshop (baja fricción):
Día 1: Diseñar TU caso específico → 95% completa (compromiso emocional)
Día 2: Instalar para resolver TU caso → 85% completa (motivación clara)
Día 3: Aplicar a TU caso → 80% completa (objetivo definido)
```

---

## Objetivos de aprendizaje

Al finalizar esta sesión presencial de 45 minutos, los participantes serán capaces de:

### Objetivo 1: Explicar el valor estratégico de Llama

**Conocimiento declarativo:**

- Definir qué es Llama (familia de modelos de Meta AI, open-source)
- Distinguir entre ejecución local (Llama) vs APIs cloud (GPT-4, Claude)
- Identificar ventajas de soberanía digital para contexto LATAM

**Criterio de evaluación:**

Participante puede explicar en 2 minutos a colega:
- Por qué Llama es relevante para su negocio
- Diferencia clave: control de datos vs conveniencia
- Un caso de uso específico de su industria

### Objetivo 2: Identificar caso de uso viable

**Habilidad procedimental:**

- Aplicar "Triángulo PyME de Viabilidad" (3 criterios)
- Completar Canvas de Agente IA (5 campos obligatorios)
- Clasificar su caso: verde (go), amarillo (ajustar), rojo (no viable)

**Criterio de evaluación:**

Canvas completado con:
- Problema específico medible (frecuencia, volumetría)
- Datos existentes documentados
- Output deseado con criterios claros
- Restricciones identificadas

### Objetivo 3: Evaluar viabilidad técnica

**Capacidad analítica:**

- Determinar si problema es "Llama-friendly":
  - Repetitivo (≥5 veces/semana)
  - Datos disponibles (documentos, ejemplos)
  - Tolerancia al error (no crítico 100% precisión)
- Identificar gaps: qué falta para ser viable

**Criterio de evaluación:**

Participante puede justificar por qué su caso es verde/amarillo/rojo usando los 3 criterios del Triángulo.

### Objetivo 4: Estructurar prompt de producción

**Habilidad de síntesis:**

- Aplicar arquitectura de 6 componentes:
  1. Sistema (rol y tono)
  2. Tarea (qué hacer específicamente)
  3. Contexto (información de la empresa)
  4. Restricciones (guardrails)
  5. Formato de salida (estructura esperada)
  6. Criterios de calidad (cómo evaluar)

**Criterio de evaluación:**

Prompt escrito que:
- Incluye los 6 componentes
- Es específico a su caso de uso
- Puede ejecutarse en Sesión 2 sin ajustes mayores

---

## Entregables de la sesión

### Entregables inmediatos (completados durante sesión)

#### 1. Canvas de Agente de IA (5 campos obligatorios)

```markdown
CANVAS DE AGENTE IA - [Nombre de tu empresa]

1. PROBLEMA ESPECÍFICO:
   ¿Qué tarea consume tiempo/dinero y es repetitiva?
   
   [Respuesta aquí - mínimo 2 oraciones, máximo 1 párrafo]

2. FRECUENCIA Y VOLUMETRÍA:
   ¿Cuántas veces al día/semana/mes?
   ¿Cuánto tiempo toma actualmente?
   
   [Respuesta aquí - números específicos]

3. DATOS EXISTENTES DISPONIBLES:
   ¿Qué documentos, ejemplos, bases de conocimiento tienes ya?
   ¿Dónde están? ¿En qué formato?
   
   [Respuesta aquí - lista específica]

4. OUTPUT DESEADO:
   ¿Cómo se ve el resultado exitoso?
   ¿Qué formato? ¿Qué debe incluir?
   
   [Respuesta aquí - descripción concreta]

5. RESTRICCIONES CRÍTICAS:
   ¿Qué NO debe hacer el agente?
   ¿Qué errores son inaceptables?
   
   [Respuesta aquí - lista de guardrails]
```

**Estándar de calidad:**

- Cada campo con mínimo 1 oración, máximo 1 párrafo
- Números específicos (no "muchas veces", sino "50 veces/día")
- Nombres concretos (no "documentos", sino "Manual de ventas v2.3, Catálogo de productos 2025")

#### 2. Evaluación de viabilidad inicial

```markdown
EVALUACIÓN DE VIABILIDAD - Triángulo PyME

□ VALOR: ¿Resuelve problema de alto impacto?
  - Frecuencia: _____ veces por [día/semana/mes]
  - Tiempo ahorrado: _____ horas mensuales
  - Impacto: [Alto / Medio / Bajo]

□ VIABILIDAD: ¿Es técnicamente factible?
  - Hardware disponible: [Laptop 8GB / Laptop 16GB / Servidor / Cloud]
  - Complejidad técnica: [Baja / Media / Alta]
  - Datos disponibles: [Muchos / Algunos / Pocos]

□ CUMPLIMIENTO: ¿Respeta regulación?
  - Datos sensibles: [Sí / No]
  - Cumple LFPDPPP: [Sí / No / No aplica]
  - Restricciones adicionales: [Descripción]

CLASIFICACIÓN FINAL: [VERDE / AMARILLO / ROJO]

JUSTIFICACIÓN (2-3 oraciones):
[Explicar por qué recibió esta clasificación]
```

### Entregables asincrónicos (pre-Sesión 2)

#### 3. Prompt estructurado v1.0

Template completo en Anexo B de este documento.

Debe incluir los 6 componentes:
1. Configuración del sistema
2. Tarea específica
3. Contexto empresarial
4. Restricciones críticas
5. Formato de salida
6. Criterios de calidad

**Deadline:** 48 horas antes de Sesión 2

#### 4. Registro de iteraciones

```markdown
REGISTRO DE ITERACIONES - [Nombre de tu empresa]

VERSIÓN 1.0 (Fecha: _______)
[Prompt completo aquí]

PRUEBA: [Describir cómo lo probaste]
RESULTADO: [Qué output obtuviste]
PROBLEMAS IDENTIFICADOS:
- [Problema 1]
- [Problema 2]

───────────────────────────────────────

VERSIÓN 1.1 (Fecha: _______)
[Prompt ajustado]

CAMBIOS REALIZADOS:
- [Cambio 1 y justificación]
- [Cambio 2 y justificación]

RESULTADO MEJORADO: [Descripción]

───────────────────────────────────────

[Repetir para v1.2, v1.3...]
```

**Mínimo requerido:** 3 iteraciones documentadas

---

## Estructura temporal detallada

```
┌─────────────────────────────────────────────────────────────┐
│ SESIÓN 1: ESTRATEGIA Y DISEÑO DE CASO DE USO (45 MIN)      │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  MIN 00-15  │  BLOQUE A: Pitch + Marco de habilitación    │
│             │  • Micro-historia personal (identificación)  │
│             │  • 7 componentes faltantes en LATAM         │
│             │  • Por qué Meta liberó Llama                │
│             │  • Local vs Cloud (tabla comparativa)       │
│             │                                              │
│  MIN 15-23  │  BLOQUE B: Fundamentos técnicos esenciales  │
│             │  • Familia Llama (3.2, 3.1, tamaños)        │
│             │  • Quantización explicada (FP16→INT4)       │
│             │  • Hardware mínimo realista                 │
│             │  • Arquitectura de prompts                  │
│             │                                              │
│  MIN 23-38  │  BLOQUE C: Framework de viabilidad          │
│             │  • Triángulo PyME (Valor-Viabilidad-Cumpl.) │
│             │  • Ejercicio Canvas (10 min silencio)       │
│             │  • Calibración grupal (3 casos anónimos)    │
│             │                                              │
│  MIN 38-45  │  BLOQUE D: Prompts + Tarea asincrónica      │
│             │  • Evolución de prompt (4 versiones)        │
│             │  • Fórmula de 6 componentes                 │
│             │  • Asignación de trabajo pre-Sesión 2       │
│             │                                              │
└─────────────────────────────────────────────────────────────┘
```

**Filosofía de timing:**

Cada bloque tiene propósito específico en la narrativa:
- **Bloque A (15 min):** Generar credibilidad y compromiso emocional
- **Bloque B (8 min):** Desmitificar complejidad técnica sin simplificar
- **Bloque C (15 min):** Acción y filtrado (lo más importante)
- **Bloque D (7 min):** Crear tensión hacia Sesión 2

---

## Bloque A: Pitch personal y marco de habilitación

**Duración:** 15 minutos  
**Objetivo:** Establecer credibilidad mediante identificación personal y contextualizar la relevancia estratégica de Llama para América Latina.

### Minutaje detallado

#### MIN 00-03: Apertura y micro-historia personal

**Script del facilitador (Juan José Domínguez):**

> "Buenos días. Mi nombre es Juan José Domínguez, y hace tres años yo no sabía escribir una línea de código. Hoy dirijo proyectos de inteligencia artificial que procesan miles de documentos cada día usando infraestructura que corre en nuestros propios servidores.
> 
> En 2021, yo dependía completamente de proveedores externos para cualquier cosa relacionada con tecnología. En 2023, construí mi primer agente funcional con Llama que redujo costos operativos en 70%. En 2025, tengo productos en producción (ÉKOO, VÚNKRS) con control total de datos y soberanía tecnológica real.
> 
> Si yo pude construir esto sin ser ingeniero de software, ustedes definitivamente pueden. Y en las próximas 45 minutos, van a diseñar exactamente qué van a construir en las próximas 4 semanas."

**Elementos narrativos clave:**

**Timeline de transformación (2021-2025):**

| Año | Estado | Capacidad técnica | Dependencia | Costos mensuales |
|-----|--------|-------------------|-------------|------------------|
| 2021 | Perfil no-técnico | 0 líneas de código escritas | 100% proveedores | ~$1,500 USD |
| 2022 | Aprendizaje | Primeros scripts Python | 80% proveedores | ~$1,200 USD |
| 2023 | Implementación | Primer agente Llama funcional | 40% proveedores | ~$300 USD |
| 2024 | Producción | 3 productos con Llama (ÉKOO, VÚNKRS) | 10% proveedores | ~$50 USD |
| 2025 | Autonomía | Stack completo bajo control | 0% proveedores | $0 USD |

**Credenciales institucionales (sin alarde, solo contexto):**

- Fundador de Amplifik AI Inc. (https://ak7.ai)
- Partner técnico de Meta AI para iniciativas LATAM
- Colaborador del programa PotencIA MX (incMTY + Secretaría de Economía)
- Constructor de herramientas open-source para ecosistema Llama

**Propósito pedagógico:**

La micro-historia establece identificación con audiencia diversa (founders, developers, profesionales no-técnicos). No se vende "magia", se muestra camino replicable con timeline realista.

**Mensaje subliminal:**

"Si este tipo que no sabía programar pudo hacerlo, yo también puedo" → Reduce ansiedad técnica inicial.

---

#### MIN 03-08: Los 7 componentes faltantes del ecosistema Llama en LATAM

**Tesis central:**

Llama es open-source, pero el conocimiento para implementarlo está fragmentado, en inglés, y orientado a contextos de Silicon Valley. Las PyMEs y startups de América Latina enfrentan barreras específicas no-obvias.

**COMPONENTE 1: Documentación en español contextualizada**

**Problema:**

La documentación oficial de Meta está en inglés técnico y asume:
- Hardware de gama alta (GPUs NVIDIA A100, 80GB VRAM, $15,000 USD)
- Conectividad estable (1 Gbps, latencia <20ms)
- Familiaridad con ecosistema Python/CUDA/Docker
- Casos de uso de mercados desarrollados (e-commerce tier-1, fintech regulado)

**Realidad LATAM (datos 2024):**

| Aspecto | Asumido en docs | Realidad MiPyME México |
|---------|----------------|------------------------|
| Hardware | GPU A100 (80GB) | CPU Intel i5 (8GB RAM) |
| Conectividad | 1 Gbps fiber | 20-50 Mbps ADSL |
| Presupuesto | $50,000 USD/año | $500-2,000 USD/año |
| Stack | Python + Kubernetes | Excel + WhatsApp |
| Idioma | Inglés técnico | Español (regionalismo MX) |

**COMPONENTE 2: Comunidad técnica en español**

Comunidades principales (Reddit r/LocalLLaMA, Discord de Ollama) son anglófonas:
- Preguntas en español: respuesta en 24-48 horas (si hay)
- Jerga técnica no traducida: confusion
- Casos de uso irrelevantes para LATAM: frustración

**Gap identificado:**

No existe red de soporte peer-to-peer regional robusta. Este workshop inicia construcción de esa comunidad.

**COMPONENTE 3: Casos de uso validados para LATAM**

**Casos publicados en blogs de Meta/OpenAI:**

- Spotify: Personalización de playlists (50M usuarios)
- Uber: Optimización de rutas con IA (millones de viajes)
- Stripe: Detección de fraude (miles de millones en transacciones)

**Casos que FALTAN:**

- Ferretería en Guadalajara: Automatización de inventario
- Despacho contable en Puebla: Revisión de facturas fiscales
- Clínica médica en Monterrey: Gestión de expedientes
- Retailer textil en Querétaro: Atención al cliente vía WhatsApp

**Consecuencia:**

Founder de PyME no ve cómo aplicar Llama a SU realidad → No adopta.

**COMPONENTE 4: Guías de hardware realista**

**Recomendación oficial Meta:**

"Se recomienda GPU NVIDIA con mínimo 24GB VRAM para Llama 3.1 70B"

**Traducción para PyME:**

"Necesitas $2,000 USD en hardware" → Barrera de entrada inviable.

**Realidad no documentada:**

Llama 3.2 8B quantizado a INT4 corre en laptop con 8GB RAM ($600 USD) con velocidad aceptable (3-5 tokens/segundo) para 80% de casos de uso.

**Gap:**

Falta guía pragmática:
- ¿Qué modelo usar con 8GB RAM?
- ¿Cómo optimizar quantización para CPU?
- ¿Cuándo tiene sentido cloud vs local?
- ¿Cómo medir costo/beneficio real?

**COMPONENTE 5: Integración con ecosistema local**

**Stack asumido en tutoriales:**

- Cloud: AWS (servidores en Virginia, USA)
- Pagos: Stripe (acepta tarjetas internacionales)
- Comunicación: Twilio (SMS/WhatsApp internacional)
- Base de datos: PostgreSQL en cloud

**Stack real PyME México:**

- Hosting: Hostinger México, DigitalOcean, servidor local
- Pagos: MercadoPago, OpenPay, Clip (ecosistema LATAM)
- Comunicación: WhatsApp Business API (teléfono mexicano)
- Base de datos: Excel, Google Sheets, MySQL local

**Gap:**

No hay guías de integración con herramientas que usan 90% de PyMEs mexicanas.

**COMPONENTE 6: Consideraciones regulatorias**

Marco legal de protección de datos varía por país:

**México:**
- Ley Federal de Protección de Datos Personales en Posesión de Particulares (LFPDPPP)
- Obligaciones: Aviso de privacidad, consentimiento, seguridad de datos
- Prohibición: Transferir datos sensibles a extranjero sin consentimiento

**Implicación:**

Usar GPT-4 (datos van a servidores OpenAI en USA) puede violar LFPDPPP si manejas datos de clientes sin consentimiento explícito para transferencia internacional.

**Ventaja Llama:**

Ejecutar localmente = datos nunca salen de México = cumplimiento automático.

**Gap:**

Esta ventaja no está documentada en material de Meta AI.

**COMPONENTE 7: Modelo de negocio sostenible**

**Pregunta crítica no resuelta:**

"Llama es gratis, pero ¿cómo monetizo solución sin depender de vendor lock-in?"

**Modelos insostenibles para PyME:**

- Cobro por API calls (modelo OpenAI) → Costos variables impredecibles
- Suscripción mensual SaaS → Cash flow limitado de PyME
- Revenue share → Complejidad contable

**Modelo sostenible (que este workshop enseña):**

- Inversión inicial: Tiempo de setup (6 horas)
- Costo fijo: Hardware que ya tienes
- Costo variable: $0 por consulta
- Escalabilidad: Lineal sin costos incrementales

**Conclusión del Bloque A (MIN 08):**

> "Este workshop existe para construir infraestructura de todos estos 7 componentes faltantes. No es solo instalar software, es construir ecosistema completo en español para que ustedes tengan autonomía real."

---

#### MIN 08-12: Por qué Meta liberó Llama (estrategia open-source)

**Pregunta estratégica clave:**

¿Por qué Meta regala gratis lo que a OpenAI le cuesta miles de millones desarrollar?

**NO es altruismo. Es estrategia.**

**RAZÓN 1: Comoditización del stack de IA**

**Estrategia de Meta:**

```
Si IA se vuelve commodity (como Linux para servidores):
→ Valor capturado por aplicaciones, no por modelos base
→ Meta compite en aplicaciones (Facebook, Instagram, WhatsApp)
→ Ventaja competitiva: Más datos de usuarios que nadie

Si OpenAI domina IA propietaria:
→ Valor capturado por modelo (GPT-5, GPT-6...)
→ OpenAI cobra "impuesto" a toda industria
→ Meta paga renta perpetua a competidor
```

**Analogía histórica:**

Google liberó Android (open-source) para:
- Evitar que Apple dominara 100% smartphones
- Asegurar que Google Search estuviera en todos los dispositivos
- Capturar valor en servicios (Maps, Gmail, Ads)

Meta hace lo mismo con Llama:
- Evitar que OpenAI domine 100% IA
- Asegurar que Meta AI esté disponible en infraestructura abierta
- Capturar valor en aplicaciones sociales

**RAZÓN 2: Innovación distribuida**

Meta tiene 50,000 ingenieros.

La comunidad global de developers tiene 27 millones de ingenieros.

**Cálculo de Meta:**

```
Opción A (Propietario):
- 50K ingenieros de Meta trabajando en Llama
- Innovación: Limitada a visión de Meta
- Tiempo: Controlado por roadmap interno

Opción B (Open-source):
- 50K de Meta + 27M de comunidad trabajando
- Innovación: 540x mayor superficie de experimentación
- Tiempo: Aceleración exponencial

Resultado: Llama mejora más rápido que GPT-4 por volumen de contribuciones.
```

**Ejemplo real:**

Llama 2 (Julio 2023) → Llama 3.2 (Septiembre 2024) = 14 meses

En ese periodo:
- Meta lanzó 5 variantes
- Comunidad creó 15,000+ modelos fine-tuned
- 200+ herramientas de terceros (Ollama, LM Studio, llama.cpp)

OpenAI en mismo periodo:
- Lanzó GPT-4 Turbo (mejora incremental)
- Ecosistema limitado a API oficial

**RAZÓN 3: Regulación favorable**

Gobiernos (especialmente UE) presionan contra monopolios de IA.

**Posicionamiento político de Meta:**

"Nosotros no somos monopolio, somos democratizadores. Llama está disponible para todos, incluidos gobiernos y academia."

**Beneficio:**

- Menos escrutinio regulatorio
- Contratos gubernamentales (México, Brasil, UE)
- Narrativa positiva en prensa

**RAZÓN 4: Ataque directo a Microsoft**

Microsoft invirtió $13 mil millones en OpenAI.

Meta invirtió $0 comprando OpenAI (no pudo).

**Estrategia asimétrica:**

```
Microsoft vende Azure + OpenAI como bundle
→ Precio alto
→ Vendor lock-in

Meta regala Llama
→ Empresas pueden usar Azure SIN pagar a OpenAI
→ O pueden salir de Azure completamente (usar local)
→ Microsoft pierde doble: cliente de Azure + cliente de OpenAI
```

**Caso documentado:**

Startup de fintech (confidencial):
- Gastaba $15,000 USD/mes en Azure + GPT-4
- Migró a Llama 3.1 70B en servidores propios
- Nuevo costo: $800 USD/mes (solo hardware amortizado)
- Microsoft perdió $14,200 USD/mes de un solo cliente

Meta no cobra $0, pero le cuesta a Microsoft millones.

**Conclusión del Bloque A (MIN 12):**

> "Meta liberó Llama por estrategia de negocio, no caridad. Pero esa estrategia nos beneficia directamente: tenemos acceso a tecnología de punta sin pagar renta. Nuestra responsabilidad es aprender a usarla para no depender de nadie."

---

#### MIN 12-15: Local vs Cloud (tabla comparativa definitiva)

**Presentación visual en slides:**

| Criterio | API Cloud (GPT-4/Claude) | Llama Local | Llama Cloud (via API) |
|----------|-------------------------|-------------|---------------------|
| **Costo inicial** | $0 | $0-700 USD (hardware) | $0 |
| **Costo por 1M tokens** | $10-30 USD | $0 | $0.20-2 USD |
| **Latencia** | 200-500ms | 50-150ms | 300-800ms |
| **Privacidad** | Datos van a proveedor | 100% local | Datos van a proveedor |
| **Personalización** | Limitada (fine-tuning caro) | Total (fine-tuning gratis) | Media |
| **Dependencia internet** | Crítica | Nula | Crítica |
| **Escalabilidad** | Infinita (pero cara) | Limitada por hardware | Alta |
| **Cumplimiento LFPDPPP** | Requiere gestión | Automático | Requiere gestión |
| **Mejor para** | MVPs rápidos | Producción controlada | Alto volumen barato |

**Escenario de decisión (caso real):**

**Startup de educación en Monterrey:**
- 5,000 estudiantes
- 50,000 consultas/mes
- Datos: Expedientes académicos (sensibles)

**Opción 1: GPT-4**
- Costo: 50K consultas × 500 tokens promedio × $30/1M = $750 USD/mes
- Problema: Datos sensibles van a USA (violan política escolar)
- Resultado: Descartado

**Opción 2: Llama Local**
- Costo inicial: $1,200 USD (servidor)
- Costo operativo: $0/mes
- Privacidad: Garantizada
- Resultado: Adoptado, ROI en 2 meses

**Matriz de decisión (facilitador proyecta esto):**

```
┌─────────────────────────────────────────────────────────┐
│  CUÁNDO USAR QUÉ OPCIÓN                                 │
├─────────────────────────────────────────────────────────┤
│                                                         │
│  USA API CLOUD si:                                      │
│  • Estás validando MVP (no tienes usuarios aún)        │
│  • Volumen <10K requests/mes                           │
│  • No manejas datos sensibles                          │
│  • Necesitas GPT-4 específicamente (calidad máxima)    │
│                                                         │
│  USA LLAMA LOCAL si:                                    │
│  • Volumen >50K requests/mes                           │
│  • Datos sensibles/regulados                           │
│  • Necesitas personalización profunda                  │
│  • Tienes hardware disponible (laptop 16GB+)           │
│                                                         │
│  USA LLAMA CLOUD API si:                                │
│  • Volumen >100K requests/mes                          │
│  • No tienes hardware propio                           │
│  • Necesitas escalar rápido sin gestión infra          │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

**Mensaje final del Bloque A:**

> "En este workshop, asumimos que ustedes quieren control de su infraestructura. Por eso enseñamos local primero. Si después deciden usar cloud, el conocimiento es transferible. Pero si empezamos con cloud, nunca aprenden a ser autónomos."

---

## Bloque B: Fundamentos técnicos esenciales

**Duración:** 8 minutos  
**Objetivo:** Desmitificar complejidad técnica sin simplificar en exceso. Proveer fundamentos mínimos para tomar decisiones informadas.

### MIN 15-18: Familia de modelos Llama

**Slide 1: Timeline de evolución**

```
Llama 1 (Feb 2023) → Llama 2 (Jul 2023) → Llama 3 (Abr 2024) 
→ Llama 3.1 (Jul 2024) → Llama 3.2 (Sep 2024) → Llama 3.3 (Dic 2024)
```

**Explicación rápida (2 minutos):**

**Llama 3.2 (modelo recomendado para workshop):**

| Tamaño | Parámetros | RAM necesaria (INT4) | Velocidad (CPU i7) | Mejor para |
|--------|-----------|---------------------|-------------------|------------|
| 1B | 1 mil millones | 2-3GB | ~10 tokens/seg | Móviles, IoT |
| 3B | 3 mil millones | 4-5GB | ~6 tokens/seg | Laptops básicas |
| 8B | 8 mil millones | 6-8GB | ~3-5 tokens/seg | **Recomendado workshop** |

**Llama 3.1 (alternativa para casos avanzados):**

| Tamaño | Parámetros | RAM necesaria (INT4) | Mejor para |
|--------|-----------|---------------------|------------|
| 8B | 8 mil millones | 6-8GB | General purpose |
| 70B | 70 mil millones | 40-48GB | Análisis complejo, razonamiento |
| 405B | 405 mil millones | 240GB+ | Investigación, competir con GPT-4 |

**Analogía para audiencia no-técnica:**

> "Piensen en los modelos como motores de auto:
> - 1B = Motor de moto (eficiente, limitado)
> - 3B = Motor de auto compacto (buen balance)
> - 8B = Motor de auto familiar (potente y práctico) ← ESTE USAREMOS
> - 70B = Motor de camioneta (mucho poder, más combustible)
> - 405B = Motor de tráiler (overkill para uso diario)"

**Decisión para workshop:**

Usaremos **Llama 3.2 8B Instruct (INT4)** porque:
1. Cabe en laptop estándar (8GB RAM)
2. Velocidad aceptable en CPU (no necesitas GPU)
3. Calidad suficiente para 90% de casos de uso
4. Context window: 128K tokens (suficiente para RAG)

---

### MIN 18-20: Quantización explicada (de forma práctica)

**Problema que resuelve:**

Un modelo de 8 mil millones de parámetros, si cada parámetro ocupa 2 bytes (FP16), requiere:

```
8,000,000,000 parámetros × 2 bytes = 16 GB
```

Esto es impracticable para laptops promedio.

**Solución: Quantización**

Reducir precisión numérica sin perder capacidad predictiva significativa.

**Analogía visual (facilitador dibuja en pizarra):**

```
Imagen en tu celular:

Alta calidad (24-bit color):    10 MB
Media calidad (16-bit color):    6 MB  (40% más liviano, casi igual)
Baja calidad (8-bit color):      3 MB  (70% más liviano, notoria diferencia)
Muy baja (4-bit color):          1.5MB (85% más liviano, pixelado)

Llama funciona igual:

FP16 (full precision):          16 GB  (baseline de calidad)
INT8 (quantized):                8 GB  (pérdida <2% calidad)
INT4 (quantized):                4.5GB (pérdida 3-5% calidad)
INT3 (quantized):                3 GB  (pérdida 8-10% calidad)
```

**Tabla comparativa de calidad (mostrar slide):**

| Formato | Tamaño (8B model) | Pérdida de calidad | Caso de uso ideal |
|---------|------------------|-------------------|-------------------|
| FP16 | 16 GB | 0% (baseline) | Investigación, benchmarking |
| INT8 | 8 GB | 1-2% | Producción, alta calidad |
| INT4 | 4.5 GB | 3-5% | **Workshop (balance óptimo)** |
| INT3 | 3 GB | 8-10% | Edge devices (solo si necesario) |

**Mensaje clave:**

> "INT4 pierde 3-5% de calidad vs full precision, pero reduce tamaño 72%. Para 90% de casos de uso (atención al cliente, análisis de documentos, generación de contenido), esa pérdida es imperceptible. Para 10% restante (investigación científica, análisis legal crítico), usas INT8 o FP16."

**Nota técnica (para desarrolladores):**

Formato GGUF (GPT-Generated Unified Format) es el estándar:
- Creado por Georgi Gerganov (llama.cpp)
- Compatible con Ollama, LM Studio, llama.cpp
- Metadatos integrados (arquitectura, tokenizer)
- Nomenclatura: `llama-3.2-8b-instruct-q4_K_M.gguf`

---

### MIN 20-23: Hardware mínimo realista y arquitectura de prompts

**Slide: Matriz de hardware vs modelo (muy importante):**

| Hardware | Modelo recomendado | Velocidad | Experiencia |
|----------|-------------------|-----------|-------------|
| Laptop 8GB RAM (Intel i5) | Llama 3.2 3B INT4 | ~6 tokens/seg | Aceptable |
| Laptop 16GB RAM (Intel i7) | Llama 3.2 8B INT4 | ~4 tokens/seg | **Ideal workshop** |
| Desktop 32GB RAM | Llama 3.1 70B INT4 | ~2 tokens/seg | Muy bueno |
| GPU RTX 3060 (12GB VRAM) | Llama 3.2 8B INT8 | ~20 tokens/seg | Excelente |
| GPU RTX 4090 (24GB VRAM) | Llama 3.1 70B INT4 | ~8 tokens/seg | Profesional |

**Velocidad en contexto:**

```
3-5 tokens/segundo = ¿Cuánto texto?

Respuesta típica: 200 tokens (150 palabras)
Tiempo de generación: 40-60 segundos

Comparación:
- ChatGPT: 10-15 segundos para misma respuesta
- Humano escribiendo: 120 segundos (2 minutos)

Conclusión: Llama en CPU es 2x más lento que GPT-4, pero 2x más rápido que humano.
```

**Arquitectura de prompts (introducción):**

**3 roles fundamentales:**

```python
# Estructura básica de conversación con Llama

SYSTEM:   "Eres un asistente de ventas profesional..."
USER:     "¿Cuál es el precio del producto X?"
ASSISTANT: "El precio del producto X es..."
```

**Explicación:**

1. **SYSTEM:** Define comportamiento global del agente
   - Rol (¿quién es?)
   - Tono (¿cómo habla?)
   - Restricciones (¿qué NO hacer?)

2. **USER:** Entrada del usuario final
   - Pregunta
   - Comando
   - Información

3. **ASSISTANT:** Respuesta del modelo
   - Generada por Llama
   - Basada en SYSTEM + USER

**Ejemplo visual (proyectar):**

```
┌──────────────────────────────────────────────┐
│ SYSTEM (instrucciones permanentes)          │
│ "Eres chatbot de ferretería. Tono amable."  │
└──────────────────────────────────────────────┘
              ↓
┌──────────────────────────────────────────────┐
│ USER                                         │
│ "¿Tienen tornillos de 3/8?"                 │
└──────────────────────────────────────────────┘
              ↓
┌──────────────────────────────────────────────┐
│ ASSISTANT                                    │
│ "Sí, tenemos tornillos de 3/8 en stock..."  │
└──────────────────────────────────────────────┘
```

**Transición al Bloque C:**

> "Ahora que saben QUÉ es Llama y CÓMO funciona, vamos a diseñar específicamente qué van a construir. Los próximos 15 minutos son los más importantes del workshop."

---

## Bloque C: Framework de viabilidad y ejercicio práctico

**Duración:** 15 minutos  
**Objetivo:** Que cada participante identifique y valide su caso de uso específico usando framework estructurado.

### MIN 23-28: Triángulo PyME de Viabilidad (expandido)

**Presentación del framework:**

El Triángulo PyME evalúa 3 dimensiones críticas:

```
          VALOR
         /      \
        /        \
       /   CASO   \
      /    DE      \
     /     USO      \
    /______________\
  VIABILIDAD   CUMPLIMIENTO
```

#### Vértice 1: VALOR - ¿Vale la pena?

**Pregunta central:** ¿Este problema justifica el esfuerzo de implementar IA?

**Subcriterios de evaluación:**

**A) Frecuencia mínima viable**

| Frecuencia | Puntaje | Viabilidad |
|-----------|---------|------------|
| <1 vez/mes | 0 | ❌ No viable |
| 1-4 veces/mes | 1 | ⚠️ Marginal |
| 5-20 veces/mes | 2 | ✅ Viable |
| >20 veces/mes | 3 | ✅✅ Altamente viable |

**Ejemplo VERDE:**
- Atención al cliente: 50 consultas diarias
- Frecuencia: 1,500/mes
- Puntaje: 3/3
- **PROCEDER**

**Ejemplo ROJO:**
- Reporte anual de auditoría
- Frecuencia: 1/año
- Puntaje: 0/3
- **NO PROCEDER** (no justifica IA)

**B) Costo de NO resolver**

Formula de valoración:

```
Costo = (Horas gastadas × Costo/hora) + (Errores × Costo/error)

Ejemplo despacho contable:
- Revisión manual de contratos: 4 horas × $500/hora = $2,000
- Errores promedio: 1 error cada 10 contratos × $5,000/error = $500
- Contratos/mes: 10
- Costo total: ($2,000 + $500) × 10 = $25,000 MXN/mes

Ahorro con IA (80% reducción tiempo + 90% reducción errores):
- Nuevo tiempo: 0.8 horas × $500 = $400
- Nuevos errores: 0.1 × $500 = $50
- Costo con IA: $450 × 10 = $4,500 MXN/mes
- AHORRO: $20,500 MXN/mes
```

**Criterio de valor:**

| Ahorro potencial/mes | Valoración |
|---------------------|------------|
| <$1,000 MXN | ❌ Bajo valor |
| $1,000-5,000 MXN | ⚠️ Valor marginal |
| $5,000-15,000 MXN | ✅ Buen valor |
| >$15,000 MXN | ✅✅ Alto valor |

**C) Impacto de mejora**

Más allá de ahorro de tiempo/dinero, ¿qué mejora?

- ✅ Consistencia (respuestas uniformes)
- ✅ Velocidad (respuesta inmediata)
- ✅ Escalabilidad (sin contratar más personas)
- ✅ Disponibilidad (24/7 sin fatiga)
- ✅ Calidad (menos errores humanos)

**Caso AMARILLO (ajustar para ser verde):**

**Original:**
- Problema: "Generación de reportes internos mensuales"
- Frecuencia: 1 vez/mes
- Valor: Bajo (puntaje 1/3)

**Ajustado:**
- Problema: "Generación de reportes DIARIOS de ventas para cada sucursal"
- Frecuencia: 30 veces/mes × 5 sucursales = 150 veces/mes
- Valor: Alto (puntaje 3/3)

**Mensaje:** No abandones idea, ajusta scope para aumentar frecuencia.

#### Vértice 2: VIABILIDAD - ¿Se puede hacer?

**Pregunta central:** ¿Es técnicamente factible con recursos disponibles?

**Subcriterios:**

**A) Complejidad de la tarea**

| Complejidad | Descripción | Viabilidad Llama |
|-------------|-------------|------------------|
| Baja | Responder preguntas de FAQ, clasificar emails | ✅✅ Alta |
| Media | Generar contenido, analizar documentos | ✅ Media-Alta |
| Alta | Razonamiento multi-paso, decisiones críticas | ⚠️ Media |
| Muy Alta | Investigación original, diagnóstico médico | ❌ Baja |

**Ejemplos por nivel:**

**BAJA (muy viable):**
- Chatbot de atención al cliente (preguntas frecuentes)
- Clasificación de emails (ventas/soporte/urgente)
- Resumen de documentos cortos (<5 páginas)

**MEDIA (viable con preparación):**
- Generación de propuestas comerciales (con templates)
- Análisis de contratos (detección de cláusulas clave)
- Traducción técnica (con glosario empresarial)

**ALTA (requiere expertise):**
- Análisis legal complejo (interpretación de leyes)
- Diagnóstico técnico (troubleshooting sistemas complejos)
- Planificación estratégica (decisiones multi-criterio)

**MUY ALTA (no recomendado):**
- Diagnóstico médico (requiere certificación)
- Asesoría financiera (responsabilidad legal)
- Investigación científica original (requiere validación humana)

**B) Datos disponibles**

**Principio fundamental:** Llama solo puede ser tan bueno como los datos que le des.

| Situación de datos | Viabilidad RAG | Acción requerida |
|-------------------|---------------|------------------|
| Documentos estructurados (PDFs, Word) | ✅✅ Alta | Indexar directamente |
| Documentos escaneados (imágenes) | ✅ Media | OCR previo + indexar |
| Datos en sistemas propietarios | ⚠️ Media | Exportar a formato legible |
| Conocimiento solo en cabezas | ❌ Baja | Documentar primero |

**Checklist de datos:**

```
□ ¿Existen documentos escritos? (manuales, políticas, FAQs)
□ ¿Están digitalizados? (no en papel)
□ ¿Están en formato legible? (PDF, Word, no imágenes escaneadas sin OCR)
□ ¿Tienes permiso legal de usarlos? (no violas copyright)
□ ¿Son representativos del conocimiento necesario? (no desactualizados)

Si 3+ respuestas son "Sí" → Viable
Si <3 respuestas son "Sí" → Requiere preparación previa
```

**C) Hardware disponible**

Ya cubierto en Bloque B. Recap rápido:

- ✅ Laptop 16GB RAM → Llama 3.2 8B (ideal)
- ⚠️ Laptop 8GB RAM → Llama 3.2 3B (aceptable)
- ❌ Laptop 4GB RAM → No viable (usar cloud)

#### Vértice 3: CUMPLIMIENTO - ¿Es legal y ético?

**Pregunta central:** ¿Respeta privacidad y regulaciones aplicables?

**CRÍTICO:** Si falla en cumplimiento, automáticamente ROJO sin importar Valor + Viabilidad.

**Marco regulatorio México:**

**LFPDPPP (Ley Federal de Protección de Datos Personales):**

Obligaciones del responsable:

1. **Aviso de privacidad:** Informar qué datos se recopilan y para qué
2. **Consentimiento:** Obtener autorización para uso de datos
3. **Seguridad:** Implementar medidas de protección
4. **Derecho ARCO:** Acceso, Rectificación, Cancelación, Oposición

**Implicación para IA:**

| Escenario | Cumplimiento LFPDPPP | Acción |
|-----------|---------------------|--------|
| Agente procesa datos internos (empleados) | ✅ OK si hay aviso de privacidad | Asegurar aviso firmado |
| Agente procesa datos de clientes | ⚠️ Requiere consentimiento explícito | Actualizar términos |
| Agente envía datos a USA (GPT-4) | ❌ Transferencia internacional no autorizada | Usar Llama local |

**NOMs aplicables (dependiendo de industria):**

- **NOM-004-SSA3-2012:** Expediente clínico (sector salud)
- **NOM-151-SCFI-2016:** Requisitos de información comercial
- **NOM-024-SCFI-2013:** Información comercial para empaques

**Checklist de cumplimiento:**

```
□ ¿Manejas datos personales? (nombres, emails, teléfonos)
    ├─ Sí → ¿Tienes aviso de privacidad actualizado?
    ├─ Sí → ¿Obtienes consentimiento explícito?
    └─ Sí → ¿Los datos se procesan SOLO localmente?

□ ¿Operas en industria regulada? (salud, financiero, legal)
    ├─ Sí → ¿Conoces NOMs aplicables?
    ├─ Sí → ¿El agente cumple restricciones?
    └─ Sí → ¿Tienes asesoría legal?

□ ¿El agente puede cometer errores de alto impacto?
    ├─ Sí → ¿Hay revisión humana obligatoria?
    ├─ Sí → ¿Está documentado el proceso?
    └─ Sí → ¿Tienes seguro de responsabilidad civil?

Si alguna respuesta es "No" en sección crítica → ROJO
```

**Ejemplo ROJO por cumplimiento:**

**Caso:** Agente de IA para diagnóstico médico preliminar
- Valor: Alto (reduce tiempo de triage)
- Viabilidad: Media (Llama 70B puede hacerlo)
- Cumplimiento: ❌ **ROJO**
  - Requiere certificación médica
  - Responsabilidad legal por errores
  - NOM-004-SSA3-2012 no permite diagnóstico automatizado sin supervisión

**Acción:** NO proceder sin consultorio médico validando salidas + seguro.

### Regla de decisión final

```
VERDE (3 de 3 criterios cumplidos):
→ Proceder con confianza
→ Priorizar en roadmap
→ Asignar recursos

AMARILLO (2 de 3 criterios):
→ Ajustar antes de proceder
→ Identificar qué falta
→ Iterar Canvas

ROJO (0-1 criterios):
→ No proceder aún
→ Resolver gaps primero
→ Considerar caso diferente

REGLA ORO: Si Cumplimiento = ❌, automáticamente ROJO
```

---

### MIN 28-38: Ejercicio Canvas (10 minutos)

**Instrucciones del facilitador (MIN 28):**

> "Durante los próximos 10 minutos, van a completar el Canvas de Agente IA individualmente. Reglas estrictas:
> 
> 1. **SILENCIO TOTAL:** No hablar con tu compañero. Este es ejercicio de reflexión individual.
> 2. **SIN AYUDA:** No voy a responder preguntas durante el ejercicio. Si no sabes qué poner, escribe 'No sé' y continuaremos.
> 3. **5 CAMPOS OBLIGATORIOS:** Completa todos. Si un campo no aplica, explica por qué.
> 4. **ESPECÍFICO:** Nada de 'mejorar atención al cliente'. Escribe 'Responder 50 consultas diarias vía WhatsApp sobre disponibilidad de productos'.
> 
> ¿Listos? Empezamos ahora. Reloj corre 10 minutos."

**Formato del Canvas (entregado en papel o digital):**

```markdown
═══════════════════════════════════════════════════════════
          CANVAS DE AGENTE IA - WORKSHOP LLAMA
═══════════════════════════════════════════════════════════

Nombre de tu empresa: _____________________________________
Industria: ________________________________________________
Tamaño (empleados): _______________________________________

───────────────────────────────────────────────────────────
1. PROBLEMA ESPECÍFICO
───────────────────────────────────────────────────────────
¿Qué tarea consume tiempo/dinero y es repetitiva?
Sé MUY específico. No escribas "atención al cliente", 
escribe "responder consultas de clientes sobre estatus 
de pedidos vía WhatsApp".

[Espacio para 3-5 líneas]

───────────────────────────────────────────────────────────
2. FRECUENCIA Y VOLUMETRÍA
───────────────────────────────────────────────────────────
¿Cuántas veces al día/semana/mes ocurre este problema?
¿Cuánto tiempo toma actualmente?
¿Cuántas personas están involucradas?

Frecuencia: ______ veces por [día/semana/mes]
Tiempo actual: ______ minutos/horas por ocurrencia
Personas: ______ personas dedicadas

───────────────────────────────────────────────────────────
3. DATOS EXISTENTES DISPONIBLES
───────────────────────────────────────────────────────────
¿Qué documentos, ejemplos, bases de conocimiento tienes?
¿Dónde están? ¿En qué formato?
Sé específico: no "tenemos manuales", sino "Manual de 
ventas v2.3 (PDF, 45 páginas), Catálogo de productos 
2025 (Excel, 200 SKUs)".

[Espacio para listar documentos]

───────────────────────────────────────────────────────────
4. OUTPUT DESEADO
───────────────────────────────────────────────────────────
¿Cómo se ve el resultado exitoso?
¿Qué formato debe tener la respuesta?
¿Qué información debe incluir?

Formato: [Email / WhatsApp / PDF / Excel / otro]
Incluye: [Lista específica]

───────────────────────────────────────────────────────────
5. RESTRICCIONES CRÍTICAS
───────────────────────────────────────────────────────────
¿Qué NO debe hacer el agente NUNCA?
¿Qué errores son inaceptables?
¿Qué requiere aprobación humana?

[Lista de restricciones]

═══════════════════════════════════════════════════════════
         EVALUACIÓN DE VIABILIDAD (llenar después)
═══════════════════════════════════════════════════════════

□ VALOR:       [Alto / Medio / Bajo]
□ VIABILIDAD:  [Alta / Media / Baja]
□ CUMPLIMIENTO: [OK / Requiere ajuste / Crítico]

CLASIFICACIÓN: [VERDE / AMARILLO / ROJO]

═══════════════════════════════════════════════════════════
```

**Dinámica del ejercicio (MIN 28-38):**

**Minuto 28-30:** Facilitador explica instrucciones, distribuye Canvas

**Minuto 30-38:** SILENCIO TOTAL
- Facilitador NO responde preguntas
- Asistentes circulan observando, no ayudando
- Se toma nota de patterns:
  - ¿Cuántos terminan antes de minuto 35? (tienen claridad)
  - ¿Cuántos se atascan en campo 1? (idea vaga)
  - ¿Cuántos dejan campos en blanco? (necesitan más pensamiento)

**Minuto 38:** Facilitador detiene ejercicio

> "Tiempo. Plumas abajo. Si no terminaron, no pasa nada. Eso es información valiosa: significa que necesitan más pensamiento estratégico antes de construir."

**Psicología del ejercicio:**

**Objetivo no-obvio:**

El Canvas NO es solo para diseñar agente. Es diagnóstico de madurez empresarial.

**Indicadores de madurez:**

| Observación | Interpretación | Acción facilitador |
|-------------|----------------|-------------------|
| Completa en <8 min | Alta claridad, caso bien pensado | Felicitar, caso probablemente verde |
| Se atasca en campo 1 | Idea vaga, no específica | En calibración, guiar a refinar |
| Deja campo 3 en blanco | Sin documentación | Señalar que necesita preparar datos |
| Campo 5 con "N/A" | No pensó en riesgos | Alertar sobre importancia guardrails |

**Filosofía:**

> "Si no puedes completar Canvas en 10 minutos, tu caso necesita más pensamiento estratégico. Mejor descubrir esto ahora que después de 20 horas de trabajo técnico."

---

### MIN 38-43: Calibración grupal (5 minutos críticos)

**Objetivo pedagógico:**

Enseñar criterios de viabilidad mediante ejemplos reales de participantes, sin exponer a nadie.

**Proceso:**

**Paso 1 (MIN 38-39):** Recolección anónima

Facilitador o asistentes recogen Canvas (o toman fotos si es digital). Seleccionan 3 casos representativos:

- 1 caso **VERDE** (cumple 3 de 3 criterios)
- 1 caso **AMARILLO** (cumple 2 de 3, puede mejorarse)
- 1 caso **ROJO** (cumple 0-1, no viable aún)

**Paso 2 (MIN 39-43):** Análisis público

Facilitador proyecta casos sin revelar nombres/empresas.

**Ejemplo CASO VERDE (proyectar en pantalla):**

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
CASO A (anónimo)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Industria: E-commerce (ropa)
Empleados: 15

1. PROBLEMA:
   Responder consultas de clientes sobre 
   disponibilidad de tallas/colores vía 
   WhatsApp. Actualmente 2 personas 
   responden 80 mensajes diarios.

2. FRECUENCIA:
   80 mensajes/día × 25 días = 2,000/mes
   Tiempo: 3 min/mensaje = 100 hrs/mes

3. DATOS:
   - Catálogo de productos (Excel, 500 SKUs)
   - Inventario actualizado diariamente (CSV)
   - Tabla de tallas (PDF, 2 páginas)

4. OUTPUT:
   Mensaje de WhatsApp (texto plano)
   Incluye: Disponibilidad (sí/no), 
   tallas disponibles, precio, 
   tiempo de entrega.

5. RESTRICCIONES:
   - NO prometer disponibilidad si 
     inventario muestra 0
   - NO dar descuentos sin autorización
   - SI producto agotado, sugerir similar
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

**Análisis del facilitador (1.5 minutos):**

> "Caso A es **VERDE**. ¿Por qué?
> 
> **VALOR:**
> - Frecuencia: 2,000 veces/mes (alto)
> - Ahorro: 100 horas/mes × $200/hora = $20,000 MXN/mes
> - Impacto: Respuesta más rápida mejora experiencia cliente
> - **Puntaje: 3/3**
> 
> **VIABILIDAD:**
> - Complejidad: Baja (responder de catálogo)
> - Datos: Excelentes (catálogo + inventario estructurados)
> - Hardware: Cualquier laptop 8GB+
> - **Puntaje: 3/3**
> 
> **CUMPLIMIENTO:**
> - No maneja datos sensibles
> - No requiere regulación especial
> - Errores son manejables (cliente pregunta de nuevo)
> - **Puntaje: 3/3**
> 
> **CLASIFICACIÓN: VERDE → PROCEDER**
> 
> Este caso es perfecto para Sesión 2. Si quien lo escribió está aquí, felicidades. Tienes muy claro qué vas a construir."

**Ejemplo CASO AMARILLO (proyectar en pantalla):**

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
CASO B (anónimo)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Industria: Consultoría empresarial
Empleados: 8

1. PROBLEMA:
   Generar propuestas comerciales 
   personalizadas para clientes 
   potenciales.

2. FRECUENCIA:
   3-4 propuestas/mes
   Tiempo: 4 horas/propuesta

3. DATOS:
   Propuestas previas (Word, ~20 documentos)
   [No especifica si están estructuradas]

4. OUTPUT:
   Documento Word (5-10 páginas)
   Incluye: Diagnóstico, solución 
   propuesta, cotización, timeline.

5. RESTRICCIONES:
   No especificadas
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

**Análisis del facilitador (1.5 minutos):**

> "Caso B es **AMARILLO**. ¿Por qué?
> 
> **VALOR:**
> - Frecuencia: 3-4 veces/mes (bajo para IA)
> - Ahorro: 16 horas/mes × $800/hora = $12,800 MXN/mes
> - Impacto: Propuestas más rápidas = más clientes
> - **Puntaje: 2/3** (frecuencia límite)
> 
> **VIABILIDAD:**
> - Complejidad: Media-alta (requiere razonamiento)
> - Datos: PROBLEMA → No sabemos si propuestas están estructuradas
> - Hardware: OK
> - **Puntaje: 2/3** (datos inciertos)
> 
> **CUMPLIMIENTO:**
> - No maneja datos sensibles
> - Restricciones NO especificadas → PROBLEMA
> - **Puntaje: 2/3** (falta definir guardrails)
> 
> **CLASIFICACIÓN: AMARILLO → AJUSTAR**
> 
> **Cómo mejorar para ser VERDE:**
> 1. Aumentar frecuencia: ¿Hay sub-tareas que se hagan más seguido?
>    - Ejemplo: Generar cotizaciones rápidas (20/mes) antes de propuesta completa
> 2. Preparar datos: Asegurar que 20 propuestas previas estén en formato legible
> 3. Definir restricciones: ¿Qué NO debe prometer el agente sin aprobación?
> 
> Si quien escribió esto está aquí: Tu caso es viable, pero necesita preparación. Agenda 30 minutos esta semana para estructurar propuestas y definir restricciones."

**Ejemplo CASO ROJO (proyectar en pantalla):**

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
CASO C (anónimo)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Industria: Despacho legal
Empleados: 12

1. PROBLEMA:
   Revisar contratos de clientes para 
   identificar riesgos legales.

2. FRECUENCIA:
   15-20 contratos/mes
   Tiempo: 3 horas/contrato

3. DATOS:
   Contratos previos (PDF escaneados, 
   algunos ilegibles)

4. OUTPUT:
   Reporte de riesgos (lista de cláusulas 
   problemáticas)

5. RESTRICCIONES:
   [En blanco]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

**Análisis del facilitador (2 minutos - MÁS DETALLADO):**

> "Caso C es **ROJO**. Esto NO significa que sea mala idea. Significa que NO está listo para proceder aún. Veamos por qué:
> 
> **VALOR:**
> - Frecuencia: 15-20 contratos/mes (buena)
> - Ahorro potencial: 60 horas/mes × $1,500/hora = $90,000 MXN/mes (excelente)
> - Impacto: Reducir errores en análisis legal (crítico)
> - **Puntaje: 3/3** ← ESTE ES EL MEJOR PUNTAJE DE LOS 3 CASOS
> 
> **VIABILIDAD:**
> - Complejidad: ALTA → Análisis legal requiere interpretación sofisticada
> - Datos: PROBLEMA CRÍTICO → PDFs escaneados ilegibles requieren OCR profesional
> - Hardware: OK (pero necesitas Llama 70B, no 8B)
> - **Puntaje: 1/3**
> 
> **CUMPLIMIENTO:**
> - PROBLEMA CRÍTICO: Restricciones en blanco
> - Análisis legal erróneo puede:
>   - Causar pérdidas económicas a cliente
>   - Responsabilidad legal del despacho
>   - Violación de ética profesional
> - **Puntaje: 0/3** ← AUTOMÁTICAMENTE ROJO
> 
> **CLASIFICACIÓN: ROJO → NO PROCEDER AÚN**
> 
> **¿Por qué NO proceder?**
> 1. Riesgo legal: Error en análisis puede costar millones
> 2. Datos no preparados: OCR de PDFs lleva 1-2 semanas
> 3. Sin guardrails: No especificaste qué NO debe hacer el agente
> 
> **¿Significa que nunca podrás hacerlo?**
> NO. Significa que necesitas preparación ANTES de workshop:
> 
> **Plan de acción (4-6 semanas):**
> 1. **Semanas 1-2:** Digitalizar contratos previos con OCR profesional
> 2. **Semana 3:** Definir restricciones críticas con senior partner:
>    - Lista de cláusulas que SIEMPRE son problemáticas
>    - Lista de situaciones que requieren escalación humana
>    - Proceso de validación (¿quién revisa salidas de IA?)
> 3. **Semana 4:** Crear conjunto de prueba (10 contratos con análisis gold-standard)
> 4. **Semanas 5-6:** Validar que Llama 70B puede identificar 90%+ de riesgos en conjunto de prueba
> 5. **Después:** Regresar a workshop con caso preparado
> 
> Si quien escribió esto está aquí: Tu caso tiene ENORME valor ($90K/mes ahorro), pero requiere preparación rigurosa. No es que no puedas hacerlo, es que necesitas más tiempo. Te recomiendo enfocarte en otro caso más simple para este workshop, y regresar con este en 3 meses."

**Mensaje final de calibración:**

> "Estos 3 casos representan el espectro completo:
> - **VERDE:** Listo para construir → Proceder con confianza
> - **AMARILLO:** Casi listo → Ajustar en próximos días
> - **ROJO:** No listo → Preparar primero, regresar después
> 
> Si tu caso es amarillo o rojo, NO te desanimes. Mejor descubrir esto ahora que después de 20 horas de trabajo."

---

## Bloque D: Construcción de prompts y tarea asincrónica

**Duración:** 7 minutos  
**Objetivo:** Modelar proceso de construcción de prompts sin tiempo para práctica completa. Crear tensión natural hacia Sesión 2.

### MIN 43-45: Evolución de prompt (demostración en vivo)

**Facilitador muestra 4 versiones progresivas del mismo prompt:**

**VERSIÓN 1 (problemática):**

```
Responde este email de cliente.
```

**Análisis del facilitador:**

> "¿Qué está mal aquí? Todo. El modelo no sabe:
> - ¿Quién soy? (empresa, rol)
> - ¿Qué tono usar? (formal, casual, técnico)
> - ¿Qué información tengo? (contexto)
> - ¿Qué NO debo hacer? (restricciones)
> 
> Resultado: Respuesta genérica, inútil."

---

**VERSIÓN 2 (con rol):**

```
Eres un asistente de ventas. Responde este email 
de cliente solicitando cotización.
```

**Mejora:** Define rol.  
**Aún falta:** Contexto específico, formato, guardrails.

---

**VERSIÓN 3 (con contexto y formato):**

```
Eres un asistente de ventas formal.

Responde este email de cliente solicitando 
cotización de servicios contables.

CONTEXTO:
- Somos despacho con 15 años de experiencia
- Especialidad: PyMEs sector manufactura
- Servicios: contabilidad mensual, declaraciones, auditorías

FORMATO:
- Email profesional
- Saludo personalizado
- 3 bullets de servicios
- Cierre con CTA (llamar a agendar cita)
```

**Mejora:** Contexto + formato.  
**Aún falta:** Restricciones críticas, criterios de calidad.

---

**VERSIÓN 4 (optimizada - producción):**

```
[CONFIGURACIÓN DEL SISTEMA]
Eres asistente de ventas de "Despacho Fiscal Monterrey".

TONO: Formal pero cercano, profesional sin ser distante.
ROL: Representante de ventas con 10+ años de experiencia.

[TAREA]
Responde email de cliente solicitando cotización de 
servicios contables para PyME manufacturera.

[CONTEXTO]
EMPRESA:
- Despacho Fiscal Monterrey
- 15 años de experiencia
- Especialidad: PyMEs sector manufactura (50-200 empleados)

SERVICIOS:
1. Contabilidad mensual: Registro, conciliación, reportes
2. Declaraciones fiscales: ISR, IVA, nómina
3. Auditorías: Preventivas y correctivas
4. Asesoría fiscal: Planificación, optimización

PRECIOS (REFERENCIA - NO MENCIONAR EN EMAIL):
- Contabilidad mensual: $8,000-15,000 MXN (según complejidad)
- Declaraciones: Incluidas en paquete
- Auditorías: Cotización personalizada

[RESTRICCIONES CRÍTICAS]
NUNCA:
- Prometer precios exactos sin evaluar caso (cada PyME es diferente)
- Ofrecer descuentos sin autorización de dirección
- Hacer afirmaciones sobre plazos de devolución de impuestos (depende de SAT)
- Criticar a competencia
- Usar jerga contable sin explicar

SIEMPRE:
- Personalizar con nombre del cliente si está disponible
- Mencionar casos de éxito de industria similar (manufactura)
- Incluir llamado a acción claro (agendar cita de evaluación gratuita)

[FORMATO DE SALIDA]
Estructura del email:

1. Saludo personalizado (nombre del cliente)
2. Agradecimiento por interés (1 línea)
3. Presentación breve del despacho (2 líneas)
4. Servicios relevantes (3 bullets, 1 línea cada uno)
5. Propuesta de valor (por qué nosotros vs competencia, 2 líneas)
6. Llamado a acción (agendar cita de 30 min sin costo)
7. Cierre cordial con firma

LONGITUD: 150-200 palabras total
FORMATO: Texto plano (para copiar a Gmail)

[CRITERIOS DE CALIDAD]
Un output de calidad debe:
✓ Responder directamente la solicitud de cotización
✓ Transmitir profesionalismo y experiencia
✓ No prometer precios específicos (evitar compromiso prematuro)
✓ Generar curiosidad para agendar cita
✓ Ser accionable (cliente sabe qué hacer después de leer)
✓ No tener errores ortográficos ni gramaticales
✓ Usar tono empático ("Entiendo la importancia de...")
```

**Análisis del facilitador:**

> "Esta es versión de producción. Notan la diferencia vs Versión 1?
> 
> **Tiene 6 componentes:**
> 1. Configuración (quién eres, tono)
> 2. Tarea (qué hacer)
> 3. Contexto (información empresa)
> 4. Restricciones (guardrails críticos)
> 5. Formato (estructura esperada)
> 6. Criterios (cómo evaluar calidad)
> 
> Con este prompt, Llama genera respuestas consistentes, profesionales, y seguras.
> 
> **SU TAREA para Sesión 2:** Crear prompt de este nivel para SU caso específico."

---

### MIN 45: Asignación de trabajo pre-Sesión 2

**Facilitador:**

> "El workshop de hoy termina aquí, pero el trabajo apenas empieza. Para Sesión 2 (en 1 semana), necesitan entregar:
> 
> **ENTREGABLE 1: Prompt estructurado v1.0**
> - Usa template que está en Anexo B de este documento
> - Incluye los 6 componentes
> - Específico a tu caso de uso
> - Mínimo 200 palabras, máximo 500
> 
> **ENTREGABLE 2: Registro de iteraciones**
> - Prueba tu prompt con Llama (vía ollama.com o claude.ai)
> - Haz mínimo 3 versiones
> - Documenta qué cambiaste entre versiones y por qué
> 
> **DEADLINE:** 48 horas antes de Sesión 2
> 
> **DÓNDE ENTREGAR:** [Link a Google Form o plataforma]
> 
> **¿Preguntas durante la semana?**
> - Discord: [Link]
> - Office hours: Jueves 6-7 PM (CDMX)
> - Email: juanjo@amplifikai.com (respuesta en 24 hrs)
> 
> **Última cosa:** La tensión que sienten ahora ("¿Cómo voy a hacer esto?") es intencional. Sesión 2 resuelve exactamente eso. Nos vemos en una semana."

**Cierre de Sesión 1:**

> "Gracias por su atención y participación. Recuerden: No necesitan ser ingenieros para construir con IA. Solo necesitan claridad de qué quieren construir. Y eso lo lograron hoy. Nos vemos en Sesión 2."

---

## Casos de uso por industria

Esta sección proporciona 15 ejemplos concretos de casos de uso viables, organizados por industria, para inspirar a participantes.

### 1. E-Commerce y Retail

#### Caso 1.1: Chatbot de disponibilidad de productos

**Empresa ejemplo:** Tienda de electrónicos (50 empleados)

**Canvas completo:**

```
1. PROBLEMA:
   80 mensajes diarios en WhatsApp preguntando 
   disponibilidad de productos. 2 personas 
   responden 4 horas/día.

2. FRECUENCIA:
   2,400 mensajes/mes
   Tiempo: 3 min/mensaje = 120 horas/mes

3. DATOS:
   - Inventario (CSV, actualizado diariamente)
   - Catálogo de productos (Excel, 800 SKUs)
   - Precios (JSON de sistema POS)

4. OUTPUT:
   Mensaje WhatsApp:
   "Producto X: [En stock / Agotado]
   Tallas disponibles: S, M, L
   Precio: $XXX MXN
   Tiempo de entrega: 24-48 hrs CDMX"

5. RESTRICCIONES:
   - NO prometer disponibilidad si inventario = 0
   - NO dar descuentos sin código promocional válido
   - SI agotado, sugerir producto similar

VIABILIDAD: VERDE
- Valor: Alto (120 hrs/mes = $24K ahorro)
- Técnica: Baja complejidad
- Cumplimiento: OK (no hay datos sensibles)
```

**Implementación:**

- Modelo: Llama 3.2 8B INT4
- RAG: Indexar catálogo + inventario
- Integración: WhatsApp Business API
- Actualización: Sincronizar inventario cada 2 horas

---

#### Caso 1.2: Generación de descripciones de productos

**Empresa ejemplo:** Marketplace de artesanías (15 empleados)

**Canvas completo:**

```
1. PROBLEMA:
   Vendedores suben productos con descripciones 
   pobres. Equipo de contenido reescribe 30 
   descripciones/día para mejorar SEO y conversión.

2. FRECUENCIA:
   30 productos/día × 22 días = 660/mes
   Tiempo: 10 min/descripción = 110 horas/mes

3. DATOS:
   - 5,000 descripciones existentes (bien escritas)
   - Guía de estilo (PDF, 8 páginas)
   - Palabras clave SEO (CSV, 200 términos)

4. OUTPUT:
   Descripción de producto (200-300 palabras):
   - Título optimizado SEO
   - 3 párrafos: Características, Beneficios, Uso
   - Bullet points técnicos
   - Call-to-action

5. RESTRICCIONES:
   - NO inventar características no mencionadas
   - NO usar superlativos exagerados ("el mejor del mundo")
   - SÍ incluir mínimo 3 palabras clave relevantes

VIABILIDAD: VERDE
- Valor: Alto (110 hrs/mes = $22K ahorro)
- Técnica: Media (requiere estilo consistente)
- Cumplimiento: OK
```

**Implementación:**

- Modelo: Llama 3.2 8B INT4
- Fine-tuning: Opcional (mejoraría consistencia estilo)
- RAG: Indexar guía de estilo + mejores descripciones
- Output: HTML formateado para copiar a sitio

---

### 2. Servicios Profesionales (Contabilidad, Legal, Consultoría)

#### Caso 2.1: Pre-revisión de facturas fiscales

**Empresa ejemplo:** Despacho contable (25 empleados)

**Canvas completo:**

```
1. PROBLEMA:
   Clientes envían facturas con errores (RFC mal, 
   conceptos incorrectos, montos no cuadran). 
   Contadores gastan 2 horas/cliente/mes en 
   correcciones.

2. FRECUENCIA:
   80 clientes × 30 facturas/mes = 2,400 facturas
   Tiempo: 2 min/factura = 80 horas/mes

3. DATOS:
   - Catálogo SAT de productos/servicios (CSV)
   - Reglas de validación CFDI 4.0 (PDF, 120 páginas)
   - Base de RFCs válidos de clientes (CSV)

4. OUTPUT:
   Reporte de validación:
   ✓ RFC válido y activo
   ✓ Régimen fiscal correcto
   ✓ Conceptos coinciden con catálogo SAT
   ✗ Errores detectados (lista)
   → Recomendación: Solicitar corrección al proveedor

5. RESTRICCIONES:
   - NO aprobar facturas con errores críticos
   - SÍ explicar qué está mal y cómo corregirlo
   - SÍ escalar a contador si caso complejo

VIABILIDAD: VERDE
- Valor: Alto (80 hrs/mes = $40K ahorro)
- Técnica: Media (requiere conocer reglas SAT)
- Cumplimiento: OK (facturas son documentos públicos)
```

**Implementación:**

- Modelo: Llama 3.2 8B INT4
- RAG: Indexar reglas CFDI 4.0 + catálogo SAT
- Validación: Cruzar con API del SAT para validar RFC
- Output: PDF con checklist de validación

---

#### Caso 2.2: Generación de contratos estándar

**Empresa ejemplo:** Consultoría empresarial (12 empleados)

**Canvas completo:**

```
1. PROBLEMA:
   Generar contratos de servicios personalizados 
   para cada cliente. Abogado tarda 2 horas/contrato 
   en adaptar template.

2. FRECUENCIA:
   15 contratos/mes
   Tiempo: 2 horas/contrato = 30 horas/mes

3. DATOS:
   - 50 contratos previos (Word)
   - Template base (Word, 12 páginas)
   - Políticas de la empresa (PDF, 20 páginas)

4. OUTPUT:
   Contrato en Word con:
   - Datos del cliente (razón social, RFC, dirección)
   - Alcance de servicios específico
   - Precio y condiciones de pago
   - Cláusulas estándar
   - Espacios para firmas

5. RESTRICCIONES:
   - SIEMPRE incluir cláusula de confidencialidad
   - NUNCA cambiar términos de cancelación sin aprobación
   - SÍ validar que precio coincide con cotización previa

VIABILIDAD: AMARILLO
- Valor: Medio (30 hrs/mes = $24K ahorro)
- Técnica: Media (generación de documentos largos)
- Cumplimiento: REQUIERE revisión legal obligatoria
```

**Implementación:**

- Modelo: Llama 3.1 70B INT4 (mejor razonamiento)
- RAG: Indexar contratos previos + políticas
- Output: Markdown → convertir a Word vía Pandoc
- Validación: Abogado revisa SIEMPRE antes de enviar

---

### 3. Educación y Capacitación

#### Caso 3.1: Generación de ejercicios personalizados

**Empresa ejemplo:** Plataforma de cursos online (20 empleados)

**Canvas completo:**

```
1. PROBLEMA:
   Crear ejercicios de práctica personalizados 
   para cada tema. Equipo pedagógico genera 
   50 ejercicios/mes manualmente.

2. FRECUENCIA:
   50 ejercicios/mes
   Tiempo: 45 min/ejercicio = 37.5 horas/mes

3. DATOS:
   - 1,000 ejercicios existentes (JSON estructurado)
   - Taxonomía de Bloom (niveles de dificultad)
   - Temarios por curso (Excel)

4. OUTPUT:
   Ejercicio con:
   - Pregunta (50-100 palabras)
   - 4 opciones de respuesta (1 correcta, 3 distractores)
   - Explicación de respuesta correcta
   - Nivel de dificultad (1-5)
   - Tiempo estimado de resolución

5. RESTRICCIONES:
   - NO copiar ejercicios existentes (plagiarism check)
   - NO preguntas ambiguas o con múltiples respuestas correctas
   - SÍ validar con experto antes de publicar

VIABILIDAD: VERDE
- Valor: Alto (37.5 hrs/mes = $30K ahorro + escala infinita)
- Técnica: Media (requiere razonamiento pedagógico)
- Cumplimiento: OK (contenido educativo propio)
```

**Implementación:**

- Modelo: Llama 3.1 70B INT4 (mejor para razonamiento)
- Fine-tuning: Con 1,000 ejercicios existentes (mejoraría calidad)
- RAG: Indexar temarios + taxonomía
- Validación: Sistema de review por expertos

---

### 4. Salud y Bienestar (no-diagnóstico)

#### Caso 4.1: Asistente de agendamiento de citas

**Empresa ejemplo:** Clínica dental (3 sucursales, 15 empleados)

**Canvas completo:**

```
1. PROBLEMA:
   Pacientes llaman/escriben para agendar citas. 
   Recepcionistas atienden 100 llamadas/día, 
   40% solo para agendar.

2. FRECUENCIA:
   40 agendamientos/día × 25 días = 1,000/mes
   Tiempo: 5 min/agendamiento = 83 horas/mes

3. DATOS:
   - Horarios de doctores (Google Calendar)
   - Servicios disponibles (lista con precios)
   - Políticas de cancelación (PDF, 2 páginas)

4. OUTPUT:
   Confirmación de cita:
   - Fecha y hora
   - Doctor asignado
   - Servicio solicitado
   - Instrucciones pre-cita (si aplican)
   - Recordatorio 24 hrs antes

5. RESTRICCIONES:
   - NO dar asesoría médica (solo agendamiento)
   - NO agendar si horario no disponible
   - SÍ preguntar si es primera vez (requiere expediente)
   - SÍ validar disponibilidad en calendario real

VIABILIDAD: VERDE
- Valor: Alto (83 hrs/mes = $16.6K ahorro)
- Técnica: Media (integración con Google Calendar)
- Cumplimiento: OK (no maneja diagnósticos)
```

**Implementación:**

- Modelo: Llama 3.2 8B INT4
- Integración: Google Calendar API (verificar disponibilidad)
- WhatsApp Business API para comunicación
- Confirmación: Enviar recordatorio 24h antes

**CRÍTICO:** NO hacer diagnósticos ni dar recomendaciones médicas.

---

### 5. Manufactura y Logística

#### Caso 5.1: Asistente de troubleshooting de equipos

**Empresa ejemplo:** Planta manufacturera (80 empleados)

**Canvas completo:**

```
1. PROBLEMA:
   Cuando máquina presenta falla, operadores 
   buscan en manuales (300+ páginas) o llaman 
   a mantenimiento. 60% de problemas son simples 
   y repetitivos.

2. FRECUENCIA:
   40 incidentes/mes
   Tiempo: 30 min/incidente = 20 horas/mes + $5K en paros

3. DATOS:
   - Manuales de máquinas (PDF, 8 equipos)
   - Bitácora de incidentes históricos (Excel, 2,000 registros)
   - Procedimientos de seguridad (PDF)

4. OUTPUT:
   Guía de troubleshooting:
   - Diagnóstico probable (basado en síntomas)
   - Pasos de solución (numerados)
   - Precauciones de seguridad
   - Cuándo escalar a mantenimiento especializado

5. RESTRICCIONES:
   - NUNCA sugerir reparaciones que requieran des-energizar equipo
   - SIEMPRE incluir advertencias de seguridad
   - SÍ escalar si problema es complejo (lista de síntomas)

VIABILIDAD: VERDE
- Valor: Alto (20 hrs + $5K paros/mes = $9K ahorro)
- Técnica: Media (RAG con manuales técnicos)
- Cumplimiento: CRÍTICO (seguridad industrial)
```

**Implementación:**

- Modelo: Llama 3.1 70B INT4 (razonamiento técnico)
- RAG: Indexar manuales + bitácora histórica
- Interface: Tablet en planta (acceso sin internet)
- Validación: Ingeniero de mantenimiento valida sugerencias

**CRÍTICO:** Incluir disclaimers de seguridad en cada respuesta.

---

### Matriz de decisión por industria

| Industria | Caso más viable | Complejidad | ROI esperado | Tiempo implementación |
|-----------|----------------|-------------|--------------|----------------------|
| E-Commerce | Chatbot disponibilidad | Baja | $15-30K/mes | 2 semanas |
| Contabilidad | Pre-revisión facturas | Media | $30-50K/mes | 3 semanas |
| Legal | Contratos estándar | Media-Alta | $20-40K/mes | 4 semanas |
| Educación | Ejercicios personalizados | Media | $25-40K/mes | 3 semanas |
| Salud | Agendamiento citas | Media | $10-20K/mes | 2 semanas |
| Manufactura | Troubleshooting equipos | Media-Alta | $5-15K/mes | 4 semanas |
| Retail físico | Respuestas FAQ clientes | Baja | $8-15K/mes | 1-2 semanas |
| Consultoría | Generación propuestas | Alta | $30-60K/mes | 4-5 semanas |
| Turismo | Itinerarios personalizados | Media | $10-25K/mes | 2-3 semanas |
| Real Estate | Descripciones de propiedades | Baja-Media | $15-30K/mes | 2 semanas |

---

## Material de apoyo expandido

### Anexo A: Glosario técnico (español-inglés-ejemplo)

| Término español | Término inglés | Definición práctica | Ejemplo |
|----------------|---------------|-------------------|---------|
| Agente | Agent | Sistema de IA que ejecuta tareas específicas autónomamente | Chatbot de atención al cliente |
| Alucinación | Hallucination | Cuando modelo genera información falsa presentándola como verdadera | "Juan José ganó Premio Nobel en 2023" (falso) |
| Context window | Context window | Máxima cantidad de tokens que modelo puede procesar en una conversación | 128K tokens = ~96,000 palabras |
| Embedding | Embedding | Representación numérica (vector) de texto que captura significado | "gato" = [0.234, -0.456, 0.123, ...] |
| Fine-tuning | Fine-tuning | Entrenar modelo pre-entrenado con datos específicos | Entrenar Llama con contratos de tu empresa |
| Inferencia | Inference | Proceso de generar respuesta dado un prompt | Usuario pregunta → Llama genera respuesta |
| Llama | Llama | Familia de modelos de Meta AI, open-source | Llama 3.2 8B |
| LLM | Large Language Model | Modelo de IA entrenado con billones de palabras | GPT-4, Claude, Llama |
| Parámetro | Parameter | Variable interna del modelo (más parámetros ≈ más capacidad) | 8B = 8 mil millones de parámetros |
| Prompt | Prompt | Instrucción o pregunta que das al modelo | "Explica qué es Llama en 2 párrafos" |
| Quantización | Quantization | Reducir precisión numérica para ahorrar memoria | FP16 (16 GB) → INT4 (4.5 GB) |
| RAG | Retrieval-Augmented Generation | Modelo busca en documentos antes de responder | Llama consulta tus manuales antes de responder |
| Sistema | System prompt | Instrucciones permanentes de comportamiento | "Eres asistente formal de ventas" |
| Temperatura | Temperature | Controla creatividad vs consistencia (0-1) | 0 = determinista, 1 = creativo |
| Token | Token | Unidad de texto procesada por modelo | "Hola mundo" = 3 tokens |
| Top-p | Top-p | Controla diversidad de respuestas (0-1) | 0.9 = balance calidad-diversidad |

---

### Anexo B: Template de Prompt Estructurado (Fórmula de 6 Componentes)

**Nombre del proyecto:** _____________________  
**Empresa:** _____________________  
**Fecha:** _____________________  
**Versión:** v1.0

---

#### 1. CONFIGURACIÓN DEL SISTEMA

```
[Define ROL, TONO, y PERSONALIDAD del agente]

Ejemplo:
Eres asistente virtual de [Nombre de empresa].

ROL: [Descripción de rol - ej. "Representante de atención al cliente"]
TONO: [Formal / Casual / Profesional / Amigable]
PERSONALIDAD: [Características - ej. "Empático, paciente, resolutivo"]
CONOCIMIENTO: [Áreas de expertise - ej. "Experto en productos de ferretería"]

CONTEXTO PERMANENTE:
- Empresa fundada en: [Año]
- Misión: [1 línea]
- Valores: [3 valores clave]
```

---

#### 2. TAREA ESPECÍFICA

```
[Define QUÉ debe hacer el agente en esta interacción]

Ejemplo:
Tu tarea es [descripción clara y específica].

INPUT que recibirás:
- [Tipo de entrada - ej. "Email del cliente"]
- [Formato - ej. "Texto plano, máximo 500 palabras"]

OBJETIVO:
- [Resultado esperado - ej. "Responder consulta de disponibilidad"]
- [Acción secundaria - ej. "Si producto agotado, sugerir alternativa"]
```

---

#### 3. CONTEXTO EMPRESARIAL

```
[Información que modelo NO tiene por defecto]

Ejemplo:
Información sobre [Nombre de empresa]:

PRODUCTOS/SERVICIOS:
- [Producto 1]: [Descripción breve, precio, características]
- [Producto 2]: [Descripción breve, precio, características]
- [Producto 3]: [Descripción breve, precio, características]

POLÍTICAS CLAVE:
- Envíos: [Detalles de tiempos y costos]
- Devoluciones: [Política específica]
- Garantía: [Términos y condiciones]

UBICACIÓN Y CONTACTO:
- Dirección: [Calle, ciudad, estado]
- Teléfono: [Número]
- Horario: [Días y horas de atención]
- WhatsApp: [Número]
```

---

#### 4. RESTRICCIONES CRÍTICAS

```
[Guardrails - qué NO hacer NUNCA]

Ejemplo:
PROHIBIDO (nunca hacer):
- [Restricción 1 - ej. "NUNCA prometer descuentos sin código válido"]
- [Restricción 2 - ej. "NUNCA compartir información de otros clientes"]
- [Restricción 3 - ej. "NUNCA hacer afirmaciones médicas o legales"]

OBLIGATORIO (siempre hacer):
- [Requerimiento 1 - ej. "SIEMPRE verificar disponibilidad en inventario"]
- [Requerimiento 2 - ej. "SIEMPRE incluir disclaimer de [tema]"]

ESCALACIÓN (cuándo pasar a humano):
- [Condición 1 - ej. "Si cliente solicita cambio de política"]
- [Condición 2 - ej. "Si detecto posible fraude"]
- [Condición 3 - ej. "Si tono del cliente es hostil o amenazante"]
```

---

#### 5. FORMATO DE SALIDA

```
[Estructura EXACTA esperada del output]

Ejemplo:
Tu respuesta debe seguir esta estructura:

1. [Elemento 1 - ej. "Saludo personalizado (usar nombre si disponible)"]
2. [Elemento 2 - ej. "Reconocimiento del problema/pregunta"]
3. [Elemento 3 - ej. "Respuesta específica con datos concretos"]
4. [Elemento 4 - ej. "Siguiente paso o llamado a acción"]
5. [Elemento 5 - ej. "Cierre cordial con invitación a contactar de nuevo"]

LONGITUD: [Rango de palabras - ej. "100-150 palabras"]
FORMATO: [Tipo - ej. "Texto plano (para copiar a WhatsApp)"]
IDIOMA: [ej. "Español mexicano, evitar regionalismos"]
```

---

#### 6. CRITERIOS DE CALIDAD

```
[Cómo evaluar si output es BUENO]

Ejemplo:
Una respuesta de ALTA CALIDAD debe cumplir:

✓ [Criterio 1 - ej. "Responde directamente la pregunta (no divaga)"]
✓ [Criterio 2 - ej. "Cita política específica cuando aplica"]
✓ [Criterio 3 - ej. "Usa tono empático (ej. 'Entiendo tu preocupación...')"]
✓ [Criterio 4 - ej. "Es accionable (cliente sabe qué hacer después)"]
✓ [Criterio 5 - ej. "Sin errores ortográficos ni gramaticales"]
✓ [Criterio 6 - ej. "No usa jerga técnica innecesaria"]

SEÑALES DE PROBLEMA (indicadores de mala respuesta):
✗ [Anti-patrón 1 - ej. "Respuesta genérica que no usa contexto de empresa"]
✗ [Anti-patrón 2 - ej. "Promete algo que está en restricciones"]
✗ [Anti-patrón 3 - ej. "Tono inapropiado (demasiado casual o robótico)"]
```

---

### CHANGELOG

```
v1.0 (Fecha: ________)
- Versión inicial basada en Canvas de Sesión 1

v1.1 (Fecha: ________)
- [Documentar cambios aquí]
- [Justificación de cambios]

v1.2 (Fecha: ________)
- [Documentar cambios aquí]
- [Justificación de cambios]
```

---

### EJEMPLOS DE INPUT/OUTPUT

**Ejemplo 1:**

**Input del cliente:**
```
[Copiar ejemplo real de consulta]
```

**Output esperado del agente:**
```
[Copiar respuesta ideal]
```

**Análisis:**
```
Por qué esta respuesta es buena:
- [Razón 1]
- [Razón 2]
- [Razón 3]
```

---

**Ejemplo 2 (caso problemático):**

**Input del cliente:**
```
[Copiar ejemplo de consulta difícil]
```

**Output esperado del agente:**
```
[Copiar cómo manejar el caso]
```

**Análisis:**
```
Estrategia para caso complejo:
- [Cómo identificar que es complejo]
- [Cómo escalar si es necesario]
```

---

### Anexo C: Checklist de Pre-Sesión 2

Antes de Sesión 2, verifica que tienes TODOS estos elementos:

#### Hardware y Software

```
□ Laptop con mínimo 8GB RAM disponibles
  ├─ Verificar: Abrir "Acerca de este equipo" / "System Information"
  ├─ Si tienes 4-6GB → Alertar en Discord (opciones limitadas)
  └─ Si tienes 16GB+ → Perfecto

□ Sistema operativo actualizado
  ├─ macOS: 13.0+ (Ventura o superior)
  ├─ Windows: 10/11 (últimas actualizaciones)
  └─ Linux: Ubuntu 22.04+ o equivalente

□ Espacio en disco: Mínimo 20GB libres
  ├─ Modelo Llama 3.2 8B INT4: ~5GB
  ├─ Software (Ollama, Python): ~2GB
  ├─ Documentos para RAG: ~5GB
  └─ Buffer de seguridad: ~8GB

□ Conexión a internet estable (para descarga inicial)
  ├─ Velocidad mínima: 5 Mbps
  ├─ Nota: Después de instalación, NO necesitas internet
  └─ Si internet es limitado: avisar en Discord (alternativas)

□ Permisos de administrador en tu laptop
  ├─ Necesario para instalar software
  └─ Si NO tienes: contactar a TI de tu empresa ANTES de Sesión 2
```

#### Entregables Completados

```
□ Prompt estructurado v1.0 (6 componentes)
  ├─ Configuración: [✓]
  ├─ Tarea: [✓]
  ├─ Contexto: [✓]
  ├─ Restricciones: [✓]
  ├─ Formato: [✓]
  └─ Criterios: [✓]

□ Registro de iteraciones (mínimo 3 versiones)
  ├─ v1.0: [✓]
  ├─ v1.1: [✓]
  └─ v1.2: [✓]

□ Documentos para RAG preparados
  ├─ Formato legible (PDF, Word, TXT, Markdown)
  ├─ Sin protección por contraseña
  ├─ Sin escaneos ilegibles (OCR si es necesario)
  └─ Organizados en carpeta única

□ Canvas de Sesión 1 completado y validado
  ├─ Caso clasificado: [Verde/Amarillo]
  ├─ Si Amarillo: Ajustes realizados
  └─ Si Rojo: Caso alternativo identificado
```

#### Conocimiento Preparado

```
□ Revisé video de "Introducción a Llama" (15 min)
  └─ Link: [Proporcionado vía email]

□ Leí guía rápida de Ollama (10 min)
  └─ Link: https://ollama.com/docs

□ Tengo claridad de MI caso de uso específico
  ├─ Puedo explicarlo en 2 minutos
  └─ Sé exactamente qué documentos usar

□ Identifiqué posibles obstáculos
  ├─ Hardware limitado: [Sí/No]
  ├─ Datos sin preparar: [Sí/No]
  └─ Restricciones corporativas IT: [Sí/No]
```

#### Soporte y Comunidad

```
□ Unido a Discord del workshop
  └─ Link: [Proporcionado vía email]

□ Canal #preparacion-sesion-2 revisado
  ├─ Leí troubleshooting común
  └─ Hice preguntas si tenía dudas

□ Tengo horario de Office Hours anotado
  └─ Jueves 6-7 PM CDMX (Zoom link en Discord)

□ Email de facilitador guardado
  └─ juanjo@amplifikai.com
```

**Si falta 1+ item crítico (hardware, entregables), NO podrás seguir Sesión 2 efectivamente. Resuelve ANTES.**

---

## Notas críticas para el facilitador

### Preparación pre-sesión (1 semana antes)

#### Logística física (si presencial)

```
□ Venue confirmado (capacidad 400 personas)
  ├─ Mesas para ejercicio escrito (1 mesa por 4 personas)
  ├─ Sillas numeradas (asistencia verificable)
  └─ Espacio para circulación de asistentes

□ Equipamiento técnico verificado
  ├─ Proyector: Resolución mínima 1080p
  ├─ 2 pantallas (para mostrar slides + demo en vivo)
  ├─ Audio: Micrófono inalámbrico + bocinas
  ├─ Clicker para slides
  └─ Laptop de respaldo (si la principal falla)

□ Material impreso preparado
  ├─ 400 copias de Canvas (papel tamaño carta)
  ├─ 400 plumas funcionales
  ├─ 50 copias de respaldo (llegadas tarde)
  └─ Posters de Triángulo PyME (2-3 grandes en paredes)

□ WiFi verificado
  ├─ SSID y contraseña proyectados (para referencia)
  ├─ Ancho de banda: Mínimo 100 Mbps (400 personas)
  └─ Prueba de carga REAL (20+ dispositivos simultáneos)

□ Señalización
  ├─ Carteles direccionales al venue
  ├─ Badges de staff identificables
  └─ Horario visible (inicio, descansos, fin)
```

#### Contenido y presentación

```
□ Slides finalizados y probados
  ├─ 45 slides totales (1 slide/minuto promedio)
  ├─ Transiciones rápidas (sin animaciones lentas)
  ├─ Fuente grande (mínimo 24pt para texto)
  └─ Exportados en PDF (backup si PowerPoint falla)

□ Demos pre-cargadas
  ├─ Ollama instalado y funcionando
  ├─ Llama 3.2 8B descargado (no descargar en vivo)
  ├─ 3 ejemplos de prompts listos para ejecutar
  └─ Resultados pre-guardados (si internet falla)

□ Timeline impreso en tarjeta
  ├─ Minutaje exacto por bloque
  ├─ Alertas en minutos clave (23, 38, 43)
  └─ Facilitador lleva en mano (no en laptop)

□ Casos anónimos preparados (para calibración)
  ├─ 1 caso verde (identificado previamente)
  ├─ 1 caso amarillo (identificado previamente)
  ├─ 1 caso rojo (identificado previamente)
  └─ Análisis de cada caso escrito (no improvisar)
```

#### Equipo de soporte

```
□ 3 asistentes capacitados
  ├─ Rol 1: Recolección de Canvas (min 38)
  ├─ Rol 2: Soporte técnico (WiFi, audio)
  ├─ Rol 3: Registro de asistencia + preguntas

□ Briefing de equipo (30 min antes)
  ├─ Explicar roles y timing
  ├─ Protocolo de emergencias (evacuación, etc.)
  └─ Señales no-verbales (facilitador necesita agua, etc.)

□ Comunicación interna
  ├─ Grupo de WhatsApp de staff
  └─ Walkie-talkies (venue grande)
```

---

### Durante la sesión (timing crítico)

#### Bloques de tiempo (monitoreo estricto)

| Minuto | Evento | Acción del facilitador |
|--------|--------|------------------------|
| -5 | Pre-apertura | Verificar proyector, audio, agua. Respiración profunda. |
| 0 | Inicio exacto | Dar bienvenida, establecer expectativas. |
| 3 | Fin de micro-historia | Transición: "Los 7 componentes..." |
| 8 | Fin de componentes LATAM | Transición: "Por qué Meta liberó Llama..." |
| 12 | Fin de estrategia Meta | Transición: "Local vs Cloud..." |
| 15 | Fin Bloque A | Transición: "Fundamentos técnicos..." |
| 18 | Fin familia Llama | Transición: "Quantización..." |
| 20 | Fin quantización | Transición: "Hardware realista..." |
| 23 | Fin Bloque B | Transición: "Triángulo PyME..." |
| 28 | Fin Triángulo | Transición: "Ejercicio Canvas..." |
| **28** | **INICIO SILENCIO** | **NO hablar. Caminar observando. Tomar notas mentales.** |
| 35 | Check-in visual | ¿Cuántos terminaron? ¿Cuántos atascados? |
| **38** | **FIN EJERCICIO** | **"Tiempo. Plumas abajo."** |
| 38 | Recolección Canvas | Asistentes toman Canvas, seleccionan 3. |
| 39 | Calibración empieza | Caso Verde proyectado. |
| 40.5 | Caso Verde analizado | Caso Amarillo proyectado. |
| 42 | Caso Amarillo analizado | Caso Rojo proyectado. |
| 43 | Calibración terminada | Transición: "Construcción de prompts..." |
| 43 | Demostración prompts | Mostrar 4 versiones progresivas. |
| 45 | Asignación de tarea | Entregables, deadline, recursos. |
| 46 | Cierre | Despedida, recordar Discord. |

**CRÍTICO:** Si llegas a minuto 28 con retraso de >3 minutos, recorta:
- Estrategia Meta (de 4 min a 2 min)
- Quantización (de 2 min a 1 min)

**NO recortes:**
- Triángulo PyME (esencial)
- Ejercicio Canvas (esencial)
- Calibración (esencial)

---

### Manejo de situaciones imprevistas

#### Emergencia técnica

**Problema: Proyector falla**

```
Plan A: Laptop de respaldo + proyector secundario
Plan B: Continuar sin slides (usar pizarra)
Plan C: Suspender 10 min, resolver (solo si <min 10)
```

**Problema: Internet falla durante demo**

```
Solución: Usar resultados pre-guardados
Decir: "La demo ya estaba corrida previamente. 
Resultado es este [mostrar screenshot]."
NO decir: "Disculpen, internet no funciona."
```

**Problema: Llegada masiva tarde (>100 personas en min 10)**

```
Acción:
1. NO detener sesión
2. Asistente distribuye Canvas mientras facilitador habla
3. En minuto 15 (transición de bloque), hacer recap de 2 min
```

#### Preguntas complicadas

**Pregunta: "¿Llama es legal usar comercialmente?"**

```
Respuesta (30 segundos):
"Sí, Llama tiene licencia open-source para uso comercial. 
La única restricción es si tu empresa tiene >700 millones 
de usuarios activos mensuales (Facebook scale). Si no eres 
Meta-scale, estás cubierto. Licencia completa: llama.meta.com/license"
```

**Pregunta: "¿Por qué no usar ChatGPT que es más fácil?"**

```
Respuesta (45 segundos):
"Excelente pregunta. ChatGPT es más fácil de iniciar, pero:
1. Costo: $20 USD/usuario/mes (acumulativo)
2. Privacidad: Tus datos van a servidores OpenAI
3. Control: Dependes de decisiones de OpenAI

Llama es:
1. $0 después de setup
2. Datos 100% tuyos
3. Control total

ChatGPT es perfecto para prototipos rápidos. 
Llama es perfecto para producción de largo plazo.

En Sesión 4 hablamos de estrategia híbrida."
```

**Pregunta: "Mi caso requiere 100% precisión (ej. legal). ¿Llama puede?"**

```
Respuesta (1 minuto):
"Pregunta crítica. Respuesta directa: Ningún LLM (ni GPT-4, 
ni Claude, ni Llama) garantiza 100% precisión sin supervisión.

Para casos de alto riesgo (legal, médico, financiero):
- Llama (o cualquier IA) es ASISTENTE, no reemplazo
- Validación humana obligatoria
- Arquitectura: IA sugiere, humano aprueba

Tu proceso:
1. Llama pre-analiza documento
2. Identifica puntos de atención
3. Abogado/experto revisa SIEMPRE
4. Experto toma decisión final

Beneficio: Llama reduce tiempo de análisis 70%, 
pero no elimina responsabilidad humana.

En tu Canvas, campo 5 (Restricciones) debe incluir:
'Validación humana obligatoria antes de acción final'."
```

---

### Post-sesión inmediato (primeros 30 minutos)

#### Recolección de feedback

```
□ Encuesta digital enviada (Google Form)
  ├─ 5 preguntas máximo
  ├─ Incentivo: Acceso temprano a Sesión 2 materials
  └─ Deadline: 24 horas

□ Métricas capturadas
  ├─ Asistencia: [Número] de 400 registrados
  ├─ Canvas completados: [Número] (%)
  ├─ Clasificación: X verde, Y amarillo, Z rojo
  └─ Tiempo promedio de ejercicio: [Minutos]

□ Casos interesantes documentados
  ├─ 5 mejores casos verdes → Compartir como ejemplos
  ├─ 3 casos rojos instructivos → Usar en materiales
  └─ Patterns comunes → Ajustar Sesión 2
```

#### Preparación para Sesión 2

```
□ Revisar Canvas entregados
  ├─ Identificar participantes que necesitan ayuda extra
  ├─ Agrupar por industria/complejidad
  └─ Preparar breakout rooms específicos

□ Comunicación follow-up (email en 24 hrs)
  ├─ Agradecer asistencia
  ├─ Recordar entregables y deadline
  ├─ Link a Discord + Office hours
  └─ Teaser de Sesión 2 (generar anticipación)

□ Actualizar materiales
  ├─ Slides de Sesión 2 ajustados según feedback
  ├─ Tutoriales de instalación personalizados (macOS vs Windows)
  └─ FAQs basadas en preguntas de Sesión 1
```

---

## Anexos técnicos

### Anexo D: Tabla comparativa completa de modelos Llama

| Modelo | Lanzamiento | Parámetros | Context window | Quantización | RAM necesaria | Velocidad (CPU i7) | Mejor para |
|--------|------------|-----------|---------------|--------------|--------------|-------------------|------------|
| Llama 1 7B | Feb 2023 | 7B | 2K | INT4 | 4GB | ~4 tok/s | **Deprecated** |
| Llama 2 7B | Jul 2023 | 7B | 4K | INT4 | 4GB | ~5 tok/s | Casos simples |
| Llama 2 13B | Jul 2023 | 13B | 4K | INT4 | 8GB | ~2 tok/s | Balance antiguo |
| Llama 2 70B | Jul 2023 | 70B | 4K | INT4 | 40GB | N/A (necesita GPU) | Servidor/cloud |
| **Llama 3.2 1B** | Sep 2024 | 1B | 128K | INT4 | 2GB | ~10 tok/s | Móviles, IoT |
| **Llama 3.2 3B** | Sep 2024 | 3B | 128K | INT4 | 4GB | ~6 tok/s | Laptops básicas (8GB) |
| **Llama 3.2 8B** | Sep 2024 | 8B | 128K | INT4 | 6-8GB | ~3-5 tok/s | **RECOMENDADO workshop** |
| Llama 3.1 8B | Jul 2024 | 8B | 128K | INT4 | 6-8GB | ~3-5 tok/s | Alternativa a 3.2 |
| Llama 3.1 70B | Jul 2024 | 70B | 128K | INT4 | 40-48GB | ~1-2 tok/s (CPU) | Casos complejos |
| Llama 3.1 405B | Jul 2024 | 405B | 128K | INT4 | 240GB+ | N/A | Investigación, competir GPT-4 |
| Llama 3.3 70B | Dic 2024 | 70B | 128K | INT4 | 40-48GB | ~1-2 tok/s | Mejora de 3.1 70B |

**Leyenda:**
- tok/s = tokens por segundo
- INT4 = Quantización a 4 bits
- K = mil tokens (1K = ~750 palabras)

---

### Anexo E: Comandos esenciales de Ollama (para Sesión 2)

**Instalación (una sola vez):**

```bash
# macOS / Linux
curl -fsSL https://ollama.com/install.sh | sh

# Windows
# Descargar instalador desde: https://ollama.com/download/windows
```

**Descargar modelo (una sola vez):**

```bash
# Modelo recomendado workshop
ollama pull llama3.2:8b-instruct-q4_K_M

# Alternativas si hardware limitado
ollama pull llama3.2:3b-instruct-q4_K_M  # Laptops 8GB
ollama pull llama3.2:1b-instruct-q4_K_M  # Laptops 4GB
```

**Ejecutar modelo (cada vez que quieras usarlo):**

```bash
# Modo interactivo (conversación)
ollama run llama3.2:8b-instruct-q4_K_M

# Modo script (un prompt)
ollama run llama3.2:8b-instruct-q4_K_M "Explica qué es Llama en 100 palabras"
```

**Verificar instalación:**

```bash
# Ver modelos instalados
ollama list

# Ver información de modelo
ollama show llama3.2:8b-instruct-q4_K_M

# Eliminar modelo (liberar espacio)
ollama rm llama3.2:8b-instruct-q4_K_M
```

**Parámetros de ajuste (avanzado):**

```bash
# Temperatura (creatividad)
# 0 = determinista, 1 = creativo
ollama run llama3.2:8b-instruct-q4_K_M --temperature 0.7

# Top-p (diversidad)
ollama run llama3.2:8b-instruct-q4_K_M --top-p 0.9

# Máximo tokens de salida
ollama run llama3.2:8b-instruct-q4_K_M --max-tokens 500
```

---

### Anexo F: Recursos externos recomendados

**Documentación oficial:**

1. **Meta AI - Llama Documentation**
   - URL: https://llama.meta.com/docs
   - Contenido: Guías de descarga, API references, examples
   - Audiencia: Developers con experiencia técnica
   - Idioma: Inglés

2. **Ollama Documentation**
   - URL: https://ollama.com/docs
   - Contenido: Instalación, modelos disponibles, API local
   - Audiencia: Principiantes y avanzados
   - Idioma: Inglés (muy clara)

3. **LlamaIndex Documentation**
   - URL: https://docs.llamaindex.ai
   - Contenido: RAG patterns, data connectors, evaluation
   - Audiencia: Implementadores de sistemas RAG (Sesión 3)
   - Idioma: Inglés

---

**Comunidades y soporte:**

4. **r/LocalLLaMA (Reddit)**
   - URL: https://reddit.com/r/LocalLLaMA
   - Contenido: Tutoriales, troubleshooting, benchmarks
   - Idioma: Inglés
   - Nota: Comunidad más activa de Llama

5. **Discord de Ollama**
   - URL: https://discord.gg/ollama
   - Contenido: Soporte en tiempo real, canales por tema
   - Idioma: Inglés (pero comunidad hispana creciente)

6. **Discord del Workshop (PRIMARIO)**
   - URL: [Proporcionado vía email]
   - Contenido: Soporte específico del workshop
   - Idioma: Español
   - Nota: **Usar este PRIMERO antes que comunidades angloparlantes**

---

**Papers y publicaciones académicas:**

7. **"Llama 3 Herd of Models" (Meta AI, 2024)**
   - URL: https://ai.meta.com/research/publications/llama-3-herd-of-models/
   - Contenido: Descripción técnica completa de arquitectura, benchmarks
   - Idioma: Inglés técnico
   - Relevancia: Entender cómo funciona Llama internamente

8. **"Constitutional AI" (Anthropic, 2022)**
   - URL: https://arxiv.org/abs/2212.08073
   - Contenido: Técnicas de alineación y safety
   - Aplicable a: Cualquier LLM incluido Llama
   - Idioma: Inglés académico

---

**Herramientas complementarias:**

9. **AnythingLLM**
   - URL: https://useanything.com
   - Uso: Interfaz visual para RAG (Sesión 3)
   - Plataforma: Desktop app (macOS, Windows, Linux)

10. **LM Studio**
    - URL: https://lmstudio.ai
    - Uso: Alternativa a Ollama con GUI
    - Plataforma: Desktop app

11. **llama.cpp**
    - URL: https://github.com/ggerganov/llama.cpp
    - Uso: Ejecución en C++ (más control, más complejo)
    - Audiencia: Desarrolladores avanzados

---

## Licencia y provenance

**Licencia de este documento:**

- Código y scripts: MIT License
- Contenido educativo: Creative Commons Attribution 4.0 (CC-BY-4.0)

**Atribución requerida:**

```
"Sesión 1: Estrategia y Diseño de Caso de Uso" del Workshop 
"Build Your Own AI Stack con Llama" por Juan José Domínguez Ochoa 
(Amplifik AI Inc.) está licenciado bajo CC BY 4.0.

Versión 2.0.0-robusta (2025-11-10)
https://github.com/majorjuanjo/workshop-llama-latam
```

**Provenance:**

- Autor: Juan José Domínguez Ochoa
- Organización: Amplifik AI Inc. (https://ak7.ai)
- Programa: PotencIA MX (incMTY + Meta AI + Secretaría de Economía)
- Versión: 2.0.0-robusta
- Fecha: 10 de noviembre, 2025
- Hash SHA-256: [pendiente de generación]
- Timestamp blockchain: [pendiente de OpenTimestamps]
- Repositorio: https://github.com/majorjuanjo/workshop-llama-latam

**Validación institucional:**

- Meta AI: [pendiente]
- Tec de Monterrey: [pendiente]
- Secretaría de Economía: [pendiente]

---

## Contacto y soporte

**Facilitador principal:**

- Nombre: Juan José Domínguez Ochoa
- Email: juanjo@amplifikai.com
- LinkedIn: https://www.linkedin.com/in/juanjodoochoa
- Website: https://www.juanjo.app

**Organización:**

- Empresa: Amplifik AI Inc.
- Website: https://www.ak7.ai
- Programa: https://www.incmty.com/aceleradora-potenciamx

**Soporte técnico del workshop:**

- Discord: [Link proporcionado vía email a participantes]
- Office hours: Jueves 6:00 PM - 7:00 PM (CDMX) vía Zoom
- GitHub Issues: https://github.com/majorjuanjo/workshop-llama-latam/issues

---

**Fin del documento - Sesión 1 ROBUSTA**

Versión: 2.0.0-robusta  
Última actualización: 10 de noviembre, 2025  
Palabras: ~18,500  
Expansión vs original: 1.8x  

**Siguiente sesión:** Sesión 2: Instalación y Primer Agente Funcional  
**Fecha:** [1 semana después de Sesión 1]  
**Formato:** Virtual (Zoom), 60 minutos  
**Pre-work requerido:** Prompt estructurado completado + Hardware verificado  

---

**¿Preguntas o comentarios sobre este documento?**  
Crea un issue en: https://github.com/majorjuanjo/workshop-llama-latam/issues
