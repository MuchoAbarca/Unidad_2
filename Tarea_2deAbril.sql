-- FUNCION PARA CALCULAR LA EDAD AL MOMENTO DE GANAR UN PREMIO NOBEL

CREATE OR REPLACE FUNCTION NOBEL.GET_AGE (pastdate DATE) RETURN NUMBER AS prevdate NUMBER;
BEGIN
    SELECT FLOOR (MONTHS_BETWEEN (SYSDATE, pastdate) / 12) INTO prevdate FROM DUAL;
    RETURN prevdate;
END;

SELECT NOBEL.GET_AGE(NOBEL.PRIZE.YEAR) FROM DUAL WHERE NOBEL.PRIZE.PRIZE_ID = ;

--FUNCION PARA CALCULAR LA EDAD DEL GANADOR DE UN PREMIO NOBEL AL MOMENTO DE GANARLO

CREATE OR REPLACE FUNCTION PRIME.GET_AGE_YESTERDAY (init_date DATE, prize_date DATE)
    RETURN NUMBER
AS 	initialdate   NUMBER;
	prizedate  NUMBER;
BEGIN	SELECT FLOOR (MONTHS_BETWEEN (prizedate, initialdate) / 12)
	INTO initialdate FROM DUAL;
	RETURN initialdate;
END;

SELECT NOBEL.GET_AGE(NOBEL.WINNER.BIRTHDAY, NOBEL.PRIZE.YEAR) FROM DUAL WHERE NOBEL.PRIZE.PRIZE_ID = ;

--PROCEDIMIENTO ALMACENADO PARA INSERTAR A UN GANADOR DE ALGUN PREMIO NOBEL

CREATE OR REPLACE PROCEDURE NOBEL.INSERTWINNER (
	PRIZE_ID	IN VARCHAR2,	
	YEAR    	IN INTEGER,
	NOMBRE		IN VARCHAR2)
IS
BEGIN INSERT INTO NOBEL.PREMIO (PRIZE_ID, YEAR, NOMBRE)
         VALUES (PRIME.PRIZE_SEQ.NEXTVAL, PRIZE_ID, YEAR, NOMBRE);
END;

EXEC PRIME.INDSERT_PERSON('', 2018, 'Premio Nobel de la Paz');