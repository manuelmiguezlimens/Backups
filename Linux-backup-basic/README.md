# 💾 Linux Backup Basic

Laboratorio práctico de **sistemas de backup automático con versionado, rotación y restauración** en entornos Linux, orientado a la protección de datos, continuidad operativa y automatización de infraestructura.

Este laboratorio simula tareas reales de **operaciones IT, continuidad de negocio y recuperación ante desastre**, propias de perfiles técnicos de sistemas, infraestructura y operaciones empresariales.

---

## 🎯 Objetivos del laboratorio

- Implementar backups automáticos de directorios
- Aplicar compresión de datos
- Generar versionado por fecha
- Crear logs operativos
- Implementar rotación de backups
- Simular escenarios de recuperación
- Automatizar procesos críticos
- Aplicar buenas prácticas de operación IT

---

## 📁 Estructura del laboratorio

```text
linux-backup-basic/
├── backup.sh
├── restore.sh
├── Demo.mp4
└── README.md
```

---

## 🧠 Funcionalidades

- Backup automático de directorios

- Compresión de backups(.tar.gz)

- Versionado por fecha y hora

- Generación automática de logs

- Rotación de backups.

- Automatización de procesos.

---

## 🔧 Script: ```backup-linux.sh```

El script realiza:

- Copia de directorios definidos.

- Compresión automática.

- Generación de nombres por fecha

- Creación de logs

- Control de errores

- Reotación de backups antiguos

- Gestión automática del almacenamiento.

---

## 🔁 Script: ```restore-backup.sh```

El script permite:

- Listar backups disponibles

- Seleccionar backup a restaurar

- Descompresión de datos

- Restauiración segura

- Simulación de recuperación ante desastres

---

## ▶️ Uso

```
chmod +x backup-linux.sh
./backup-linux.sh
```

```
chmod +x restore-backup.sh
./restore-backup.sh
```

---

## 📄 Logs

Se genera el archivo: ```backup.log```

Este log permite:

- Auditoría de backups

- Control de operaciones

- Trazabilidad de datos

- Detección de fallos

- Historial de ejecución

- Control de continuidad operativa

---

## 🧪 Ejemplo de salida

```
2026-01-22 02:00:01 - Iniciando backup...
2026-01-22 02:00:03 - Backup completado: backup_20260122_020001.tar.gz
2026-01-22 02:00:03 - Rotación de backups aplicada
2026-01-22 02:00:03 - Proceso finalizado correctamente
```

---

## 🤖 Automatización

Integración con cron para ejecución automática:

```
0 2 * * * /ruta/linux-backup-basic/backup.sh
```

Simula operación real de entornos productivos.

---

## 🎥 Vídeo de demostración

En este repositorio se incluye un vídeo de demostración donde se muestra:

- Ejecución del backup

- Generación automática de archivos

- Creación de logs

- Rotación de backups

- Proceso de restauración

- Simulación de recuperación de datos

👉 Puedes ver el vídeo aquí:

📺 [Ver demostración del laboratorio](Backups\Linux-backup-basic\Demo.mp4)

_(El vídeo se encuentra en el mismo repositorio)_

---

## 👤 Autor

Manuel Míguez Liméns

[GitHub](https://github.com/manuelmiguezlimens) | [LinkedIn](https://www.linkedin.com/in/manuelmiguezlimens/) | [Gmail](mailto:miguezlimensmanuel@gmail.com)