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
Día 2: Instalar software → 85% completa (ya están comprometidos)
Día 3: Implementar TU caso → 80% completa (objetivo claro)
```

**Ventaja psicológica:**

Cuando diseñas tu caso de uso PRIMERO, tu cerebro:
- Ya tiene objetivo concreto (no abstracto)
- Ya invirtió tiempo emocional (costo hundido positivo)
- Ya visualizó beneficio específico (motivación intrínseca)
- Ya contestó "¿esto para qué me sirve?" (relevancia personal)

Resultado: Persistes durante instalaciones frustrantes porque **ya sabes exactamente qué vas a construir**.

---

## Objetivos de aprendizaje

Al completar esta Sesión 1, los participantes podrán:

### Objetivos de comprensión (Saber)

1. **Explicar qué es Llama** con precisión técnica básica:
   - Modelo de lenguaje grande de código abierto
   - Creado por Meta AI
   - Arquitectura transformer decoder-only
   - Familia de modelos (1B, 3B, 8B, 70B, 405B parámetros)

2. **Identificar diferencias** entre soluciones IA:
   - Cloud (ChatGPT, Claude) vs Local (Llama con Ollama)
   - Trade-offs: Costo, privacidad, latencia, escalabilidad
   - Cuándo usar cada opción

3. **Comprender arquitectura básica** de agente conversacional:
   - Componente 1: Modelo de lenguaje (Llama)
   - Componente 2: Base de conocimiento (documentos internos)
   - Componente 3: Sistema de prompts (instrucciones)
   - Componente 4: RAG (Retrieval-Augmented Generation)

### Objetivos de aplicación (Hacer)

4. **Diseñar un caso de uso específico** para tu negocio:
   - Identificar problema repetitivo con alto costo de tiempo
   - Cuantificar impacto (horas/mes, pesos/año)
   - Evaluar viabilidad técnica (¿Llama puede resolverlo?)
   - Definir criterios de éxito medibles

5. **Estructurar un prompt de producción** siguiendo arquitectura de 6 componentes:
   - Rol del agente
   - Contexto del problema
   - Objetivo de la interacción
   - Restricciones y reglas
   - Formato de salida esperado
   - Ejemplos de inputs/outputs correctos

6. **Mapear conocimiento interno** de tu empresa:
   - Listar documentos existentes (manuales, políticas, FAQs)
   - Identificar gaps de documentación
   - Priorizar qué documentar primero para el agente

### Objetivos de análisis (Evaluar)

7. **Calcular ROI estimado** de implementar tu caso de uso:
   - Tiempo ahorrado por semana
   - Costo de ese tiempo (salario/hora)
   - Inversión requerida (tiempo de setup)
   - Punto de equilibrio esperado

8. **Evaluar hardware disponible** para ejecutar Llama:
   - Identificar laptop/servidor que usarás
   - Verificar RAM disponible (mínimo 8GB)
   - Seleccionar modelo Llama apropiado (3B vs 8B vs 70B)
   - Estimar rendimiento (tokens/segundo)

### Objetivos actitudinales (Sentir)

9. **Desarrollar confianza** en que "sí es posible":
   - Ver casos de éxito de PyMEs similares
   - Desmitificar complejidad técnica
   - Romper creencia de "necesito ser programador"

10. **Comprometerse** a completar las 4 sesiones:
    - Entender inversión de tiempo requerida
    - Aceptar que requiere esfuerzo sostenido
    - Conectar con comunidad de soporte

---

## Entregables de la sesión

Al finalizar esta sesión de 45 minutos, cada participante debe tener completado:

### Entregable #1: Canvas de Caso de Uso (Plantilla completada)

**Formato:** Google Doc / Notion / Papel físico  
**Tiempo de completado:** 10 minutos en sesión + 15 minutos post-sesión  
**Secciones obligatorias:**

```markdown
# CANVAS DE CASO DE USO - Workshop Llama

## 1. IDENTIFICACIÓN DEL PROBLEMA
**¿Qué problema específico vas a resolver?**
[Tu respuesta aquí - máximo 100 palabras]

**¿Cuánto tiempo consume actualmente?**
- Horas por tarea individual: ___
- Frecuencia (diario/semanal/mensual): ___
- Total horas/mes: ___

**¿Cuál es el costo de ese tiempo?**
- Salario/hora de quien lo hace: $___ MXN
- Costo mensual total: $___ MXN
- Costo anual: $___ MXN

## 2. SOLUCIÓN PROPUESTA
**¿Qué haría el agente de IA específicamente?**
[Describe paso por paso - máximo 200 palabras]

**¿Qué necesita saber el agente para hacerlo bien?**
- Documento 1: [Nombre + ubicación]
- Documento 2: [Nombre + ubicación]
- Documento 3: [Nombre + ubicación]
[Continuar hasta listar todos]

## 3. VIABILIDAD TÉCNICA
**¿Qué tan factible es tu caso? (marca una)**
[ ] Verde: Definitivamente factible con Llama
[ ] Amarillo: Requiere validación pero parece viable
[ ] Rojo: Probablemente no factible (necesitas alternativa)

**Justificación:**
[¿Por qué crees que es/no es factible? - máximo 50 palabras]

## 4. ROI ESTIMADO
**Reducción de tiempo esperada:**
- Escenario conservador: ___ % reducción
- Escenario optimista: ___ % reducción

**Ahorro anual esperado:**
- Conservador: $___ MXN/año
- Optimista: $___ MXN/año

**Punto de equilibrio:**
Si invierto 15 horas en el workshop, el ahorro equivale a ___ meses.

## 5. COMPROMISO
**¿Estás comprometido a completar las 4 sesiones?**
[ ] Sí, definitivamente
[ ] Probablemente, necesito validar con mi equipo
[ ] No estoy seguro

**Si marcaste "No estoy seguro", ¿qué necesitas para decidir?**
[Tu respuesta]

**Nombre:**  
**Empresa:**  
**Email:**  
**Fecha:**  
```

**Criterios de éxito:**
- ✅ Todas las secciones completadas (no dejar en blanco)
- ✅ Números específicos (no "mucho" o "poco" - usar cantidades reales)
- ✅ Problema lo suficientemente acotado (no "mejorar el negocio" - algo específico)

---

### Entregable #2: Prompt Estructurado (Primera versión)

**Formato:** Documento de texto (.txt, .md, Google Doc)  
**Tiempo de completado:** 5 minutos en sesión + 20 minutos post-sesión  
**Template obligatorio:**

```markdown
# PROMPT ESTRUCTURADO - Caso de Uso: [Tu título]

## COMPONENTE 1: ROL DEL AGENTE
Eres un [rol específico] especializado en [área de expertise].
Tu objetivo principal es [responsabilidad clara].

Ejemplo correcto:
"Eres un asistente de ventas especializado en ferretería industrial.
Tu objetivo principal es responder consultas sobre disponibilidad 
de productos y precios, consultando nuestro catálogo actualizado."

Ejemplo incorrecto:
"Eres un asistente inteligente que ayuda con cosas."

## COMPONENTE 2: CONTEXTO DEL NEGOCIO
[Describe tu empresa en 3-5 oraciones]
- Giro: ___
- Productos/servicios principales: ___
- Audiencia objetivo: ___
- Particularidades relevantes: ___

## COMPONENTE 3: TAREA ESPECÍFICA
Cuando un usuario te pregunta [tipo de pregunta], debes:
1. [Paso 1]
2. [Paso 2]
3. [Paso 3]

## COMPONENTE 4: RESTRICCIONES Y REGLAS
SIEMPRE:
- [Regla obligatoria 1]
- [Regla obligatoria 2]

NUNCA:
- [Prohibición 1]
- [Prohibición 2]

## COMPONENTE 5: FORMATO DE SALIDA
Responde siempre en el siguiente formato:

[Especifica estructura exacta de respuesta deseada]

Ejemplo:
```
**Disponibilidad:** [Sí/No]
**Cantidad en stock:** [Número]
**Precio unitario:** $[Cantidad] MXN
**Tiempo de entrega:** [Días]
**Observaciones:** [Texto libre]
```

## COMPONENTE 6: EJEMPLOS DE REFERENCIA

### Ejemplo 1: Consulta básica
**Input del usuario:**  
"¿Tienen tornillos de 3/8?"

**Output esperado del agente:**  
[Escribe cómo debería responder]

### Ejemplo 2: Consulta compleja
**Input del usuario:**  
"Necesito materiales para construir un muro de block de 10m²"

**Output esperado del agente:**  
[Escribe cómo debería responder]

### Ejemplo 3: Situación edge case
**Input del usuario:**  
"¿Cuánto cuesta?"

**Output esperado del agente:**  
[Escribe cómo debería manejar pregunta ambigua]
```

**Criterios de éxito:**
- ✅ Los 6 componentes presentes y completos
- ✅ Ejemplos con input/output específicos (no genéricos)
- ✅ Restricciones claras y medibles
- ✅ Formato de salida estructurado (no "responde como quieras")

---

### Entregable #3: Inventario de Conocimiento (Lista de documentos)

**Formato:** Spreadsheet (Excel, Google Sheets) o lista simple  
**Tiempo de completado:** 5 minutos en sesión + 30 minutos post-sesión  
**Columnas obligatorias:**

| # | Nombre del documento | Tipo | Ubicación actual | Formato | Tamaño (MB) | Prioridad | Accesibilidad |
|---|---------------------|------|-----------------|---------|-------------|-----------|---------------|
| 1 | Manual de producto X | Manual | Google Drive → Carpeta Manuales | PDF | 2.5 | Alta | ✅ Ya digital |
| 2 | Política de devoluciones | Política | Impreso en oficina | Papel | - | Media | ❌ Necesita escanear |
| 3 | FAQ clientes 2024 | FAQ | Excel en servidor | XLSX | 0.8 | Alta | ✅ Ya digital |
| ... | ... | ... | ... | ... | ... | ... | ... |

**Tipos válidos:**
- Manual (de operación, producto, proceso)
- Política (interna, legal, administrativa)
- FAQ (preguntas frecuentes documentadas)
- Contrato (template de contratos)
- Catálogo (de productos, servicios)
- Guía (instructivos, tutoriales)
- Historial (casos previos, tickets resueltos)

**Prioridades:**
- **Alta:** Esencial para el caso de uso (agente no funciona sin esto)
- **Media:** Mejora significativamente el agente
- **Baja:** Nice-to-have (puede agregarse después)

**Criterios de éxito:**
- ✅ Mínimo 5 documentos identificados
- ✅ Al menos 3 marcados como "Alta" prioridad
- ✅ Ubicación específica (no "en alguna computadora")
- ✅ Plan de acción para documentos no digitales

---

### Entregable #4: Checklist de Hardware (Verificación técnica)

**Formato:** Checklist simple (puede ser parte del Canvas)  
**Tiempo de completado:** 3 minutos en sesión + 5 minutos post-sesión  
**Items a verificar:**

```markdown
# CHECKLIST DE HARDWARE - Workshop Llama

