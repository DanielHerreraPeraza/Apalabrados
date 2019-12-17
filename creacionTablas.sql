CREATE TABLE USUARIO
(
    NOMBRE VARCHAR2(25) NOT NULL,
    PARTIDAS_JUGADAS NUMBER DEFAULT 0,
    PARTIDAS_GANADAS NUMBER DEFAULT 0,
    PARTIDAS_PERDIDAS NUMBER DEFAULT 0,
    CONSTRAINT USUARIO_PK PRIMARY KEY (NOMBRE)
);

CREATE TABLE TABLERO
(
    ID NUMBER NOT NULL,
    JUGADOR_1 VARCHAR2(25) NOT NULL,
    JUGADOR_2 VARCHAR2(25) NOT NULL,
    PUNTAJE_JG_1 NUMBER DEFAULT 0,
    PUNTAJE_JG_2 NUMBER DEFAULT 0,
    CONSTRAINT TABLERO_PK PRIMARY KEY (ID),
    CONSTRAINT JUGADOR1_FK FOREIGN KEY (JUGADOR_1) REFERENCES USUARIO,
    CONSTRAINT JUGADOR2_FK FOREIGN KEY (JUGADOR_2) REFERENCES USUARIO
);

CREATE TABLE CASILLA
(
    X NUMBER(2) NOT NULL,
    Y NUMBER(2) NOT NULL,
    BONUS VARCHAR2(3),
    LETRA VARCHAR2(30),
    ID_TABLERO NUMBER NOT NULL,
    CONSTRAINT CASILLA_PK PRIMARY KEY (X, Y, ID_TABLERO),
    CONSTRAINT ID_TABLERO_FK FOREIGN KEY (ID_TABLERO) REFERENCES TABLERO
);

CREATE TABLE LETRA
(
    ID VARCHAR2(30) NOT NULL,
    PUNTAJE NUMBER NOT NULL,
    CONSTRAINT LETRA_PK PRIMARY KEY (ID)
);

CREATE TABLE LETRAS_TABLERO
(
    ID_LETRA VARCHAR2(30) NOT NULL,
    ID_TABLERO NUMBER NOT NULL,
    CANTIDAD_DISPONIBLE NUMBER NOT NULL,
    CONSTRAINT LETRAS_TABLERO_PK PRIMARY KEY (ID_LETRA, ID_TABLERO)
);

CREATE TABLE LETRAS_USUARIO_TABLERO
(
	ID NUMBER NOT NULL,
    ID_USUARIO VARCHAR2(25) NOT NULL,
    ID_TABLERO NUMBER NOT NULL,
    ID_LETRA VARCHAR2(30) NOT NULL,
    CONSTRAINT LETRAS_USUARIO_TABLERO_PK PRIMARY KEY (ID),
    CONSTRAINT ID_USUARIOLETRAS_FK FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO,
    CONSTRAINT ID_TABLEROLETRASUSUARIO_FK FOREIGN KEY (ID_TABLERO) REFERENCES TABLERO,
    CONSTRAINT ID_LETRA_FK FOREIGN KEY (ID_LETRA) REFERENCES LETRA
);

CREATE TABLE LST_VALORES
(
    CODIGO VARCHAR2(50) NOT NULL,
    NOMBRE VARCHAR2(50) NOT NULL,
    VALOR NUMBER NOT NULL,
    CONSTRAINT LST_VALORES_PK PRIMARY KEY (CODIGO, NOMBRE)
);

CREATE TABLE PALABRA
(
  ID NUMBER NOT NULL,
  PALABRA VARCHAR2(25) NOT NULL,
  CONSTRAINT PALABRAS_PK PRIMARY KEY (ID)
);

CREATE SEQUENCE letras_tablero_jugador_seq START WITH 1;

CREATE OR REPLACE TRIGGER letras_usuario_tablero_bir
BEFORE INSERT ON LETRAS_USUARIO_TABLERO 
FOR EACH ROW

BEGIN
  SELECT letras_tablero_jugador_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
