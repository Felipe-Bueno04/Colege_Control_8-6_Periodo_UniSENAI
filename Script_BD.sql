create database colege_control;
use colege_control;

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    perfil ENUM('CLIENTE', 'TECNICO') NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE chamados (
    id_chamado INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    descricao TEXT NOT NULL,
    status ENUM('ABERTO', 'EM_ANDAMENTO', 'RESOLVIDO', 'FECHADO') NOT NULL,
    prioridade ENUM('BAIXA', 'MEDIA', 'ALTA') NOT NULL,
    data_abertura DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_fechamento DATETIME NULL,
    data_ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    id_usuario INT NOT NULL,
    id_tecnico INT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_tecnico) REFERENCES usuarios(id_usuario)
);

CREATE TABLE historico_chamados (
    id_historico INT AUTO_INCREMENT PRIMARY KEY,
    id_chamado INT NOT NULL,
    id_usuario INT NOT NULL,
    comentario TEXT NOT NULL,
    data_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_chamado) REFERENCES chamados(id_chamado),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);