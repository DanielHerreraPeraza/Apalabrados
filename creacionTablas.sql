CREATE TABLE USUARIO
(
    ID NUMBER(9) NOT NULL,
    NOMBRE VARCHAR2(25) NOT NULL UNIQUE,
    CONTRASENA VARCHAR2(25) NOT NULL,
    PARTIDAS_JUGADAS NUMBER DEFAULT 0,
    PARTIDAS_GANADAS NUMBER DEFAULT 0,
    PARTIDAS_PERDIDAS NUMBER DEFAULT 0,
    CONSTRAINT USUARIO_PK PRIMARY KEY (ID)
);

CREATE TABLE TABLERO
(
    ID VARCHAR2(100) NOT NULL,
    CONSTRAINT TABLERO_PK PRIMARY KEY (ID)
);

CREATE TABLE CASILLA
(
    X NUMBER(2) NOT NULL,
    Y NUMBER(2) NOT NULL,
    BONUS NUMBER(1) NOT NULL,
    CONSTRAINT CASILLA_PK PRIMARY KEY (X, Y)
);

CREATE TABLE LST_VALORES
(
    CODIGO VARCHAR2(50) NOT NULL,
    NOMBRE VARCHAR2(50) NOT NULL,
    VALOR NUMBER NOT NULL,
    CONSTRAINT LST_VALORES_PK PRIMARY KEY (CODIGO, NOMBRE)
);
