#!/bin/bash

# Script de Deployment Automatizado - GitBook Workshop Llama
# Uso: bash deploy_to_github.sh

set -e  # Exit on error

echo "🚀 DEPLOYMENT GITBOOK WORKSHOP LLAMA"
echo "===================================="
echo ""

# Colores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Variables
REPO_NAME="workshop-llama-latam"
GITHUB_USER="AK7-AI"
BRANCH="main"

echo -e "${BLUE}📦 Paso 1: Verificando repositorio local${NC}"
if [ ! -d ".git" ]; then
    echo "❌ Error: No estás en el directorio del repositorio"
    echo "   Ejecuta este script desde: /tmp/gitbook_llama_workshop"
    exit 1
fi
echo -e "${GREEN}✅ Repositorio local OK${NC}"
echo ""

echo -e "${BLUE}📝 Paso 2: Información del repositorio${NC}"
echo "   Nombre: $REPO_NAME"
echo "   Usuario GitHub: $GITHUB_USER"
echo "   Rama: $BRANCH"
echo ""

echo -e "${YELLOW}⚠️  INSTRUCCIONES MANUALES NECESARIAS:${NC}"
echo ""
echo "Antes de continuar, necesitas:"
echo ""
echo "1️⃣  CREAR REPOSITORIO EN GITHUB:"
echo "   - Ve a: https://github.com/new"
echo "   - Repository name: $REPO_NAME"
echo "   - Description: Hub oficial en español para construir tu propia infraestructura de IA con Llama de Meta AI"
echo "   - Public ✅"
echo "   - NO inicialices con README, .gitignore ni license"
echo "   - Clic en 'Create repository'"
echo ""

read -p "¿Ya creaste el repositorio en GitHub? (y/n) " -n 1 -r
echo ""
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Canceling deployment. Crea el repo primero y vuelve a ejecutar este script."
    exit 1
fi

echo ""
echo -e "${BLUE}🔗 Paso 3: Conectando con GitHub${NC}"
git remote add origin "https://github.com/$GITHUB_USER/$REPO_NAME.git" 2>/dev/null || echo "Remote ya existe"
git branch -M $BRANCH
echo -e "${GREEN}✅ Remote configurado${NC}"
echo ""

echo -e "${BLUE}📤 Paso 4: Subiendo a GitHub${NC}"
echo "   Esto puede tomar 10-30 segundos..."
git push -u origin $BRANCH --force

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Código subido exitosamente a GitHub${NC}"
else
    echo -e "${RED}❌ Error al subir. Verifica tus credenciales de GitHub${NC}"
    exit 1
fi
echo ""

echo -e "${BLUE}📚 Paso 5: Configurar GitBook${NC}"
echo ""
echo "Ahora conecta GitBook a tu repositorio:"
echo ""
echo "1. Ve a: https://app.gitbook.com/"
echo "2. Clic en 'New Space'"
echo "3. Selecciona 'Import' → 'GitHub'"
echo "4. Autoriza GitBook a acceder a tu GitHub (si es primera vez)"
echo "5. Selecciona el repositorio: $GITHUB_USER/$REPO_NAME"
echo "6. Clic en 'Import'"
echo "7. GitBook detectará automáticamente la estructura"
echo ""
echo -e "${YELLOW}🔧 OPCIONAL: Configurar dominio custom${NC}"
echo "   - En GitBook: Settings → Domain"
echo "   - Agregar: workshop.amplifik.ai"
echo "   - O: llama.ak7.lat"
echo ""

echo -e "${GREEN}🎉 DEPLOYMENT COMPLETO${NC}"
echo ""
echo "Tu GitBook está en:"
echo "   📦 GitHub: https://github.com/$GITHUB_USER/$REPO_NAME"
echo "   📚 GitBook: (URL se generará después de import)"
echo ""
echo "Próximos pasos:"
echo "   1. Completar import en GitBook (2-3 minutos)"
echo "   2. Configurar dominio custom (opcional)"
echo "   3. Compartir URL con Josué"
echo "   4. Generar contenido de Sesión 1 usando PROMPTS_PARA_CONTENIDO.md"
echo ""
echo -e "${BLUE}🚀 ¡Todo listo para el evento del 24 de octubre!${NC}"
