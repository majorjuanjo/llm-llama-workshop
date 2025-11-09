# 🚀 DEPLOYMENT EN 5 MINUTOS

## LO QUE TIENES QUE HACER AHORA

### Opción A: Deployment Automatizado (RECOMENDADO)

**Paso 1: Descomprimir el archivo**
```bash
# Descarga gitbook_llama_workshop_v1.tar.gz de outputs
cd ~/Downloads  # o donde lo descargaste
tar -xzf gitbook_llama_workshop_v1.tar.gz
cd gitbook_llama_workshop
```

**Paso 2: Crear repositorio en GitHub**
1. Ve a https://github.com/new
2. Repository name: `workshop-llama-latam`
3. Description: `Hub oficial en español para construir tu propia infraestructura de IA con Llama de Meta AI`
4. Public ✅
5. NO inicialices con README
6. Clic "Create repository"

**Paso 3: Ejecutar script de deployment**
```bash
bash deploy_to_github.sh
```

El script te guiará paso a paso. Solo sigue las instrucciones en pantalla.

**Paso 4: Conectar GitBook**
1. Ve a https://app.gitbook.com/
2. "New Space" → "Import" → "GitHub"
3. Selecciona `AK7-AI/workshop-llama-latam`
4. Clic "Import"
5. Espera 2-3 minutos

**¡LISTO!** Tu GitBook estará online.

---

### Opción B: Deployment Manual (Si prefieres control total)

**Paso 1: Crear repositorio GitHub**
```bash
cd ~/Downloads/gitbook_llama_workshop
git init
git add .
git commit -m "feat: Initial GitBook structure"
git remote add origin https://github.com/AK7-AI/workshop-llama-latam.git
git branch -M main
git push -u origin main
```

**Paso 2: Importar a GitBook**
(Igual que Opción A, paso 4)

---

## ⏱️ TIEMPO ESTIMADO

- Descomprimir: 10 segundos
- Crear repo GitHub: 1 minuto  
- Push código: 30 segundos
- Import GitBook: 2-3 minutos

**TOTAL: ~5 minutos**

---

## 🎯 RESULTADO

Una vez completado tendrás:

✅ Repositorio GitHub público: `github.com/AK7-AI/workshop-llama-latam`
✅ GitBook online: `[tu-espacio].gitbook.io/workshop-llama-latam`
✅ URL compartible con Josué HOY MISMO
✅ Auto-sync: cada push a GitHub actualiza GitBook automáticamente

---

## 🔧 CONFIGURACIÓN OPCIONAL (Después)

### Dominio custom
En GitBook:
- Settings → Domain
- Add custom domain: `workshop.amplifik.ai`
- Seguir instrucciones DNS

### Colaboradores
En GitBook:
- Settings → Members
- Invitar a Josué/Paco con rol Editor

### Analytics
En GitBook:
- Integrations → Google Analytics
- Pegar tracking ID

---

## 🆘 SI ALGO FALLA

**Error: "Permission denied (publickey)"**
→ Necesitas configurar SSH keys de GitHub
→ O usa HTTPS en su lugar: cuando hagas `git push`, te pedirá usuario/password

**Error: "Remote already exists"**
→ Está bien, continúa con el siguiente paso

**Error: "Repository not found"**
→ Verifica que creaste el repo con el nombre exacto: `workshop-llama-latam`

**GitBook no detecta estructura**
→ Verifica que `.gitbook.yaml` esté en la raíz del repo
→ Intenta "Sync" manual en GitBook

---

## 📞 SIGUIENTE ACCIÓN

Una vez que el GitBook esté online:

1. **Copia la URL** (ej: `ak7.gitbook.io/workshop-llama-latam`)
2. **Comparte con Josué** vía WhatsApp/Email:
   
   ```
   Josué, aquí está la base del hub que platicamos:
   [URL del GitBook]
   
   Es la estructura completa del workshop con contenido premium
   en la portada. El resto de secciones las voy completando esta
   semana siguiendo este mismo nivel de calidad.
   
   La Sesión 1 (la del 24 oct) la tendré lista para el lunes.
   ¿Te parece que hagamos una revisión rápida el martes?
   ```

3. **Genera Sesión 1** usando el PROMPT 1 de `PROMPTS_PARA_CONTENIDO.md`

---

## 🎉 ¡YA ESTÁ!

No necesitas nada más para tener el GitBook online.

El README.md que generamos ya tiene contenido suficiente para impresionar.

**Ejecuta el deployment AHORA y en 5 minutos tendrás URL compartible.**

---

¿Dudas? Revisa `DEPLOYMENT_GUIDE.md` para detalles técnicos adicionales.
