CREATE OR REPLACE PACKAGE BODY TABLEROS_PKG AS

    --Crea un nuevo tablero.
    PROCEDURE CREAR_TABLERO_PR(P_ID_TABLERO NUMBER, P_JUGADOR_1 VARCHAR2, P_JUGADOR_2 VARCHAR2) IS

    BEGIN
        INSERT INTO TABLERO
            (ID, JUGADOR_1, JUGADOR_2)
            VALUES
            (P_ID_TABLERO, P_JUGADOR_1, P_JUGADOR_2);

        GENERAR_CASILLAS_PR(P_ID_TABLERO);

        GENERAR_LETRAS_PR(P_ID_TABLERO);
    END;

    --Generar las letras por tablero.
    PROCEDURE GENERAR_LETRAS_PR(P_ID_TABLERO NUMBER) IS

    BEGIN
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'A', 12);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'B', 2);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'C', 4);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'D', 5);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'E', 12);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'F', 1);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'G', 2);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'H', 2);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'I', 6);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'J', 1);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'L', 4);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'M', 2);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'N', 5);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'Ñ', 1);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'O', 9);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'P', 2);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'Q', 1);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'R', 5);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'S', 6);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'T', 4);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'U', 5);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'V', 1);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'X', 1);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'Y', 1);
        INICIALIZAR_LETRA_PR(P_ID_TABLERO, 'Z', 1);
    END;

    --Generar casillas por tablero
    PROCEDURE GENERAR_CASILLAS_PR(P_ID_TABLERO NUMBER) IS

    BEGIN
        FOR I IN 0..14 LOOP
            FOR J IN 0..14 LOOP
                INSERT INTO CASILLA
                    (ID_TABLERO, X, Y)
                    VALUES
                    (P_ID_TABLERO, I, J);
            END LOOP;
        END LOOP;

        AGREGAR_BONUS_PR(P_ID_TABLERO, 2, 0, '3P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 4, 0, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 10, 0, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 12, 0, '3P');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 1, 1, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 5, 1, '2P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 9, 1, '2P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 13, 1, '3L');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 0, 2, '3P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 2, 2, '2L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 6, 2, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 8, 2, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 12, 2, '2L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 14, 2, '3P');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 3, 3, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 7, 3, '2P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 11, 3, '3L');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 0, 4, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 6, 4, '2L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 8, 4, '2L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 14, 4, '3L');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 1, 5, '2P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 5, 5, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 9, 5, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 13, 5, '2P');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 2, 6, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 4, 6, '2L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 10, 6, '2L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 12, 6, '3L');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 3, 7, '2P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 11, 7, '2P');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 2, 8, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 4, 8, '2L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 10, 8, '2L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 12, 8, '3L');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 1, 9, '2P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 5, 9, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 9, 9, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 13, 9, '2P');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 0, 10, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 6, 10, '2L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 8, 10, '2L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 14, 10, '3L');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 3, 11, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 7, 11, '2P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 11, 11, '3L');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 0, 12, '3P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 2, 12, '2L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 6, 12, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 8, 12, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 12, 12, '2L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 14, 12, '3P');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 1, 13, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 5, 13, '2P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 9, 13, '2P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 13, 13, '3L');

        AGREGAR_BONUS_PR(P_ID_TABLERO, 2, 14, '3P');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 4, 14, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 10, 14, '3L');
        AGREGAR_BONUS_PR(P_ID_TABLERO, 12, 14, '3P');
    END;

    --Inicializar letra - tablero
    PROCEDURE INICIALIZAR_LETRA_PR(P_ID_TABLERO NUMBER, P_ID_LETRA VARCHAR2, P_CANTIDAD NUMBER) IS

    BEGIN
        INSERT INTO LETRAS_TABLERO
            (ID_LETRA, ID_TABLERO, CANTIDAD_DISPONIBLE)
            VALUES
            (P_ID_LETRA, P_ID_TABLERO, P_CANTIDAD);
    END;

    --Agregar bonus a casillas del tablero
    PROCEDURE AGREGAR_BONUS_PR(P_ID_TABLERO NUMBER, P_X NUMBER, P_Y NUMBER, P_BONUS VARCHAR2) IS

    BEGIN
        UPDATE CASILLA
        SET BONUS = P_BONUS
        WHERE ID_TABLERO = P_ID_TABLERO AND X = P_X AND Y = P_Y;
    END;

    --Otorga letras al usuario hasta que 7.
		PROCEDURE OTORGAR_FICHAS_PR(P_ID_TABLERO NUMBER, P_ID_USUARIO VARCHAR2) IS
		   V_LETRA VARCHAR2(30) := '';
		   V_TOTAL_LETRAS NUMBER;
			V_LETRA_ENCONTRADA NUMBER := 0;
		
		BEGIN
			
			Select COUNT(ID_LETRA) INTO V_TOTAL_LETRAS FROM LETRAS_USUARIO_TABLERO
			WHERE ID_USUARIO = P_ID_USUARIO AND ID_TABLERO = P_ID_TABLERO;
			
			WHILE(V_TOTAL_LETRAS < 7)
			LOOP
					
				SELECT ID_LETRA INTO V_LETRA FROM  
				(SELECT * FROM LETRAS_TABLERO  
				ORDER BY DBMS_RANDOM.VALUE)  
				WHERE ROWNUM = 1 and ID_TABLERO = P_ID_TABLERO and CANTIDAD_DISPONIBLE > 0;
				
				Select COUNT(ID_LETRA) into V_LETRA_ENCONTRADA from LETRAS_TABLERO WHERE ID_LETRA = V_LETRA;
				 DBMS_OUTPUT.PUT_LINE(V_LETRA);
				IF(V_LETRA_ENCONTRADA > 0) THEN
					INSERT INTO LETRAS_USUARIO_TABLERO (ID_USUARIO, ID_TABLERO, ID_LETRA) 
					VALUES (P_ID_USUARIO, P_ID_TABLERO, V_LETRA);
					UPDATE LETRAS_TABLERO SET CANTIDAD_DISPONIBLE = CANTIDAD_DISPONIBLE - 1 WHERE ID_LETRA = V_LETRA;
				END IF;
				V_TOTAL_LETRAS := V_TOTAL_LETRAS + 1;
			END LOOP;
			
        --HACER ESTO HASTA QUE EL COUNT DE LETRAS_USUARIOS_TABLERO = 7:
            --1. Tomar 1 ficha random de LETRAS_TABLERO donde CANTIDAD_DISPONIBLE > 0, guardar ID de LETRA en V_LETRA
            --2. Agregar a LETRAS_USUARIO_TABLERO un registro de cada una de estas letras. (insert P_ID_TABLERO, P_ID_USUARIO, V_LETRA)
            --3. Validación cuando no hay suficientes letras en LETRAS_TABLERO para otorgar.


		
		END;

    --Validar palabra
