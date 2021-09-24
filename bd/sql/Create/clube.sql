-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Set-2021 às 20:18
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `geocms`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clube`
--

CREATE TABLE `clube` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sigla` varchar(5) DEFAULT NULL,
  `pais` int(11) DEFAULT NULL,
  `arena` int(11) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clube`
--
ALTER TABLE `clube`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pais` (`pais`),
  ADD KEY `arena` (`arena`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clube`
--
ALTER TABLE `clube`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `clube`
--
ALTER TABLE `clube`
  ADD CONSTRAINT `clube_ibfk_1` FOREIGN KEY (`pais`) REFERENCES `pais` (`id`),
  ADD CONSTRAINT `clube_ibfk_2` FOREIGN KEY (`arena`) REFERENCES `arena` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
