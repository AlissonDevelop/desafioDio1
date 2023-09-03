-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Set-2023 às 20:38
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_projeto01dio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `IdDepto` int(11) NOT NULL,
  `NomeDepto` varchar(25) NOT NULL,
  `Gerente` int(11) NOT NULL,
  `Divisao` varchar(20) NOT NULL,
  `Local` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`IdDepto`, `NomeDepto`, `Gerente`, `Divisao`, `Local`) VALUES
(1, 'Departamento de TI', 101, 'Tecnologia', 'São Paulo'),
(2, 'DIRETORIA', 1, 'SUDOESTE', 'SAO PAULO'),
(3, 'ESTOQUE', 101, 'SUDOESTE', 'CAMPINAS'),
(4, 'TI', 2, 'SUDOESTE', 'RIBEIRAO'),
(5, 'Departamento de TI', 101, 'Tecnologia', 'São Paulo'),
(6, 'DIRETORIA', 1, 'SUDOESTE', 'SAO PAULO'),
(7, 'ESTOQUE', 101, 'SUDOESTE', 'CAMPINAS'),
(8, 'TI', 2, 'SUDOESTE', 'RIBEIRAO'),
(9, 'VENDAS', 102, 'SUDOESTE', 'JUNDIAI'),
(10, 'COMPRAS', 3, 'SUDOESTE', 'SAO PAULO'),
(11, 'RH', 103, 'SUDOESTE', 'COTIA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empregado`
--

CREATE TABLE `empregado` (
  `IdEmpregado` int(11) NOT NULL,
  `NomeEmpregado` varchar(20) NOT NULL,
  `IdDepto` int(11) DEFAULT NULL,
  `Cargo` varchar(6) NOT NULL,
  `Tempo_Emp` int(11) DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  `Comissao` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `empregado`
--

INSERT INTO `empregado` (`IdEmpregado`, `NomeEmpregado`, `IdDepto`, `Cargo`, `Tempo_Emp`, `Salario`, `Comissao`) VALUES
(1, 'Sophia', 20, 'GER', 6, '15000.00', NULL),
(2, 'Helea', 30, 'GER', 6, '15000.00', NULL),
(3, 'Valetia', 40, 'GER', 9, '15000.00', NULL),
(4, 'Laura', 50, 'GER', 5, '15000.00', NULL),
(5, 'Isabella', 60, 'GER', 8, '15000.00', NULL),
(6, 'Mauela', 10, 'ADM', 7, '5000.00', NULL),
(7, 'Luiza', 40, 'VED', 5, '3500.00', '1150.00'),
(8, 'Lorea', 60, 'ADM', 6, '5000.00', NULL),
(9, 'Lívia', 10, 'ADM', 5, '5000.00', NULL),
(10, 'Giovaa', 20, 'ADM', 8, '5000.00', NULL),
(11, 'Maria Eduarda', 30, 'ADM', 13, '5000.00', NULL),
(12, 'Maria Clara', 50, 'ADM', 9, '5000.00', NULL),
(13, 'Cecília', 60, 'ADM', 7, '5000.00', NULL),
(14, 'Eloá', 10, 'ADM', 4, '5000.00', NULL),
(15, 'Lara', 20, 'ADM', 4, '5000.00', NULL),
(16, 'Maria Júlia', 30, 'ADM', 7, '5000.00', NULL),
(17, 'Isadora', 40, 'VED', 7, '3500.00', '1290.00'),
(18, 'Mariaa', 50, 'AUX', 7, '3000.00', NULL),
(19, 'Emauelly', 60, 'AUX', 9, '3000.00', NULL),
(20, 'Aa Júlia', 10, 'AUX', 9, '3000.00', NULL),
(21, 'Aa Luiza', 20, 'AUX', 9, '3000.00', NULL),
(22, 'Aa Clara', 30, 'AUX', 9, '3000.00', NULL),
(23, 'Melissa', 40, 'VED', 7, '3500.00', '1350.00'),
(24, 'Yasmi', 50, 'ADM', 6, '5000.00', NULL),
(25, 'Maria Alice', 60, 'ATED', 5, '2700.00', NULL),
(26, 'Isabelly', 10, 'ATED', 8, '2700.00', NULL),
(27, 'Lavíia', 20, 'ATED', 7, '2700.00', NULL),
(28, 'Esther', 30, 'ATED', 6, '2700.00', NULL),
(29, 'Sarah', 40, 'ATED', 5, '2700.00', NULL),
(30, 'Elisa', 50, 'ATED', 5, '2700.00', NULL),
(31, 'Atoella', 60, 'ADM', 9, '5000.00', NULL),
(32, 'Rafaela', 10, 'AUX', 7, '3000.00', NULL),
(33, 'Maria Cecília', 20, 'AUX', 13, '3000.00', NULL),
(34, 'Liz', 30, 'ADM', 3, '5000.00', NULL),
(35, 'Maria', 40, 'VED', 6, '3500.00', '1460.00'),
(36, 'icole', 50, 'AUX', 6, '3000.00', NULL),
(37, 'Maitê', 60, 'ADM', 5, '5000.00', NULL),
(38, 'Isis', 10, 'VED', 4, '3500.00', '1470.00'),
(39, 'Alícia', 20, 'ATED', 6, '2700.00', NULL),
(40, 'Lua', 30, 'ATED', 4, '2700.00', NULL),
(41, 'Rebeca', 40, 'VED', 6, '3500.00', '1520.00'),
(42, 'Agatha', 50, 'AUX', 6, '3000.00', NULL),
(43, 'Letícia', 60, 'AUX', 7, '3000.00', NULL),
(44, 'Milea', 60, 'ADM', 6, '5000.00', NULL),
(45, 'Maria Helea', 10, 'ADM', 12, '5000.00', NULL),
(46, 'Biaca', 20, 'ADM', 6, '5000.00', NULL),
(47, 'Larissa', 30, 'ADM', 7, '5000.00', NULL),
(48, 'Mirella', 40, 'VED', 7, '3500.00', '1710.00'),
(49, 'Maria Flor', 50, 'AUX', 10, '3000.00', NULL),
(50, 'Allaa', 60, 'ATED', 6, '2700.00', NULL),
(51, 'Aa Sophia', 10, 'ATED', 10, '2700.00', NULL),
(52, 'Clarice', 20, 'ATED', 7, '2700.00', NULL),
(53, 'Pietra', 30, 'ATED', 6, '2700.00', NULL),
(54, 'Maria Vitória', 40, 'VED', 13, '3500.00', '1830.00'),
(55, 'Maya', 50, 'AUX', 4, '3000.00', NULL),
(56, 'Laís', 60, 'AUX', 4, '3000.00', NULL),
(57, 'Ayla', 10, 'AUX', 4, '3000.00', NULL),
(58, 'Aa Lívia', 20, 'AUX', 9, '3000.00', NULL),
(59, 'Eduarda', 30, 'AUX', 7, '3000.00', NULL),
(60, 'Mariah', 40, 'AUX', 6, '3000.00', NULL),
(61, 'Stella', 50, 'ATED', 6, '2700.00', NULL),
(62, 'Aa', 60, 'ATED', 3, '2700.00', NULL),
(63, 'Gabrielly', 10, 'AUX', 9, '3000.00', NULL),
(64, 'Sophie', 20, 'ADM', 6, '5000.00', NULL),
(65, 'Carolia', 30, 'AUX', 8, '3000.00', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`IdDepto`);

--
-- Índices para tabela `empregado`
--
ALTER TABLE `empregado`
  ADD PRIMARY KEY (`IdEmpregado`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `IdDepto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `empregado`
--
ALTER TABLE `empregado`
  MODIFY `IdEmpregado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
