CREATE DATABASE IF NOT EXISTS disalle
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;
USE disalle;

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(11) NOT NULL,
    cep CHAR (8),
    rua VARCHAR(255),
    bairro VARCHAR (255),
    numero VARCHAR (5),
    complemento VARCHAR(255),
    cidade VARCHAR(255)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS bolos (
    id_bolo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    peso_kg DECIMAL(10,2) NOT NULL,
    descricao text NOT NULL,
    img VARCHAR(255) NOT NULL,
    formato ENUM('Redondo', 'Quadrado') DEFAULT 'Quadrado',
    massa ENUM('Branca', 'Chocolate', 'Red Velvet', 'Amanteigada') DEFAULT 'Branca'
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS salgados (
    id_salgado INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    preco DECIMAL (8,2) NOT NULL,
    descricao TEXT NOT NULL,
    img VARCHAR(255) NOT NULL,
    categoria ENUM('Assado','Frito') DEFAULT 'Frito',
    estado ENUM('Cru', 'Frito/Assado') DEFAULT 'Frito/Assado'
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS doces (
    id_doce INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    preco DECIMAL (8,2) NOT NULL,
    descricao TEXT NOT NULL,
    img VARCHAR (255) NOT NULL,
    cor_forma ENUM ('Vermelho', 'Azul', 'Amarela') DEFAULT 'Vermelho',
    categoria ENUM ('Tradicional', 'Gourmet') DEFAULT 'Tradicional'
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS mini_lanches (
    id_minilanche INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    preco_uni DECIMAL (8,2) NOT NULL,
    descricao TEXT NOT NULL,
    img VARCHAR (255) NOT NULL
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS comandas(
    id_comanda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_hora DATETIME NOT NULL,
    status_pedido ENUM ('A pagar', 'Em produção', 'Pronto', 'Entregue'),
    observacoes TEXT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS itens_bolo(
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_bolo INT,
    id_comanda INT ,
    peso_kg DECIMAL (5,2) NOT NULL,
	FOREIGN KEY (id_bolo) REFERENCES Bolos (id_bolo),
    FOREIGN KEY (id_comanda) REFERENCES Comandas (id_comanda)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS itens_doces(
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_doce INT,
    id_comanda INT,
    qtd INT NOT NULL,
    FOREIGN KEY (id_doce) REFERENCES Doces (id_doce),
    FOREIGN KEY (id_comanda) REFERENCES Comandas (id_comanda)
) 


ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS itens_salgados(
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_salgado INT,
    id_comanda INT,
    qtd INT NOT NULL,
    FOREIGN KEY (id_salgado) REFERENCES Salgados (id_salgado),
    FOREIGN KEY (id_comanda) REFERENCES Comandas (id_comanda)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS itens_minilanches(
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_minilanche INT,
    id_comanda INT,
    qtd INT NOT NULL,
    FOREIGN KEY (id_minilanche) REFERENCES Mini_lanches (id_minilanche),
    FOREIGN KEY (id_comanda) REFERENCES Comandas (id_comanda)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS recheios (
    id_recheio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(8,2) NOT NULL
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS adicionais(
    id_adicional INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    decorativo BOOLEAN NOT NULL,
    img_ref VARCHAR(255)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS montagem_bolo(
    id_montagem INT AUTO_INCREMENT PRIMARY KEY,
    id_comanda INT,
    preco DECIMAL (8,2) NOT NULL,
    descricao TEXT NOT NULL,
    peso DECIMAL (10,2) NOT NULL,
    formato ENUM('Redondo','Quadrado') DEFAULT 'Redondo',
    recheio ENUM('Branca','Chocolate','Red Velvet','Amanteigada') DEFAULT 'Chocolate',
    id_recheio INT NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (id_comanda) REFERENCES Comandas (id_comanda)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS adicionais_montagem_bolo(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_montagem INT,
    id_adicional INT,
    observacoes TEXT,
	FOREIGN KEY (id_montagem) REFERENCES Montagem_bolo (id_montagem),
    FOREIGN KEY (id_adicional) REFERENCES Adicionais (id_adicional)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS tipos_kit_festa(
    id_tipo INT AUTO_INCREMENT PRIMARY KEY,
    nome ENUM('Básico', 'Prata', 'Ouro', 'Diamante') DEFAULT 'Básico',
    descricao TEXT NOT NULL
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS kit_festa(
    id_kit INT AUTO_INCREMENT PRIMARY KEY,
    id_comanda INT,
    id_tipo INT,
    FOREIGN KEY (id_comanda) REFERENCES Comandas (id_comanda)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS kit_festa_salgados(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_kit INT,
    id_salgado INT,
    qtd INT NOT NULL,
    FOREIGN KEY (id_kit) REFERENCES Kit_Festa (id_kit),
    FOREIGN KEY (id_salgado) REFERENCES Salgados (id_salgado)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS kit_festa_doces(
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_kit INT,
  id_doce INT,
  qtd INT NOT NULL,
  FOREIGN KEY (id_kit) REFERENCES Kit_Festa (id_kit),
  FOREIGN KEY (id_doce) REFERENCES Doces (id_doce)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS kit_festa_bolo (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_kit INT NOT NULL,
  observacoes TEXT,
  peso_kg DECIMAL(5,2) NOT NULL,
  formato ENUM('Redondo', 'Quadrado') DEFAULT 'Quadrado',
  massa VARCHAR(255) NOT NULL,
  id_recheio INT NOT NULL,
  FOREIGN KEY (id_kit) REFERENCES Kit_Festa(id_kit),
  FOREIGN KEY (id_recheio) REFERENCES Recheios(id_recheio)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS kit_festa_minilanches(
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_kit INT,
  id_minilanche INT,
  qtd INT NOT NULL,
  FOREIGN KEY (id_kit) REFERENCES Kit_Festa (id_kit),
  FOREIGN KEY (id_minilanche) REFERENCES mini_lanches(id_minilanche)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS kit_festa_bolo_adicionais(
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_kit_bolo INT,
  id_adicional INT,
  FOREIGN KEY (id_kit_bolo) REFERENCES Kit_Festa_Bolo (id),
  FOREIGN KEY (id_adicional) REFERENCES Adicionais (id_adicional)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS usuarios_admin(
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  senha VARCHAR(255) NOT NULL
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;