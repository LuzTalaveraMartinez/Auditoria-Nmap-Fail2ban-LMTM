# ============================================================
# MODULO: ANALISTA INTELIGENTE (PYTHON)
# OBJETIVO: Procesar los reportes generados por el recolector.
#           Identifica patrones de ataque y puertos críticos.
# RESULTADO: Imprime alertas visuales en consola.
# ============================================================

import os

def analizar_seguridad():
    # Ruta absoluta para evitar errores de ubicación
    ruta_reports = "/home/luztalvera/herramientas/reports/"
    
    try:
        # Listar archivos de auditoría y ordenar por fecha
        archivos = [f for f in os.listdir(ruta_reports) if f.startswith("auditoria_")]
        
        if not archivos:
            print("❌ Error: No se encontraron reportes en " + ruta_reports)
            return

        ultimo_reporte = sorted(archivos)[-1]
        ruta_completa = os.path.join(ruta_reports, ultimo_reporte)

        print(f"\n🔍 INICIANDO ANÁLISIS FORENSE: {ultimo_reporte}")
        print("-" * 50)

        alertas = 0
        with open(ruta_completa, "r") as f:
            for linea in f:
                # Buscar puertos abiertos
                if "open" in linea:
                    print(f"⚠️  RIESGO: Puerto detectado abierto -> {linea.strip()}")
                    alertas += 1
                # Buscar bloqueos de Fail2ban
                if "Ban" in linea:
                    print(f"🚫 DEFENSA: IP Bloqueada encontrada -> {linea.strip()}")
                    alertas += 1
        
        if alertas == 0:
            print("✅ RESULTADO: No se encontraron amenazas críticas.")
        else:
            print(f"\nRESUMEN: Se encontraron {alertas} puntos de atención.")
        print("-" * 50)

    except Exception as e:
        print(f"❌ Error crítico durante el análisis: {e}")

if __name__ == "__main__":
    analizar_seguridad()
