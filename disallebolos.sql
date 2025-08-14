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
) ENGINE=InnoDB
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

-- INSERT INTO doces VALUES
-- doces
('Brigadeiro', 70.00, 'desc','img'),
('Beijinho', 70.00, 'desc','img'),
('Bicho de Pé', 70.00, 'desc','img'),
('Brigadeiro Blue Ice', 70.00, 'desc','img'),
('Brigadeiro de Abacaxi', 70.00, 'desc','img'),
('Brigadeiro de Maracujá', 70.00, 'desc','img'),
-- doces especiais
('Brigadeiro de Paçoca', 75.00, 'desc','img'),
('Brigadeiro de Leite Ninho', 75.00, 'desc','img'),
('Brigadeiro de Churros', 75.00, 'desc','img'),
('Brigadeiro de Abóbora', 75.00, 'desc','img'),
('Brigadeiro de Beterraba', 75.00, 'desc','img'),
('Brigadeiro de Cenoura', 75.00, 'desc','img'),
('Brigadeiro de Milho', 75.00, 'desc','img'),
('Casadinho', 75.00, 'desc','img'),
('2 Amores', 75.00, 'desc','img'),
('Cajuzinho', 75.00, 'desc','img'),
-- gourmet
('Brigadeiro Meio Amargo', 120.00, 'desc','img'),
('Brigadeiro de Paçoca', 120.00, 'desc','img'),
('Brigadeiro de Oreo', 120.00, 'desc','img'),
('Brigadeiro de Café', 120.00, 'desc','img'),
('Brigadeiro ABC', 120.00, 'desc','img'),
-- gourmet especiais
('Brigadeiro de Prestígio', 140.00, 'desc','img'),
('Brigadeiro Sensação', 140.00, 'desc','img'),
('Brigadeiro de Abobora com Coco', 140.00, 'desc','img'),
('Surpresa de Uva', 140.00, 'desc','img'),
('Brigadeiro de Leite Ninho com Nutella', 140.00, 'desc','img')


-- INSERT INTO bolos VALUES
-- Recheios tradicionais
('Brigadeiro Tradicional','', 'desc', 'img'),
('Brigadeiro Branco','', 'desc', 'img'),
('Brigadeiro Blue Ice','', 'desc', 'img'),
('Brigadeiro de Morango','', 'desc', 'img'),
('Creme Belga Branco','', 'desc', 'img'),
('Creme Belga Chocolate','', 'desc', 'img'),
('Mousse de Abacaxi','', 'desc', 'img'),
('Mousse de Limão','', 'desc', 'img'),
('Mousse de Maracujá','', 'desc', 'img'),
('Mousse de Morango','', 'desc', 'img'),
('Doce de Leite','', 'desc', 'img'),
('Chocolate','', 'desc', 'img'),
('Beijinho','', 'desc', 'img'),
('4 Leites','', 'desc', 'img'),
-- Recheios Especiais 1
('Strogonoff de Chocolate com Bis','', 'desc', 'img'),
('Strogonoff de Morango','', 'desc', 'img'),
('Doce de Leite com Coco','', 'desc', 'img'),
('Mousse de Leite Ninho','', 'desc', 'img'),
('Mousse de Chocolate','', 'desc', 'img'),
('Paçoca','', 'desc', 'img'),
-- Recheios Especiais 2
('Doce de Leite com Morangos','', 'desc', 'img'),
('Leite Condensado com Morangos','', 'desc', 'img'),
('Brigadeiro Tradicional com Morangos','', 'desc', 'img'),
('Brigadeiro Branco com Morangos','', 'desc', 'img'),
('Mousse de Leito Ninho com Morangos','', 'desc', 'img'),
('Mousse de Chocolate com Morangos','', 'desc', 'img'),
('Mousse de Nutella','', 'desc', 'img'),
('Cream Cheese','', 'desc', 'img'),
('Oreo','', 'desc', 'img'),
('Pistache','', 'desc', 'img')

-- INSERT INTO salgados VALUES
--tradicionais
('Coxinha de Frango', 70.00, 'desc', 'img'),
('Bolinha de Queijo', 70.00, 'desc', 'img'),
('Rissole de Presunto e Queijo', 70.00, 'desc', 'img'),
('Croquete de Frango', 70.00, 'desc', 'img'),
('Pastelzinho de Frango', 70.00, 'desc', 'img'),
('Pastelzinho de Queijo', 70.00, 'desc', 'img'),
('Pastelzinho de Calabresa', 70.00, 'desc', 'img'),
('Doguinho', 70.00, 'desc', 'img'),
('Esfiha de Frango', 70.00, 'desc', 'img'),
('Enroladinho de Presunto e Queijo', 70.00, 'desc', 'img'),
('Enroladinho de Queijo', 70.00, 'desc', 'img'),
--especiais 1
('Croquete de Carne', 75.00, 'desc', 'img'),
('Croquete de Calabresa', 75.00, 'desc', 'img'),
('Pastelzinho de Carne', 75.00, 'desc', 'img'),
('Pastelzinho de Carne com Queijo', 75.00, 'desc', 'img'),
('Pastelzinho de Presunto e Queijo', 75.00, 'desc', 'img'),
('Quibe', 75.00, 'desc', 'img'),
('Esfiha de Carne', 75.00, 'desc', 'img'),
('Esfiha de Calabresa', 75.00, 'desc', 'img'),
('Hamburguinho', 75.00, 'desc', 'img'),
--especiais 2
('Bolinho de Carne', 80.00, 'desc', 'img'),
('Crespinho de Queijo', 80.00, 'desc', 'img'),
('Quibe com Queijo', 80.00, 'desc', 'img'),
('Empadinha de Palmito', 80.00, 'desc', 'img'),
('Empadinha de Frango', 80.00, 'desc', 'img'),
('Empadinha de Carne Seca', 80.00, 'desc', 'img')