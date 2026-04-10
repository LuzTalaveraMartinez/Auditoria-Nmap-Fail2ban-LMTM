#!/bin/bash
# Script de Auditoría - Luz Talavera Martinez
TARGET="127.0.0.1"
DATE=$(date +"%Y-%m-%d_%H-%M")

# USAMOS RUTA ABSOLUTA (La ruta real en tu computadora)
REPORT="/home/luztalvera/herramientas/reports/auditoria_$DATE.txt"

# CREAMOS LA CARPETA POR SI ACASO
mkdir -p /home/luztalvera/herramientas/reports

echo "Escaneando puertos en $TARGET..."
sudo nmap -sV -Pn $TARGET > "$REPORT"

echo "Reporte generado en: $REPORT"

echo -e "\n--- ESTADO DE DEFENSA (Fail2ban) ---" >> "$REPORT"
sudo fail2ban-client status sshd >> "$REPORT" 2>&1
