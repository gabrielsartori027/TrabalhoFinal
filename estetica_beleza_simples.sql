-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/11/2025 às 01:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

CREATE DATABASE IF NOT EXISTS `estetica_beleza_simples` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estetica_beleza_simples`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estetica_beleza_simples`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` text NOT NULL,
  `respondida` int(11) DEFAULT 0,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `telefone`, `email`, `mensagem`, `respondida`, `data_envio`) VALUES
(1, 'Gabriel Sartori', '49989193937', 'gabrielsartori2928@gmail.com', 'Quero fazer loucuras', 1, '2025-11-25 22:28:13'),
(2, 'Leticia Fagundes', '394734737', 'oloqco@fmails.com', 'Necessito de um horario para limpar minha pele', 0, '2025-11-25 22:58:55'),
(3, 'Jurandirv', '394734737', 'oloqwewco@fmails.com', 'Posso usar sabao na pele?', 1, '2025-11-25 22:59:18'),
(4, 'Jucimara', '394734737', 'oloqwewco@fmails.com', 'Quero marcar um horario.', 0, '2025-11-25 22:59:32'),
(5, 'Gabriel Sartori', '49989193937', 'gabrielsartori2928@gmail.com', 'Quwro agendar', 1, '2025-11-26 00:00:30');

-- --------------------------------------------------------

--
-- Estrutura para tabela `depoimentos`
--

CREATE TABLE `depoimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `avaliacao` int(11) NOT NULL,
  `mensagem` text NOT NULL,
  `curtidas` int(11) DEFAULT 0,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `depoimentos`
--

INSERT INTO `depoimentos` (`id`, `nome`, `avaliacao`, `mensagem`, `curtidas`, `data_envio`) VALUES
(1, 'Nicolas Witt', 5, 'Excelente profissional! Minha pele ficou incrível após a limpeza. Super recomendo!', 2, '2025-11-25 22:25:34'),
(2, 'Gabriel Sartori', 5, 'Atendimento impecável e resultados visíveis desde a primeira sessão. Muito satisfeito!', 2, '2025-11-25 22:25:34'),
(3, 'Ana Banana', 5, 'Profissional dedicada e ambiente acolhedor. Minha pele nunca esteve tão bonita!', 1, '2025-11-25 22:25:34'),
(4, 'Vinicius Leban', 3, 'Nao gostei', 5, '2025-11-25 22:29:51'),
(5, 'Gabriel Sartori', 5, 'Melhor estetica do braaaasiiiil', 3, '2025-11-25 23:00:13'),
(6, 'Gabriel Sartori', 4, 'tororxd', 1, '2025-11-26 00:00:08');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
