-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Jun-2026 às 17:11
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--
CREATE DATABASE IF NOT EXISTS `loja` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loja`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`) VALUES
(1, 'Eletrônicos'),
(2, 'Roupas'),
(3, 'Hortifrutti'),
(4, 'Padaria'),
(5, 'Beleza'),
(6, 'Laticínios'),
(7, 'Açougue'),
(8, 'Farmácia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `quant` int(11) NOT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `observacoes`, `id_categoria`, `data_cadastro`) VALUES
(1, 'Notebook Dell', '4500.00', 10, 'Dell', 'i5 16GB RAM', 1, '2026-06-17'),
(2, 'Smartphone Galaxy', '2200.00', 8, 'Samsung', '', 1, '2026-06-17'),
(3, 'Calça Jeans', '90.00', 25, 'Levis', 'Jeans lavagem clara', 2, '2026-06-17'),
(4, 'Jaqueta', '130.00', 25, 'Adidas', 'Preta', 2, '2026-06-17'),
(5, 'Batata', '5.50', 140, '', 'Venda por kg', 3, '2026-06-17'),
(6, 'Banana', '10.00', 50, '', 'Venda por dúzia', 3, '2026-06-17'),
(7, 'Pão de Queijo', '22.00', 40, 'Forno de Minas', '', 4, '2026-06-17'),
(8, 'Bolo de Chocolate', '35.00', 8, 'Dona Benta', '500kg', 4, '2026-06-17'),
(9, 'Shampoo', '24.00', 40, 'Elseve', '300ml', 5, '2026-06-17'),
(10, 'Condicionador', '26.00', 35, 'Elseve', '300ml', 5, '2026-06-17'),
(11, 'Queijo', '50.00', 30, 'President', 'Peça de 1kg', 6, '2026-06-17'),
(12, 'Leite', '4.00', 60, 'Itambé', 'Caixa de 1 litro', 6, '2026-06-17'),
(13, 'Linguiça', '24.00', 25, 'Sadia', 'Toscana 1kg', 7, '2026-06-17'),
(14, 'Carne', '50.00', 30, 'Friboi', '', 7, '2026-06-17'),
(15, 'Dipirona', '9.00', 60, 'Neo Química', 'Caixa 20 comprimidos', 8, '2026-06-17'),
(16, 'Paracetamol', '13.00', 50, 'Cimed', 'Caixa 20 comprimidos', 8, '2026-06-17');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
