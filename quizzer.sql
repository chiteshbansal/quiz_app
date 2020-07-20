-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 07:32 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `quesdata1`
--

CREATE TABLE `quesdata1` (
  `id` int(11) NOT NULL,
  `userinput` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quesdata1`
--

INSERT INTO `quesdata1` (`id`, `userinput`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 3),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quesdata7`
--

CREATE TABLE `quesdata7` (
  `id` int(11) NOT NULL,
  `userinput` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quesdata7`
--

INSERT INTO `quesdata7` (`id`, `userinput`) VALUES
(1, 2),
(2, 3),
(3, 2),
(4, 2),
(5, 2),
(6, 3),
(7, 2),
(8, 3),
(9, 2),
(10, 3),
(11, 4),
(12, 2),
(13, 4),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quesdata8`
--

CREATE TABLE `quesdata8` (
  `id` int(11) NOT NULL,
  `userinput` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quesdata8`
--

INSERT INTO `quesdata8` (`id`, `userinput`) VALUES
(1, 2),
(2, 2),
(3, 1),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quesdata9`
--

CREATE TABLE `quesdata9` (
  `id` int(11) NOT NULL,
  `userinput` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quesdata9`
--

INSERT INTO `quesdata9` (`id`, `userinput`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quesdata10`
--

CREATE TABLE `quesdata10` (
  `id` int(11) NOT NULL,
  `userinput` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quesdata10`
--

INSERT INTO `quesdata10` (`id`, `userinput`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quesdata11`
--

CREATE TABLE `quesdata11` (
  `id` int(11) NOT NULL,
  `userinput` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quesdata11`
--

INSERT INTO `quesdata11` (`id`, `userinput`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions1`
--

CREATE TABLE `questions1` (
  `id` int(11) NOT NULL,
  `Ques` varchar(500) NOT NULL,
  `options` varchar(500) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions1`
--

INSERT INTO `questions1` (`id`, `Ques`, `options`, `answer`) VALUES
(1, 'Tanya is older than Eric.\r\nCliff is older than Tanya.\r\nEric is older than Cliff.\r\nIf the first two statements are true, the third statement is', 'A. true,B .false,C.uncertain,D.none', 2),
(2, 'Blueberries cost more than strawberries.\r\nBlueberries cost less than raspberries.\r\nRaspberries cost more than strawberries and blueberries.\r\nIf the first two statements are true, the third statement is', 'A. true,B.false,C .uncertain,D.none of the above', 1),
(3, 'Look at this series: 7, 10, 8, 11, 9, 12, ... What number should come next?', 'A.7,B.10,C.12,D.13', 2),
(4, 'Look at this series: 36, 34, 30, 28, 24, ... What number should come next?', 'A. 20,B. 22,C.23,D.26', 2),
(5, 'Look at this series: 53, 53, 40, 40, 27, 27, ... What number should come next?', 'A.12,B.14,C.27,D.53', 2),
(6, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'A.	largest railway station,\r\nB.	highest railway station,\r\nC.	longest railway station,\r\nD.	None of the above', 1),
(7, 'Entomology is the science that studies\r\n', 'A.	Behavior of human beings,\r\nB.	Insects,\r\nC.	The origin and history of technical and scientific terms,\r\nD.	The formation of rocks', 2),
(8, 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of\r\n', 'A.	Asia,\r\nB.	Africa,\r\nC.	Europe,\r\nD.	Australia', 2),
(9, 'Garampani sanctuary is located at\r\n\r\n', 'A.	Junagarh Gujarat,\r\nB.	Diphu  Assam,\r\nC.	Kohima Nagaland,\r\nD.	Gangtok  Sikkim', 2),
(10, 'For which of the following disciplines is Nobel Prize awarded?\r\n\r\n', 'A.	Physics and Chemistry,\r\nB.	Physiology or Medicine,\r\nC.	Literature or Peace and Economics,\r\nD.	All of the above', 4),
(11, 'The Parliament of India cannot be regarded as a sovereign body because\r\n\r\n', 'A.	it can legislate only on subjects entrusted to the Centre by the Constitution,\r\nB.	it has to operate within the limits prescribed by the Constitution,\r\nC.	the Supreme Court can declare laws passed by parliament as unconstitutional if they contravene the provisions of the Constitution,\r\nD.	All of the above', 4),
(12, 'The name of the Laccadive, Minicoy and Amindivi islands was changed to Lakshadweep by an Act of Parliament in\r\n\r\n', 'A.	1970,\r\nB.	1971,\r\nC.	1972,\r\nD.	1973', 4),
(13, 'The members of the Rajya Sabha are elected by\r\n', 'A.	the people,\r\nB.	Lok Sabha,\r\nC.	elected members of the legislative assembly,\r\nD.	elected members of the legislative council', 3),
(14, 'The members of the panchayat are\r\n', 'A.	nominated by the district officer,\r\nB.	the electorates of the respective territorial constituencies,\r\nC.	nominated by local self-government minister of the state,\r\nD.	nominated by the block development organization', 2),
(15, 'The power to decide an election petition is vested in the\r\n', 'A.	Parliament,\r\nB.	Supreme Court,\r\nC.	High courts,\r\nD.	Election Commission', 3),
(16, 'What is part of a database that holds only one type of information?\r\n', 'A.	Report,\r\nB.	Field,\r\nC.	Record,\r\nD.	File', 2),
(17, '\'OS\' computer abbreviation usually means ?\r\n\r\n', 'A.	Order of Significance,\r\nB.	Open Software,\r\nC.	Operating System,\r\nD.	Optical Sensor', 3),
(18, 'In which decade with the first transatlantic radio broadcast occur?\r\n\r\n', 'A.	1850s,\r\nB.	1860s,\r\nC.	1870s,\r\nD.	1900s\r\n', 4),
(19, '\'.MOV\' extension refers usually to what kind of file?\r\n\r\n', 'A.	Image file,\r\nB.	Animation/movie file,\r\nC.	Audio file,\r\nD.	MS Office document', 2),
(20, 'The purpose of choke in tube light is ?\r\n\r\n', 'A.	To decrease the current,\r\nB.	To increase the current,\r\nC.	To decrease the voltage momentarily,\r\nD.	To increase the voltage momentarily', 4);

-- --------------------------------------------------------

--
-- Table structure for table `questions2`
--

CREATE TABLE `questions2` (
  `id` int(11) NOT NULL,
  `Ques` varchar(500) NOT NULL,
  `options` varchar(500) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions2`
--

INSERT INTO `questions2` (`id`, `Ques`, `options`, `answer`) VALUES
(1, 'Look at this series: 7, 10, 8, 11, 9, 12, ... What number should come next?', 'A.7,B.10,C.12,D.13', 2),
(2, 'Look at this series: 36, 34, 30, 28, 24, ... What number should come next?', 'A. 20,B. 22,C.23,D.26', 2),
(3, 'Blueberries cost more than strawberries.\r\nBlueberries cost less than raspberries.\r\nRaspberries cost more than strawberries and blueberries.\r\nIf the first two statements are true, the third statement is', 'A. true,B.false,C .uncertain,D.none of the above', 1),
(4, 'Tanya is older than Eric.\r\nCliff is older than Tanya.\r\nEric is older than Cliff.\r\nIf the first two statements are true, the third statement is', 'A. true,B .false,C.uncertain,D.none', 2),
(5, 'Look at this series: 53, 53, 40, 40, 27, 27, ... What number should come next?', 'A.12,B.14,C.27,D.53', 2),
(6, 'Entomology is the science that studies\r\n', 'A.	Behavior of human beings,\r\nB.	Insects,\r\nC.	The origin and history of technical and scientific terms,\r\nD.	The formation of rocks', 2),
(7, 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of\r\n', 'A.	Asia,\r\nB.	Africa,\r\nC.	Europe,\r\nD.	Australia', 2),
(8, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'A.	largest railway station,\r\nB.	highest railway station,\r\nC.	longest railway station,\r\nD.	None of the above', 1),
(9, 'For which of the following disciplines is Nobel Prize awarded?\r\n\r\n', 'A.	Physics and Chemistry,\r\nB.	Physiology or Medicine,\r\nC.	Literature or Peace and Economics,\r\nD.	All of the above', 4),
(10, 'Garampani sanctuary is located at\r\n\r\n', 'A.	Junagarh Gujarat,\r\nB.	Diphu  Assam,\r\nC.	Kohima Nagaland,\r\nD.	Gangtok  Sikkim', 2),
(11, 'The name of the Laccadive, Minicoy and Amindivi islands was changed to Lakshadweep by an Act of Parliament in\r\n\r\n', 'A.	1970,\r\nB.	1971,\r\nC.	1972,\r\nD.	1973', 4),
(12, 'The members of the Rajya Sabha are elected by\r\n', 'A.	the people,\r\nB.	Lok Sabha,\r\nC.	elected members of the legislative assembly,\r\nD.	elected members of the legislative council', 3),
(13, 'The Parliament of India cannot be regarded as a sovereign body because\r\n\r\n', 'A.	it can legislate only on subjects entrusted to the Centre by the Constitution,\r\nB.	it has to operate within the limits prescribed by the Constitution,\r\nC.	the Supreme Court can declare laws passed by parliament as unconstitutional if they contravene the provisions of the Constitution,\r\nD.	All of the above', 4),
(14, 'The power to decide an election petition is vested in the\r\n', 'A.	Parliament,\r\nB.	Supreme Court,\r\nC.	High courts,\r\nD.	Election Commission', 3),
(15, 'The members of the panchayat are\r\n', 'A.	nominated by the district officer,\r\nB.	the electorates of the respective territorial constituencies,\r\nC.	nominated by local self-government minister of the state,\r\nD.	nominated by the block development organization', 2),
(16, 'What is part of a database that holds only one type of information?\r\n', 'A.	Report,\r\nB.	Field,\r\nC.	Record,\r\nD.	File', 2),
(17, '\'.MOV\' extension refers usually to what kind of file?\r\n\r\n', 'A.	Image file,\r\nB.	Animation/movie file,\r\nC.	Audio file,\r\nD.	MS Office document', 2),
(18, 'The purpose of choke in tube light is ?\r\n\r\n', 'A.	To decrease the current,\r\nB.	To increase the current,\r\nC.	To decrease the voltage momentarily,\r\nD.	To increase the voltage momentarily', 4),
(19, '\'OS\' computer abbreviation usually means ?\r\n\r\n', 'A.	Order of Significance,\r\nB.	Open Software,\r\nC.	Operating System,\r\nD.	Optical Sensor', 3),
(20, 'In which decade with the first transatlantic radio broadcast occur?\r\n\r\n', 'A.	1850s,\r\nB.	1860s,\r\nC.	1870s,\r\nD.	1900s\r\n', 4);

-- --------------------------------------------------------

--
-- Table structure for table `questions3`
--

CREATE TABLE `questions3` (
  `id` int(11) NOT NULL,
  `Ques` varchar(500) NOT NULL,
  `options` varchar(500) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions3`
--

INSERT INTO `questions3` (`id`, `Ques`, `options`, `answer`) VALUES
(1, 'Look at this series: 36, 34, 30, 28, 24, ... What number should come next?', 'A. 20,B. 22,C.23,D.26', 2),
(2, 'Blueberries cost more than strawberries.\r\nBlueberries cost less than raspberries.\r\nRaspberries cost more than strawberries and blueberries.\r\nIf the first two statements are true, the third statement is', 'A. true,B.false,C .uncertain,D.none of the above', 1),
(3, 'Tanya is older than Eric.\r\nCliff is older than Tanya.\r\nEric is older than Cliff.\r\nIf the first two statements are true, the third statement is', 'A. true,B .false,C.uncertain,D.none', 2),
(4, 'Look at this series: 7, 10, 8, 11, 9, 12, ... What number should come next?', 'A.7,B.10,C.12,D.13', 2),
(5, 'Look at this series: 53, 53, 40, 40, 27, 27, ... What number should come next?', 'A.12,B.14,C.27,D.53', 2),
(6, 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of\r\n', 'A.	Asia,\r\nB.	Africa,\r\nC.	Europe,\r\nD.	Australia', 2),
(7, 'For which of the following disciplines is Nobel Prize awarded?\r\n\r\n', 'A.	Physics and Chemistry,\r\nB.	Physiology or Medicine,\r\nC.	Literature or Peace and Economics,\r\nD.	All of the above', 4),
(8, 'Entomology is the science that studies\r\n', 'A.	Behavior of human beings,\r\nB.	Insects,\r\nC.	The origin and history of technical and scientific terms,\r\nD.	The formation of rocks', 2),
(9, 'Garampani sanctuary is located at\r\n\r\n', 'A.	Junagarh Gujarat,\r\nB.	Diphu  Assam,\r\nC.	Kohima Nagaland,\r\nD.	Gangtok  Sikkim', 2),
(10, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'A.	largest railway station,\r\nB.	highest railway station,\r\nC.	longest railway station,\r\nD.	None of the above', 1),
(11, 'The members of the Rajya Sabha are elected by\r\n', 'A.	the people,\r\nB.	Lok Sabha,\r\nC.	elected members of the legislative assembly,\r\nD.	elected members of the legislative council', 3),
(12, 'The members of the panchayat are\r\n', 'A.	nominated by the district officer,\r\nB.	the electorates of the respective territorial constituencies,\r\nC.	nominated by local self-government minister of the state,\r\nD.	nominated by the block development organization', 2),
(13, 'The name of the Laccadive, Minicoy and Amindivi islands was changed to Lakshadweep by an Act of Parliament in\r\n\r\n', 'A.	1970,\r\nB.	1971,\r\nC.	1972,\r\nD.	1973', 4),
(14, 'The power to decide an election petition is vested in the\r\n', 'A.	Parliament,\r\nB.	Supreme Court,\r\nC.	High courts,\r\nD.	Election Commission', 3),
(15, 'The Parliament of India cannot be regarded as a sovereign body because\r\n\r\n', 'A.	it can legislate only on subjects entrusted to the Centre by the Constitution,\r\nB.	it has to operate within the limits prescribed by the Constitution,\r\nC.	the Supreme Court can declare laws passed by parliament as unconstitutional if they contravene the provisions of the Constitution,\r\nD.	All of the above', 4),
(16, '\'.MOV\' extension refers usually to what kind of file?\r\n\r\n', 'A.	Image file,\r\nB.	Animation/movie file,\r\nC.	Audio file,\r\nD.	MS Office document', 2),
(17, 'In which decade with the first transatlantic radio broadcast occur?\r\n\r\n', 'A.	1850s,\r\nB.	1860s,\r\nC.	1870s,\r\nD.	1900s\r\n', 4),
(18, '\'OS\' computer abbreviation usually means ?\r\n\r\n', 'A.	Order of Significance,\r\nB.	Open Software,\r\nC.	Operating System,\r\nD.	Optical Sensor', 3),
(19, 'What is part of a database that holds only one type of information?\r\n', 'A.	Report,\r\nB.	Field,\r\nC.	Record,\r\nD.	File', 2),
(20, 'The purpose of choke in tube light is ?\r\n\r\n', 'A.	To decrease the current,\r\nB.	To increase the current,\r\nC.	To decrease the voltage momentarily,\r\nD.	To increase the voltage momentarily', 4);

-- --------------------------------------------------------

--
-- Table structure for table `questions4`
--

CREATE TABLE `questions4` (
  `id` int(11) NOT NULL,
  `Ques` varchar(500) NOT NULL,
  `options` varchar(500) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions4`
--

INSERT INTO `questions4` (`id`, `Ques`, `options`, `answer`) VALUES
(1, 'Blueberries cost more than strawberries.\r\nBlueberries cost less than raspberries.\r\nRaspberries cost more than strawberries and blueberries.\r\nIf the first two statements are true, the third statement is', 'A. true,B.false,C .uncertain,D.none of the above', 1),
(2, 'Look at this series: 36, 34, 30, 28, 24, ... What number should come next?', 'A. 20,B. 22,C.23,D.26', 2),
(3, 'Look at this series: 7, 10, 8, 11, 9, 12, ... What number should come next?', 'A.7,B.10,C.12,D.13', 2),
(4, 'Look at this series: 53, 53, 40, 40, 27, 27, ... What number should come next?', 'A.12,B.14,C.27,D.53', 2),
(5, 'Tanya is older than Eric.\r\nCliff is older than Tanya.\r\nEric is older than Cliff.\r\nIf the first two statements are true, the third statement is', 'A. true,B .false,C.uncertain,D.none', 2),
(6, 'Garampani sanctuary is located at\r\n\r\n', 'A.	Junagarh Gujarat,\r\nB.	Diphu  Assam,\r\nC.	Kohima Nagaland,\r\nD.	Gangtok  Sikkim', 2),
(7, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'A.	largest railway station,\r\nB.	highest railway station,\r\nC.	longest railway station,\r\nD.	None of the above', 1),
(8, 'Entomology is the science that studies\r\n', 'A.	Behavior of human beings,\r\nB.	Insects,\r\nC.	The origin and history of technical and scientific terms,\r\nD.	The formation of rocks', 2),
(9, 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of\r\n', 'A.	Asia,\r\nB.	Africa,\r\nC.	Europe,\r\nD.	Australia', 2),
(10, 'For which of the following disciplines is Nobel Prize awarded?\r\n\r\n', 'A.	Physics and Chemistry,\r\nB.	Physiology or Medicine,\r\nC.	Literature or Peace and Economics,\r\nD.	All of the above', 4),
(11, 'The name of the Laccadive, Minicoy and Amindivi islands was changed to Lakshadweep by an Act of Parliament in\r\n\r\n', 'A.	1970,\r\nB.	1971,\r\nC.	1972,\r\nD.	1973', 4),
(12, 'The members of the Rajya Sabha are elected by\r\n', 'A.	the people,\r\nB.	Lok Sabha,\r\nC.	elected members of the legislative assembly,\r\nD.	elected members of the legislative council', 3),
(13, 'The members of the panchayat are\r\n', 'A.	nominated by the district officer,\r\nB.	the electorates of the respective territorial constituencies,\r\nC.	nominated by local self-government minister of the state,\r\nD.	nominated by the block development organization', 2),
(14, 'The Parliament of India cannot be regarded as a sovereign body because\r\n\r\n', 'A.	it can legislate only on subjects entrusted to the Centre by the Constitution,\r\nB.	it has to operate within the limits prescribed by the Constitution,\r\nC.	the Supreme Court can declare laws passed by parliament as unconstitutional if they contravene the provisions of the Constitution,\r\nD.	All of the above', 4),
(15, 'The power to decide an election petition is vested in the\r\n', 'A.	Parliament,\r\nB.	Supreme Court,\r\nC.	High courts,\r\nD.	Election Commission', 3),
(16, 'The purpose of choke in tube light is ?\r\n\r\n', 'A.	To decrease the current,\r\nB.	To increase the current,\r\nC.	To decrease the voltage momentarily,\r\nD.	To increase the voltage momentarily', 4),
(17, 'In which decade with the first transatlantic radio broadcast occur?\r\n\r\n', 'A.	1850s,\r\nB.	1860s,\r\nC.	1870s,\r\nD.	1900s\r\n', 4),
(18, '\'OS\' computer abbreviation usually means ?\r\n\r\n', 'A.	Order of Significance,\r\nB.	Open Software,\r\nC.	Operating System,\r\nD.	Optical Sensor', 3),
(19, 'What is part of a database that holds only one type of information?\r\n', 'A.	Report,\r\nB.	Field,\r\nC.	Record,\r\nD.	File', 2),
(20, '\'.MOV\' extension refers usually to what kind of file?\r\n\r\n', 'A.	Image file,\r\nB.	Animation/movie file,\r\nC.	Audio file,\r\nD.	MS Office document', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL DEFAULT 'Male',
  `dob` date NOT NULL,
  `current_ques` int(11) NOT NULL DEFAULT 1,
  `QuesSet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `gender`, `dob`, `current_ques`, `QuesSet`) VALUES
(1, 'Chitesh', '32250170a0dca92d53ec9624f336ca24', 'Chitesh', 'Bansal', 'test@epx.com', 'Male', '2001-11-11', 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quesdata1`
--
ALTER TABLE `quesdata1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quesdata7`
--
ALTER TABLE `quesdata7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quesdata8`
--
ALTER TABLE `quesdata8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quesdata9`
--
ALTER TABLE `quesdata9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quesdata10`
--
ALTER TABLE `quesdata10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quesdata11`
--
ALTER TABLE `quesdata11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions1`
--
ALTER TABLE `questions1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions2`
--
ALTER TABLE `questions2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions3`
--
ALTER TABLE `questions3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions4`
--
ALTER TABLE `questions4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quesdata1`
--
ALTER TABLE `quesdata1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `quesdata7`
--
ALTER TABLE `quesdata7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `quesdata8`
--
ALTER TABLE `quesdata8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `quesdata9`
--
ALTER TABLE `quesdata9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `quesdata10`
--
ALTER TABLE `quesdata10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `quesdata11`
--
ALTER TABLE `quesdata11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `questions1`
--
ALTER TABLE `questions1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `questions2`
--
ALTER TABLE `questions2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `questions3`
--
ALTER TABLE `questions3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `questions4`
--
ALTER TABLE `questions4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