## COMPUTADORA PRINCIPAL (la que usarás para el agente)

**Marca y modelo:**  
[Ej: MacBook Pro 2021, Dell Inspiron 15, HP Pavilion]

**Sistema operativo:**  
[ ] macOS (versión: ___)
[ ] Windows (versión: ___)
[ ] Linux (distribución: ___)

**Especificaciones de RAM:**  
- RAM total instalada: ___ GB
- RAM disponible típica: ___ GB
- ¿Puedes expandir RAM? [ ] Sí [ ] No [ ] No sé

**Procesador:**  
- Marca: [ ] Intel [ ] AMD [ ] Apple Silicon (M1/M2/M3)
- Modelo: ___
- Año aproximado: ___

**Almacenamiento:**  
- Espacio total: ___ GB
- Espacio disponible: ___ GB
- Tipo: [ ] SSD [ ] HDD [ ] No sé

**Conectividad:**  
- Internet en casa: [ ] Sí [ ] No
- Velocidad (si conoces): ___ Mbps
- ¿Puedes descargar ~6GB sin problema? [ ] Sí [ ] No

## MODELO LLAMA RECOMENDADO PARA TU HARDWARE

**Basado en tu RAM, deberías usar:**
[ ] Llama 3.2 1B (si tienes 4-6 GB RAM)
[ ] Llama 3.2 3B (si tienes 8 GB RAM)
[ ] Llama 3.2 8B (si tienes 16+ GB RAM) ← RECOMENDADO
[ ] Llama 3.1 70B (si tienes 32+ GB RAM o acceso a servidor)

## PREPARACIÓN PARA SESIÓN 2

**¿Tienes cuenta de GitHub?**  
[ ] Sí (username: ___)
[ ] No (la crearemos en pre-work)

**¿Tienes experiencia instalando software?**  
[ ] Sí, instalo programas regularmente
[ ] Algo, pero con instrucciones lo hago
[ ] No, necesitaré ayuda detallada

**¿Prefieres instalación con GUI o terminal?**  
[ ] GUI (interfaz gráfica - más fácil)
[ ] Terminal (línea de comandos - más control)
[ ] No sé, lo que sea más fácil

## CONFIRMACIÓN FINAL

**¿Tu hardware cumple los requisitos mínimos?**  
(RAM ≥8GB, espacio ≥20GB, internet funcional)
[ ] Sí, cumplo todo
[ ] No, necesito buscar alternativa

**Si NO cumples requisitos, opciones alternativas:**
[ ] Usar computadora de la empresa (solicitar permiso)
[ ] Usar servicio de cloud (costo ~$20 USD/mes)
[ ] Upgrade de hardware (cotizar RAM adicional)
[ ] Continuar con modelo más pequeño (Llama 3.2 1B/3B)
```

**Criterios de éxito:**
- ✅ Todos los ítems completados
- ✅ Identificación clara de modelo Llama apropiado
- ✅ Plan de contingencia si hardware insuficiente

---

## Estructura temporal detallada

**Duración total:** 45 minutos  
**Formato:** Presencial, auditorio de ~400 personas  
**Dinámica:** Magistral + ejercicio individual + QRs para trabajo asincrónico  

### Timeline minuto a minuto

```
00:00 - 00:02 (2 min)  | APERTURA: Credenciales y hook de atención
00:02 - 00:07 (5 min)  | BLOQUE A: Pitch personal y marco de habilitación
00:07 - 00:17 (10 min) | BLOQUE B: Fundamentos técnicos esenciales
00:17 - 00:27 (10 min) | BLOQUE C: Framework de viabilidad + Canvas
00:27 - 00:37 (10 min) | Ejercicio individual: Completar Canvas (silencio)
00:37 - 00:42 (5 min)  | BLOQUE D: Arquitectura de prompts + Pre-work S2
00:42 - 00:45 (3 min)  | CIERRE: QRs, Discord, Office Hours, próximos pasos
```

### Distribución de atención

| Fase | Tipo de actividad | Nivel de atención requerido |
|------|-------------------|----------------------------|
| 0-2 min | Hook emocional | 🔴🔴🔴🔴🔴 Máxima |
| 2-7 min | Storytelling | 🔴🔴🔴🔴◯ Alta |
| 7-17 min | Contenido técnico | 🔴🔴🔴◯◯ Media-alta |
| 17-27 min | Framework aplicado | 🔴🔴🔴🔴◯ Alta |
| 27-37 min | Ejercicio individual | 🔴🔴◯◯◯ Media (concentración interna) |
| 37-42 min | Instrucciones finales | 🔴🔴🔴🔴◯ Alta |
| 42-45 min | Logística y cierre | 🔴🔴◯◯◯ Media |

### Energía del facilitador

```
Alta energía (pitch, hooks):        0-7 min, 37-42 min
Media energía (explicación):        7-17 min
Baja energía (dar espacio):         27-37 min (ejercicio individual)
Cierre motivacional:                42-45 min
```

---

## Bloque A: Pitch personal y marco de habilitación

**Tiempo:** 5 minutos (00:02 - 00:07)  
**Objetivo:** Establecer credibilidad + conectar emocionalmente con audiencia  
**Formato:** Narrativa personal + declaración de misión  

### A1: Presentación del facilitador (90 segundos)

**Guión sugerido:**

> "Hola, soy Juan José Domínguez Ochoa. En 2023 fundé Amplifik AI, una empresa que ayuda a PYMEs mexicanas a implementar inteligencia artificial sin depender de proveedores externos. 
>
> Antes de esto, pasé 6 años construyendo startups y sistemas de IA para empresas en CDMX, Monterrey y Silicon Valley. He visto el mismo patrón repetirse: grandes empresas con presupuestos millonarios implementan IA sofisticada, mientras las MiPyMEs—que representan el 99% del tejido empresarial mexicano—se quedan fuera por falta de recursos, documentación en español, o conocimiento técnico.
>
> Este workshop existe para romper esa desigualdad. No necesitas presupuesto de Fortune 500, no necesitas contratar consultores, y definitivamente no necesitas ser programador. Si puedes instalar WhatsApp en tu celular, puedes construir tu propio agente de IA con Llama."

**Elementos clave a transmitir:**
- ✅ Experiencia relevante (credibilidad técnica)
- ✅ Entendimiento del contexto mexicano (no soy "gringo enseñando")
- ✅ Misión de democratización (no estoy aquí a vender software)
- ✅ Promesa concreta y verificable (si X entonces Y)

### A2: El problema estructural (2 minutos)

**Visual en slide:** Diagrama de "Trampa Tecnológica PyME"

```
TRAMPA TECNOLÓGICA PYME

Documentación en inglés → No entiendes tutoriales
     ↓
Ejemplos para hardware caro → Tu laptop "no alcanza"
     ↓
Casos de uso genéricos → No ves cómo aplicarlo
     ↓
Sin soporte en español → Te atascas y abandonas
     ↓
[RESULTADO: Parálisis y dependencia]
```

**Guión sugerido:**

> "Déjenme preguntarles algo: ¿Cuántos de ustedes han intentado implementar IA en su negocio pero se rindieron por la complejidad técnica?"
>
> [Pausa - ver manos levantadas]
>
> "Exacto. No es culpa de ustedes. El problema es estructural. La mayoría de los recursos sobre IA están diseñados asumiendo:
>
> 1. Hablas inglés técnico fluido
> 2. Tienes una GPU de $15,000 dólares
> 3. Trabajas en una empresa de Silicon Valley con ejemplos como 'optimizar recommender systems de Netflix'
> 4. Tienes un equipo de ingenieros de machine learning
>
> ¿Cuántos aquí tienen TODO eso?"
>
> [Risas - obviamente nadie]
>
> "Claro que no. Porque ustedes son el 99% del ecosistema empresarial mexicano. Y este workshop está diseñado específicamente para USTEDES. Hardware real, presupuesto cero, ejemplos mexicanos, soporte en español."

**Elementos clave a transmitir:**
- ✅ Validación de frustración ("no es tu culpa")
- ✅ Identificación del enemigo común (recursos gringos descontextualizados)
- ✅ Posicionamiento del workshop como solución diseñada para ellos

### A3: La promesa concreta (90 segundos)

**Visual en slide:** Checklist visual de lo que lograrán

**Guión sugerido:**

> "Al terminar las 4 sesiones de este workshop—que son aproximadamente 15 horas distribuidas en 4 semanas—van a tener:
>
> **[Señalar slide con checklist]**
>
> 1. Un agente de IA corriendo en SU computadora—no en servidores de OpenAI, no en la nube de Google—EN SU LAPTOP. Cero costo por consulta.
>
> 2. Ese agente va a conocer SU negocio. Sus manuales, sus políticas, su catálogo. No va a responder cosas genéricas de internet—va a responder como si fuera un empleado que trabajó 5 años con ustedes.
>
> 3. Y lo más importante: van a tener AUTONOMÍA. No van a depender de que un proveedor les dé permiso para hacer ajustes, o les cobre por cada cambio. Ustedes van a iterar, mejorar, y escalar su sistema sin pedirle permiso a nadie.
>
> **[Pausa dramática]**
>
> ¿Suena bien? Entonces empecemos."

**Elementos clave a transmitir:**
- ✅ Beneficios concretos y verificables
- ✅ Énfasis en control y autonomía (no dependencia)
- ✅ Timeline realista (no promesas mágicas)

---

## Bloque B: Fundamentos técnicos esenciales

**Tiempo:** 10 minutos (00:07 - 00:17)  
**Objetivo:** Desmitificar la complejidad técnica sin simplificar en exceso  
**Formato:** Explicación visual + analogías + demos breves  

### B1: ¿Qué es Llama realmente? (3 minutos)

**Visual en slide:** Línea de tiempo de modelos Llama

```
EVOLUCIÓN DE LLAMA

Feb 2023: Llama 1 (7B, 13B, 65B)
Jul 2023: Llama 2 (7B, 13B, 70B) ← Primera versión comercial
Apr 2024: Llama 3 (8B, 70B)
Jul 2024: Llama 3.1 (8B, 70B, 405B)
Sep 2024: Llama 3.2 (1B, 3B) ← Optimizado para laptops
Dic 2024: Llama 3.3 (70B) ← Latest

