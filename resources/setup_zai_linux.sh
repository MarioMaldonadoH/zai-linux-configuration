#!/bin/bash
# ================================================================
# Claude Code - Linux/WSL Setup Script (Z.ai Model Mapping)
# ================================================================

# User configuration
API_KEY="{{ZAI_API_KEY}}"

if [ "$API_KEY" == "{{ZAI_API_KEY}}" ]; then
    echo "Error: Debes editar este script y poner tu API Key de Z.ai en la variable API_KEY."
    exit 1
fi

# Remove old alias if exists
sed -i '/alias glm=/d' ~/.bashrc

# Create the new alias
ALIAS_CMD="alias glm='ANTHROPIC_BASE_URL=https://api.z.ai/api/anthropic ANTHROPIC_AUTH_TOKEN=$API_KEY API_TIMEOUT_MS=3000000 ANTHROPIC_DEFAULT_OPUS_MODEL=glm-5 ANTHROPIC_DEFAULT_SONNET_MODEL=glm-4.7 ANTHROPIC_DEFAULT_HAIKU_MODEL=glm-4.7-flash npx @anthropic-ai/claude-code'"

echo "$ALIAS_CMD" >> ~/.bashrc

echo "===================================================="
echo "  Z.ai Linux Configuration Completa"
echo "===================================================="
echo "Se ha añadido el alias 'glm' a tu ~/.bashrc."
echo "Para activarlo ahora mismo, ejecuta: source ~/.bashrc"
echo "Luego podrás usar Claude simplemente escribiendo: glm"
echo "===================================================="
