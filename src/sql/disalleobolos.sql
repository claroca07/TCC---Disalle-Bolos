CREATE DATABASE IF NOT EXISTS disalle
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;
USE disalle;

CREATE TABLE IF NOT EXISTS bolos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    peso DECIMAL(10,2) NOT NULL,
    descricao text NOT NULL,
    imagem VARCHAR(255) NOT NULL,
    formato ENUM('Redondo', 'Quadrado') DEFAULT 'Quadrado',
    massa ENUM('Branca', 'Chocolate', 'Red Velvet', 'Amanteigada') DEFAULT 'Branca',
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;