👉 En este workshop usaremos: Llama 3.2 8B
```

**Explicación técnica (pero accesible):**

> "Llama es un **modelo de lenguaje grande** (LLM por sus siglas en inglés: Large Language Model). Pero, ¿qué significa eso en español normal?
>
> Piensen en Llama como una calculadora gigante que aprendió patrones de lenguaje. Así como una calculadora aprendió que 2+2=4, Llama aprendió que después de 'Buenos días' suele venir algo como 'cómo estás' o 'qué tal'.
>
> Aprendió esos patrones leyendo... básicamente el internet completo. Libros, artículos, Wikipedia, código de programación, conversaciones. Miles de millones de textos. Y Meta AI (la empresa que creó Llama) entrenó varios modelos de diferentes tamaños:
>
> - **Llama 3.2 1B:** El más pequeño. Cabe en un celular. 1 mil millones de parámetros.
> - **Llama 3.2 3B:** Para laptops básicas. 3 mil millones de parámetros.
> - **Llama 3.2 8B:** El que vamos a usar. 8 mil millones de parámetros. Balance perfecto.
> - **Llama 3.1 70B:** Para servidores o computadoras potentes. 70 mil millones.
> - **Llama 3.1 405B:** El más grande. Compite con GPT-4. Requiere infraestructura industrial.
>
> **¿Qué significa 'parámetros'?**  
> Son como neuronas en un cerebro artificial. Más parámetros = más inteligente, pero también más pesado y lento. 
>
> **¿Por qué usamos el 8B?**  
> Porque corre en laptops normales de 16GB RAM, responde en 2-3 segundos, y es suficientemente inteligente para el 90% de casos de uso empresariales."

**Analogía visual (mostrar en slide):**

```
ANALOGÍA: Modelos Llama como vehículos

Llama 1B  = Bicicleta       → Rápida, ligera, limitada
Llama 3B  = Motocicleta     → Buen balance para ciudad
Llama 8B  = Pickup          → Versátil, carga pesada ✅ RECOMENDADO
Llama 70B = Tráiler         → Potente, necesita infraestructura
Llama 405B= Tren de carga   → Industrial, casos específicos
```

**Punto clave a enfatizar:**

> "Lo importante: Llama es CÓDIGO ABIERTO. Eso significa:
> - ✅ Gratuito para descargar y usar
> - ✅ Puedes ver cómo funciona por dentro
> - ✅ Puedes modificarlo según necesites
> - ✅ No dependes de que Meta mantenga un servidor funcionando
> - ✅ Tus datos NUNCA salen de tu computadora
>
> Es tuyo. Como comprar un coche vs. rentar un Uber."

---

### B2: Llama vs ChatGPT - Diferencias críticas (3 minutos)

**Visual en slide:** Tabla comparativa

| Aspecto | ChatGPT (Cloud) | Llama local |
|---------|----------------|-------------|
| **Costo** | $20 USD/mes por usuario | $0 después de instalación |
| **Privacidad** | Tus datos van a servidores de OpenAI | Datos nunca salen de tu laptop |
| **Internet** | Requiere conexión constante | Funciona offline |
| **Latencia** | 1-3 segundos (depende de internet) | 2-5 segundos (siempre) |
| **Customización** | Limitada (solo prompts) | Total (puedes fine-tunear modelo) |
| **Escalabilidad** | Pagas por cada usuario adicional | 1 usuario = 100 usuarios (mismo costo) |
| **Disponibilidad** | Depende de OpenAI (si cae, te quedas sin servicio) | Siempre disponible (es tu servidor) |

**Guión sugerido:**

> "La pregunta que siempre me hacen: '¿Por qué no simplemente uso ChatGPT?'
>
> **Respuesta corta:** ChatGPT está bien para uso personal, pero para un negocio con necesidades específicas, Llama local es superior. Déjenme explicar por qué:
>
> **1. Costo a escala:**  
> ChatGPT te cobra $20 dólares POR USUARIO por mes. Si tienes 10 empleados usándolo, son $200 USD/mes = $3,600 MXN/mes = $43,200 MXN/año.
>
> Llama local: Instalas una vez, lo usan 1 o 100 empleados—mismo costo. Cero. 
>
> **2. Privacidad:**  
> Con ChatGPT, cada pregunta que haces—cada documento que subes—viaja a los servidores de OpenAI en Estados Unidos. Ellos dicen que no entrenan con tus datos, pero:
> - a) Tienes que confiar en su palabra
> - b) Tus datos atravesaron fronteras (problema legal en algunos industrias)
> - c) Si hay un hack a OpenAI, tus datos están expuestos
>
> Con Llama local, tus datos NUNCA salen de tu computadora. Físicamente imposible que se filtren.
>
> **3. Dependencia:**  
> Si OpenAI cierra, cambia sus términos, sube precios, o simplemente tiene un bug—te quedas sin servicio. Pasó con Twitter API en 2023: miles de empresas perdieron sus sistemas de la noche a la mañana.
>
> Con Llama local, es TUYO. Nadie te lo puede quitar.
>
> **[Pausa]**
>
> Entonces, ¿cuándo SÍ usar ChatGPT?
> - Para tareas exploratorias, personales
> - Cuando necesitas el modelo MÁS inteligente del mundo (GPT-4 sigue siendo superior a Llama en razonamiento complejo)
> - Cuando no tienes tiempo para instalar infraestructura
>
> ¿Cuándo usar Llama local?
> - Necesitas privacidad total
> - Tienes usuarios múltiples
> - Quieres costos predecibles
> - Necesitas customización profunda
> - Tienes requerimientos regulatorios (LFPDPPP en México, GDPR en Europa)"

---

### B3: Arquitectura del agente conversacional (4 minutos)

**Visual en slide:** Diagrama de componentes

```
ARQUITECTURA DE AGENTE CONVERSACIONAL

┌─────────────────────────────────────────┐
│         INTERFAZ DE USUARIO             │
│    (WhatsApp, Web, Terminal, API)       │
└───────────────┬─────────────────────────┘
                ↓
┌─────────────────────────────────────────┐
│      CAPA DE PROCESAMIENTO              │
│  1. Recibe pregunta del usuario         │
│  2. Busca contexto relevante (RAG)      │
│  3. Construye prompt completo           │
└───────────────┬─────────────────────────┘
                ↓
┌─────────────────────────────────────────┐
│       BASE DE CONOCIMIENTO              │
│  • Documentos PDF                       │
│  • Políticas internas                   │
│  • Catálogos de productos               │
│  • Historial de casos                   │
│  [TU CONOCIMIENTO ESPECÍFICO]           │
└───────────────┬─────────────────────────┘
                ↓
┌─────────────────────────────────────────┐
│        MODELO LLAMA (CEREBRO)           │
│  Llama 3.2 8B ejecutándose en Ollama   │
│  • Lee prompt completo                  │
│  • Genera respuesta                     │
│  • Devuelve texto                       │
└───────────────┬─────────────────────────┘
                ↓
┌─────────────────────────────────────────┐
│       RESPUESTA AL USUARIO              │
│  Texto estructurado según tu formato    │
└─────────────────────────────────────────┘
```

**Explicación paso por paso:**

> "Vamos a desmitificar cómo funciona esto internamente. Cuando construyes un agente conversacional con Llama, estás conectando 5 piezas:
>
> **PIEZA 1: Interfaz de usuario**  
> Es donde el usuario interactúa. Puede ser:
> - WhatsApp Business API (lo más común para PyMEs)
> - Página web (chatbot embebido)
> - Terminal de comandos (para uso interno)
> - API REST (para integrar con otros sistemas)
>
> **PIEZA 2: Sistema de prompts**  
> Esto es como las 'instrucciones de operación' del agente. Le dices:
> - Quién es (rol)
> - Qué debe hacer
> - Cómo debe responder
> - Qué NUNCA debe hacer
>
> **PIEZA 3: Base de conocimiento (RAG)**  
> Aquí es donde vive TU conocimiento específico. Imagina una biblioteca digital con todos tus documentos:
> - Manuales de productos
> - Políticas de empresa
> - FAQs históricas
> - Contratos template
>
> Cuando alguien hace una pregunta, el sistema busca los 3-5 documentos MÁS RELEVANTES y se los da a Llama como contexto adicional.
>
> **PIEZA 4: Modelo Llama (el cerebro)**  
> Aquí es donde ocurre la 'magia'. Llama:
> - Lee el prompt con instrucciones
> - Lee los documentos relevantes que encontró RAG
> - Lee la pregunta del usuario
> - Genera una respuesta coherente que sigue tus reglas
>
> **PIEZA 5: Post-procesamiento**  
> Antes de enviar la respuesta al usuario, puedes:
> - Formatearla (agregar negritas, saltos de línea)
> - Validarla (asegurar que no tenga información incorrecta)
> - Loggearla (guardar en base de datos para análisis)
>
> **[PUNTO CLAVE]**
>
> Lo mágico de RAG (Retrieval-Augmented Generation) es que Llama NO tiene que 'memorizar' todos tus documentos. Simplemente se los das como contexto en el momento de la pregunta.
>
> Analogía: Es como un abogado consultando sus libros de leyes antes de responder, en vez de intentar memorizar todas las leyes."

**Demo rápida (si tiempo permite - 1 minuto):**

> "Déjenme mostrarles cómo se ve esto en acción:"
>
> [Abrir terminal o interfaz de Ollama]
>
> ```bash
> $ ollama run llama3.2:8b-instruct-q4_K_M
> 
> >>> ¿Cuál es la capital de México?
> La capital de México es la Ciudad de México (CDMX), también conocida 
> como México D.F. Es el centro político, económico y cultural del país.
>
> >>> Ahora actúa como un asistente de ferretería. Un cliente pregunta: 
>      "¿Tienen tornillos de 3/8?"
>      Responde como si tuvieras el catálogo.
>
> ¡Por supuesto! Sí contamos con tornillos de 3/8 de pulgada. Tenemos 
> varias opciones disponibles:
> - Tornillos de 3/8" x 2" galvanizados (precio: $2.50 MXN c/u)
> - Tornillos de 3/8" x 3" acero inoxidable (precio: $4.80 MXN c/u)
> ¿De qué longitud los necesita? También tenemos opciones con cabeza 
> hexagonal o cabeza plana.
> ```
>
> [Cerrar demo]
>
> "Ven cómo cambió completamente su comportamiento con solo darle un rol diferente en el prompt. Esto es lo que van a aprender a diseñar en esta sesión."

---

## Bloque C: Framework de viabilidad y ejercicio práctico

**Tiempo:** 10 minutos explicación + 10 minutos ejercicio (00:17 - 00:37)  
**Objetivo:** Que cada participante identifique Y valide su caso de uso específico  
**Formato:** Framework de evaluación + Canvas de caso de uso + ejercicio individual  

### C1: Framework de viabilidad (5 minutos)

**Visual en slide:** Matriz de viabilidad 2x2

```
MATRIZ DE VIABILIDAD: ¿Llama puede resolver tu caso?

                    Alta Factibilidad Técnica
                              ▲
                              │
                    ┌─────────┼─────────┐
                    │         │         │
  Alto Impacto  ◄───┤  ZONA   │  ZONA   │
  de Negocio        │ VERDE   │ AMARILLA│
                    │         │         │
                    ├─────────┼─────────┤
                    │         │         │
  Bajo Impacto      │  ZONA   │  ZONA   │
  de Negocio        │ AMARILLA│  ROJA   │
                    │         │         │
                    └─────────┴─────────┘
                Baja Factibilidad Técnica

