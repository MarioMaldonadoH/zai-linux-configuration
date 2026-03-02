---
name: z.ai linux configuration
description: Configura y lanza Claude Code en entornos Linux/WSL utilizando los modelos de Z.ai (GLM-5, GLM-4.7) mediante alias y variables de entorno.
---

# Z.ai Linux Configuration Skill

Esta skill automatiza la configuración de la herramienta oficial `claude-code` de Anthropic en entornos Linux (incluyendo WSL) para que utilice los modelos de Z.ai.

## Requisitos Previos

- **Node.js**: Versión 18 o superior instalado en el entorno Linux.
- **npm/npx**: Disponibles en el PATH.
- **Claude Code**: Acceso a internet para ejecutarlo vía `npx`.

## Configuración de Modelos

Esta configuración mapea los roles de Claude a los siguientes modelos de Z.ai:

| Rol de Claude | Modelo Z.ai | Propósito |
| :--- | :--- | :--- |
| **Opus** (Reasoning) | `glm-5` | Razonamiento complejo. |
| **Sonnet** (Coding) | `glm-4.7` | Programación y edición. |
| **Haiku** (Fast) | `glm-4.7-flash` | Tareas rápidas. |

## Instrucciones de Uso

La skill incluye un script de automatización en `resources/setup_zai_linux.sh`.

### Pasos para Configurar:

1.  Copia el script a tu entorno Linux.
2.  Ejecuta el script para añadir el alias `glm` a tu `~/.bashrc`.
3.  Reinicia tu terminal o ejecuta `source ~/.bashrc`.

### Uso del Comando:

Una vez configurado, simplemente escribe:
```bash
glm
```

## Detalles del Alias

El comando configura las siguientes variables de entorno críticas:
- `ANTHROPIC_BASE_URL`: `https://api.z.ai/api/anthropic`
- `ANTHROPIC_AUTH_TOKEN`: Tu API Key de Z.ai.
- `API_TIMEOUT_MS`: `3000000` (para evitar desconexiones en modelos pesados).
- Modelos por defecto mapeados a la familia GLM.

> [!IMPORTANT]
> Asegúrate de que tu entorno Linux tenga acceso a los servidores de Z.ai y que tu API Key sea válida.
