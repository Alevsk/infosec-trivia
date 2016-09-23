-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-09-2016 a las 07:50:47
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `hacking_club`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `correct` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=361 ;

--
-- Volcado de datos para la tabla `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `correct`) VALUES
(1, 1, 'Kevin Mitnick', 1),
(2, 1, 'Larry Ellison', 0),
(3, 1, 'John Draper', 0),
(4, 1, 'Mark Zuckerberg\r\n', 0),
(5, 2, 'Legion of Doom', 1),
(6, 2, 'Lords of Digital', 0),
(7, 2, 'Lulz on Dox', 0),
(8, 2, 'Lots of DoS\r\n', 0),
(9, 3, 'Masters of Deception', 1),
(10, 3, 'Lulzsec', 0),
(11, 3, 'Anonymous', 0),
(12, 3, 'Phone Losers of America\r\n', 0),
(13, 4, 'Adrian Lamo', 1),
(14, 4, 'Mark Abene', 0),
(15, 4, 'Alex Hernandez', 0),
(16, 4, 'Paulino Calderon\r\n', 0),
(17, 5, 'Phreaking', 1),
(18, 5, 'Phoning', 0),
(19, 5, 'Telehacking', 0),
(20, 5, 'Doxing\r\n', 0),
(21, 6, 'Cap''n Crunch', 1),
(22, 6, 'Cocoa Puffs', 0),
(23, 6, 'Corn Flakes', 0),
(24, 6, 'Froot Loops\r\n', 0),
(25, 7, 'Steve Wozniak', 1),
(26, 7, 'Steve Jobs', 0),
(27, 7, 'Bill Gates', 0),
(28, 7, 'Larry Ellison\r\n', 0),
(29, 8, 'Logaritmo Discreto', 1),
(30, 8, 'Hipotesis de Riemann', 0),
(31, 8, 'Conjetura de Poincare', 0),
(32, 8, 'Problema de Jay Z\r\n', 0),
(33, 9, 'WPA2', 1),
(34, 9, 'WEP', 0),
(35, 9, 'WIP', 0),
(36, 9, 'GSM\r\n', 0),
(37, 10, 'Complex Instruction Set Computer (CISC)', 1),
(38, 10, 'Reduced Instruction Set Computer (RISC)', 0),
(39, 10, 'EXtreme Instruction Set Computer', 0),
(40, 10, 'American Instruction Set Computer\r\n', 0),
(41, 11, 'Reduced Instruction Set Computer (RISC)', 1),
(42, 11, 'Complex Instruction Set Computer (CISC)', 0),
(43, 11, 'EXtreme Instruction Set Computer', 0),
(44, 11, 'American Instruction Set Computer\r\n', 0),
(45, 12, 'Kernel Monolitico', 1),
(46, 12, 'Microkernel', 0),
(47, 12, 'Kernel Sanders', 0),
(48, 12, 'Metakernel\r\n', 0),
(49, 13, 'George Hotz', 1),
(50, 13, 'Larry Ellison', 0),
(51, 13, 'Kevin Mitnick', 0),
(52, 13, 'Dennis Ritchie\r\n', 0),
(53, 14, 'Dennis Ritchie', 1),
(54, 14, 'Steve Jobs', 0),
(55, 14, 'Larry Ellison', 0),
(56, 14, 'Linus Torvalds\r\n', 0),
(57, 15, 'Tim Berners-Lee', 1),
(58, 15, 'Alan Turing', 0),
(59, 15, 'Douglas Adams', 0),
(60, 15, 'Dennis Ritchie\r\n', 0),
(61, 16, 'Jonathan James', 1),
(62, 16, 'Dennis Rodman', 0),
(63, 16, 'Wayne Gresky', 0),
(64, 16, 'Alan Turing\r\n', 0),
(65, 17, 'Wozniak', 1),
(66, 17, 'Williams', 0),
(67, 17, 'Honerkamp', 0),
(68, 17, 'Ellison\r\n', 0),
(69, 18, 'Natas', 1),
(70, 18, 'Pingball', 0),
(71, 18, 'ILOVEYOU', 0),
(72, 18, 'MyDoom\r\n', 0),
(73, 19, '7 capas', 1),
(74, 19, '5 capas', 0),
(75, 19, '6 capas', 0),
(76, 19, '8 capas\r\n', 0),
(77, 20, 'Netcat', 1),
(78, 20, 'Hydra', 0),
(79, 20, 'Burp suite', 0),
(80, 20, 'Fierce\r\n', 0),
(81, 21, 'Hydra', 1),
(82, 21, 'Netcat', 0),
(83, 21, 'Fierce', 0),
(84, 21, 'Burp suite\r\n', 0),
(85, 22, 'Burp suite', 1),
(86, 22, 'Fierce', 0),
(87, 22, 'Netcat', 0),
(88, 22, 'Hydra\r\n', 0),
(89, 23, 'Stuxnet', 1),
(90, 23, 'Duqu', 0),
(91, 23, 'Zeus', 0),
(92, 23, 'CryptoLocker\r\n', 0),
(93, 24, 'Capa 8', 1),
(94, 24, 'Capa 7', 0),
(95, 24, 'Capa 6', 0),
(96, 24, 'Capa 5\r\n', 0),
(97, 25, 'Operacion Aurora', 1),
(98, 25, 'Operacion Ababil', 0),
(99, 25, 'Operacion Cleaver', 0),
(100, 25, 'Operacion Hawkeye\r\n', 0),
(101, 26, 'Ls -a', 1),
(102, 26, 'Ls -l', 0),
(103, 26, 'Ls -c', 0),
(104, 26, 'Ls -f\r\n', 0),
(105, 27, 'Shadow Brokers', 1),
(106, 27, 'People''s Liberation Army', 0),
(107, 27, 'Lizard Squad', 0),
(108, 27, 'Anonymous\r\n', 0),
(109, 28, 'Equation Group', 1),
(110, 28, 'Shadow Brokers', 0),
(111, 28, 'Anonymous', 0),
(112, 28, 'LulzSec\r\n', 0),
(113, 29, '0day', 1),
(114, 29, 'SQL injection', 0),
(115, 29, 'Pass the hash', 0),
(116, 29, 'Evil twin\r\n', 0),
(117, 30, 'Pass the hash', 1),
(118, 30, 'DDOS', 0),
(119, 30, 'NTLM attack', 0),
(120, 30, 'LanMan attack\r\n', 0),
(121, 31, 'Binwalk', 1),
(122, 31, 'Acunetix', 0),
(123, 31, 'Dirbuster', 0),
(124, 31, 'Nmap\r\n', 0),
(125, 32, 'Archivos .zip', 1),
(126, 32, 'Archivos .exe', 0),
(127, 32, 'Archivos .sql', 0),
(128, 32, 'Archivos .jar\r\n', 0),
(129, 33, 'Nmap', 1),
(130, 33, 'Wce', 0),
(131, 33, 'Sqlmap', 0),
(132, 33, 'Credmap\r\n', 0),
(133, 34, 'Sqlmap', 1),
(134, 34, 'Nmap', 0),
(135, 34, 'Credmap', 0),
(136, 34, 'Sqldeveloper\r\n', 0),
(137, 35, 'Fierce', 1),
(138, 35, 'Dirbuster', 0),
(139, 35, 'Sqlmap', 0),
(140, 35, 'Domainmap\r\n', 0),
(141, 36, 'Kaminski attack', 1),
(142, 36, 'Heartbleed attack', 0),
(143, 36, 'Shellshock attack', 0),
(144, 36, 'Rosetta Flash\r\n', 0),
(145, 37, 'Shellshock', 1),
(146, 37, 'Heartbleed', 0),
(147, 37, 'Thundershock', 0),
(148, 37, 'Hardshock\r\n', 0),
(149, 38, 'Heartbleed', 1),
(150, 38, 'GHost', 0),
(151, 38, 'Shellshock', 0),
(152, 38, 'Nand mirroring\r\n', 0),
(153, 39, 'Defcon', 1),
(154, 39, 'Security Bsides', 0),
(155, 39, 'DragonJAR', 0),
(156, 39, 'BugCon\r\n', 0),
(157, 40, 'Procdump', 1),
(158, 40, 'Enum', 0),
(159, 40, 'ILSpy', 0),
(160, 40, 'Netcat\r\n', 0),
(161, 41, 'Lsass.exe', 1),
(162, 41, 'Explorer.exe', 0),
(163, 41, 'Svchost.exe', 0),
(164, 41, 'Services.exe\r\n', 0),
(165, 42, 'Mimikatz', 1),
(166, 42, 'Ngrok', 0),
(167, 42, 'Dsplit', 0),
(168, 42, 'Apktool\r\n', 0),
(169, 43, 'Alan Turing', 1),
(170, 43, 'Linus Torvalds', 0),
(171, 43, 'Richard Feynman', 0),
(172, 43, 'Von Neumann\r\n', 0),
(173, 44, 'Von Neumann', 1),
(174, 44, 'Richard Feynman', 0),
(175, 44, 'Linus Torvalds', 0),
(176, 44, 'Dennis Ritchie\r\n', 0),
(177, 45, 'Project Zero', 1),
(178, 45, '0day team', 0),
(179, 45, 'Google security team', 0),
(180, 45, 'Lizard Squad\r\n', 0),
(181, 46, 'Mr. Robot', 1),
(182, 46, 'Hackers', 0),
(183, 46, 'CSI: NY', 0),
(184, 46, 'Scorpion\r\n', 0),
(185, 47, 'Quick sort', 1),
(186, 47, 'Merge sort', 0),
(187, 47, 'Counting sort', 0),
(188, 47, 'Bubble sort\r\n', 0),
(189, 48, 'NTLM', 1),
(190, 48, 'HTTP BASIC AUTH', 0),
(191, 48, 'CHAP', 0),
(192, 48, 'EAP\r\n', 0),
(193, 49, 'Bcrypt', 1),
(194, 49, 'Sha-1', 0),
(195, 49, 'Sha-256', 0),
(196, 49, 'MD5\r\n', 0),
(197, 50, 'MD5', 1),
(198, 50, 'NTLM', 0),
(199, 50, 'Base64', 0),
(200, 50, 'Rot13\r\n', 0),
(201, 51, 'Elliot', 1),
(202, 51, 'Tyrell', 0),
(203, 51, 'Terry', 0),
(204, 51, 'Ollie\r\n', 0),
(205, 52, 'Fsociety', 1),
(206, 52, 'Anonymous', 0),
(207, 52, 'Dark Army', 0),
(208, 52, 'Iranian cyber army\r\n', 0),
(209, 53, 'Evil Corp', 1),
(210, 53, 'AllSafe', 0),
(211, 53, 'Oracle', 0),
(212, 53, 'Dark Corp\r\n', 0),
(213, 54, 'Ecoin', 1),
(214, 54, 'Bitcoin', 0),
(215, 54, 'Litecoin', 0),
(216, 54, 'Ethereum\r\n', 0),
(217, 55, 'Ada Lovelace', 1),
(218, 55, 'Sofia Kovalevskaya', 0),
(219, 55, 'Emmy Noether', 0),
(220, 55, 'Sophie Germain\r\n', 0),
(221, 56, 'Charles Babagge', 1),
(222, 56, 'Christopher Domas', 0),
(223, 56, 'Jonathan James', 0),
(224, 56, 'Alan Turing\r\n', 0),
(225, 57, 'Satoshi Nakamoto', 1),
(226, 57, 'Tsutomu Shimomura', 0),
(227, 57, 'Hideo Kojima', 0),
(228, 57, 'Wang Dong\r\n', 0),
(229, 58, 'Ingenieria social', 1),
(230, 58, 'Social media', 0),
(231, 58, 'Exfiltracion de datos', 0),
(232, 58, 'Infiltracion de datos\r\n', 0),
(233, 59, 'XSS', 1),
(234, 59, 'CSRF', 0),
(235, 59, 'SQL Injection', 0),
(236, 59, 'RCE\r\n', 0),
(237, 60, 'CSRF', 1),
(238, 60, 'XSS', 0),
(239, 60, 'SQL Injection', 0),
(240, 60, 'RCE\r\n', 0),
(241, 61, 'SQL Injection', 1),
(242, 61, 'XSS', 0),
(243, 61, 'CSRF', 0),
(244, 61, 'RCE\r\n', 0),
(245, 62, 'RCE', 1),
(246, 62, 'SQL Injection', 0),
(247, 62, 'XSS', 0),
(248, 62, 'CSRF\r\n', 0),
(249, 63, 'Fuzzing', 1),
(250, 63, 'Tampering', 0),
(251, 63, 'Cracking', 0),
(252, 63, 'Testing\r\n', 0),
(253, 64, 'Christopher Domas', 1),
(254, 64, 'Linus Torvalds', 0),
(255, 64, 'Paulino Calderon', 0),
(256, 64, '\r\n', 0),
(257, 65, 'Tavis Ormandy', 1),
(258, 65, 'Edward Snowden', 0),
(259, 65, 'Aaron Swartz', 0),
(260, 65, 'Tsutomu Shimomura\r\n', 0),
(261, 66, 'Charlie Miller', 1),
(262, 66, 'Chris Vallasek', 0),
(263, 66, 'Edward Snowden', 0),
(264, 66, 'Kevin Mitnick\r\n', 0),
(265, 67, 'Chris Valasek', 1),
(266, 67, 'Edward Snowden', 0),
(267, 67, 'Charlie Miller', 0),
(268, 67, 'Kevin Mitnick\r\n', 0),
(269, 68, 'Edward Snowden', 1),
(270, 68, 'Sebastian Kramer', 0),
(271, 68, 'Charlie Miller', 0),
(272, 68, 'Chris Valasek\r\n', 0),
(273, 69, 'Aaron Swartz', 1),
(274, 69, 'Edward Snowden', 0),
(275, 69, 'Larry Ellison', 0),
(276, 69, 'Charlie Miller\r\n', 0),
(277, 70, 'DMCA', 1),
(278, 70, 'PIPA', 0),
(279, 70, 'SOPA', 0),
(280, 70, 'Murphy law\r\n', 0),
(281, 71, 'SOPA', 1),
(282, 71, 'PIPA', 0),
(283, 71, 'Murphy law', 0),
(284, 71, 'DMCA\r\n', 0),
(285, 72, 'PIPA', 1),
(286, 72, 'SOPA', 0),
(287, 72, 'Murphy law', 0),
(288, 72, 'DMCA\r\n', 0),
(289, 73, 'GNU''s Not Unix', 1),
(290, 73, 'Graphical Notation Uml', 0),
(291, 73, 'Google News Usa', 0),
(292, 73, 'General National University\r\n', 0),
(293, 74, 'Local Area Network', 1),
(294, 74, 'Lossless Audio Notification', 0),
(295, 74, 'Local Antena Network', 0),
(296, 74, 'Local Anarchy Network\r\n', 0),
(297, 75, 'Simple Authentication and security layer', 1),
(298, 75, 'Simple Adminitration and Security LAN', 0),
(299, 75, 'Simple Authentication and Safe Layer', 0),
(300, 75, 'Sophisticated authentication and session level\r\n', 0),
(301, 76, 'WPA', 1),
(302, 76, 'WEP', 0),
(303, 76, 'Ambos', 0),
(304, 76, 'Larry\r\n', 0),
(305, 77, 'Badware', 1),
(306, 77, 'Antivirus', 0),
(307, 77, 'Spam', 0),
(308, 77, 'Do Not touch this button\r\n', 0),
(309, 78, 'Firewall', 1),
(310, 78, 'Ccleaner', 0),
(311, 78, 'Proxy', 0),
(312, 78, 'Malware\r\n', 0),
(313, 79, 'Pharming ', 1),
(314, 79, 'Phishing', 0),
(315, 79, 'Spam', 0),
(316, 79, 'Eavesdropping\r\n', 0),
(317, 80, 'Eavesdropping', 1),
(318, 80, 'Protocolo', 0),
(319, 80, 'Firewall', 0),
(320, 80, 'Keylogger\r\n', 0),
(321, 81, 'DDos', 1),
(322, 81, 'DeDos', 0),
(323, 81, 'Firewall', 0),
(324, 81, 'ICMP\r\n', 0),
(325, 82, 'Autentication', 1),
(326, 82, 'Integridad', 0),
(327, 82, 'Disponibilidad', 0),
(328, 82, 'Confidencialidad\r\n', 0),
(329, 83, 'Un ataque', 1),
(330, 83, 'Una vulnerabilidad', 0),
(331, 83, 'Un riesgo', 0),
(332, 83, 'Una amenaza\r\n', 0),
(333, 84, 'Simetrico', 1),
(334, 84, 'Asimetrico', 0),
(335, 84, 'Llave publicada', 0),
(336, 84, 'Llave escondida\r\n', 0),
(337, 85, 'Asimetrico', 1),
(338, 85, 'Simetrico', 0),
(339, 85, 'Llave asimetrica', 0),
(340, 85, 'Llave simetrica\r\n', 0),
(341, 86, 'Firewall', 1),
(342, 86, 'Routing', 0),
(343, 86, 'Input validation', 0),
(344, 86, 'Ping\r\n', 0),
(345, 87, 'Kevin Mitnick', 1),
(346, 87, 'Jonathan James', 0),
(347, 87, 'George Hotz', 0),
(348, 87, 'Aaron Swartz\r\n', 0),
(349, 88, '255', 1),
(350, 88, '128', 0),
(351, 88, '96', 0),
(352, 88, '16\r\n', 0),
(353, 89, '254', 1),
(354, 89, '127', 0),
(355, 89, '95', 0),
(356, 89, '15\r\n', 0),
(357, 90, 'Zero Cool', 1),
(358, 90, 'Doom', 0),
(359, 90, 'Acid Burn', 0),
(360, 90, 'The Plague', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `question`) VALUES
(1, 'En algun momento de la historia fue el hacker mas buscado por el FBI'),
(2, 'Uno de los grupos hackers mas prolificos de los 80s era conocido como LOD, estas iniciales significan:'),
(3, 'Mark Abene, conocido como Phiber Optik formo parte de este grupo de hackers durante los 80s'),
(4, 'Este ex-hacker de origen Colombiano-Norteamericano fue conocido como "The Homeless Hacker" y cobro fama tras irrumpir en las redes de Yahoo, Microsoft y el New York Times.'),
(5, 'Este termino coloquial en Ingles se refiere a la actividad de estudiar, explorar y experimentar con sistemas de telecomunicaciones, principalmente redes telefonicas '),
(6, 'Las cajas de este cereal incluian un silvato de regalo que producia una frecuencia de 2600Hz, estos se volvieron famosos entre los hackers de telefonos porque les permitian hacer llamadas de larga distancia sin costo.'),
(7, 'Este hacker de computadoras fue mas conocido por ser co-fundador de la compania Apple que por sus hacks'),
(8, 'Los mecanismos criptograficos mas populares hoy en dia se basan en este famoso problema matematico'),
(9, 'Es el mecanismo de seguridad para WiFi mas fuerte actualmente disponible para uso popular'),
(10, 'La familia de procesadores "x86" es un ejemplo de una arquitectura tipo:'),
(11, 'La familias familias de procesadores "SPARC" y "ARM" son ejemplos de una arquitectura tipo:'),
(12, 'El kernel Linux es un ejemplo de este tipo de arquitectura de sistema operativo:'),
(13, 'A la edad de 17 años este talentoso hacker fue el primero en "desbloquear" el iPhone para que pudiera utilizarse con cualquier compa~nia telefonica:'),
(14, 'Este extraordinario cientifico de computadoras fue el creador del lenguage de programacion C y fue co-creador del sistema operativo Unix'),
(15, 'Este notable cientifico de computadoras ingles invento la "World Wide Web", fue nombrado "Sir" y luego promovido a "Caballero de la Orden del Imperio Britanico" por sus contribuciones al desarrollo global de Internet:'),
(16, 'Este ex- hacker burló la seguridad de la NASA y robó software valuado en 17 millones de dolares.'),
(17, 'Co-fundador de Apple, comenzó creando las BlueBoxes (dispositivos que permitian generar llamadas internacionales), argumentando que logro hablar al con el Papa haciendose pasar por Kissinger.'),
(18, 'Virus polimorfico, residente en memoria, creado para un politico Mexicano que queria afectar los datos del IFE.'),
(19, 'Cuantas capas tiene el modelo OSI?'),
(20, 'Es una herramienta de red que permite a través de intérprete de comandos abrir puertos TCP/UDP en un HOST, mejor conocida como la navaja suiza del hacking'),
(21, 'Herramienta que permite realizar ataques de fuerza bruta '),
(22, 'Es un proxy HTTP que fue desarrollado por la compania de seguridad PortSwigger'),
(23, 'Es el primer gusano conocido que espía y reprograma sistemas industriales, en concreto sistemas SCADA de control y monitorización de procesos, pudiendo afectar a infraestructuras críticas como centrales nucleares'),
(24, 'En seguridad, los empleados son el eslabon mas debil en una organizacion, tambien conocidos como capa ...'),
(25, 'Fue una serie de ciber ataques APT (Advanced Persistent Threats) perpretados por grupos militares de hackers chinos, entre ellos People''s Liberation Army y Elderwood Group en 2009, entre las empresas afectadas se encontro Google, Yahoo y Rackspace'),
(26, 'En Linux este comando sirve para listar los archivos ocultos de un directorio'),
(27, 'En agosto de 2016 este grupo de hackers se adjudico el hackeo a la NSA y al grupo de hackers Equation Group, robaron y publicaron varias de sus herramientas y 0days privados'),
(28, 'Es uno de los grupos de ciber ataques mas avanzados y sofisticados del mundo y esta vinculado a la NSA'),
(29, 'Es un ataque contra una aplicación o sistema que tiene como objetivo la ejecución de código malicioso gracias al conocimiento de vulnerabilidades que, por lo general, son desconocidas para la gente y el fabricante del producto'),
(30, 'Es una técnica de hacking que permite a un atacante autenticarse en un servidor o servicio remoto mediante un hash de contraseña NTLM / LanMan en lugar de la contraseña en texto plano'),
(31, 'Herramienta de seguridad que sirve para realizar analisis de binarios'),
(32, 'En android, los archivos apk en realidad son ...'),
(33, 'Herramienta de seguridad que sirve para escanear puertos y detectar servicios activos en un host o grupo de host en una red'),
(34, 'Herramienta de seguridad que sirve para automatizar la explotacion de vulnerabilidades de Inyeccion de comandos SQL'),
(35, 'Herramienta para enumeracion de subdominios incluida en la distribucion de seguridad Kali Linux'),
(36, 'Falla fundamental en el protocolo DNS que permitia a los atacantes realizar ataques de envenenamiento de caché en la mayoría de los servidores DNS'),
(37, 'También conocido como Bashdoor, es una grupo de vulnerabilidades que afectan la shell de linux, esto le permitía al atacante ejecutar comandos arbitrarios en versiones vulnerables de Bash'),
(38, 'Es una vulnerabilidad en la biblioteca de codigo abierto OpenSSL que permite a un atacante leer la memoria de un servidor o un cliente'),
(39, 'El evento de hackers mas grande del mundo celebrado en las vegas cada año'),
(40, 'Es una utilidad de linea de comandos para windows que permite generar un dump de memoria de algun proceso de la computadora '),
(41, 'Es un proceso en Microsoft Windows que se encarga de aplicar la política de seguridad en el sistema, un dump de memoria de este proceso es obtenido es posible recuperar credenciales de usuario en texto plano'),
(42, 'Herramienta para post explotacion y extraccion de credenciales en sistemas Windows creada por Benjamin Delpy'),
(43, 'Es considerado uno de los padres de la ciencia de la computación y precursor de la informática moderna. Proporcionó una influyente formalización de los conceptos de algoritmo y computación'),
(44, 'Fue un matemático húngaro-estadounidense que realizó contribuciones fundamentales en física cuántica, análisis funcional, teoría de conjuntos, teoría de juegos, ciencias de la computación, economía, análisis numérico, cibernética, hidrodinámica, estadística y muchos otros campos'),
(45, 'Es el nombre de un equipo de analistas de seguridad de Google cuya tarea es encontrar 0days'),
(46, 'Serie de televisión estadounidense creada por Sam Esmail caracterizada por el increible realismo en sus escenas de hacking'),
(47, 'En general, ¿Cual es el algoritmo de ordenamiento mas rapido de los cuatro?'),
(48, 'Es un protocolo de autenticación utilizado en redes Windows con Active directory'),
(49, 'Es una función de hasheo de contraseñas diseñada por Niels Provos y basada en el cifrado Blowfish, tiene la particularidad de incluir un salt en el hash generado para protegerlo de ataques con tablas rainbow '),
(50, 'Es un algoritmo de reducción criptográfico de 128 bits ampliamente utilizado, uno de sus usos es el de comprobar que algún archivo no haya sido modificado'),
(51, 'En la serie de television Mr Robot, ¿Cual es el nombre del hacker principal de la serie?'),
(52, 'En la serie de television Mr Robot, ¿Cual es el nombre del grupo de hackers que luchan contra Evil Corp?'),
(53, 'En la serie de television Mr Robot, ¿Cual es el nombre del monopolio tecnologico que intenta dominar el mundo?'),
(54, 'En la serie de television Mr Robot, ¿Cual es el nombre de la cripto moneda creada por Evil Corp?'),
(55, 'Fue una matemática y escritora británica conocida principalmente por su trabajo sobre la máquina calculadora mecánica de uso general de Charles Babbage'),
(56, 'Fue un matemático británico y científico de la computación. Diseñó y parcialmente implementó una máquina para calcular, de diferencias mecánicas para calcular tablas de números'),
(57, 'Es la persona o grupo de personas que crearon el protocolo Bitcoin'),
(58, 'Es el acto de manipular personas para conseguir informaciones confidenciales o contraseñas de acceso a datos importantes'),
(59, 'Vulnerabilidad web que permite inyectar codigo HTML y javascript en el navegador del usuario'),
(60, 'Es un tipo de exploit malicioso de un sitio web en el que acciones no autorizadas son transmitidas por un usuario sin su conocimiento'),
(61, 'El origen de la vulnerabilidad radica en el incorrecto chequeo o filtrado de las variables utilizadas en una consulta a la base de datos'),
(62, 'La capacidad de un atacante para ejecutar comandos o inyectar código en una aplicación a su antojo, generalmente aprovechando alguna vulnerabilidad'),
(63, 'Es una técnica de pruebas de software, a menudo automatizado o semiautomatizado, que implica proporcionar datos inválidos, inesperados o aleatorios a las entradas de un programa'),
(64, 'Investigador de seguridad famoso por publicar una serie de exploits para la arquitectura x86'),
(65, 'Es un white hat hacker que actualmente forma parte del equipo de ciber seguridad Project Zero en Google'),
(66, 'Es uno de los investigadores más famosos de seguridad, especialmente en el mundo de las tecnologías Apple. Revolucionó el mundo cuando en el año 2009 fue capaz de tomar control de un iPhone remotamente mediante un SMS'),
(67, 'White hat hacker que salto a la fama al demostrar cómo podía apagar el motor de una Jeep Cherokee mientras se desplazaba por una carretera.'),
(68, 'Es un consultor tecnológico estadounidense, informante, antiguo empleado de la CIA y de la NSA'),
(69, 'Fue un programador, emprendedor, escritor, activista político y hacktivista de Internet. Estuvo involucrado en el desarrollo del formato de fuente web RSS'),
(70, 'Es una ley de derechos de autor de Estados Unidos que implementa dos tratados del año 1996 de la OMPI, esta ley sanciona no solo la infracción de los derechos de reproducción en sí, también la producción y distribución de tecnologías que permitan sortear las medidas de protección de derechos de autor'),
(71, 'Proyecto de ley presentado en la Cámara de Representantes de los Estados Unidos el 26 de octubre de 2011 que tiene como finalidad expandir las capacidades de la ley estadounidense para combatir el tráfico de contenidos con derechos de autor'),
(72, 'Proyecto de ley que tiene por objetivo declarado el brindar al gobierno de los Estados Unidos herramientas adicionales para restringir el acceso a aquellos sitios web dedicados a infringir o falsificar bienes'),
(73, '¿Que significa GNU?'),
(74, 'Que significa LAN?'),
(75, 'Que es SASL'),
(76, 'Que es mas seguro, WEP o WPA?'),
(77, 'Un malware tambien se conoce como :'),
(78, 'Es la parte de un sistema o una red que esta dise;ada para bloquear el acceso no autorizado, permitiendo comunicaciones autorizadas'),
(79, 'Implica la modificacion de DNS para redireccionar al usuario a un website falso cuando se accede a una direccion web especifica. '),
(80, 'Intercepcion no autorizada de una comunicacion privada en tiempo real. '),
(81, 'Ataque para denegar acceso a una maquina o conjunto de recursos de red a los usuarios'),
(82, 'Principio de seguridad informatica para asegurar cuando se accede a un instalacion informatica por medio de uso de huella digital'),
(83, 'Colapsar un sevidor mediante trafico innecesario de manera intencionada se considera'),
(84, 'Como se clasifican los criptosistemas en funcion del tratamiento que hacemos del mensaje a crifrar '),
(85, 'Como se clasifican los criptosistemas en funcion del tipo de clave que se usa en ambos extremos emisor y receptor'),
(86, 'Se utiliza para controlar que tráfico se permite o se niega a través de la capa de red?'),
(87, 'El arte de la decepcion fue escrito por ... ?'),
(88, 'En una red /24 (CIDR) cuantas direcciones ip pueden existir?'),
(89, 'En una red /24 (CIDR) cuantas direcciones ip son utilizables?'),
(90, 'En la pelicula Hackers (1998) cual es alias del hacker Dade Murphy?');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;