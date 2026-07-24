# 📊 Análisis de Negocio en PostgreSQL - Base de Datos Chinook

Este repositorio contiene un proyecto de análisis de base de datos relacional para la tienda virtual de música **Chinook**, implementado en **PostgreSQL**. 

El objetivo principal es resolver 20 preguntas clave de negocio mediante consultas SQL estructuradas (desde filtrados básicos hasta subconsultas y expresiones de tabla comunes - CTEs), simulando un flujo de trabajo real de extracción y reporte de datos.

---

## 🛠️ Stack Tecnológico

* **Engine:** PostgreSQL 18
* **Database Client:** pgAdmin 4 / psql
* **Editor / IDE:** Visual Studio Code
* **Version Control:** Git & GitHub

---

## 🗄️ Modelo de Datos (Chinook Schema)

La base de datos Chinook representa una tienda de música digital que incluye tablas sobre artistas, álbumes, canciones, géneros, clientes, empleados y facturación detallada.

---

## 🚀 Consultas Destacadas (Key Insights)

A continuación se presentan algunos ejemplos representativos de las 20 consultas desarrolladas en el proyecto:

### 1. Top 3 Géneros Más Vendidos (Uso de CTE y Agregación)
Calcula el total facturado sumando el precio por cantidad de cada pista, agrupado por género musical.

```sql
WITH total_track_sell AS (
    SELECT
        t.track_id,
        t.genre_id,
        t.name AS track_name,
        SUM(il.quantity) AS total_quantity,
        SUM(il.quantity * t.unit_price) AS total_sell
    FROM track AS t
    INNER JOIN invoice_line AS il ON t.track_id = il.track_id
    GROUP BY t.track_id, t.genre_id, t.name, t.unit_price
)
SELECT 
    g.name AS genre_name,
    SUM(tts.total_sell) AS total_invoice_genre
FROM genre AS g
INNER JOIN total_track_sell AS tts ON g.genre_id = tts.genre_id
GROUP BY g.genre_id, g.name
ORDER BY total_invoice_genre DESC
LIMIT 3;
