-- Consulta 1.  Obtener los 5 premios nobel mas recientes
SELECT * FROM (SELECT NOMBRE, YEAR, MOTIVACION, ROW_NUMBER () OVER (ORDER BY YEAR DESC) AS LIMIT FROM NUEVOABARCA.PRIZE) WHERE LIMIT < 6;

-- Consulta 2.  Obtener los últimos 10 premios nobel de física
SELECT * FROM (SELECT NOMBRE, CATEGORY, MOTIVACION, ROW_NUMBER () OVER (ORDER BY YEAR DESC) AS LIMIT FROM NUEVOABARCA.PRIZE PREMIO INNER 
    JOIN NUEVOABARCA.CATEGO ON CATEGO.CATEGORY_ID = PREMIO.CATEGORY_ID WHERE CATEGO.CATEGORY = 'PHYSICS') WHERE LIMIT < 11;

-- Consulta 3.  Obtener las personas que han ganado mas de un premio
SELECT * FROM (SELECT WINNER_ID, COUNT (WINNER_ID) AS WINS FROM WINNER_PRIZE GROUP BY WINNER_ID) WHERE WINS > 1 ORDER BY WINS ASC;

-- Consulta 4.  Obtener el campo o lenguaje con mas premios nobel
SELECT * FROM;

-- Consulta 5.  Obtener los premios ganados desde el año 1980 al 1990 en química
SELECT * FROM;

-- Consulta 6.  Obtener el premio nobel ganado menos ocasiones
SELECT * FROM SELECT NOMBRE, WINS FROM (SELECT NOMBRE, WINS, ROW_NUMBER () OVER 
  (ORDER BY WINS ASC) AS VECES FOM (SELECT NOMBRE, COUNT(NOMBRE) AS WINS FROM NUEVOABARCA.PRIZE GROUP BY NOMBRE)) WHERE VECES = 1;

-- Consulta 7.  Obtener el país con más premios nobel
SELECT * FROM ;

-- Consulta 8.  Obtener los premios nobel compartidos (mas de un ganador en la 
             -- misma categoria y año)
SELECT * FROM;

-- Consulta 9.  Obtener el premio de edad de tods los ganadores al momento en 
             -- que ganan su premio
SELECT * FROM;