--     PROCEDURE VALIDAR_PALABRA_PR;

    --Otorgar puntos
    PROCEDURE OTORGAR_PUNTOS_PR(P_ID_TABLERO NUMBER, P_JUGADOR VARCHAR2, P_PUNTOS NUMBER) IS
        V_JUGADOR_1 VARCHAR2(25);
        V_JUGADOR_2 VARCHAR2(25);
        V_PUNTAJE_J1 NUMBER;
        V_PUNTAJE_J2 NUMBER;
    BEGIN

        SELECT JUGADOR_1, JUGADOR_2, PUNTAJE_JG_1, PUNTAJE_JG_2 INTO V_JUGADOR_1, V_JUGADOR_2, V_PUNTAJE_J1, V_PUNTAJE_J2
        FROM TABLERO
        WHERE ID = P_ID_TABLERO;

        IF P_JUGADOR = V_JUGADOR_1 THEN
            UPDATE TABLERO
            SET PUNTAJE_JG_1 = V_PUNTAJE_J1 + P_PUNTOS
            WHERE ID = P_ID_TABLERO;
        ELSIF P_JUGADOR = V_JUGADOR_2 THEN
            UPDATE TABLERO
            SET PUNTAJE_JG_2 = V_PUNTAJE_J2 + P_PUNTOS
            WHERE ID = P_ID_TABLERO;
        END IF;
    END;

END TABLEROS_PKG;