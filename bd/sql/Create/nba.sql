-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Set-2021 às 21:21
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
-- Estrutura da tabela `nba`
--

CREATE TABLE `nba` (
  `id` int(11) NOT NULL,
  `clube` int(11) DEFAULT NULL,
  `competicao` int(11) DEFAULT NULL,
  `temporada` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `nba`
--
ALTER TABLE `nba`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clube` (`clube`),
  ADD KEY `competicao` (`competicao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `nba`
--
ALTER TABLE `nba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `nba`
--
ALTER TABLE `nba`
  ADD CONSTRAINT `nba_ibfk_1` FOREIGN KEY (`clube`) REFERENCES `clube` (`ID`),
  ADD CONSTRAINT `nba_ibfk_2` FOREIGN KEY (`competicao`) REFERENCES `competicao` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
