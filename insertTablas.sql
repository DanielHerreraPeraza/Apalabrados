BEGIN
INSERT ALL

    INTO LETRA (ID, PUNTAJE) VALUES ('A', 1)
    INTO LETRA (ID, PUNTAJE) VALUES ('B', 3)
    INTO LETRA (ID, PUNTAJE) VALUES ('C', 3)
    INTO LETRA (ID, PUNTAJE) VALUES ('D', 2)
    INTO LETRA (ID, PUNTAJE) VALUES ('E', 1)
    INTO LETRA (ID, PUNTAJE) VALUES ('F', 4)
    INTO LETRA (ID, PUNTAJE) VALUES ('G', 2)
    INTO LETRA (ID, PUNTAJE) VALUES ('H', 4)
    INTO LETRA (ID, PUNTAJE) VALUES ('I', 1)
    INTO LETRA (ID, PUNTAJE) VALUES ('J', 8)
    --INTO LETRA (ID, PUNTAJE) VALUES ('K', 5)
    INTO LETRA (ID, PUNTAJE) VALUES ('L', 1)
    INTO LETRA (ID, PUNTAJE) VALUES ('M', 3)
    INTO LETRA (ID, PUNTAJE) VALUES ('N', 1)
    INTO LETRA (ID, PUNTAJE) VALUES ('Ñ', 8)
    INTO LETRA (ID, PUNTAJE) VALUES ('O', 1)
    INTO LETRA (ID, PUNTAJE) VALUES ('P', 3)
    INTO LETRA (ID, PUNTAJE) VALUES ('Q', 5)
    INTO LETRA (ID, PUNTAJE) VALUES ('R', 1)
    INTO LETRA (ID, PUNTAJE) VALUES ('S', 1)
    INTO LETRA (ID, PUNTAJE) VALUES ('T', 1)
    INTO LETRA (ID, PUNTAJE) VALUES ('U', 1)
    INTO LETRA (ID, PUNTAJE) VALUES ('V', 4)
    --INTO LETRA (ID, PUNTAJE) VALUES ('W', 4)
    INTO LETRA (ID, PUNTAJE) VALUES ('X', 8)
    INTO LETRA (ID, PUNTAJE) VALUES ('Y', 4)
    INTO LETRA (ID, PUNTAJE) VALUES ('Z', 10)

    INTO LST_VALORES (CODIGO, NOMBRE, VALOR) VALUES ('LST_BONUS_PALABRA', 'DP', 2)
    INTO LST_VALORES (CODIGO, NOMBRE, VALOR) VALUES ('LST_BONUS_PALABRA', 'TP', 3)


    INTO LST_VALORES (CODIGO, NOMBRE, VALOR) VALUES ('LST_BONUS_LETRA', 'DL', 2)
    INTO LST_VALORES (CODIGO, NOMBRE, VALOR) VALUES ('LST_BONUS_LETRA', 'TL', 3)

SELECT 1 FROM DUAL;

END;
/