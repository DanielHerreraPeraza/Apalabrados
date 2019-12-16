CREATE OR REPLACE PACKAGE USUARIOS_PKG AS

    --Crea un nuevo usuario.
    PROCEDURE CREAR_USUARIO_PR(P_NOMBRE VARCHAR2(25));

    --Autentica un usuario para iniciar sesión.
    PROCEDURE AUTENTICAR_USUARIO_PR(P_NOMBRE VARCHAR2(25), P_RESULTADO OUT BOOLEAN);

    --Actualiza la puntuación de los jugadores.
    PROCEDURE ACTUALIZAR_PUNTUACION_PR(P_ID_GANADOR NUMBER, P_ID_PERDEDOR NUMBER);

    --Consulta las estadísticas de un jugador.
    PROCEDURE CONSULTAR_JUGADOR_PR(P_JUGADOR IN OUT NUMBER, PARTIDAS_JUGADAS OUT NUMBER, PARTIDAS_GANADAS OUT NUMBER,
                                    PARTIDAS_PERDIDAS OUT NUMBER);

END USUARIOS_PKG;

