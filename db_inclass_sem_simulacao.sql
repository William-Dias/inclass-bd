-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 13-Out-2019 às 19:56
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inclass`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbdisciplina`
--

DROP TABLE IF EXISTS `tbdisciplina`;
CREATE TABLE IF NOT EXISTS `tbdisciplina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `tipo_sala` binary(1) NOT NULL,
  `id_escola` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1030080011 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbdisciplina`
--

INSERT INTO `tbdisciplina` (`id`, `nome`, `tipo_sala`, `id_escola`) VALUES
(3308107, 'Algoritmo e Estruturas de Dados', 0x31, '2'),
(3308874, 'Programação Orientada a Objetos', 0x31, '2'),
(3308885, 'Engenharia de Software', 0x30, '2'),
(3335101, 'Ética', 0x30, '2'),
(3335126, 'Gerência de Projetos em Informática', 0x30, '2'),
(3335142, 'Trabalho Interdisciplinar de Graduação I', 0x30, '2'),
(3335146, 'Administração de Ativos de Tecnologia da Informação', 0x30, '2'),
(3335147, 'Trabalho Interdisciplinar de Graduação II', 0x30, '2'),
(3335156, 'PTrabalho Interdisciplinar de Graduação III', 0x30, '2'),
(3335160, 'Trabalho Interdisciplinar de Graduação IV\r\n', 0x30, '2'),
(3335162, 'Segurança da Informação', 0x30, '2'),
(3335164, 'Trabalho Interdisciplinar de Graduação V', 0x30, '2'),
(3335165, 'Inteligência para Negócios (BI)', 0x31, '2'),
(3335195, 'Redes de Computadores', 0x30, '2'),
(3335199, 'Governança de TI', 0x30, '2'),
(3335202, 'Inglês Instrumental', 0x30, '2'),
(4300075, 'Leitura e Produção de Textos', 0x30, '2'),
(4300085, 'Sistema de Informação', 0x30, '2'),
(4300088, 'Sistemas Operacionais', 0x31, '2'),
(4346034, 'Sustentabilidade Responsabilidade Socioambiental', 0x30, '2'),
(103035001, 'Tópicos Especiais A', 0x31, '2'),
(103035011, 'Banco de Dados', 0x31, '2'),
(103035012, 'Análise e Projetos Orientado a Objetos', 0x31, '2'),
(103035013, 'Direito e Legislação', 0x30, '2'),
(103035014, 'Tecnologia Web', 0x31, '2'),
(106035002, 'Programação para Dispositivos Móveis', 0x31, '2'),
(106200001, 'Arquitetura de Computadores', 0x31, '2'),
(1030080010, 'Administracao e Empreendedorismo', 0x30, '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbescola`
--

DROP TABLE IF EXISTS `tbescola`;
CREATE TABLE IF NOT EXISTS `tbescola` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario_idx` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbescola`
--

INSERT INTO `tbescola` (`id`, `nome`, `id_usuario`) VALUES
(1, 'INCLASS', 1000000000),
(2, 'UNI BH', 1000000000),
(3, 'UNA', 1000000000),
(4, 'UNISOCIESC', 1000000000),
(5, 'EBRADI', 1000000000),
(6, 'AGES', 1000000000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbhorario`
--

DROP TABLE IF EXISTS `tbhorario`;
CREATE TABLE IF NOT EXISTS `tbhorario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia_semana` varchar(45) NOT NULL,
  `horario` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbhorario`
--

INSERT INTO `tbhorario` (`id`, `dia_semana`, `horario`) VALUES
(3, 'SEGUNDA FEIRA', '19:00-20h40'),
(4, 'SEGUNDA FEIRA', '20:55-22:34'),
(5, 'TERCA FEIRA', '19:00-20h40'),
(6, 'TERCA FEIRA', '20:55-22:34'),
(7, 'QUARTA FEIRA', '19:00-20h40'),
(8, 'QUARTA FEIRA', '20:55-22:34'),
(9, 'QUINTA FEIRA', '19:00-20h40'),
(10, 'QUINTA FEIRA', '20:55-22:34'),
(11, 'SEXTA FEIRA', '19:00-20h40'),
(12, 'SEXTA FEIRA', '20:55-22:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbhorario_turma_disciplina`
--

DROP TABLE IF EXISTS `tbhorario_turma_disciplina`;
CREATE TABLE IF NOT EXISTS `tbhorario_turma_disciplina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_horario` int(11) NOT NULL,
  `id_disciplina` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbsala`
--

DROP TABLE IF EXISTS `tbsala`;
CREATE TABLE IF NOT EXISTS `tbsala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campus` varchar(45) DEFAULT NULL,
  `capacidade` int(11) NOT NULL,
  `localizacao` int(11) NOT NULL,
  `tipo` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbsala`
--

INSERT INTO `tbsala` (`id`, `campus`, `capacidade`, `localizacao`, `tipo`) VALUES
(1, 'Buritis', 20, 101, '0'),
(2, 'Buritis', 20, 101, '0'),
(3, 'Buritis', 20, 102, '0'),
(4, 'Buritis', 15, 201, '1'),
(5, 'Buritis', 20, 202, '1'),
(6, 'Buritis', 20, 105, '0'),
(7, 'CM 1', 20, 101, '0'),
(8, 'CM 2', 20, 101, '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbturma`
--

DROP TABLE IF EXISTS `tbturma`;
CREATE TABLE IF NOT EXISTS `tbturma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qtde_alunos` int(11) DEFAULT NULL,
  `cod_turma` varchar(45) NOT NULL,
  `curso` varchar(45) DEFAULT NULL,
  `turno` varchar(45) DEFAULT NULL,
  `id_escola` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbturma`
--

INSERT INTO `tbturma` (`id`, `qtde_alunos`, `cod_turma`, `curso`, `turno`, `id_escola`) VALUES
(1, 20, 'SI_1', 'Sistemas de Informação', 'Noturno', 2),
(2, 10, 'CC_1', 'Ciencia da Computação', 'Noturno', 2),
(3, 5, 'CC_2', 'Gestão da Tecnologia da Informação', 'Noturno', 2),
(4, 5, 'CC_2', 'Análise e Desenvolvimento de Sistemas', 'Noturno', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbturma_disciplina`
--

DROP TABLE IF EXISTS `tbturma_disciplina`;
CREATE TABLE IF NOT EXISTS `tbturma_disciplina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_turma` int(11) NOT NULL,
  `id_disciplina` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `semestre` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbturma_disciplina`
--

INSERT INTO `tbturma_disciplina` (`id`, `id_turma`, `id_disciplina`, `ano`, `semestre`) VALUES
(2, 2, 3335101, 2015, 1),
(3, 2, 3335165, 2015, 1),
(4, 2, 3335162, 2015, 1),
(5, 2, 103035014, 2015, 1),
(6, 2, 103035001, 2015, 1),
(7, 3, 4300085, 2016, 2),
(8, 3, 3335165, 2016, 2),
(9, 3, 3335162, 2016, 2),
(10, 3, 3335199, 2016, 2),
(11, 3, 103035013, 2016, 2),
(12, 1, 3335101, 2018, 1),
(13, 1, 3335165, 2018, 1),
(14, 1, 3335162, 2018, 1),
(15, 1, 3335199, 2018, 1),
(16, 1, 103035013, 2018, 1),
(18, 4, 3308107, 2019, 2),
(19, 4, 3335202, 2019, 2),
(20, 1, 3335199, 2019, 2),
(21, 1, 103035013, 2019, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuario`
--

DROP TABLE IF EXISTS `tbusuario`;
CREATE TABLE IF NOT EXISTS `tbusuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `id_escola` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_escola_idx` (`id_escola`)
) ENGINE=InnoDB AUTO_INCREMENT=1000010001 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbusuario`
--

INSERT INTO `tbusuario` (`id`, `login`, `senha`, `id_escola`) VALUES
(1000000000, 'admin', '123456', 2);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbescola`
--
ALTER TABLE `tbescola`
  ADD CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbusuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tbturma`
--
ALTER TABLE `tbturma`
  ADD CONSTRAINT `fk_id_escola` FOREIGN KEY (`id`) REFERENCES `tbescola` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tbusuario`
--
ALTER TABLE `tbusuario`
  ADD CONSTRAINT `id_escola` FOREIGN KEY (`id_escola`) REFERENCES `tbescola` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
