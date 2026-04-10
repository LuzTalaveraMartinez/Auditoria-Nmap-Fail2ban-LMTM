#!/bin/bash
# ============================================================
# INSTALADOR AUTOMÁTICO - Auditoría LMTM
# OBJETIVO: Configurar dependencias y entorno de trabajo.
# ============================================================

echo "--- 🛠️ Iniciando configuración del entorno ---"

# 1. Instalación de herramientas de seguridad
sudo apt update && sudo apt install -y nmap fail2ban python3

# 2. Creación de la estructura de carpetas
mkdir -p reports scripts config docs logs

# 3. Asignación de permisos de ejecución
chmod +x scripts/*.sh

echo "--- ✅ Instalación completada con éxito ---"
echo "Para comenzar, ejecuta: sudo ./scripts/auditoria.sh"

