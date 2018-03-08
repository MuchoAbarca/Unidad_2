-- Consulta 1.  Obtener los 5 premios nobel mas recientes
SELECT * FROM NUEVOABARCA.PRIZE (select max year() over (order by));

-- Consulta 2.  Obtener los �ltimos 10 premios nobel de f�sica
SELECT * FROM NUEVOABARCA.PRIZE;

-- Consulta 3.  Obtener las personas que han ganado mas de un premio
SELECT * FROM NUEVOABARCA.WINNER;

-- Consulta 4.  Obtener el campo o lenguaje con mas premios nobel
SELECT * FROM NUEVOABARCA.FIELD;

-- Consulta 5.  Obtener los premios ganados desde el a�o 1980 al 1990 en qu�mica
SELECT * FROM NUEVOABARCA.PRIZE;

-- Consulta 6.  Obtener el premio nobel ganado menos ocasiones
SELECT * FROM NUEVOABARCA.PRIZE;

-- Consulta 7.  Obtener el pa�s con m�s premios nobel
SELECT * FROM NUEVOABARCA.COUNTRY;

-- Consulta 8.  Obtener los premios nobel compartidos (mas de un ganador en la 
             -- misma categoria y a�o)
SELECT * FROM NUEVOABARCA.PRIZE;

-- Consulta 9.  Obtener el premio de edad de tods los ganadores al momento en 
             -- que ganan su premio
SELECT * FROM NUEVOABARCA.WINNER;