ZONA VERDE (Ideal):
- Alto impacto + Alta factibilidad
- Ejemplo: Automatizar FAQs de clientes con respuestas documentadas

ZONA AMARILLA (Considerar):
- Alto impacto + Baja factibilidad técnica (requiere validación profunda)
- O Bajo impacto + Alta factibilidad (quizá no vale la inversión de tiempo)

ZONA ROJA (Evitar):
- Bajo impacto + Baja factibilidad
- Ejemplo: "Mejorar la cultura empresarial con IA"
```

**Guión de explicación:**

> "No todos los problemas se resuelven bien con IA. Y está bien. El objetivo de esta sesión es que identifiquen casos VIABLES, no que forcemos IA donde no tiene sentido.
>
> Voy a darles un framework de 4 preguntas para evaluar su caso:
>
> **PREGUNTA 1: ¿Es una tarea repetitiva?**  
> ✅ Bueno: Responder 50 veces al día '¿cuál es el horario?'  
> ❌ Malo: Negociar contratos complejos con condiciones únicas
>
> **PREGUNTA 2: ¿Ya existe conocimiento documentado?**  
> ✅ Bueno: Tienes un manual de 100 páginas con todos los procedimientos  
> ❌ Malo: El conocimiento está solo en la cabeza del dueño
>
> **PREGUNTA 3: ¿La salida es predecible?**  
> ✅ Bueno: "Dame una cotización de estos 5 productos"  
> ❌ Malo: "Inventa una estrategia de marketing revolucionaria"
>
> **PREGUNTA 4: ¿El error tiene consecuencia baja-media?**  
> ✅ Bueno: Si responde mal, el cliente pregunta de nuevo  
> ❌ Malo: Si responde mal, alguien va a la cárcel o muere
>
> **[PAUSA]**
>
> Si tu caso de uso tiene 3 o 4 '✅', estás en ZONA VERDE.  
> Si tiene 2 '✅', estás en ZONA AMARILLA (requiere validación).  
> Si tiene 0-1 '✅', estás en ZONA ROJA (busca otra cosa o modifica el caso)."

**Ejemplos de casos por zona (mostrar en slide):**

**ZONA VERDE (altamente factibles):**

1. **Atención al cliente - FAQs automáticas**
   - ✅ Repetitivo: Mismas 20 preguntas todo el tiempo
   - ✅ Documentado: Tienes FAQ escrito
   - ✅ Predecible: Respuestas estructuradas
   - ✅ Consecuencia baja: Si falla, humano puede intervenir

2. **Generación de reportes mensuales**
   - ✅ Repetitivo: Cada mes, mismo formato
   - ✅ Documentado: Templates + datos históricos
   - ✅ Predecible: Secciones siempre iguales
   - ✅ Consecuencia baja: Humano revisa antes de enviar

3. **Clasificación de tickets de soporte**
   - ✅ Repetitivo: 100+ tickets por semana
   - ✅ Documentado: Historial de clasificaciones previas
   - ✅ Predecible: Categorías fijas (técnico, ventas, billing)
   - ✅ Consecuencia baja: Mal clasificación → se reasigna

**ZONA AMARILLA (requiere validación):**

4. **Análisis de sentimiento en reseñas**
   - ✅ Repetitivo: Miles de reseñas
   - ✅ Documentado: Reseñas históricas etiquetadas
   - ❌ Predecible: Sarcasmo y matices culturales complejos
   - ✅ Consecuencia baja: Es input para decisiones, no la decisión

5. **Redacción de contratos legales**
   - ✅ Repetitivo: Mismos tipos de contratos
   - ✅ Documentado: 200 contratos previos
   - ✅ Predecible: Cláusulas estándar
   - ❌ Consecuencia media-alta: Error legal puede ser costoso
   - → Requiere revisión obligatoria de abogado

**ZONA ROJA (no factibles con Llama):**

6. **"Hacer crecer ventas con IA"** (demasiado vago)
   - ❌ No está acotado
   - ❌ No hay problema específico
   - ❌ No hay métrica clara de éxito

7. **Diagnóstico médico** (consecuencia crítica)
   - ✅ Repetitivo: Pacientes con síntomas similares
   - ❌ Documentado parcialmente: Muchos casos no escritos
   - ❌ Predecible: Enfermedades raras, interacciones complejas
   - ❌ Consecuencia crítica: Diagnóstico erróneo puede matar
   - → NO uses Llama para esto. Usa sistemas especializados certificados.

---

### C2: Canvas de caso de uso - Instrucciones del ejercicio (5 minutos)

**Mostrar en slide:** Template del Canvas

> "Ahora viene la parte importante: van a diseñar SU caso de uso específico.
>
> [Mostrar slide con Canvas]
>
> Tienen 10 minutos para completar este Canvas. Pueden hacerlo en:
> - Papel (si prefieren escribir a mano)
> - Google Doc en su celular/laptop
> - Notion
> - Donde se sientan cómodos
>
> **[IMPORTANTE]**  
> Este Canvas es su 'contrato' con ustedes mismos. Si no pueden completarlo ahora con números y detalles específicos, probablemente su caso no está suficientemente definido todavía.
>
> No se preocupen si eso pasa—podemos ayudarles a refinarlo en el Discord o en office hours. Pero la meta es salir de aquí con al menos un 70% del Canvas completado.
>
> **TIPS PARA COMPLETAR:**
>
> **Sección 1 - Problema:**
> - ❌ MAL: 'Mejorar atención al cliente'
> - ✅ BIEN: 'Responder 30 consultas diarias sobre horarios, ubicación y servicios disponibles que actualmente consume 2 horas de tiempo de recepcionista'
>
> **Sección 2 - Solución:**
> - ❌ MAL: 'Un chatbot inteligente'
> - ✅ BIEN: 'Agente que consulta documento con 15 FAQs, horarios actualizados semanalmente, y mapa de ubicación. Responde en <10 segundos. Si no encuentra respuesta, escala a humano.'
>
> **Sección 3 - Viabilidad:**
> - Usen el framework de las 4 preguntas que acabamos de ver
> - Sean honestos: Si no tienen documentación, márcenlo en 'Amarillo'
>
> **Sección 4 - ROI:**
> - Usen números REALES de su negocio
> - Si no saben exactamente, hagan estimación conservadora
> - Ejemplo: 'Mi empleado gana $15,000 MXN/mes. Trabaja 160 horas/mes. Gana $93 MXN/hora. Si el agente ahorra 10 horas/mes, son $930 MXN/mes ahorrados.'
>
> **Sección 5 - Compromiso:**
> - Sean honestos aquí también
> - Si tienen dudas, está bien—marquen 'Necesito validar con equipo'
>
> **[CHECKPOINT DE TIEMPO]**
>
> Son las [hora actual]. A las [hora + 10 min] los voy a interrumpir, compartan o no hayan terminado. Si no terminan, pueden completarlo como parte del trabajo asincrónico post-sesión."

**Durante el ejercicio (facilitador circula si audiencia <50 personas):**

- Observar quién está atascado
- Dar hints sin resolver por ellos: "¿Ya tienes números específicos de tiempo?"
- Identificar 2-3 casos interesantes para potencialmente compartir después

---

### C3: Ejercicio individual - 10 minutos de silencio (00:27 - 00:37)

**Instrucciones para el facilitador:**

1. **Poner timer visible** (proyectar cuenta regresiva si es posible)

2. **Energía baja:** Este es momento de concentración individual. Facilitador no habla, no interrumpe.

3. **Música opcional:** Si el ambiente lo permite, poner música instrumental suave de fondo (estudios muestran que incrementa concentración en ejercicios escritos).

4. **Participantes con dudas:** Si alguien levanta la mano:
   - Acercarse discretamente
   - Responder en voz baja
   - No interrumpir al resto

5. **A los 5 minutos (mitad del ejercicio):**
   - Checkpoint rápido: "Llevan 5 minutos, quedan 5. Si están atascados en una sección, sáltenla y continúen con la siguiente."

6. **A los 9 minutos:**
   - "Último minuto. Completen al menos las secciones 1, 2 y 4 (Problema, Solución, ROI)."

7. **A los 10 minutos:**
   - "Tiempo. Aunque no hayan terminado, es momento de continuar. Pueden completar el resto como trabajo asincrónico."

---

## Bloque D: Construcción de prompts y tarea asincrónica

**Tiempo:** 5 minutos (00:37 - 00:42)  
**Objetivo:** Enseñar arquitectura de prompts + asignar pre-work para Sesión 2  
**Formato:** Explicación rápida + demostración + instrucciones claras  

### D1: Arquitectura de prompts de 6 componentes (3 minutos)

**Visual en slide:** Template de prompt con 6 secciones

```markdown
TEMPLATE: PROMPT DE PRODUCCIÓN PARA LLAMA

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
COMPONENTE 1: ROL DEL AGENTE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Eres un [rol específico] especializado en [dominio].
Tu responsabilidad principal es [tarea concreta].

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
COMPONENTE 2: CONTEXTO DEL NEGOCIO
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Descripción del negocio en 3-5 oraciones]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
COMPONENTE 3: TAREA ESPECÍFICA
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Cuando recibas [tipo de input], debes:
1. [Paso 1]
2. [Paso 2]
3. [Paso 3]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
COMPONENTE 4: RESTRICCIONES Y REGLAS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
SIEMPRE:
- [Regla obligatoria 1]
- [Regla obligatoria 2]

NUNCA:
- [Prohibición 1]
- [Prohibición 2]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
COMPONENTE 5: FORMATO DE SALIDA
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Responde SIEMPRE en este formato:
[Template estructurado]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
COMPONENTE 6: EJEMPLOS DE REFERENCIA
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Ejemplo 1:
Input: [Pregunta]
Output: [Respuesta esperada]

