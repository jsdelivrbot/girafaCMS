-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Nov-2017 �s 17:37
-- Vers�o do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `girafa`
--

--
-- Extraindo dados da tabela `sis_grupos`
--

INSERT INTO `sis_grupos` (`ID`, `Lang`, `Name`) VALUES
(1, 'pt-br', 'Administradores'),
(2, 'pt-br', 'Redatores'),
(3, 'pt-br', 'Gerentes');

--
-- Extraindo dados da tabela `sis_idiomas`
--

INSERT INTO `sis_idiomas` (`ID`, `Lang`, `Nome`, `Identificador`) VALUES
(1, NULL, 'Portugu�s (Brasil)', 'pt-br'),
(2, NULL, 'Afric�ner', 'af'),
(3, NULL, 'Am�rico', 'am'),
(4, NULL, '�rabe', 'ar'),
(5, NULL, 'B�lgaro', 'bg'),
(6, NULL, 'Bengali', 'bn'),
(7, NULL, 'Catal�o', 'ca'),
(8, NULL, 'Tcheco', 'cs'),
(9, NULL, 'Dinamarqu�s', 'da'),
(10, NULL, 'Alem�o', 'de'),
(11, NULL, 'Grego', 'el'),
(12, NULL, 'Ingl�s (Reino Unido)', 'en-gb'),
(13, NULL, 'Espanhol', 'es'),
(14, NULL, 'Estoniano', 'et'),
(15, NULL, 'Basco', 'eu'),
(16, NULL, 'Persa', 'fa'),
(17, NULL, 'Finland�s', 'fi'),
(18, NULL, 'Filipino', 'fil'),
(19, NULL, 'Franc�s (Fran�a)', 'fr'),
(20, NULL, 'Franc�s (Canad�)', 'fr-ca'),
(21, NULL, 'Galego', 'gl'),
(22, NULL, 'Guzerate', 'gu'),
(23, NULL, 'H�ndi', 'hi'),
(24, NULL, 'Croata', 'hr'),
(25, NULL, 'H�ngaro', 'hu'),
(26, NULL, 'Indon�sio', 'id'),
(27, NULL, 'Island�s', 'is'),
(28, NULL, 'Italiano', 'it'),
(29, NULL, 'Hebraico', 'iw'),
(30, NULL, 'Japon�s', 'ja'),
(31, NULL, 'Canar�s', 'kn'),
(32, NULL, 'Coreano', 'ko'),
(33, NULL, 'Lituano', 'lt'),
(34, NULL, 'Let�o', 'lv'),
(35, NULL, 'Malaiala', 'ml'),
(36, NULL, 'Marata', 'mr'),
(37, NULL, 'Malaio', 'ms'),
(38, NULL, 'Holand�s', 'nl'),
(39, NULL, 'Noruegu�s', 'no'),
(40, NULL, 'polon�s', 'pl'),
(41, NULL, 'Portugu�s', 'pt-pt'),
(42, NULL, 'Romeno', 'ro'),
(43, NULL, 'Russo', 'ru'),
(44, NULL, 'Eslovaco', 'sk'),
(45, NULL, 'Esloveno', 'sl'),
(46, NULL, 'S�rvio', 'sr'),
(47, NULL, 'Sueco', 'sv'),
(48, NULL, 'Suaili', 'sw'),
(49, NULL, 'T�mil', 'ta'),
(50, NULL, 'Telugu', 'te'),
(51, NULL, 'Tailand�s', 'th'),
(52, NULL, 'Turco', 'tr'),
(53, NULL, 'Ucraniano', 'uk'),
(54, NULL, 'Urdu', 'ur'),
(56, NULL, 'Vietnamita', 'vi'),
(57, NULL, 'Chin�s (Han simplificado)', 'zh-cn'),
(58, NULL, 'Chin�s (Hong Kong)', 'zh-hk'),
(59, NULL, 'Chin�s (Han tradicional)', 'zh'),
(60, NULL, 'Zulu', 'zu'),
(61, NULL, 'Ingl�s (Estados Unidos)', 'en');

--
-- Extraindo dados da tabela `sis_modulos`
--

