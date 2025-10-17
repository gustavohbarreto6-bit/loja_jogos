-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 17/10/2025 às 17:04
-- Versão do servidor: 8.0.40
-- Versão do PHP: 8.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pixelplay`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` char(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idade` int DEFAULT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `nome`, `idade`, `email`) VALUES
('10422987652', 'Thiago Mendes Ferreira', 29, 'thiago.mendes29@outlook.com'),
('21984756320', 'Nicolas Tukaze', 24, 'nicolas.tukaze24@gmail.com'),
('23145879012', 'Rebeca Barbieri', 18, 'rebeca18@gmail.com'),
('32457098105', 'Bruno Henrique Duarte', 28, 'bruno.h.duarte28@hotmail.com'),
('32789542187', 'Gustavo Barreto', 27, 'gbrt3611@gmail.com'),
('43791028675', 'Diogo Nascimento', 26, 'diogo.bahia6@yahoo.com'),
('43981566724', 'João Pedro Lima', 30, 'joaopedro.lima30@gmail.com'),
('51299743860', 'Fernanda Alves Moreira', 35, 'fernanda.moreira35@yahoo.com'),
('51820933470', 'Rafael Oliveira Souza', 32, 'rafael.oliveira32@yahoo.com'),
('54798231645', 'Vinícius Vila', 25, 'vinicius.vila25@yahoo.com'),
('63872915408', 'Breno Oliveira', 30, 'brenoolv30@gmail.com'),
('68123947018', 'Felipe Heitor', 28, 'fhdecria28@gmail.com'),
('68530021497', 'Camila Nogueira Santos', 26, 'camila.nogueira26@gmail.com'),
('70938465217', 'Enzo Avanze', 22, 'avanzinho22@outlook.com'),
('78261199341', 'Ludmila Lopes', 22, 'lud.lopes22@gmail.com'),
('89017236451', 'Raul Lopes', 29, 'raul.mago29@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
