-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Set-2021 às 17:14
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
  `id_nba` int(11) NOT NULL,
  `id_clube` int(11) DEFAULT NULL,
  `id_competicao` int(11) DEFAULT NULL,
  `inicio` int(4) DEFAULT NULL,
  `fim` int(4) DEFAULT NULL,
  `atual` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `nba`
--
ALTER TABLE `nba`
  ADD PRIMARY KEY (`id_nba`),
  ADD KEY `id_clube` (`id_clube`),
  ADD KEY `id_competicao` (`id_competicao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `nba`
--
ALTER TABLE `nba`
  MODIFY `id_nba` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `nba`
--
ALTER TABLE `nba`
  ADD CONSTRAINT `nba_ibfk_1` FOREIGN KEY (`id_clube`) REFERENCES `clube` (`id_clube`),
  ADD CONSTRAINT `nba_ibfk_2` FOREIGN KEY (`id_competicao`) REFERENCES `competicao` (`id_competicao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