INSERT INTO `sis_modulos` (`ID`, `Lang`, `Name`, `Path`, `Actived`, `Description`, `Developer`, `Icon`) VALUES
(1, 'pt-br', 'Aplica��o', 'aplicacoes', 'Y', 'M�dulo respons�vel pela configura��o do Sistema', 'Y', 'fa-microchip'),
(2, 'pt-br', 'Usu�rios', 'usuarios', 'Y', 'M�dulo respons�vel pela administra��o de Usu�rios', 'Y', 'fa-users'),
(3, 'pt-br', 'Par�metros', 'parametros', 'Y', 'Cadastro de Par�metros', NULL, 'fa-sliders'),
(4, 'pt-br', 'Cache', 'cache', 'Y', 'Controle de Cache', NULL, 'fa-archive');

--
-- Extraindo dados da tabela `sis_modulos_grupos`
--

INSERT INTO `sis_modulos_grupos` (`ID`, `Lang`, `Module`, `Group`) VALUES
(1, 'pt-br', 1, 1),
(2, 'pt-br', 2, 1),
(3, 'pt-br', 2, 3),
(4, 'pt-br', 3, 1),
(5, 'pt-br', 3, 3),
(6, 'pt-br', 4, 3);

--
-- Extraindo dados da tabela `sis_modulos_idiomas`
--

INSERT INTO `sis_modulos_idiomas` (`ID`, `Lang`, `Modulo`, `Idioma`) VALUES
(1, NULL, 1, 1),
(2, NULL, 2, 1),
(3, NULL, 3, 1),
(4, NULL, 4, 1);

--
-- Extraindo dados da tabela `sis_pastas`
--

INSERT INTO `sis_pastas` (`ID`, `Lang`, `Module`, `Name`, `Order`, `File`, `Grouper`, `Actived`, `MultiLanguages`, `CounterSQL`) VALUES
(2, 'pt-br', 1, 'M�dulos', 20, 'admin.modules.grid.php', 'Organiza��o', 'Y', 'N', NULL),
(3, 'pt-br', 1, 'Usu�rios', 30, 'admin.security.users.grid.php', 'Seguran�a', 'Y', 'N', NULL),
(4, 'pt-br', 1, 'Grupos', 40, 'admin.security.groups.grid.php', 'Seguran�a', 'Y', 'N', NULL),
(5, 'pt-br', 1, 'A��es de Usu�rios', 50, 'admin.security.logs.grid.php', 'Seguran�a', 'Y', 'N', NULL),
(6, 'pt-br', 1, 'Plugins', 30, 'admin.plugins.grid.php', 'Organiza��o', 'Y', 'N', NULL),
(7, 'pt-br', 2, 'Usu�rios', 10, 'admin.usuarios.grid.php', 'Geral', 'Y', 'N', NULL),
(8, 'pt-br', 2, 'Grupos', 20, 'admin.grupos.grid.php', 'Geral', 'Y', 'N', NULL),
(9, 'pt-br', 1, 'Par�metros', 20, 'admin.params.grid.php', 'Banco de Dados', 'Y', 'N', NULL),
(10, 'pt-br', 3, 'Geral', 20, 'admin.params.grid.php', 'Geral', 'Y', 'N', NULL),
(12, 'pt-br', 4, 'Cache', 10, 'index.php', 'Geral', 'Y', 'N', NULL);

--
-- Extraindo dados da tabela `sis_usuarios`
--

INSERT INTO `sis_usuarios` (`ID`, `Lang`, `Name`, `Mail`, `Password`, `Group`, `LastAccess`, `Developer`, `Actived`) VALUES
(1, 'pt-br', 'Admin', 'teste@teste.com.br', '698dc19d489c4e4db73e28a713eab07b', 1, '2013-06-13 10:19:05', 'Y', 'Y');

--
-- Extraindo dados da tabela `sis_usuarios_grupos`
--

INSERT INTO `sis_usuarios_grupos` (`ID`, `Lang`, `User`, `Group`) VALUES
(1, 'pt-br', 1, 1),
(2, 'pt-br', 1, 2),
(3, 'pt-br', 1, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;