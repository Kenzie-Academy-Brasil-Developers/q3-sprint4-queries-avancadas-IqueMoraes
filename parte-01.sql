DROP TABLE IF EXISTS enderecos;
DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS usuarios_rede_sociais;
DROP TABLE IF EXISTS redes_sociais;


CREATE TABLE IF NOT EXISTS enderecos (
    endereco_id   BIGSERIAL      PRIMARY KEY,
    rua          VARCHAR        NOT NULL,
    pais         VARCHAR(100)   NOT NULL,
    cidade       VARCHAR(100)   NOT NULL
);

CREATE TABLE IF NOT EXISTS usuarios (
    usuario_id    BIGSERIAL     PRIMARY KEY,
    nome          VARCHAR(100),
    email         VARCHAR       NOT NULL UNIQUE,
    senha         VARCHAR       NOT NULL,
    endereco_id   INTEGER       NOT NULL,
    FOREIGN KEY (endereco_id) REFERENCES enderecos(endereco_id)
);


CREATE TABLE IF NOT EXISTS redes_sociais (
    rede_social_id  BIGSERIAL    PRIMARY KEY,
    nome      VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS usuarios_rede_sociais (
    medium_id       BIGSERIAL       PRIMARY KEY,
    usuario_id      INTEGER         NOT NULL,
    rede_social_id  INTEGER         NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (rede_social_id) REFERENCES redes_sociais(rede_social_id)
);