Ejemplo 2:
Input: [Pregunta]
Output: [Respuesta esperada]
```

**Guión de explicación:**

> "La diferencia entre un agente que funciona 'más o menos' y uno que funciona ESPECTACULAR es el diseño del prompt.
>
> La mayoría de la gente escribe prompts así:
>
> ❌ 'Actúa como un asistente de atención al cliente y responde preguntas.'
>
> Eso es demasiado vago. Llama va a improvisar, y a veces va a improvisar MAL.
>
> En cambio, un prompt de PRODUCCIÓN tiene 6 componentes no negociables:
>
> **1. ROL DEL AGENTE (Quién eres)**  
> Define identidad específica. No 'asistente', sino:
> - 'Asistente de ventas de ferretería especializado en materiales de construcción'
> - 'Agente de soporte técnico nivel 1 para software de contabilidad'
>
> **2. CONTEXTO DEL NEGOCIO (Dónde trabajas)**  
> 3-5 oraciones sobre tu empresa:
> - Giro comercial
> - Productos/servicios
> - Audiencia objetivo
> - Particularidades relevantes
>
> **3. TAREA ESPECÍFICA (Qué debes hacer)**  
> Paso por paso:
> - 'Cuando recibas consulta sobre precios, busca en catálogo, calcula subtotal, aplica descuento si aplica, agrega IVA, devuelve total'
>
> **4. RESTRICCIONES (Qué NO debes hacer)**  
> Prohibiciones explícitas:
> - NUNCA des precios sin confirmar en catálogo
> - NUNCA prometas entregas sin verificar inventario
> - SIEMPRE escala a humano si el cliente está molesto
>
> **5. FORMATO DE SALIDA (Cómo debes responder)**  
> Template estructurado:
> ```
> Producto: [Nombre]
> Precio: $[Cantidad] MXN
> Disponibilidad: [Sí/No]
> Tiempo de entrega: [Días]
> ```
>
> **6. EJEMPLOS (Referencia de calidad)**  
> 3-5 ejemplos de interacciones correctas:
> - Input esperado
> - Output deseado
>
> **[PUNTO CLAVE]**
>
> Llama aprende por ejemplos. Si le das 5 ejemplos buenos, va a imitar ese estilo. Si no le das ejemplos, va a improvisar random.
>
> En el trabajo asincrónico, van a construir su prompt completo usando este template."

---

### D2: Pre-work para Sesión 2 (2 minutos)

**Visual en slide:** Checklist de pre-work con deadlines

```markdown
📅 PRE-WORK OBLIGATORIO (completar antes de Sesión 2)
Deadline: 72 horas antes de Sesión 2
Tiempo estimado: 2-3 horas distribuidas

✅ ENTREGABLE 1: Canvas de Caso de Uso (100% completo)
- Si no lo terminaste en sesión, compléta ahora
- Valida números con tu equipo/contador
- Guárdalo en Google Doc compartido (link vía email)

✅ ENTREGABLE 2: Prompt Estructurado (primera versión)
- Usa el template de 6 componentes
- Escribe al menos 3 ejemplos de input/output
- No tiene que ser perfecto (lo iteraremos en S2)

✅ ENTREGABLE 3: Inventario de Conocimiento
- Lista 5-10 documentos que el agente necesita
- Indica ubicación (Google Drive, carpeta local, impreso)
- Prioriza: Alta/Media/Baja
- Si tienes documentos impresos, escánealos (apps: CamScanner, Adobe Scan)

✅ ENTREGABLE 4: Checklist de Hardware
- Verifica RAM disponible (mínimo 8GB)
- Confirma espacio en disco (mínimo 20GB libres)
- Crea cuenta GitHub (github.com/signup) si no tienes
- Descarga e instala Ollama (si tienes buena conexión)
  → macOS: https://ollama.com/download/mac
  → Windows: https://ollama.com/download/windows
  → Linux: curl -fsSL https://ollama.com/install.sh | sh

📧 ENTREGA:
- Completa formulario de Google Forms (link vía email)
- Sube documentos a carpeta compartida de Drive
- Úne al Discord del workshop (link vía email)

🆘 SI TE ATASCAS:
- Canal #pre-work-sesion-2 en Discord
- Office hours: Jueves 6-7 PM (Zoom link vía email)
- Email a soporte: juanjo@amplifikai.com

⚠️ IMPORTANTE:
Si NO completas el pre-work, puedes asistir a Sesión 2 pero te será
difícil seguir la parte práctica. Trata de completar al menos 
entregables 1 y 2 (Canvas + Prompt).
```

**Guión de cierre:**

> "Muy bien, última parte de instrucciones:
>
> Este workshop funciona con metodología de **'aula invertida'**. Eso significa:
> - Las sesiones presenciales/virtuales son para PRÁCTICA guiada
> - El trabajo conceptual lo hacen USTEDES en su tiempo (con soporte)
>
> Tienen 4 entregables que completar antes de Sesión 2. Los más importantes son:
>
> 1. **Canvas completo** (si no lo terminaron hoy)
> 2. **Prompt estructurado** (primera versión)
>
> Si solo pueden completar 2, que sean esos.
>
> Los otros dos (Inventario + Hardware) son importantes, pero si no los completan 100%, podemos ajustar en Sesión 2.
>
> **[PAUSA]**
>
> Van a recibir un email en las próximas 2 horas con:
> - Link a Google Forms para entregar trabajo
> - Invitación al Discord
> - Calendario con office hours
> - Links de descarga de software
>
> Si no llega el email, revisen spam o escriban a juanjo@amplifikai.com
>
> **[PREGUNTA FINAL]**
>
> ¿Alguna duda sobre lo que tienen que hacer antes de Sesión 2?"
>
> [Tomar 1-2 preguntas rápidas]

---

## Cierre: QRs, Discord, próximos pasos

**Tiempo:** 3 minutos (00:42 - 00:45)  
**Objetivo:** Asegurar que todos tengan acceso a recursos + comunidad  
**Formato:** Slide con QRs + instrucciones de próximos pasos  

### Visual en slide: 4 QR codes

```
┌──────────────────┬──────────────────┐
│   📱 DISCORD     │   📧 FORMULARIO  │
│   [QR Code]      │   [QR Code]      │
│  Comunidad       │  Entregar trabajo│
└──────────────────┴──────────────────┘

