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
-- Estrutura da tabela `arena`
--

CREATE TABLE `arena` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `pais` int(11) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `competicao`
--

CREATE TABLE `competicao` (
  `ID` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `nome_oficial` varchar(255) DEFAULT NULL,
  `zoom_lat` varchar(255) DEFAULT NULL,
  `zoom_long` varchar(255) DEFAULT NULL,
  `zoom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `nba_old`
--

CREATE TABLE `nba_old` (
  `id` int(11) NOT NULL,
  `clube` varchar(100) NOT NULL,
  `arena` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `nba_old`
--

INSERT INTO `nba_old` (`id`, `clube`, `arena`, `latitude`, `longitude`, `imagem`) VALUES
(1, 'ATLANTA HAWKS', 'State Farm Arena', '33.7572935', '-84.3985131', 'hawks'),
(2, 'BOSTON CELTICS', 'TD Garden', '42.366198', '-71.062146', 'celtics'),
(3, 'BROOKLYN NETS', 'Barclays Center', '40.6837282', '-73.9781808', 'nets'),
(4, 'CHARLOTTE HORNETS', 'Spectrum Center', '35.2251563', '-80.8415798', 'hornets'),
(5, 'CHICAGO BULLS', 'United Center', '41.8806948', '-87.6763646', 'bulls'),
(6, 'CLEVELAND CAVALIERS', 'Quicken Loans Arena', '41.4965514', '-81.6902461', 'cavaliers'),
(7, 'DALLAS MAVERICKS', 'American Airlines Center', '32.7903908', '-96.8190094', 'mavs'),
(8, 'DENVER NUGGETS', 'Ball Arena', '39.7486606', '-105.0097915', 'nuggets'),
(9, 'DETROIT PISTONS', 'Little Caesars Arena', '42.3411065', '-83.057456', 'pistons'),
(10, 'GOLDEN STATE WARRIORS', 'Chase Center', '37.7680508', '-122.3899037', 'warriors'),
(11, 'HOUSTON ROCKETS', 'Toyota Center', '29.750765', '-95.3642892', 'rockets'),
(12, 'INDIANA PACERS', 'Bankers Life Fieldhouse', '39.7640475', '-86.1577254', 'pacers'),
(13, 'LOS ANGELES CLIPPERS', 'Staples Center', '33.7572935', '-118.2694428', 'clippers'),
(14, 'LOS ANGELES LAKERS', 'Staples Center', '33.7572935', '-118.2694428', 'lakers'),
(15, 'MEMPHIS GRIZZLIES', 'FedExForum', '35.1381462', '-90.0527751', 'grizzles'),
(16, 'MIAMI HEAT', 'AmericanAirlines Arena', '25.7814062', '-80.1891577', 'heat'),
(17, 'MILWAUKEE BUCKS', 'Fiserv Forum', '43.0450841', '-87.9195749', 'bucks'),
(18, 'MINNESOTA TIMBERWOLVES', 'Target Center', '44.9794671', '-93.2782834', 'timberwolves'),
(19, 'NEW ORLEANS PELICANS', 'Smoothie King Center', '29.9490397', '-90.0842455', 'pelicans'),
(20, 'NEW YORK KNICKS', 'Madison Square Garden', '40.7463549', '-73.9933644', 'knicks'),
(21, 'OKLAHOMA CITY THUNDER', 'Chesapeake Energy Arena', '35.463429', '-97.5173025', 'thunder'),
(22, 'ORLANDO MAGIC', 'Amway Center', '28.5392261', '-81.3860422', 'magic'),
(23, 'PHILADELPHIA 76ERS', 'Wells Fargo Center', '39.9012015', '-75.189489', '76ers'),
(24, 'PHOENIX SUNS', 'Talking Stick Resort Arena', '33.4457415', '-112.073389', 'suns'),
(25, 'PORTLAND TRAIL BLAZERS', 'Moda Center', '45.5315688', '-122.669031', 'blazers'),
(26, 'SACRAMENTO KINGS', 'Golden 1 Center', '38.5802087', '-121.5018489', 'kings'),
(27, 'SAN ANTONIO SPURS', 'AT&T Center', '29.4270248', '-98.4396539', 'spurs'),
(28, 'TORONTO RAPTORS', 'Air Canada Centre', '43.64347', '-79.3812876', 'raptors'),
(29, 'UTAH JAZZ', 'EnergySolutions Arena', '40.7692359', '-111.9038243', 'jazz'),
(30, 'WASHINGTON WIZARDS', 'Capital One Arena', '38.8981717', '-77.0230455', 'wizards');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `nome_pt` varchar(60) DEFAULT NULL,
  `sigla` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Países e Nações';

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`id`, `nome`, `nome_pt`, `sigla`) VALUES
(1, 'Brazil', 'Brasil', 'BR'),
(2, 'Afghanistan', 'Afeganistão', 'AF'),
(3, 'Albania', 'Albânia, Republica da', 'AL'),
(4, 'Algeria', 'Argélia', 'DZ'),
(5, 'American Samoa', 'Samoa Americana', 'AS'),
(6, 'Andorra', 'Andorra', 'AD'),
(7, 'Angola', 'Angola', 'AO'),
(8, 'Anguilla', 'Anguilla', 'AI'),
(9, 'Antarctica', 'Antártida', 'AQ'),
(10, 'Antigua and Barbuda', 'Antigua e Barbuda', 'AG'),
(11, 'Argentina', 'Argentina', 'AR'),
(12, 'Armenia', 'Armênia, Republica da', 'AM'),
(13, 'Aruba', 'Aruba', 'AW'),
(14, 'Australia', 'Austrália', 'AU'),
(15, 'Austria', 'Áustria', 'AT'),
(16, 'Azerbaijan', 'Azerbaijão, Republica do', 'AZ'),
(17, 'Bahamas', 'Bahamas, Ilhas', 'BS'),
(18, 'Bahrain', 'Bahrein, Ilhas', 'BH'),
(19, 'Bangladesh', 'Bangladesh', 'BD'),
(20, 'Barbados', 'Barbados', 'BB'),
(21, 'Belarus', 'Belarus, Republica da', 'BY'),
(22, 'Belgium', 'Bélgica', 'BE'),
(23, 'Belize', 'Belize', 'BZ'),
(24, 'Benin', 'Benin', 'BJ'),
(25, 'Bermuda', 'Bermudas', 'BM'),
(26, 'Bhutan', 'Butão', 'BT'),
(27, 'Bolivia', 'Bolívia', 'BO'),
(28, 'Bosnia and Herzegowina', 'Bósnia-herzegovina (Republica da)', 'BA'),
(29, 'Botswana', 'Botsuana', 'BW'),
(30, 'Bouvet Island', 'Bouvet, Ilha', 'BV'),
(31, 'British Indian Ocean Territory', 'Território Britânico do Oceano Indico', 'IO'),
(32, 'Brunei Darussalam', 'Brunei', 'BN'),
(33, 'Bulgaria', 'Bulgária, Republica da', 'BG'),
(34, 'Burkina Faso', 'Burkina Faso', 'BF'),
(35, 'Burundi', 'Burundi', 'BI'),
(36, 'Cambodia', 'Camboja', 'KH'),
(37, 'Cameroon', 'Camarões', 'CM'),
(38, 'Canada', 'Canada', 'CA'),
(39, 'Cape Verde', 'Cabo Verde, Republica de', 'CV'),
(40, 'Cayman Islands', 'Cayman, Ilhas', 'KY'),
(41, 'Central African Republic', 'Republica Centro-Africana', 'CF'),
(42, 'Chad', 'Chade', 'TD'),
(43, 'Chile', 'Chile', 'CL'),
(44, 'China', 'China, Republica Popular', 'CN'),
(45, 'Christmas Island', 'Christmas, Ilha (Navidad)', 'CX'),
(46, 'Cocos (Keeling) Islands', 'Cocos (Keeling), Ilhas', 'CC'),
(47, 'Colombia', 'Colômbia', 'CO'),
(48, 'Comoros', 'Comores, Ilhas', 'KM'),
(49, 'Congo', 'Congo', 'CG'),
(50, 'Congo, the Democratic Republic of the', 'Congo, Republica Democrática do', 'CD'),
(51, 'Cook Islands', 'Cook, Ilhas', 'CK'),
(52, 'Costa Rica', 'Costa Rica', 'CR'),
(53, 'Cote d`Ivoire', 'Costa do Marfim', 'CI'),
(54, 'Croatia (Hrvatska)', 'Croácia (Republica da)', 'HR'),
(55, 'Cuba', 'Cuba', 'CU'),
(56, 'Cyprus', 'Chipre', 'CY'),
(57, 'Czech Republic', 'Tcheca, Republica', 'CZ'),
(58, 'Denmark', 'Dinamarca', 'DK'),
(59, 'Djibouti', 'Djibuti', 'DJ'),
(60, 'Dominica', 'Dominica, Ilha', 'DM'),
(61, 'Dominican Republic', 'Republica Dominicana', 'DO'),
(62, 'East Timor', 'Timor Leste', 'TL'),
(63, 'Ecuador', 'Equador', 'EC'),
(64, 'Egypt', 'Egito', 'EG'),
(65, 'El Salvador', 'El Salvador', 'SV'),
(66, 'Equatorial Guinea', 'Guine-Equatorial', 'GQ'),
(67, 'Eritrea', 'Eritreia', 'ER'),
(68, 'Estonia', 'Estônia, Republica da', 'EE'),
(69, 'Ethiopia', 'Etiópia', 'ET'),
(70, 'Falkland Islands (Malvinas)', 'Falkland (Ilhas Malvinas)', 'FK'),
(71, 'Faroe Islands', 'Feroe, Ilhas', 'FO'),
(72, 'Fiji', 'Fiji', 'FJ'),
(73, 'Finland', 'Finlândia', 'FI'),
(74, 'France', 'Franca', 'FR'),
(76, 'French Guiana', 'Guiana francesa', 'GF'),
(77, 'French Polynesia', 'Polinésia Francesa', 'PF'),
(78, 'French Southern Territories', 'Terras Austrais e Antárticas Francesas', 'TF'),
(79, 'Gabon', 'Gabão', 'GA'),
(80, 'Gambia', 'Gambia', 'GM'),
(81, 'Georgia', 'Georgia, Republica da', 'GE'),
(82, 'Germany', 'Alemanha', 'DE'),
(83, 'Ghana', 'Gana', 'GH'),
(84, 'Gibraltar', 'Gibraltar', 'GI'),
(85, 'Greece', 'Grécia', 'GR'),
(86, 'Greenland', 'Groenlândia', 'GL'),
(87, 'Grenada', 'Granada', 'GD'),
(88, 'Guadeloupe', 'Guadalupe', 'GP'),
(89, 'Guam', 'Guam', 'GU'),
(90, 'Guatemala', 'Guatemala', 'GT'),
(91, 'Guinea', 'Guine', 'GN'),
(92, 'Guinea-Bissau', 'Guine-Bissau', 'GW'),
(93, 'Guyana', 'Guiana', 'GY'),
(94, 'Haiti', 'Haiti', 'HT'),
(95, 'Heard and Mc Donald Islands', 'Ilha Heard e Ilhas McDonald', 'HM'),
(96, 'Holy See (Vatican City State)', 'Vaticano, Estado da Cidade do', 'VA'),
(97, 'Honduras', 'Honduras', 'HN'),
(98, 'Hong Kong', 'Hong Kong', 'HK'),
(99, 'Hungary', 'Hungria, Republica da', 'HU'),
(100, 'Iceland', 'Islândia', 'IS'),
(101, 'India', 'Índia', 'IN'),
(102, 'Indonesia', 'Indonésia', 'ID'),
(103, 'Iran (Islamic Republic of)', 'Ira, Republica Islâmica do', 'IR'),
(104, 'Iraq', 'Iraque', 'IQ'),
(105, 'Ireland', 'Irlanda', 'IE'),
(106, 'Israel', 'Israel', 'IL'),
(107, 'Italy', 'Itália', 'IT'),
(108, 'Jamaica', 'Jamaica', 'JM'),
(109, 'Japan', 'Japão', 'JP'),
(110, 'Jordan', 'Jordânia', 'JO'),
(111, 'Kazakhstan', 'Cazaquistão, Republica do', 'KZ'),
(112, 'Kenya', 'Quênia', 'KE'),
(113, 'Kiribati', 'Kiribati', 'KI'),
(114, 'Korea, Democratic People`s Republic of', 'Coreia, Republica Popular Democrática da', 'KP'),
(115, 'Korea, Republic of', 'Coreia, Republica da', 'KR'),
(116, 'Kuwait', 'Kuwait', 'KW'),
(117, 'Kyrgyzstan', 'Quirguiz, Republica', 'KG'),
(118, 'Lao People`s Democratic Republic', 'Laos, Republica Popular Democrática do', 'LA'),
(119, 'Latvia', 'Letônia, Republica da', 'LV'),
(120, 'Lebanon', 'Líbano', 'LB'),
(121, 'Lesotho', 'Lesoto', 'LS'),
(122, 'Liberia', 'Libéria', 'LR'),
(123, 'Libyan Arab Jamahiriya', 'Líbia', 'LY'),
(124, 'Liechtenstein', 'Liechtenstein', 'LI'),
(125, 'Lithuania', 'Lituânia, Republica da', 'LT'),
(126, 'Luxembourg', 'Luxemburgo', 'LU'),
(127, 'Macau', 'Macau', 'MO'),
(128, 'North Macedonia', 'Macedônia do Norte', 'MK'),
(129, 'Madagascar', 'Madagascar', 'MG'),
(130, 'Malawi', 'Malavi', 'MW'),
(131, 'Malaysia', 'Malásia', 'MY'),
(132, 'Maldives', 'Maldivas', 'MV'),
(133, 'Mali', 'Mali', 'ML'),
(134, 'Malta', 'Malta', 'MT'),
(135, 'Marshall Islands', 'Marshall, Ilhas', 'MH'),
(136, 'Martinique', 'Martinica', 'MQ'),
(137, 'Mauritania', 'Mauritânia', 'MR'),
(138, 'Mauritius', 'Mauricio', 'MU'),
(139, 'Mayotte', 'Mayotte (Ilhas Francesas)', 'YT'),
(140, 'Mexico', 'México', 'MX'),
(141, 'Micronesia, Federated States of', 'Micronesia', 'FM'),
(142, 'Moldova, Republic of', 'Moldávia, Republica da', 'MD'),
(143, 'Monaco', 'Mônaco', 'MC'),
(144, 'Mongolia', 'Mongólia', 'MN'),
(145, 'Montserrat', 'Montserrat, Ilhas', 'MS'),
(146, 'Morocco', 'Marrocos', 'MA'),
(147, 'Mozambique', 'Moçambique', 'MZ'),
(148, 'Myanmar', 'Mianmar (Birmânia)', 'MM'),
(149, 'Namibia', 'Namíbia', 'NA'),
(150, 'Nauru', 'Nauru', 'NR'),
(151, 'Nepal', 'Nepal', 'NP'),
(152, 'Netherlands', 'Países Baixos (Holanda)', 'NL'),
(154, 'New Caledonia', 'Nova Caledonia', 'NC'),
(155, 'New Zealand', 'Nova Zelândia', 'NZ'),
(156, 'Nicaragua', 'Nicarágua', 'NI'),
(157, 'Niger', 'Níger', 'NE'),
(158, 'Nigeria', 'Nigéria', 'NG'),
(159, 'Niue', 'Niue, Ilha', 'NU'),
(160, 'Norfolk Island', 'Norfolk, Ilha', 'NF'),
(161, 'Northern Mariana Islands', 'Marianas do Norte', 'MP'),
(162, 'Norway', 'Noruega', 'NO'),
(163, 'Oman', 'Oma', 'OM'),
(164, 'Pakistan', 'Paquistão', 'PK'),
(165, 'Palau', 'Palau', 'PW'),
(166, 'Panama', 'Panamá', 'PA'),
(167, 'Papua New Guinea', 'Papua Nova Guine', 'PG'),
(168, 'Paraguay', 'Paraguai', 'PY'),
(169, 'Peru', 'Peru', 'PE'),
(170, 'Philippines', 'Filipinas', 'PH'),
(171, 'Pitcairn', 'Pitcairn, Ilha', 'PN'),
(172, 'Poland', 'Polônia, Republica da', 'PL'),
(173, 'Portugal', 'Portugal', 'PT'),
(174, 'Puerto Rico', 'Porto Rico', 'PR'),
(175, 'Qatar', 'Catar', 'QA'),
(176, 'Reunion', 'Reunião, Ilha', 'RE'),
(177, 'Romania', 'Romênia', 'RO'),
(178, 'Russian Federation', 'Rússia, Federação da', 'RU'),
(179, 'Rwanda', 'Ruanda', 'RW'),
(180, 'Saint Kitts and Nevis', 'São Cristovão e Neves, Ilhas', 'KN'),
(181, 'Saint LUCIA', 'Santa Lucia', 'LC'),
(182, 'Saint Vincent and the Grenadines', 'São Vicente e Granadinas', 'VC'),
(183, 'Samoa', 'Samoa', 'WS'),
(184, 'San Marino', 'San Marino', 'SM'),
(185, 'Sao Tome and Principe', 'São Tome e Príncipe, Ilhas', 'ST'),
(186, 'Saudi Arabia', 'Arábia Saudita', 'SA'),
(187, 'Senegal', 'Senegal', 'SN'),
(188, 'Seychelles', 'Seychelles', 'SC'),
(189, 'Sierra Leone', 'Serra Leoa', 'SL'),
(190, 'Singapore', 'Cingapura', 'SG'),
(191, 'Slovakia (Slovak Republic)', 'Eslovaca, Republica', 'SK'),
(192, 'Slovenia', 'Eslovênia, Republica da', 'SI'),
(193, 'Solomon Islands', 'Salomão, Ilhas', 'SB'),
(194, 'Somalia', 'Somalia', 'SO'),
(195, 'South Africa', 'África do Sul', 'ZA'),
(196, 'South Georgia and the South Sandwich Islands', 'Ilhas Geórgia do Sul e Sandwich do Sul', 'GS'),
(197, 'Spain', 'Espanha', 'ES'),
(198, 'Sri Lanka', 'Sri Lanka', 'LK'),
(199, 'St. Helena', 'Santa Helena', 'SH'),
(200, 'St. Pierre and Miquelon', 'São Pedro e Miquelon', 'PM'),
(201, 'Sudan', 'Sudão', 'SD'),
(202, 'Suriname', 'Suriname', 'SR'),
(203, 'Svalbard and Jan Mayen Islands', 'Svalbard e Jan Mayen', 'SJ'),
(204, 'Swaziland', 'Eswatini', 'SZ'),
(205, 'Sweden', 'Suécia', 'SE'),
(206, 'Switzerland', 'Suíça', 'CH'),
(207, 'Syrian Arab Republic', 'Síria, Republica Árabe da', 'SY'),
(208, 'Taiwan, Province of China', 'Formosa (Taiwan)', 'TW'),
(209, 'Tajikistan', 'Tadjiquistao, Republica do', 'TJ'),
(210, 'Tanzania, United Republic of', 'Tanzânia, Republica Unida da', 'TZ'),
(211, 'Thailand', 'Tailândia', 'TH'),
(212, 'Togo', 'Togo', 'TG'),
(213, 'Tokelau', 'Toquelau, Ilhas', 'TK'),
(214, 'Tonga', 'Tonga', 'TO'),
(215, 'Trinidad and Tobago', 'Trinidad e Tobago', 'TT'),
(216, 'Tunisia', 'Tunísia', 'TN'),
(217, 'Turkey', 'Turquia', 'TR'),
(218, 'Turkmenistan', 'Turcomenistão, Republica do', 'TM'),
(219, 'Turks and Caicos Islands', 'Turcas e Caicos, Ilhas', 'TC'),
(220, 'Tuvalu', 'Tuvalu', 'TV'),
(221, 'Uganda', 'Uganda', 'UG'),
(222, 'Ukraine', 'Ucrânia', 'UA'),
(223, 'United Arab Emirates', 'Emirados Árabes Unidos', 'AE'),
(224, 'United Kingdom', 'Reino Unido', 'GB'),
(225, 'United States', 'Estados Unidos', 'US'),
(226, 'United States Minor Outlying Islands', 'Ilhas Menores Distantes dos Estados Unidos', 'UM'),
(227, 'Uruguay', 'Uruguai', 'UY'),
(228, 'Uzbekistan', 'Uzbequistão, Republica do', 'UZ'),
(229, 'Vanuatu', 'Vanuatu', 'VU'),
(230, 'Venezuela', 'Venezuela', 'VE'),
(231, 'Viet Nam', 'Vietnã', 'VN'),
(232, 'Virgin Islands (British)', 'Virgens, Ilhas (Britânicas)', 'VG'),
(233, 'Virgin Islands (U.S.)', 'Virgens, Ilhas (E.U.A.)', 'VI'),
(234, 'Wallis and Futuna Islands', 'Wallis e Futuna, Ilhas', 'WF'),
(235, 'Western Sahara', 'Saara Ocidental', 'EH'),
(236, 'Yemen', 'Iémen', 'YE'),
(237, 'Yugoslavia', 'Iugoslávia, República Fed. da', 'YU'),
(238, 'Zambia', 'Zâmbia', 'ZM'),
(239, 'Zimbabwe', 'Zimbabue', 'ZW'),
(240, 'Bailiwick of Guernsey', 'Guernsey, Ilha do Canal (Inclui Alderney e Sark)', 'GG'),
(241, 'Bailiwick of Jersey', 'Jersey, Ilha do Canal', 'JE'),
(243, 'Isle of Man', 'Man, Ilha de', 'IM'),
(246, 'Crna Gora (Montenegro)', 'Montenegro', 'ME'),
(247, 'SÉRVIA', 'Republika Srbija', 'RS'),
(248, 'Republic of South Sudan', 'Sudao do Sul', 'SS'),
(249, 'Zona del Canal de Panamá', 'Zona do Canal do Panamá', NULL),
(252, 'Dawlat Filasṭīn', 'Palestina', 'PS'),
(253, 'Åland Islands', 'Aland, Ilhas', 'AX'),
(255, 'Curaçao', 'Curaçao', 'CW'),
(256, 'Saint Martin', 'São Martinho, Ilha de (Parte Holandesa)', 'SM'),
(258, 'Bonaire', 'Bonaire', 'AN'),
(259, 'Antartica', 'Antartica', 'AQ'),
(260, 'Heard Island and McDonald Islands', 'Ilha Herad e Ilhas Macdonald', 'AU'),
(261, 'Saint-Barthélemy', 'São Bartolomeu', 'FR'),
(262, 'Saint Martin', 'São Martinho, Ilha de (Parte Francesa)', 'SM'),
(263, 'Terres Australes et Antarctiques Françaises', 'Terras Austrais e Antárcticas Francesas', 'TF');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `arena`
--
ALTER TABLE `arena`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pais` (`pais`);

--
-- Índices para tabela `clube`
--
ALTER TABLE `clube`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pais` (`pais`),
  ADD KEY `arena` (`arena`);

--
-- Índices para tabela `competicao`
--
ALTER TABLE `competicao`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `nba`
--
ALTER TABLE `nba`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clube` (`clube`),
  ADD KEY `competicao` (`competicao`);

--
-- Índices para tabela `nba_old`
--
ALTER TABLE `nba_old`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arena`
--
ALTER TABLE `arena`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clube`
--
ALTER TABLE `clube`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `competicao`
--
ALTER TABLE `competicao`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `nba`
--
ALTER TABLE `nba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `nba_old`
--
ALTER TABLE `nba_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `arena`
--
ALTER TABLE `arena`
  ADD CONSTRAINT `arena_ibfk_1` FOREIGN KEY (`pais`) REFERENCES `pais` (`id`);

--
-- Limitadores para a tabela `clube`
--
ALTER TABLE `clube`
  ADD CONSTRAINT `clube_ibfk_1` FOREIGN KEY (`pais`) REFERENCES `pais` (`id`),
  ADD CONSTRAINT `clube_ibfk_2` FOREIGN KEY (`arena`) REFERENCES `arena` (`ID`);

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
