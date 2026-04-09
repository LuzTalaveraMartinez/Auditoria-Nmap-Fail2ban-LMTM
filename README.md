# Auditoría de Red y Hardening IPS (LMTM)

Solución integral de seguridad en **Ubuntu 22.04** que combina auditoría proactiva y defensa activa. Este repositorio es parte de mi laboratorio de Hardening y Automatización.

## 🤖 Colaboración y Desarrollo
Este proyecto ha sido desarrollado con el apoyo de **Inteligencia Artificial (IA)**, la cual ha servido como guía técnica para:
- La estructuración profesional del repositorio.
- La optimización de scripts de automatización.
- La redacción de la documentación técnica (README).

## 🛠️ Componentes del Proyecto
- **/scripts/script_auditoria_LMTM.sh**: Realiza escaneos de red con **Nmap** para identificar puertos abiertos y servicios vulnerables.
- **/scripts/monitor_tiempo_real.sh**: Proporciona una vista en vivo de las IPs bloqueadas por **Fail2ban** (IPS).
- **/config**: Espacio para almacenar configuraciones personalizadas de `jail.local`.
- **/reports**: Directorio destinado a los resultados de auditoría generados.

## 🚀 Guía de Uso
1. **Clonar**: `git clone https://github.com`
2. **Permisos**: `chmod +x scripts/*.sh`
3. **Ejecución**:
   - Para auditar la red: `sudo ./scripts/script_auditoria_LMTM.sh`
   - Para monitorear ataques: `./scripts/monitor_tiempo_real.sh`

## 📊 Objetivos Técnicos
- **Reconocimiento**: Detectar superficies de ataque en el host.
- **Prevención**: Implementar reglas de bloqueo automático ante fuerza bruta.
- **Monitoreo**: Visualización de eventos de seguridad en tiempo real.

---
*Desarrollado por Luz Maria Talavera Martinez | Laboratorio de Seguridad LMTM*