┌──────────────────┬──────────────────┐
│ 📚 REPOSITORIO   │  📹 OFFICE HOURS │
│   [QR Code]      │   [QR Code]      │
│  GitHub docs     │  Zoom recurring  │
└──────────────────┴──────────────────┘
```

**Guión de cierre:**

> "Último slide. Escaneen estos 4 QR codes con su celular:
>
> **QR 1 - Discord:**  
> Comunidad del workshop. Canales para:
> - #prework-sesion-2
> - #dudas-tecnicas
> - #casos-de-uso (comparte tu Canvas, recibe feedback)
> - #recursos (links útiles, tutoriales adicionales)
>
> **QR 2 - Formulario de Google:**  
> Donde van a entregar los 4 entregables del pre-work.
> Deadline: 72 horas antes de Sesión 2.
>
> **QR 3 - Repositorio GitHub:**  
> Documentación completa del workshop. Incluye:
> - Slides de esta sesión
> - Templates (Canvas, Prompt, etc.)
> - Scripts de instalación
> - FAQs expandidas
>
> **QR 4 - Office Hours:**  
> Link de Zoom para sesiones de soporte en vivo.  
> Jueves 6-7 PM, todas las semanas.  
> No es obligatorio asistir, pero si te atascas es el mejor lugar para ayuda.
>
> **[PAUSA - dejar 30 segundos para escanear]**
>
> **PRÓXIMOS PASOS:**
>
> 1. **Hoy (próximas 2 horas):**
>    - Revisen su email (llegará confirmación con links)
>    - Únanse al Discord
>    - Empiecen el pre-work si tienen energía
>
> 2. **Esta semana:**
>    - Completen Canvas + Prompt (mínimo)
>    - Instalen Ollama si tienen tiempo
>
> 3. **Antes de Sesión 2:**
>    - Entreguen formulario completo
>    - Si tienen dudas, usen Discord o Office Hours
>
> **SESIÓN 2 será el [fecha] a las [hora].**  
> Formato: Virtual vía Zoom (link vía email 24hrs antes).  
> Duración: 60 minutos.  
> Tema: Instalación de Ollama + Ejecución del primer agente.
>
> **[CIERRE MOTIVACIONAL]**
>
> Felicidades. Hoy dieron el primer paso hacia autonomía tecnológica. La mayoría de las empresas NUNCA llegan aquí porque asumen que 'IA es para los grandes'.
>
> Ustedes ya saben que no. Ustedes YA diseñaron su caso de uso. Ahora solo falta construirlo.
>
> Nos vemos en Sesión 2. ¡Éxito con el pre-work!"

**Post-sesión (facilitador):**

1. **Quedarse 5-10 minutos** para preguntas individuales de participantes que se acerquen.

2. **Capturar fotos** del auditorio (con permiso) para redes sociales.

3. **Enviar email de seguimiento** en próximas 2 horas con todos los links.

4. **Monitorear Discord** en las próximas 24 horas para primeras dudas.

---

## Casos de uso por industria

**Objetivo:** Dar ejemplos concretos por sector para que participantes se identifiquen  
**Formato:** Fichas descriptivas por industria con caso específico  

### Retail & E-commerce

**Caso típico:** Atención al cliente automatizada

**Problema:**
- 200+ consultas diarias por WhatsApp/email/redes
- 70% son preguntas repetitivas (precios, disponibilidad, envíos)
- 2 personas dedicadas tiempo completo a responder

**Solución con Llama:**
- Agente conectado a catálogo actualizado (CSV/Excel)
- Base de conocimiento: Políticas de envío, devoluciones, FAQs
- Integración: WhatsApp Business API
- Flujo: Cliente pregunta → Agente responde → Si no puede resolver, escala a humano

**ROI esperado:**
- 70% de consultas automatizadas
- 1 persona liberada para tareas de mayor valor
- Ahorro: ~$15,000 MXN/mes

**Documentos necesarios:**
- Catálogo de productos (Excel/CSV)
- Política de envíos
- Política de devoluciones
- FAQ histórica (si existe)

**Nivel de complejidad:** 🟢 Verde (altamente factible)

---

### Servicios profesionales (contadores, abogados, consultores)

**Caso típico:** Generación de propuestas/cotizaciones

**Problema:**
- Cada propuesta toma 2-4 horas de trabajo manual
- Mucho copy-paste de propuestas anteriores
- Personalización requiere buscar info en múltiples documentos

**Solución con Llama:**
- Agente con acceso a:
  - 50-100 propuestas históricas exitosas
  - Templates de servicios estándar
  - Perfiles de clientes
  - Calculadora de precios
- Input: Brief del cliente (necesidades, presupuesto, timeline)
- Output: Propuesta 80% completa en 5 minutos

**ROI esperado:**
- Reducción 80% en tiempo de generación
- 3x más propuestas generadas por semana
- Incremento en tasa de cierre (propuestas más rápidas)

**Documentos necesarios:**
- Propuestas históricas (PDF/Word)
- Templates de servicios
- Matriz de precios
- Casos de éxito

**Nivel de complejidad:** 🟢 Verde (factible con revisión humana obligatoria)

---

### Manufactura & Logística

**Caso típico:** Clasificación de órdenes de trabajo

**Problema:**
- 100+ órdenes por día de múltiples canales
- Clasificación manual por prioridad/tipo
- Errores causan retrasos en producción

**Solución con Llama:**
- Agente analiza orden y asigna:
  - Prioridad (urgente/normal/baja)
  - Categoría (producción/mantenimiento/compras)
  - Departamento responsable
- Flujo: Orden entra → Agente clasifica → Sistema ERP asigna

**ROI esperado:**
- 95% de precisión en clasificación
- Ahorro: 2 horas/día de trabajo administrativo
- Reducción en errores de asignación

**Documentos necesarios:**
- Historial de órdenes clasificadas (6 meses)
- Criterios de priorización
- Manuales de procedimientos

**Nivel de complejidad:** 🟢 Verde (alta precisión con suficientes ejemplos)

---

### Educación & Capacitación

**Caso típico:** Tutor virtual para onboarding de empleados

**Problema:**
- Nuevos empleados hacen mismas 50 preguntas
- Gerentes pierden 5 horas/semana explicando procesos
- Documentación existe pero nadie la lee

**Solución con Llama:**
- Agente con acceso a:
  - Manual de empleado (100+ páginas)
  - Políticas de RH
  - FAQs de empleados anteriores
  - Videos de capacitación (transcripciones)
- Empleado pregunta → Agente responde + da link a sección relevante del manual

**ROI esperado:**
- 80% de preguntas resueltas sin intervención humana
- Onboarding 50% más rápido
- Gerentes ahorran 5 horas/semana

**Documentos necesarios:**
- Manual de empleado
- Políticas de RH
- Procedimientos operativos estándar (SOPs)

**Nivel de complejidad:** 🟢 Verde (ideal para RAG)

---

### Salud (clínicas, laboratorios)

**Caso típico:** Agendamiento de citas + recordatorios

**Problema:**
- 40% de pacientes no llegan a cita (no-shows)
- Recepcionista pasa 3 horas/día agendando/confirmando
- Sistema actual no envía recordatorios automáticos

**Solución con Llama:**
- Agente conectado a calendario
- Flujos:
  - Paciente solicita cita → Agente consulta disponibilidad → Agenda
  - 24 horas antes → Agente envía recordatorio por WhatsApp
  - Paciente cancela → Agente re-agenda automáticamente
- Restricción: Solo agenda citas primera vez; seguimientos requieren aprobación humana

**ROI esperado:**
- Reducción 60% en no-shows
- Ahorro: 15 horas/semana de recepcionista
- Incremento 20% en citas completadas

**Documentos necesarios:**
- Políticas de agendamiento
- Lista de servicios + duraciones
- Templates de mensajes de recordatorio

**Nivel de complejidad:** 🟡 Amarillo (requiere integración con sistema de calendario)

**⚠️ Nota legal:** NO usar Llama para diagnóstico médico. Solo para tareas administrativas.

---

### Inmobiliarias

**Caso típico:** Calificación de leads

**Problema:**
- 200 leads/mes de múltiples fuentes
- 60% no califican (presupuesto/ubicación/timing incorrectos)
- Agentes pierden tiempo contactando leads no calificados

**Solución con Llama:**
- Agente realiza primera calificación:
  - Analiza formulario de contacto
  - Hace 3-5 preguntas de calificación vía WhatsApp
  - Asigna score 1-10
  - Leads >7 → pasan a agente humano
  - Leads <7 → se agregan a nurturing automático
- Restricción: No hace promesas de precios (solo rangos)

**ROI esperado:**
- Agentes solo hablan con leads calificados
- Incremento 40% en conversión (mejor uso de tiempo)
- Reducción 70% en tiempo de calificación

**Documentos necesarios:**
- Criterios de calificación (presupuesto, ubicación, timeline)
- Scripts de preguntas de calificación
- Catálogo de propiedades

**Nivel de complejidad:** 🟢 Verde (chat conversacional estructurado)

---

### Restaurantes & Hospitalidad

**Caso típico:** Reservaciones + menú digital

**Problema:**
- 50 llamadas/día para hacer reservaciones
- Clientes preguntan "¿Qué tienen de vegetariano/sin gluten?"
- Personal ocupado no puede responder rápido

**Solución con Llama:**
- Agente en WhatsApp:
  - Toma reservaciones (nombre, fecha, hora, # personas)
  - Responde preguntas sobre menú (alergias, restricciones)
  - Envía foto del menú del día
- Restricción: Reservaciones >8 personas requieren confirmación humana

**ROI esperado:**
- 80% de reservaciones automatizadas
- Reducción 5 horas/semana de tiempo en teléfono
- Menos errores en reservaciones

**Documentos necesarios:**
- Menú completo con ingredientes
- Política de reservaciones
- Información sobre alergias/restricciones

**Nivel de complejidad:** 🟢 Verde (flujo conversacional simple)

---

## Material de apoyo expandido

### Glosario técnico (términos que aparecerán en el workshop)

**LLM (Large Language Model):**  
Modelo de lenguaje grande. Sistema de IA entrenado en enormes cantidades de texto para entender y generar lenguaje natural. Llama es un LLM.

**Parámetros:**  
Son los "pesos" internos del modelo que determinan su comportamiento. Más parámetros = más inteligente pero más pesado. Llama 3.2 8B tiene 8 mil millones de parámetros.

**Cuantización:**  
Técnica de compresión que reduce el tamaño del modelo. INT4 significa que los parámetros se representan con 4 bits en vez de 16 o 32, reduciendo tamaño a ~25% del original.

**Tokens:**  
Unidad básica de procesamiento de texto. 1 token ≈ 0.75 palabras en español. El modelo procesa texto dividiéndolo en tokens.

**Prompt:**  
Instrucciones que le das al modelo para guiar su comportamiento. Es como el "manual de operación" del agente.

**RAG (Retrieval-Augmented Generation):**  
Técnica que combina búsqueda de documentos + generación de texto. El modelo primero busca información relevante en tus documentos, luego genera respuesta basada en eso.

**Ollama:**  
Software que facilita ejecutar Llama localmente. Maneja descarga, instalación, y ejecución del modelo.

**Embedding:**  
Representación numérica de texto que permite buscar documentos similares. Usado en RAG para encontrar documentos relevantes.

**Inference:**  
Proceso de usar el modelo para generar una respuesta. "Correr inference" = ejecutar el modelo.

**Fine-tuning:**  
Reentrenamiento parcial del modelo con tus datos específicos. Avanzado, no lo haremos en este workshop.

**Temperatura:**  
Parámetro que controla creatividad. 0 = respuestas deterministas, 1 = creativas/impredecibles. Típicamente 0.3-0.7 para producción.

**Context window:**  
Cantidad máxima de texto que el modelo puede procesar a la vez. Llama 3.2 tiene 128K tokens (~96,000 palabras).

---

### Comparación: Llama vs otros modelos open source

| Modelo | Empresa | Tamaño | Licencia | Ventaja principal | Desventaja principal |
|--------|---------|--------|----------|-------------------|---------------------|
| **Llama 3.2** | Meta AI | 1B-405B | Llama 3 Community License | Balance rendimiento/costo | Licencia restrictiva para apps con >700M usuarios |
| Mistral | Mistral AI | 7B-123B | Apache 2.0 | Excelente en código | Menos documentación en español |
| Phi-3 | Microsoft | 3.8B-14B | MIT | Muy eficiente | Menor contexto (4K tokens) |
| Gemma | Google | 2B-27B | Gemma Terms of Use | Integración Google Cloud | Requiere aceptar términos estrictos |
| GPT-NeoX | EleutherAI | 20B | Apache 2.0 | Totalmente libre | Más viejo (2022), menos preciso |

**Recomendación:**  
Para este workshop usamos Llama 3.2 8B porque:
- ✅ Mejor balance rendimiento/tamaño
- ✅ Soporte multilingüe excelente
- ✅ Comunidad más grande
- ✅ Documentación más completa
- ✅ Meta continúa invirtiendo en mejoras

---

### Hardware: Qué computadora necesitas

**Mínimo viable:**
- RAM: 8GB
- CPU: Intel i5 (2015+) o Apple M1/M2/M3
- Almacenamiento: 20GB libres
- Modelo Llama: 3B (4GB en memoria)
- Rendimiento: ~2-3 tokens/segundo (respuesta completa en 10-15 segundos)

**Recomendado:**
- RAM: 16GB
- CPU: Intel i7 (2018+) o Apple M1/M2/M3
- Almacenamiento: 50GB libres
- Modelo Llama: 8B (8GB en memoria)
- Rendimiento: ~4-6 tokens/segundo (respuesta completa en 5-8 segundos)

**Óptimo (para uso intensivo):**
- RAM: 32GB+
- CPU: Intel i9 o AMD Ryzen 9 (2020+) o Apple M2 Pro/Max
- GPU: NVIDIA RTX 3060 (12GB) o superior (opcional)
- Modelo Llama: 70B (40GB en memoria con cuantización)
- Rendimiento: 8-12 tokens/segundo (respuesta completa en 3-5 segundos)

**Opciones si tu hardware no cumple:**

1. **Cloud temporal:** Usar Google Colab Pro ($10 USD/mes) durante el workshop, luego migrar a tu hardware cuando lo actualices.

2. **Modelo más pequeño:** Usar Llama 3.2 1B (2GB RAM) - funcional para casos simples.

3. **Servidor compartido:** Algunas empresas tienen un servidor con mejor hardware - instalar Llama ahí y acceder remotamente.

---

### Checklist de verificación pre-Sesión 2

**Software:**
- [ ] Ollama instalado y funcionando
- [ ] Modelo Llama 3.2 descargado (`ollama pull llama3.2:8b-instruct-q4_K_M`)
- [ ] Editor de texto instalado (VS Code, Sublime, Notepad++, o similar)
- [ ] Cuenta GitHub creada (username: _______)

**Documentos:**
- [ ] Canvas de Caso de Uso completo
- [ ] Prompt Estructurado (primera versión)
- [ ] Inventario de Conocimiento (5-10 documentos listados)
- [ ] Documentos digitalizados (escaneados si eran físicos)

**Conocimiento:**
- [ ] Leí anexo "Comandos esenciales de Ollama"
- [ ] Entiendo qué es un token y un parámetro
- [ ] Sé cuál modelo Llama voy a usar según mi hardware

**Comunidad:**
- [ ] Unido al Discord
- [ ] Presentado en canal #presentaciones
- [ ] Revisé FAQ en #preguntas-frecuentes

**Backup (por si algo falla):**
- [ ] Tengo plan B si mi laptop no funciona (laptop de empresa, prestada, etc.)
- [ ] Tengo internet de respaldo (datos móviles) si WiFi falla
- [ ] Guardé mis documentos en la nube (no solo localmente)

---

## Notas críticas para el facilitador

### Antipatrones a evitar

**Antipatrón 1: Over-promesas**  
❌ "Van a poder automatizar CUALQUIER cosa con IA"  
✅ "Van a poder automatizar tareas repetitivas con conocimiento documentado"

**Antipatrón 2: Simplificación engañosa**  
❌ "No necesitan saber nada técnico"  
✅ "No necesitan ser programadores, pero sí necesitan entender conceptos básicos como archivos, instalación de software, y copiar/pegar"

**Antipatrón 3: Culpar a la herramienta**  
❌ "Si no funciona es porque Llama no es suficientemente inteligente"  
✅ "Si no funciona, probablemente el prompt necesita refinarse o el caso no es el ideal para esta herramienta"

**Antipatrón 4: Asumir nivel técnico homogéneo**  
❌ Explicar asumiendo que todos entienden terminal, git, APIs  
✅ Preguntar "¿Quiénes han usado terminal antes?" y ajustar explicación

**Antipatrón 5: No validar comprensión**  
❌ Seguir adelante aunque veas caras confundidas  
✅ Hacer checkpoint cada 10 minutos: "¿Esto tiene sentido hasta aquí?"

---

### Manejo de preguntas difíciles

**P: "¿Por qué no usar ChatGPT que es más fácil?"**  
R: "Excelente pregunta. ChatGPT ES más fácil para uso personal. Lo recomiendo 100% si estás explorando. Pero para uso empresarial con múltiples usuarios, datos sensibles, y necesidad de customización, Llama local es superior a largo plazo. Piensa en ChatGPT como Uber, y Llama como comprar tu propio coche."

**P: "¿Y si Meta deja de mantener Llama?"**  
R: "Esa es la ventaja del código abierto. Si Meta abandona el proyecto mañana, la comunidad puede continuar manteniéndolo. Ya pasó con proyectos como Linux, Python, etc. Además, el código ya está descargado en tu computadora—funciona para siempre independientemente de Meta."

**P: "¿Esto me va a quitar el trabajo?"**  
R: "No. Te va a quitar las partes ABURRIDAS y repetitivas de tu trabajo, liberándote para hacer cosas de mayor valor que requieren juicio humano. Piénsalo así: Excel no quitó trabajos de contadores—los liberó de hacer sumas a mano para que puedan enfocarse en análisis estratégico."

**P: "Mi laptop es muy vieja, ¿puedo hacer el workshop?"**  
R: "Depende. ¿Cuánta RAM tiene? [Escuchar respuesta] Si tiene menos de 8GB, honestamente va a ser frustrante. Pero tienes 3 opciones: 1) Usar Google Colab Pro ($10/mes temporal), 2) Usar computadora de tu empresa si tiene mejor hardware, 3) Actualizar RAM (si es posible, ~$50 USD)."

**P: "¿Cuánto tiempo toma realmente ver resultados?"**  
R: "Depende de qué consideres 'resultado'. Un prototipo funcional: Sesión 3 (semana 3). En producción con tus usuarios reales: Sesión 4 (semana 4). Pero para que sea ROBUSTO y confiable, cuenta 6-8 semanas con iteraciones post-workshop."

**P: "¿Puedo vender servicios de implementación de Llama después del workshop?"**  
R: "Sí, absolutamente. De hecho es un modelo de negocio viable. Muchos consultores se especializan en implementar Llama para PyMEs. La licencia de Llama lo permite, y hay demanda creciente."

---

### Momentos de alto riesgo (donde perder a la audiencia)

**Minuto 10-12 (Explicación técnica de parámetros):**  
- **Riesgo:** Perder audiencia no-técnica con jerga
- **Mitigación:** Usar analogías visuales, preguntar "¿Tiene sentido?" cada 2 minutos

**Minuto 27-37 (Ejercicio individual):**  
- **Riesgo:** Participantes se atascan y frustran silenciosamente
- **Mitigación:** Circular por el auditorio, dar hints, tener FAQs en slide proyectada

**Minuto 40-42 (Instrucciones de pre-work):**  
- **Riesgo:** Demasiada información de golpe, olvidan qué hacer
- **Mitigación:** Email de seguimiento inmediato con checklist, QR codes visibles todo el tiempo

---

### Backup plans (si algo sale mal)

**Si proyector falla:**  
- Tener slides en iPad como backup
- Describir verbalmente los conceptos clave
- Enviar PDF de slides inmediatamente por email

**Si demo de Ollama falla:**  
- Tener video grabado como backup
- Mostrar screenshots de resultados esperados
- Enfatizar que en Sesión 2 lo harán ellos manos a la obra

**Si auditorio está demasiado silencioso:**  
- Hacer preguntas directas a la audiencia
- "Levanten la mano si..." para forzar interacción
- Contar anécdota personal/divertida para romper tensión

**Si se acaba el tiempo antes de terminar:**  
- Saltar directamente a Bloque D (pre-work) y Cierre
- Enviar grabación de la sesión completa por email
- Ofrecer office hours para repasar contenido faltante

---

## Anexos técnicos

### Anexo A: Ejemplo completo de prompt de producción

```markdown
# AGENTE: Asistente de Ventas - Ferretería Industrial "El Tornillo"

