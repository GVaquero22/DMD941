

--SELECT * FROM SanMiguel
--SELECT * FROM SanSalvador
--SELECT * FROM SantaAna

DECLARE @AllInfo TABLE (id VARCHAR(150),Rosas BIT,Claveles BIT,Macetas BIT,Tierra BIT,Girasoles BIT,Hortensia BIT,
Globos BIT,Tarjetas BIT,Orquideas BIT,Carmesa BIT,Lirios BIT,Aurora BIT,Tulipanes BIT,Liston BIT)

INSERT INTO @AllInfo (id,Rosas,Claveles,Macetas,Tierra,Girasoles,Hortensia,Globos,
                      Tarjetas,Orquideas,Carmesa,Lirios,Aurora,Tulipanes,Liston)
SELECT * FROM SanMiguel
UNION ALL 
SELECT * FROM SanSalvador
UNION ALL 
SELECT * FROM SantaAna


--TABLA UNIFICADA PARA REALIZAR EL ANALISIS
--SELECT * FROM @AllInfo


DECLARE @AllProduct TABLE (Producto VARCHAR(150),FlagVenta VARCHAR(10),VENTAS INT)

INSERT INTO @AllProduct (Producto,FlagVenta,VENTAS)
SELECT 'ROSAS', CASE Rosas 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Rosas 
UNION ALL
SELECT 'CLAVELES',CASE Claveles 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Claveles 
UNION ALL
SELECT 'MACETAS', CASE Macetas 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Macetas 
UNION ALL
SELECT 'TIERRA',CASE Tierra 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Tierra
UNION ALL
SELECT 'GIRASOLES', CASE Girasoles 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Girasoles 
UNION ALL
SELECT 'HORTENCIA',CASE Hortensia 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Hortensia 
UNION ALL
SELECT 'GLOBOS', CASE Globos 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Globos 
UNION ALL
SELECT 'TARJETAS',CASE Tarjetas 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Tarjetas 
UNION ALL
SELECT 'ORQUIDEAS', CASE Orquideas 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Orquideas 
UNION ALL
SELECT 'CARMESA',CASE Carmesa 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Carmesa 
UNION ALL
SELECT 'LIRIOS', CASE Lirios 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Lirios 
UNION ALL
SELECT 'AURORA',CASE Aurora 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Aurora 
UNION ALL
SELECT 'TULIPANES', CASE Tulipanes 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Tulipanes 
UNION ALL
SELECT 'LISTON',CASE Liston  
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanMiguel GROUP BY Liston 


--SELECT FlagVenta AS'TIPO', SUM(VENTAS) AS 'VENTAS TOTALES' FROM @AllProduct GROUP BY FlagVenta

--SELECT * FROM @AllProduct WHERE FlagVenta = 'VENTA' ORDER BY VENTAS DESC
--SELECT * FROM @AllProduct WHERE FlagVenta = 'NO VENTA' ORDER BY VENTAS DESC








--SAN SALVADOR


DECLARE @AllProductSS TABLE (Producto VARCHAR(150),FlagVenta VARCHAR(10),VENTAS INT)

INSERT INTO @AllProductSS (Producto,FlagVenta,VENTAS)
SELECT 'ROSAS', CASE Rosas 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Rosas 
UNION ALL
SELECT 'CLAVELES',CASE Claveles 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Claveles 
UNION ALL
SELECT 'MACETAS', CASE Macetas 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Macetas 
UNION ALL
SELECT 'TIERRA',CASE Tierra 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Tierra
UNION ALL
SELECT 'GIRASOLES', CASE Girasoles 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Girasoles 
UNION ALL
SELECT 'HORTENCIA',CASE Hortensia 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Hortensia 
UNION ALL
SELECT 'GLOBOS', CASE Globos 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Globos 
UNION ALL
SELECT 'TARJETAS',CASE Tarjetas 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Tarjetas 
UNION ALL
SELECT 'ORQUIDEAS', CASE Orquideas 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Orquideas 
UNION ALL
SELECT 'CARMESA',CASE Carmesa 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Carmesa 
UNION ALL
SELECT 'LIRIOS', CASE Lirios 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Lirios 
UNION ALL
SELECT 'AURORA',CASE Aurora 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Aurora 
UNION ALL
SELECT 'TULIPANES', CASE Tulipanes 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Tulipanes 
UNION ALL
SELECT 'LISTON',CASE Liston  
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SanSalvador GROUP BY Liston 


