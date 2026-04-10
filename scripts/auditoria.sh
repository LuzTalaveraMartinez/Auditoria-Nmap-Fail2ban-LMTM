#!/bin/bash
# ============================================================
# MODULO: RECOLECTOR DE DATOS (BASH)
# OBJETIVO: Ejecutar escaneos de red (Nmap) y extraer logs 
#           de seguridad (Fail2ban).
# RESULTADO: Genera un reporte técnico en formato .txt
# ============================================================

# --- Configuración ---
TARGET="127.0.0.1"
DATE=$(date +"%Y-%m-%d_%H-%M")
BASE_DIR="/home/luztalvera/herramientas"
REPORT="$BASE_DIR/reports/auditoria_$DATE.txt"

# Asegurar que la carpeta existe
mkdir -p "$BASE_DIR/reports"

echo "🚀 Iniciando recolección de datos en $TARGET..."

# 1. Escaneo de Nmap (Sobreescribe con >)
echo "--- ESCANEO DE RED (NMAP) ---" > "$REPORT"
sudo nmap -sV -Pn $TARGET >> "$REPORT"

# 2. Logs de Fail2ban (Añade con >>)
echo -e "\n--- ESTADO DE DEFENSA (FAIL2BAN) ---" >> "$REPORT"
sudo fail2ban-client status sshd >> "$REPORT" 2>&1

# 3. Historial de baneos reales
echo -e "\n--- ÚLTIMOS BANEOS DETECTADOS ---" >> "$REPORT"
sudo grep "Ban " /var/log/fail2ban.log | tail -n 5 >> "$REPORT"

echo "✅ Reporte técnico generado en: $REPORT"