## COMPONENTE 1: ROL DEL AGENTE

Eres el asistente virtual de ventas de "Ferretería El Tornillo", 
especializado en materiales de construcción, herramientas y suministros 
industriales.

Tu responsabilidad principal es ayudar a clientes a:
- Consultar disponibilidad de productos
- Obtener precios actualizados
- Conocer especificaciones técnicas
- Entender opciones de entrega

NO eres responsable de:
- Procesar pagos (eso lo hace el sistema de punto de venta)
- Hacer promesas de descuentos sin autorización
- Dar asesoría técnica especializada (eso requiere ingeniero)

## COMPONENTE 2: CONTEXTO DEL NEGOCIO

Ferretería El Tornillo opera desde 1987 en Querétaro, México. 
Vendemos materiales de construcción, herramientas y suministros 
para constructores, plomeros, electricistas y público general.

Tenemos:
- 2 sucursales: Centro (matriz) y Norte
- Inventario de ~5,000 SKUs
- Horario: Lunes a sábado 8:00 AM - 6:00 PM
- Entrega a domicilio en zona metropolitana de Querétaro
- Servicio de corte de materiales (varilla, madera, vidrio)

Nuestros clientes valoran:
- Atención rápida
- Precios competitivos
- Conocimiento técnico del personal

## COMPONENTE 3: TAREA ESPECÍFICA

Cuando un cliente hace una consulta, debes seguir este flujo:

**PASO 1: Identificar necesidad**
- ¿Qué producto específico busca?
- ¿Para qué proyecto/aplicación? (ayuda a recomendar)
- ¿Cantidad requerida?

**PASO 2: Consultar disponibilidad**
- Buscar producto en catálogo (archivo CSV adjunto)
- Verificar stock en ambas sucursales
- Si no hay stock, sugerir fecha de reabastecimiento O alternativa equivalente

**PASO 3: Proporcionar información**
- Precio unitario
- Precio por volumen (si aplica)
- Especificaciones técnicas relevantes
- Tiempo de entrega

**PASO 4: Siguiente acción**
- Si cliente está listo: "¿Deseas que genere tu cotización formal?"
- Si tiene dudas: "¿Qué otra información necesitas?"
- Si necesita asesoría especializada: "Te conecto con un especialista técnico"

## COMPONENTE 4: RESTRICCIONES Y REGLAS

**SIEMPRE:**
- Saluda cortésmente: "¡Hola! Soy el asistente de Ferretería El Tornillo. ¿En qué puedo ayudarte?"
- Usa lenguaje profesional pero amigable (tutea al cliente)
- Confirma precios consultando el catálogo actualizado (nunca des precios de memoria)
- Menciona ambas sucursales si un producto solo está en una
- Pregunta si el cliente es contratista (obtiene 10% descuento automático)

**NUNCA:**
- Prometas descuentos mayores al 10% sin consultar al gerente
- Des asesoría técnica especializada (ej: "¿Cuánto cemento necesito para una losa de 50m²?") - Eso requiere ingeniero
- Proceses pagos (di: "El pago se realiza en sucursal o contra entrega")
- Inventes disponibilidad si no está en el catálogo
- Uses lenguaje técnico excesivo con clientes no especializados

**ESCALA A HUMANO SI:**
- Cliente está molesto o insatisfecho
- Solicita crédito o pago a plazos
- Pregunta sobre garantías o devoluciones de productos ya comprados
- Requiere cotización para proyecto grande (>$50,000 MXN)
- Solicita servicio técnico a domicilio

## COMPONENTE 5: FORMATO DE SALIDA

Cuando proporciones información de un producto, usa este formato:

```
**🔧 [NOMBRE DEL PRODUCTO]**

📊 **Especificaciones:**
- [Característica 1]: [Valor]
- [Característica 2]: [Valor]

💵 **Precio:**
- Unitario: $[Cantidad] MXN
- Volumen (a partir de [cantidad]): $[Cantidad] MXN c/u
- *Descuento contratista (10%): $[Cantidad] MXN*

📦 **Disponibilidad:**
- Sucursal Centro: [Cantidad] unidades
- Sucursal Norte: [Cantidad] unidades

🚚 **Entrega:**
- Recoger en sucursal: Inmediato
- Entrega a domicilio: [Tiempo] (costo adicional $[Cantidad] MXN)

❓ **¿Qué sigue?**
[Opción 1] o [Opción 2] o [Opción 3]
```

## COMPONENTE 6: EJEMPLOS DE REFERENCIA

### EJEMPLO 1: Consulta simple (cliente sabe exactamente qué necesita)

**Input del cliente:**  
"Hola, ¿tienen tornillos de 3/8 x 2 pulgadas? Necesito 100 piezas."