--SELECT FlagVenta AS'TIPO', SUM(VENTAS) AS 'VENTAS TOTALES' FROM @AllProductSS GROUP BY FlagVenta

--SELECT * FROM @AllProductSS WHERE FlagVenta = 'VENTA' ORDER BY VENTAS DESC
--SELECT * FROM @AllProductSS WHERE FlagVenta = 'NO VENTA' ORDER BY VENTAS DESC















--SANTA ANA


DECLARE @AllProductSA TABLE (Producto VARCHAR(150),FlagVenta VARCHAR(10),VENTAS INT)

INSERT INTO @AllProductSA (Producto,FlagVenta,VENTAS)
SELECT 'ROSAS', CASE Rosas 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Rosas 
UNION ALL
SELECT 'CLAVELES',CASE Claveles 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Claveles 
UNION ALL
SELECT 'MACETAS', CASE Macetas 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Macetas 
UNION ALL
SELECT 'TIERRA',CASE Tierra 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Tierra
UNION ALL
SELECT 'GIRASOLES', CASE Girasoles 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Girasoles 
UNION ALL
SELECT 'HORTENCIA',CASE Hortensia 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Hortensia 
UNION ALL
SELECT 'GLOBOS', CASE Globos 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Globos 
UNION ALL
SELECT 'TARJETAS',CASE Tarjetas 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Tarjetas 
UNION ALL
SELECT 'ORQUIDEAS', CASE Orquideas 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Orquideas 
UNION ALL
SELECT 'CARMESA',CASE Carmesa 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Carmesa 
UNION ALL
SELECT 'LIRIOS', CASE Lirios 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Lirios 
UNION ALL
SELECT 'AURORA',CASE Aurora 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Aurora 
UNION ALL
SELECT 'TULIPANES', CASE Tulipanes 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Tulipanes 
UNION ALL
SELECT 'LISTON',CASE Liston  
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM SantaAna GROUP BY Liston 


--SELECT FlagVenta AS'TIPO', SUM(VENTAS) AS 'VENTAS TOTALES' FROM @AllProductSA GROUP BY FlagVenta

--SELECT * FROM @AllProductSA WHERE FlagVenta = 'VENTA' ORDER BY VENTAS DESC
--SELECT * FROM @AllProductSA WHERE FlagVenta = 'NO VENTA' ORDER BY VENTAS DESC





--TODOOOO


DECLARE @AllProductALL TABLE (Producto VARCHAR(150),FlagVenta VARCHAR(10),VENTAS INT)

INSERT INTO @AllProductALL (Producto,FlagVenta,VENTAS)
SELECT 'ROSAS', CASE Rosas 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Rosas 
UNION ALL
SELECT 'CLAVELES',CASE Claveles 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Claveles 
UNION ALL
SELECT 'MACETAS', CASE Macetas 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Macetas 
UNION ALL
SELECT 'TIERRA',CASE Tierra 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Tierra
UNION ALL
SELECT 'GIRASOLES', CASE Girasoles 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Girasoles 
UNION ALL
SELECT 'HORTENCIA',CASE Hortensia 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Hortensia 
UNION ALL
SELECT 'GLOBOS', CASE Globos 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Globos 
UNION ALL
SELECT 'TARJETAS',CASE Tarjetas 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Tarjetas 
UNION ALL
SELECT 'ORQUIDEAS', CASE Orquideas 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Orquideas 
UNION ALL
SELECT 'CARMESA',CASE Carmesa 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Carmesa 
UNION ALL
SELECT 'LIRIOS', CASE Lirios 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Lirios 
UNION ALL
SELECT 'AURORA',CASE Aurora 
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Aurora 
UNION ALL
SELECT 'TULIPANES', CASE Tulipanes 
                     WHEN 0 THEN 'VENTA' 
			         WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
		        COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Tulipanes 
UNION ALL
SELECT 'LISTON',CASE Liston  
					WHEN 0 THEN 'VENTA' 
					WHEN 1 THEN 'NO VENTA' 
				ELSE 'NO' 
				END AS 'Producto', 
				COUNT(*) AS 'Ventas' FROM @AllInfo GROUP BY Liston 


SELECT FlagVenta AS'TIPO', SUM(VENTAS) AS 'VENTAS TOTALES' FROM @AllProductALL GROUP BY FlagVenta

SELECT * FROM @AllProductALL WHERE FlagVenta = 'VENTA' ORDER BY VENTAS DESC
SELECT * FROM @AllProductALL WHERE FlagVenta = 'NO VENTA' ORDER BY VENTAS DESC