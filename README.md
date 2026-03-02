<p align="center">
  <img src="repogithub.png" alt="Z.ai Linux Configuration Banner" width="100%">
</p>

# Z.ai Linux Configuration

Configura Claude Code en entornos Linux/WSL para utilizar los modelos de Z.ai (GLM-5, GLM-4.7).

## Modelos Soportados

| Rol de Claude | Modelo Z.ai | Proposito |
| :--- | :--- | :--- |
| **Opus** (Reasoning) | `glm-5` | Razonamiento complejo. |
| **Sonnet** (Coding) | `glm-4.7` | Programacion y edicion. |
| **Haiku** (Fast) | `glm-4.7-flash` | Tareas rapidas. |

## Instalacion

```bash
# 1. Copia el script a tu entorno Linux
cp resources/setup_zai_linux.sh ~/setup_zai.sh

# 2. Edita el archivo y reemplaza {{ZAI_API_KEY}} con tu API Key
nano ~/setup_zai.sh

# 3. Ejecuta el script
chmod +x ~/setup_zai.sh
./~/setup_zai.sh

# 4. Recarga tu terminal
source ~/.bashrc
```

## Uso

```bash
glm
```

## Obtener API Key

1. Ve a https://open.bigmodel.cn/
2. Crea una cuenta
3. Genera tu API Key

## Licencia

MIT License