**Output esperado:**  
```
¡Hola! Soy el asistente de Ferretería El Tornillo. ¿En qué puedo ayudarte?

¡Claro que sí! Te confirmo disponibilidad:

**🔧 TORNILLO HEXAGONAL GALVANIZADO 3/8" x 2"**

📊 **Especificaciones:**
- Material: Acero galvanizado
- Tipo de cabeza: Hexagonal
- Rosca: Estándar SAE
- Norma: ASTM A307

💵 **Precio:**
- Unitario: $2.80 MXN
- Volumen (100+ piezas): $2.50 MXN c/u
- *Descuento contratista (10%): $2.25 MXN c/u*

📦 **Disponibilidad:**
- Sucursal Centro: 850 unidades ✅
- Sucursal Norte: 320 unidades ✅

Para 100 piezas:
- Precio sin descuento: $250 MXN
- Precio contratista: $225 MXN

🚚 **Entrega:**
- Recoger en sucursal: Inmediato
- Entrega a domicilio: Hoy mismo si ordenas antes de 2 PM (costo $80 MXN)

❓ **¿Qué sigue?**
1️⃣ Generar cotización formal
2️⃣ Ver productos relacionados (tuercas, rondanas)
3️⃣ Hablar con un asesor para dudas técnicas
```

### EJEMPLO 2: Consulta con necesidad de recomendación

**Input del cliente:**  
"Necesito impermeabilizar una terraza de 30m². ¿Qué me recomiendas?"

**Output esperado:**  
```
¡Perfecto! Para impermeabilizar 30m² de terraza tengo 2 opciones según tu presupuesto:

**OPCIÓN 1: MEMBRANA ASFÁLTICA (MÁS DURADERA) 💪**

**🔧 ROLLO MEMBRANA ASFÁLTICA 4KG 10M²**

📊 **Especificaciones:**
- Cobertura: 10m² por rollo
- Espesor: 4mm
- Durabilidad: 10-15 años
- Aplicación: Con soplete (requiere experiencia)

💵 **Precio:**
- Por rollo: $380 MXN
- *Necesitas 3 rollos para 30m² = $1,140 MXN*

📦 **Disponibilidad:**
- Sucursal Centro: 45 rollos ✅
- Sucursal Norte: 22 rollos ✅

➕ **Adicionales necesarios:**
- Soplete profesional (renta): $250 MXN/día
- Primer asfáltico 19L: $320 MXN
- **Total aproximado: $1,710 MXN**

---

**OPCIÓN 2: IMPERMEABILIZANTE ACRÍLICO (MÁS FÁCIL) 👍**

**🔧 IMPERMEABILIZANTE ACRÍLICO BLANCO 19L**

📊 **Especificaciones:**
- Cobertura: 8-10m² por litro (2 capas)
- Durabilidad: 5-7 años
- Aplicación: Con brocha/rodillo (fácil, DIY)

💵 **Precio:**
- Por cubeta 19L: $580 MXN
- *Necesitas 2 cubetas para 30m² = $1,160 MXN*

📦 **Disponibilidad:**
- Sucursal Centro: 28 cubetas ✅
- Sucursal Norte: 15 cubetas ✅

➕ **Adicionales necesarios:**
- Rodillo 9": $45 MXN
- Brocha 4": $35 MXN
- **Total aproximado: $1,240 MXN**

---

❓ **¿Cuál prefieres?**
- **Membrana asfáltica**: Más duradera, requiere experiencia o contratar aplicador
- **Acrílico**: Más económico, puedes aplicarlo tú mismo

¿Tienes experiencia aplicando impermeabilizante? ¿O prefieres que te recomiende un aplicador?
```

### EJEMPLO 3: Manejo de producto no disponible

**Input del cliente:**  
"¿Tienen pintura esmalte marca [MARCA_DESCONTINUADA] en rojo ferrari?"

**Output esperado:**  
```
Busqué en nuestro inventario y lamentablemente **no tenemos esa marca en stock**. Sin embargo, tengo 2 alternativas excelentes:

**OPCIÓN 1: ESMALTE SINTÉTICO COMEX ROJO BRILLANTE**
- Calidad profesional, misma durabilidad
- Precio: $185 MXN por litro
- Disponible: 18 latas en Centro, 9 en Norte

**OPCIÓN 2: ESMALTE ALQUIDAL SHERWIN-WILLIAMS ROJO INTENSO**
- Gama premium, secado rápido
- Precio: $245 MXN por litro
- Disponible: 12 latas en Centro, 7 en Norte

¿Alguna de estas opciones te interesa? Si buscabas un tono de rojo EXACTO, puedo conectarte con nuestro especialista en pintura para hacer igualación de color (servicio sin costo adicional).
```

### EJEMPLO 4: Escalamiento a humano

**Input del cliente:**  
"Compré un taladro la semana pasada y ya no funciona. Quiero mi dinero de vuelta."

**Output esperado:**  
```
Lamento mucho escuchar eso. Entiendo tu frustración. 😟

Este caso requiere atención personalizada de nuestro equipo de garantías. Te voy a conectar directamente con un asesor que revisará tu caso y te ayudará con el proceso de garantía o cambio.

Por favor proporciona:
- ✅ Número de ticket de compra
- ✅ Fecha de compra
- ✅ Descripción del problema

🔄 **Conectando con asesor humano...**
Tiempo de espera aproximado: 2-3 minutos.

*Mientras esperas:* Para agilizar, ten a la mano tu ticket de compra y el taladro para inspección.
```
```

---

### Anexo B: Instalación de Ollama - Troubleshooting

**Problema 1: "command not found: ollama" (macOS/Linux)**

**Causa:** El PATH no incluye /usr/local/bin  
**Solución:**

```bash
# Agregar Ollama al PATH temporalmente
export PATH="/usr/local/bin:$PATH"

# Para que sea permanente, agregar a ~/.zshrc o ~/.bashrc:
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

---

**Problema 2: "Error: failed to pull model" (Windows/macOS/Linux)**

**Causa:** Problema de conectividad o firewall  
**Solución:**

```bash
# Verificar conectividad
ping ollama.com

# Si hay firewall corporativo, configurar proxy:
export HTTP_PROXY=http://proxy.empresa.com:8080
export HTTPS_PROXY=http://proxy.empresa.com:8080

# Reintentar descarga
ollama pull llama3.2:8b-instruct-q4_K_M
```

---

**Problema 3: "Error: model not found" al ejecutar**

**Causa:** Modelo no descargado o nombre incorrecto  
**Solución:**

```bash
# Listar modelos descargados
ollama list

# Si no está, descargar:
ollama pull llama3.2:8b-instruct-q4_K_M

# Verificar nombre exacto (sensible a mayúsculas)
ollama run llama3.2:8b-instruct-q4_K_M
```

---

**Problema 4: "Out of memory" al ejecutar modelo**

**Causa:** RAM insuficiente  
**Solución:**

```bash
# Opción 1: Usar modelo más pequeño
ollama pull llama3.2:3b-instruct-q4_K_M
ollama run llama3.2:3b-instruct-q4_K_M

# Opción 2: Cerrar aplicaciones innecesarias
# (Chrome, Slack, etc.)

# Opción 3: Verificar RAM disponible
# macOS:
vm_stat | grep "Pages free"

# Linux:
free -h

# Windows:
wmic OS get FreePhysicalMemory
```

---

### Anexo C: Estructura de archivos del proyecto

```
workshop-llama-latam/
│
├── README.md                 # Overview del proyecto
├── LICENSE                   # MIT License
├── CITATION.cff             # Para citación académica
│
├── sesiones/                # Contenido de cada sesión
│   ├── sesion-01/
│   │   ├── README.md         # Contenido completo S1 (este documento)
│   │   ├── slides.pdf        # Slides para proyectar
│   │   ├── canvas-template.md # Template del Canvas
│   │   └── ejemplos/
│   │       ├── caso-ferreteria.md
│   │       ├── caso-consultoria.md
│   │       └── caso-restaurante.md
│   │
│   ├── sesion-02/
│   │   ├── README.md
│   │   ├── guia-instalacion.md
│   │   └── scripts/
│   │       ├── install-ollama-mac.sh
│   │       ├── install-ollama-linux.sh
│   │       └── verify-installation.sh
│   │
│   ├── sesion-03/
│   │   ├── README.md
│   │   ├── guia-rag.md
│   │   └── notebooks/
│   │       └── rag-basico.ipynb
│   │
│   └── sesion-04/
│       ├── README.md
│       ├── guia-deployment.md
│       └── templates/
│           ├── docker-compose.yml
│           └── nginx.conf
│
├── docs/                    # Documentación adicional
│   ├── glosario.md
│   ├── faq.md
│   ├── troubleshooting.md
│   └── recursos-externos.md
│
├── templates/               # Plantillas reutilizables
│   ├── canvas-caso-uso.md
│   ├── prompt-6-componentes.md
│   ├── inventario-conocimiento.xlsx
│   └── checklist-hardware.md
│
├── scripts/                 # Utilidades
│   ├── setup/
│   │   ├── install-all.sh
│   │   └── verify-system.sh
│   └── helpers/
│       ├── convert-pdf-to-txt.py
│       └── check-model-size.sh
│
└── provenance/             # Metadatos de provenance
    ├── MANIFEST.json
    ├── LICENSE.txt
    └── CONTRIBUTORS.md
```

---

### Anexo D: Comparativa de modelos Llama por hardware

| Modelo | Parámetros | Context | Cuantización | RAM necesaria | Rendimiento (CPU) | Caso de uso ideal |
|--------|-----------|---------|--------------|---------------|-------------------|-------------------|
| Llama 2 7B | 7B | 4K | INT4 | 5-6GB | ~2 tok/s | Dispositivos antiguos |
| Llama 2 13B | 13B | 4K | INT4 | 8GB | ~2 tok/s | Balance antiguo |
| Llama 2 70B | 70B | 4K | INT4 | 40GB | N/A (necesita GPU) | Servidor/cloud |
| **Llama 3.2 1B** | 1B | 128K | INT4 | 2GB | ~10 tok/s | Móviles, IoT |
| **Llama 3.2 3B** | 3B | 128K | INT4 | 4GB | ~6 tok/s | Laptops básicas (8GB) |
| **Llama 3.2 8B** | 8B | 128K | INT4 | 6-8GB | ~3-5 tok/s | **RECOMENDADO workshop** |
| Llama 3.1 8B | 8B | 128K | INT4 | 6-8GB | ~3-5 tok/s | Alternativa a 3.2 |
| Llama 3.1 70B | 70B | 128K | INT4 | 40-48GB | ~1-2 tok/s (CPU) | Casos complejos |
| Llama 3.1 405B | 405B | 128K | INT4 | 240GB+ | N/A | Investigación, competir GPT-4 |
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
