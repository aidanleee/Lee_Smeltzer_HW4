-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 17, 2019 at 03:34 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
CREATE TABLE IF NOT EXISTS `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio`
--

DROP TABLE IF EXISTS `tbl_audio`;
CREATE TABLE IF NOT EXISTS `tbl_audio` (
  `audio_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `audio_title` varchar(125) DEFAULT NULL,
  `audio_year` varchar(5) DEFAULT NULL,
  `audio_storyline` text,
  `audio_artist` varchar(75) DEFAULT NULL,
  `audio_cover` varchar(75) DEFAULT 'temp_cover.jpg',
  `audio_src` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`audio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_audio`
--

INSERT INTO `tbl_audio` (`audio_id`, `audio_title`, `audio_year`, `audio_storyline`, `audio_artist`, `audio_cover`, `audio_src`) VALUES
(1, '1979', '1995', '\"1979\" is a song by American alternative rock band the Smashing Pumpkins. Released in 1996 as the second single from their third studio album, Mellon Collie and the Infinite Sadness, \"1979\" was written by frontman Billy Corgan, and features loops and samples that were uncharacteristic of previous Smashing Pumpkins songs.[1] The song was written as a coming of age story by Corgan. In the year 1979, Corgan was 12 and this is what he considered his transition into adolescence.', 'The Smashing Pumpkins', 'pumpkins.jpg', '1979.mp3'),
(2, 'Blurry', '2001', 'Puddle of Mudd\'s lead singer Wes Scantlin wrote this about his desire to be a good father and spend quality time with his son, Jordan. \"Blurry\" angered Jordan\'s mother when she first heard it. She and Scantlin are separated. According to Scantlin, \"Blurry\" facilitated discussion of unresolved issues within their marriage and improved their relationship.', 'Puddle of Mudd', 'mudd.jpg', 'Blurry.mp3'),
(3, 'Bombtrack', '1993', '\"Bombtrack\" is a song by American rap metal band Rage Against the Machine that opens their self-titled debut album. Like most of Rage Against the Machine\'s songs, the song\'s lyrics discuss social inequality, proclaiming that \"landlords and power whores\" were going to \"burn\". The riffs were composed by Rage Against the Machine bassist Tim Commerford. Impressed by their song, Rage Against the Machine named it Bombtrack in reference to hip hop terminology where the word \'bomb\' means \'the greatest\', making the song title literally mean \'the greatest track\'.', 'Rage Against the Machine', 'rage.jpg', 'BombTrack.mp3'),
(4, 'Companion', '1999', 'Wide Mouth Mason is a Canadian blues-based rock band, consisting of Shaun Verreault (Lead Vocals, Guitar), Safwan Javed (Percussion, Backing Vocals), and Gordie Johnson (Bass, Backing Vocals). Former bassist Earl Pereira was also co-founder of Wide Mouth Mason. The band hails from Saskatoon, Saskatchewan and has been active since 1995.', 'Wide Mouth Mason', 'companion.jpg', 'Companion.mp3'),
(5, 'Golden Brown', '1981', '\"Golden Brown\" is a song by the English rock band the Stranglers. It was released as a 7\" single in December 1981 in the United States and in January 1982 in the United Kingdom, on Liberty. It was the second single released from the band\'s sixth album La folie. It peaked at No. 2 in the UK Singles Chart, the band\'s highest ever placing in that chart.', 'The Stranglers', 'goldenbrown.jpg', 'GoldenBrown.mp3'),
(6, 'Hard Sun', '2007', 'From the Into the Wild soundtrack, performed by Eddie Vedder.', 'Eddie Vedder', 'hardsun.jpg', 'HardSun.mp3'),
(7, 'Fookin in the Bushes', '2000', 'From the Snatch soundtrack, Fookin in the Bushes was released on the Standing on the Shoulder of Giants, the fourth studio album by English rock band Oasis, released on 28 February 2000 by Big Brother Records. It is the 16th fastest selling album in UK chart history, selling over 310,000 copies in its first week. Standing on the Shoulder of Giants has been certified double platinum by the British Phonographic Industry[1] and has sold around 208,000 copies in the US.', 'Oasis', 'fookin.jpg', 'InTheBushes.mp3'),
(8, 'Morpheus VS Neo', '1996', 'From the Matrix soundtrack. Neo and Morpheus kung fu fighting!', 'The Matrix soundtrack', 'morpheusneo.jpg', 'MorpheusVNeo.mp3'),
(9, 'Sail', '2010', '\"Sail\" is a song by American rock band Awolnation. It was released as a single on November 8, 2010. The song was first featured on the band\'s debut extended play, Back from Earth (2010), and was later featured on their debut album, Megalithic Symphony (2011). The song was written and produced in Venice, California by group member Aaron Bruno, with Kenny Carkeet performing the audio engineering', 'AWOL Nation', 'AWOL.jpg', 'Sail.mp3'),
(10, 'Interstate Love Song', '1994', '\"Interstate Love Song\" is a song by the American rock band Stone Temple Pilots. Released in 1994, the song is from the band\'s second studio album, Purple. Considered one of the band\'s biggest hits, \"Interstate Love Song\" reached number one on the Mainstream Rock Tracks chart on September 17, 1994.', 'Stone Temple Pilots', 'STP.jpg', 'STP_Interstate_Love_Song.mp3'),
(11, 'Street Spirit', '1996', 'Street Spirit (Fade Out)\" is a song by the English alternative rock band Radiohead. It is the final track on their second album, The Bends, released in 1995. It was released as a single and reached number five on the UK Singles Chart, Radiohead\'s highest chart position up to that point. It has been covered by Peter Gabriel and the Darkness. In 2008, the song was featured on Radiohead: The Best Of.', 'Radiohead', 'temp_cover.jpg', 'StreetSpirit.mp3'),
(12, 'Buddy Holly', '1994', '\"Buddy Holly\" is a song by the American rock band Weezer, written by Rivers Cuomo. It was released as the second single from the band\'s debut album Weezer (The Blue Album) in 1994. The single was released on what would have been Buddy Holly\'s 58th birthday. The lyrics reference the song\'s 1950s namesake and actress Mary Tyler Moore. It reached #2 and #34 on the US Modern Rock Tracks chart and the US Mainstream Rock Tracks chart, respectively.', 'Weezer', 'BuddyHolly.jpg', 'weezer.mp3'),
(13, 'What It\'s Like', '1997', '\"What It\'s Like\" is a song by American musician Everlast. It was released in September 1998 as the lead single from his album Whitey Ford Sings the Blues. The song is typical of the style Everlast embraced after leaving hip hop trio House of Pain, being a combination of rock, hip-hop and blues incorporating characterization and empathy towards impoverished protagonists.', 'Everlast', 'everlast.jpg', 'WhatItsLike.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_name` (`cast_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(36, 'Amy Adams'),
(26, 'Andrew Garfield'),
(8, 'Aneurin Barnard'),
(42, 'Anna Kendrick'),
(14, 'Boyd Holbrook'),
(5, 'Bradley Cooper'),
(1, 'Chris Pratt'),
(19, 'Colm Hill'),
(13, 'Dafne Keen'),
(7, 'Damien Bonnard'),
(22, 'Dan Stevens'),
(30, 'Darcy Bryce'),
(3, 'Dave Bautista'),
(33, 'Ed Skrein'),
(21, 'Emma Watson'),
(6, 'Fionn Whitehead'),
(38, 'Forest Whitaker'),
(46, 'Harrison Ford'),
(11, 'Hugh Jackman'),
(28, 'Jacob Warner'),
(10, 'James Bloor'),
(37, 'Jeremy Renner'),
(45, 'Joseph Gordon-Levitt'),
(24, 'Josh Gad'),
(32, 'Karan Soni'),
(20, 'Kathryn Kirkpatrick'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(27, 'Richard Pyros'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` smallint(3) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Anguilla'),
(6, 'Antarctica'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Aruba'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaijan'),
(15, 'Bahamas'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bermuda'),
(23, 'Bhutan'),
(24, 'Bolivia'),
(25, 'Bosnia'),
(26, 'Botswana'),
(27, 'Brazil'),
(28, 'Brunei'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D\'Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

DROP TABLE IF EXISTS `tbl_director`;
CREATE TABLE IF NOT EXISTS `tbl_director` (
  `director_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `director_name` varchar(250) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Gunn'),
(2, 'Christopher Nolan'),
(3, 'James Mangold'),
(4, 'Joon-ho Bong'),
(5, 'Bill Condon'),
(6, 'Mel Gibson'),
(7, 'Tim Miller'),
(8, 'Denis Villeneuve '),
(9, 'Dexter Fletcher'),
(10, 'Mike Mitchell'),
(11, 'Walt Dohrn'),
(12, 'Alejandro Gonzalez Inarritu'),
(13, 'John Crowley '),
(14, 'Robert Zemeckis'),
(15, 'Florian Gallenberger '),
(16, 'J.J. Abrams'),
(17, 'Damien Chazelle'),
(18, 'Joseph Gordon-Levitt '),
(19, 'Alfonso Cuaron'),
(20, 'Ang Lee'),
(21, 'David O. Russell');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(250) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'Abkhaz'),
(2, 'Afar'),
(3, 'Afrikaans'),
(4, 'Akan'),
(5, 'Albanian'),
(6, 'Amharic'),
(7, 'Arabic'),
(8, 'Aragonese'),
(9, 'Armenian'),
(10, 'Assamese'),
(11, 'Avaric'),
(12, 'Avestan'),
(13, 'Aymara'),
(14, 'Azerbaijani'),
(15, 'Bambara'),
(16, 'Bashkir'),
(17, 'Basque'),
(18, 'Belarusian'),
(19, 'Bengali'),
(20, 'Bihari'),
(21, 'Bislama'),
(22, 'Bosnian'),
(23, 'Breton'),
(24, 'Bulgarian'),
(25, 'Burmese'),
(26, 'Catalan'),
(27, 'Valencian'),
(28, 'Chamorro'),
(29, 'Chechen'),
(30, 'Chichewa'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_cast` text NOT NULL,
  `movies_kids` tinyint(4) NOT NULL,
  `movies_kids_thumb` varchar(75) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_cast`, `movies_kids`, `movies_kids_thumb`) VALUES
(34, 'backtothefuture.jpg', 'Back to the Future', '1985', '1h 56min', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.', 'Michael J. Fox, Christopher Lloyd, Lea Thompson', 1, 'backtothefuture_thumb.jpg'),
(35, 'thebreakfastclub.jpg', 'The Breakfast Club', '1985', '1h 37m', 'Five high school students meet in Saturday detention and discover how they have a lot more in common than they thought.', 'Emilio Estevez, Judd Nelson, Molly Ringwald', 0, ''),
(36, 'empirestrikesback.jpg', 'The Empire Strikes Back', '1980', '2h 4min', 'After the rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader.', 'Mark Hamill, Harrison Ford, Carrie Fisher ', 1, 'empirestrikesback_thumb.jpg'),
(37, 'bladerunner.jpg', 'Blade Runner', '1982', '1h 57min', 'A blade runner must pursue and terminate four replicants who stole a ship in space, and have returned to Earth to find their creator.', 'Harrison Ford, Rutger Hauer, Sean Young', 0, ''),
(38, 'footloose.jpg', 'Footloose', '1984', '1h 47min', 'A city teenager moves to a small town where rock music and dancing have been banned, and his rebellious spirit shakes up the populace.', 'Kevin Bacon, Lori Singer, John Lithgow ', 1, 'footloose_thumb.jpg'),
(39, 'ET.jpg', 'E.T. the Extra-Terrestria', '1982', '1h 55min', 'A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.', 'Henry Thomas, Drew Barrymore, Peter Coyote', 1, 'ET_thumb.jpg'),
(40, 'raiders.jpg', 'Raiders of the Lost Ark', '1981', '1h 55min', 'In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler\'s Nazis can obtain its awesome powers.', 'Harrison Ford, Karen Allen, Paul Freeman', 1, 'raiders_thumb.jpg'),
(41, 'airplane.jpg', 'Airplane!', '1980', '1h 28min', 'A man afraid to fly must ensure that a plane lands safely after the pilots become sick.', 'Robert Hays, Julie Hagerty, Leslie Nielsen', 0, ''),
(42, 'poltergeist.jpg', 'Poltergeist ', '1982', '1h 54min', 'A family\'s home is haunted by a host of demonic ghosts.', 'JoBeth Williams, Heather O\'Rourke, Craig T. Nelson', 0, ''),
(43, 'thegoonies.jpg', 'The Goonies', '1985', '1h 54min', 'In order to save their home from foreclosure, a group of misfits set out to find a pirate\'s ancient valuable treasure.', 'Sean Astin, Josh Brolin, Jeff Cohen', 1, 'goonies_thumb.jpg'),
(44, 'riskybusiness.jpg', 'Risky Business', '1983', '1h 39min', 'A Chicago teenager is looking for fun at home while his parents are away, but the situation quickly gets out of hand.', 'Tom Cruise, Rebecca De Mornay, Joe Pantoliano', 0, ''),
(45, 'theshining.jpg', 'The Shining', '1980', '2h 26min', 'A family heads to an isolated hotel for the winter where an evil spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.', 'Jack Nicholson, Shelley Duvall, Danny Lloyd ', 0, ''),
(46, 'thegodfather.jpg', 'The Godfather', '1972', '2h 55min', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'Marlon Brando, Al Pacino, James Caan', 0, ''),
(47, 'barrylyndon.jpg', 'Barry Lyndon', '1975', '3h 5min', 'An Irish rogue wins the heart of a rich widow and assumes her dead husband\'s aristocratic position in 18th-century England.', 'An Irish rogue wins the heart of a rich widow and assumes her dead husband\'s aristocratic position in 18th-century England.', 0, ''),
(48, 'oneflewoverthecuckoosnest.jpg', 'One Flew Over the Cuckoo\'s Nest', '1975', '2h 13min', 'A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.', 'Jack Nicholson, Louise Fletcher, Will Sampson', 0, ''),
(49, 'chinatown.jpg', 'Chinatown ', '1974', '2h 10min', 'A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption, and murder.', 'Jack Nicholson, Faye Dunaway, John Huston', 0, ''),
(50, 'papermoon.jpg', 'Paper Moon', '1973', '1h 42min', 'During the Great Depression, a con man finds himself saddled with a young girl who may or may not be his daughter, and the two forge an unlikely partnership.', 'Ryan O\'Neal, Tatum O\'Neal, Madeline Kahn', 0, ''),
(51, 'thesting.jpg', 'The Sting', '1973', '2h 9min', 'Two grifters team up to pull off the ultimate con.', 'Paul Newman, Robert Redford, Robert Shaw', 0, ''),
(52, 'deliverance.jpg', 'Deliverance ', '1972', '1h 49min', 'Intent on seeing the Cahulawassee River before it\'s dammed and turned into a lake, outdoor fanatic Lewis Medlock takes his friends on a canoeing trip they\'ll never forget into the dangerous American back-country.', 'Jon Voight, Burt Reynolds, Ned Beatty', 0, ''),
(53, 'anewhope.jpg', 'A New Hope', '1977', '2h 1min', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', 'Mark Hamill, Harrison Ford, Carrie Fisher', 1, 'anewhope.thumb'),
(54, 'rocky.jpg', 'Rocky', '1976', '2h', 'A small-time boxer gets a supremely rare chance to fight a heavy-weight champion in a bout in which he strives to go the distance for his self-respect.', 'Sylvester Stallone, Talia Shire, Burt Young', 0, ''),
(55, 'jaws.jpg', 'Jaws', '1975', '2h 4min', 'When a killer shark unleashes chaos on a beach resort, it\'s up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.', 'Roy Scheider, Robert Shaw, Richard Dreyfuss', 0, ''),
(56, 'taxidriver.jpg', 'Taxi Driver', '1976', '1h 54', 'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute.', 'Robert De Niro, Jodie Foster, Cybill Shepherd', 0, ''),
(57, 'montypython.jpg', 'Monty Python and the Holy Grail', '1975', '1h 31min', 'King Arthur and his Knights of the Round Table embark on a surreal, low-budget search for the Holy Grail, encountering many, very silly obstacles.', 'Graham Chapman, John Cleese, Eric Idle', 1, 'holygrail_thumb.jpg'),
(58, 'psycho.jpg', 'Psycho', '1960', '1h 49min', 'A Phoenix secretary embezzles forty thousand dollars from her employer\'s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.', 'Anthony Perkins, Janet Leigh, Vera Miles', 0, ''),
(59, 'tokillamockingbird.jpg', 'To Kill a Mockingbird', '1962', '2h 9min', 'Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his children against prejudice.', 'Gregory Peck, John Megna, Frank Overton', 0, ''),
(60, 'midnightcowboy.jpg', 'Midnight Cowboy', '1969', '1h 53min', 'A naive hustler travels from Texas to New York City to seek personal fortune, finding a new friend in the process.', 'Dustin Hoffman, Jon Voight, Sylvia Miles', 0, ''),
(61, 'goodbadugly.jpg', 'The Good, the Bad and the Ugly', '1966', '2h 58min', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', 'Clint Eastwood, Eli Wallach, Lee Van Cleef', 0, ''),
(62, 'thewildbunch.jpg', 'The Wild Bunch', '1969', '2h 15min', 'An aging group of outlaws look for one last big score as the \"traditional\" American West is disappearing around them.', 'William Holden, Ernest Borgnine, Robert Ryan', 0, ''),
(63, 'theapartment.jpg', 'The Apartment', '1960', '2h 5min', 'A man tries to rise in his company by letting its executives use his apartment for trysts, but complications and a romance of his own ensue.', 'Jack Lemmon, Shirley MacLaine, Fred MacMurray', 0, ''),
(64, 'westsidestory.jpg', 'West Side Story', '1961', '2h 33min', 'Two youngsters from rival New York City gangs fall in love, but tensions between their respective friends build toward tragedy.', 'Natalie Wood, George Chakiris, Richard Beymer', 0, ''),
(65, 'coolhandluke.jpg', 'Cool Hand Luke', '1967', '2h 6min', 'A laid back Southern man is sentenced to two years in a rural prison, but refuses to conform.', 'Paul Newman, George Kennedy, Strother Martin ', 0, ''),
(66, 'doctorzhivago.jpg', 'Doctor Zhivago', '1965', '3h 17min', 'The life of a Russian physician and poet who, although married to another, falls in love with a political activist\'s wife and experiences hardship during World War I and then the October Revolution.', 'Omar Sharif, Julie Christie, Geraldine Chaplin', 0, ''),
(67, 'aharddaysnight.jpg', 'A Hard Day\'s Night', '1964', '1h 27min', 'Over two \"typical\" days in the life of The Beatles, the boys struggle to keep themselves and Paul McCartney\'s mischievous grandfather in check while preparing for a live television performance.', 'John Lennon, Paul McCartney, George Harrison', 1, 'aharddaysnight_thumb.jpg'),
(68, 'alphaville.jpg', 'Alphaville', '1965', '1h 39min', 'A U.S. secret agent is sent to the distant space city of Alphaville where he must find a missing person and free the city from its tyrannical ruler.', 'Eddie Constantine, Anna Karina, Akim Tamiroff ', 0, ''),
(69, 'thesoundofmusic.jpg', 'The Sound of Music', '1965', '2h 52min', 'A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.', 'Julie Andrews, Christopher Plummer, Eleanor Parker', 1, 'thesoundofmusic_thumb.jpg'),
(79, 'rearwindow.jpg', 'Rear Window', '1954', '1h 52min', 'A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.', 'James Stewart, Grace Kelly, Wendell Corey', 0, ''),
(80, '12angrymen.jpg', '12 Angry Men', '1957', '1h 36min', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', 'Henry Fonda, Lee J. Cobb, Martin Balsam', 0, ''),
(81, 'northbynorthwest.jpg', 'North by Northwest', '1959', '2h 16min', 'A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies.', 'A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies.', 0, ''),
(82, 'pathsofglory.jpg', 'Paths of Glory', '1957', '1h 28min', 'After refusing to attack an enemy position, a general accuses the soldiers of cowardice and their commanding officer must defend them', 'Kirk Douglas, Ralph Meeker, Adolphe Menjou ', 0, ''),
(83, 'anatomyofamurder.jpg', 'Anatomy of a Murder', '1959', '2h 40min', 'In a murder trial, the defendant says he suffered temporary insanity after the victim raped his wife. What is the truth, and will he win his case?', 'James Stewart, Lee Remick, Ben Gazzara', 0, ''),
(84, 'strangersonatrain.jpg', 'Strangers on a Train', '1951', '1h 41min', 'A psychotic socialite attempts to force an amateur tennis star to comply with his theory that two complete strangers can get away with reciprocal murders.', 'Farley Granger, Robert Walker, Ruth Roman ', 0, ''),
(85, 'ourmaninhavana.jpg', 'Our Man in Havana', '1959', '1h 51min', 'Jim Wormold, who is a vacuum cleaner salesman, participates as an Agent in the British Secret Service. But he soon realizes that his plans by lying are going to get him into trouble.', 'Alec Guinness, Maureen O\'Hara, Burl Ives ', 0, ''),
(86, 'kansascityconfidential.jpg', 'Kansas City Confidential', '1952', '1h 39min', 'An ex-con trying to go straight is framed for a million dollar armored car robbery and must go to Mexico in order to unmask the real culprits.', 'John Payne, Coleen Gray, Preston Foster', 0, ''),
(87, 'thekilling.jpg', 'The Killing', '1956', '1h 24min', 'Crook Johnny Clay assembles a five man team to plan and execute a daring race-track robbery.', 'Sterling Hayden, Coleen Gray, Vince Edwards', 0, ''),
(88, 'thedaytheearthstoodstill.jpg', 'The Day the Earth Stood Still', '1951', '1h 32min', 'An alien lands and tells the people of Earth that they must live peacefully or be destroyed as a danger to other planets.', 'Michael Rennie, Patricia Neal, Hugh Marlowe ', 1, 'thedaytheearthstoodstill_thumb.jpg'),
(89, 'thewrongman.jpg', 'The Wrong Man', '1956', '1h 45min', 'In 1953, an innocent man named Christopher Emmanuel \"Manny\" Balestrero is arrested after being mistaken for an armed robber.', 'Henry Fonda, Vera Miles, Anthony Quayle', 0, ''),
(90, 'themaninthewhitesuit.jpg', 'The Man in the White Suit', '1951', '1h 25min', 'An altruistic chemist invents a fabric which resists wear and stain as a boon to humanity, but big business and labor realize it must be suppressed for economic reasons.', 'Alec Guinness, Joan Greenwood, Cecil Parker', 0, ''),
(91, 'terminator2.jpg', 'Terminator 2: Judgment Day', '1991', '2h 17min', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.', 'Arnold Schwarzenegger, Linda Hamilton, Edward Furlong', 0, ''),
(92, 'resevoirdogs.jpg', 'Reservoir Dogs', '1992', '1h 39min', 'When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.', 'Harvey Keitel, Tim Roth, Michael Madsen', 0, ''),
(93, 'pulpfiction.jpg', 'Pulp Fiction', '1994', '2h 34min', 'The lives of two mob hitmen, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'John Travolta, Uma Thurman, Samuel L. Jackson', 0, ''),
(94, 'Fargo.jpg', 'Fargo', '1996', '1h 38min', 'Jerry Lundegaard\'s inept crime falls apart due to his and his henchmen\'s bungling and the persistent police work of the quite pregnant Marge Gunderson.', 'William H. Macy, Frances McDormand, Steve Buscemi', 0, ''),
(95, 'totalrecall.jpg', 'Total Recal', '1992', '1h 53min', 'When a man goes for virtual vacation memories of the planet Mars, an unexpected and harrowing series of events forces him to go to the planet for real - or does he?', 'When a man goes for virtual vacation memories of the planet Mars, an unexpected and harrowing series of events forces him to go to the planet for real - or does he?', 0, ''),
(96, 'thebiglebowski.jpg', 'The Big Lebowski', '1998', '1h 57min', 'Jeff \"The Dude\" Lebowski, mistaken for a millionaire of the same name, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.', 'Jeff Bridges, John Goodman, Julianne Moore', 0, ''),
(97, 'twelvemonkeys.jpg', 'Twelve Monkeys', '1995', '2h 9min', 'In a future world devastated by disease, a convict is sent back in time to gather information about the man-made virus that wiped out most of the human population on the planet.', 'Bruce Willis, Madeleine Stowe, Brad Pitt ', 0, ''),
(98, 'fromdusktilldawn.jpg', 'From Dusk Till Dawn', '1996', '1h 48min', 'Two criminals and their hostages unknowingly seek temporary refuge in a truck stop populated by vampires, with chaotic results.', 'Harvey Keitel, George Clooney, Juliette Lewis ', 0, ''),
(99, 'losthighway.jpg', 'Lost Highway', '1997', '2h 14min', 'After a bizarre encounter at a party, a jazz saxophonist is framed for the murder of his wife and sent to prison, where he inexplicably morphs into a young mechanic and begins leading a new life.', 'Bill Pullman, Patricia Arquette, John Roselius', 0, ''),
(100, 'se7en.jpg', 'Se7en', '1995', '2h 7min', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', 'Morgan Freeman, Brad Pitt, Kevin Spacey', 0, ''),
(101, 'nameofthefather.jpg', 'In the Name of the Father', '1993', '2h 13min', 'A man\'s coerced confession to an IRA bombing he did not commit results in the imprisonment of his father as well. An English lawyer fights to free them.', 'Daniel Day-Lewis, Pete Postlethwaite, Alison Crosbie', 0, ''),
(102, 'fightclub.jpg', 'Fight Club', '1990', '2h 19min', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', 'Brad Pitt, Edward Norton, Meat Loaf ', 0, ''),
(103, 'apollo13.jpg', 'Apollo 13', '1995', '2h 20min', 'NASA must devise a strategy to return Apollo 13 to Earth safely after the spacecraft undergoes massive internal damage putting the lives of the three astronauts on board in jeopardy.', 'Tom Hanks, Bill Paxton, Kevin Bacon', 1, 'apollo13_thumb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
CREATE TABLE IF NOT EXISTS `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_country`
--

DROP TABLE IF EXISTS `tbl_mov_country`;
CREATE TABLE IF NOT EXISTS `tbl_mov_country` (
  `mov_country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_director`
--

DROP TABLE IF EXISTS `tbl_mov_director`;
CREATE TABLE IF NOT EXISTS `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_lang`
--

DROP TABLE IF EXISTS `tbl_mov_lang`;
CREATE TABLE IF NOT EXISTS `tbl_mov_lang` (
  `mov_lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_studio`
--

DROP TABLE IF EXISTS `tbl_mov_studio`;
CREATE TABLE IF NOT EXISTS `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

DROP TABLE IF EXISTS `tbl_studio`;
CREATE TABLE IF NOT EXISTS `tbl_studio` (
  `studio_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(125) NOT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Marvel Studios'),
(2, 'Syncopy'),
(3, 'Donners Company'),
(4, 'Kate Street Picture Company'),
(5, 'Mandeville Films'),
(6, 'Cross Creek Pictures'),
(7, 'Twentieth Century Fox Film Corporation'),
(8, 'Lava Bear Films'),
(9, 'Hurwitz Creative'),
(10, 'DreamWorks Animation'),
(11, 'Regency Enterprises'),
(12, 'Wildgaze Films'),
(13, 'Sony Pictures Entertainment (SPE)'),
(14, 'Majestic Filmproduktion'),
(15, 'Lucasfilm'),
(16, 'Bold Films'),
(17, 'Voltage Pictures'),
(18, 'Warner Bros.'),
(19, 'Fox 2000 Pictures'),
(20, 'Weinstein Company');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urating`
--

DROP TABLE IF EXISTS `tbl_urating`;
CREATE TABLE IF NOT EXISTS `tbl_urating` (
  `rating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating_number` tinyint(4) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_access` tinyint(4) NOT NULL,
  `user_admin` tinyint(4) NOT NULL,
  `user_finitial` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_access`, `user_admin`, `user_finitial`) VALUES
(1, 'Amy', 'aidanleee', 'zaccaria', 'a@a.com', '2019-02-06 17:14:53', '::1', 5, 1, 'A'),
(2, 'Ryan', 'ryan', 'password', 'a@a.com', '2019-02-06 17:14:53', '127.0.0.1', 5, 0, 'R'),
(3, 'Brendan', 'brendan', 'password', 'a@a.com', '2019-02-06 17:15:35', '::1', 5, 0, 'B'),
(4, 'Tiffany', 'tiffany', 'password', 'a@a.com', '2019-03-14 19:56:04', '::1', 1, 0, 'T');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
