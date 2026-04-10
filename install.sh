#!/bin/bash
echo "--- Iniciando Instalación de Auditoría-LMTM ---"
sudo apt update
sudo apt install -y nmap fail2ban
mkdir -p reports logs
chmod +x scripts/*.sh
echo "--- Instalación finalizada. Todo listo para auditar ---"
