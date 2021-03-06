-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 06 2017 г., 11:06
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2_basic_tests`
--

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 64513242),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('RU', 'Russia', 146519759),
('US', 'United States', 322976000);

-- --------------------------------------------------------

--
-- Структура таблицы `weather`
--

CREATE TABLE `weather` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `month` int(11) NOT NULL DEFAULT '0',
  `nweek` int(11) NOT NULL DEFAULT '0',
  `dweek` int(11) NOT NULL DEFAULT '0',
  `tday` int(11) NOT NULL DEFAULT '0',
  `tnight` int(11) NOT NULL DEFAULT '0',
  `delmaxweek` tinyint(1) NOT NULL DEFAULT '0',
  `delmaxmonth` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `weather`
--

INSERT INTO `weather` (`id`, `date`, `month`, `nweek`, `dweek`, `tday`, `tnight`, `delmaxweek`, `delmaxmonth`) VALUES
(1, '2016-01-01', 1, 1, 6, -8, -11, 0, 0),
(2, '2016-01-02', 1, 1, 7, -6, -13, 0, 0),
(3, '2016-01-03', 1, 2, 1, -6, -13, 0, 0),
(4, '2016-01-04', 1, 2, 2, -9, -10, 0, 0),
(5, '2016-01-05', 1, 2, 3, -7, -10, 0, 0),
(6, '2016-01-06', 1, 2, 4, -9, -13, 0, 0),
(7, '2016-01-07', 1, 2, 5, -8, -10, 0, 0),
(8, '2016-01-08', 1, 2, 6, -8, -14, 0, 0),
(9, '2016-01-09', 1, 2, 7, -6, -13, 0, 0),
(10, '2016-01-10', 1, 3, 1, -10, -13, 0, 0),
(11, '2016-01-11', 1, 3, 2, -7, -14, 0, 0),
(12, '2016-01-12', 1, 3, 3, -8, -11, 0, 0),
(13, '2016-01-13', 1, 3, 4, -10, -13, 0, 0),
(14, '2016-01-14', 1, 3, 5, -8, -12, 0, 0),
(15, '2016-01-15', 1, 3, 6, -8, -12, 0, 0),
(16, '2016-01-16', 1, 3, 7, -7, -15, 0, 0),
(17, '2016-01-17', 1, 4, 1, -9, -15, 0, 0),
(18, '2016-01-18', 1, 4, 2, -6, -14, 0, 0),
(19, '2016-01-19', 1, 4, 3, -8, -15, 0, 0),
(20, '2016-01-20', 1, 4, 4, -10, -13, 0, 0),
(21, '2016-01-21', 1, 4, 5, -9, -12, 0, 0),
(22, '2016-01-22', 1, 4, 6, -9, -14, 0, 0),
(23, '2016-01-23', 1, 4, 7, -11, -12, 0, 0),
(24, '2016-01-24', 1, 5, 1, -8, -16, 0, 0),
(25, '2016-01-25', 1, 5, 2, -8, -16, 0, 0),
(26, '2016-01-26', 1, 5, 3, -9, -14, 0, 0),
(27, '2016-01-27', 1, 5, 4, -8, -15, 0, 0),
(28, '2016-01-28', 1, 5, 5, -11, -13, 0, 0),
(29, '2016-01-29', 1, 5, 6, -8, -12, 0, 0),
(30, '2016-01-30', 1, 5, 7, -10, -13, 0, 0),
(31, '2016-01-31', 1, 6, 1, -11, -15, 0, 0),
(32, '2016-02-01', 2, 6, 2, -7, -14, 0, 0),
(33, '2016-02-02', 2, 6, 3, -9, -16, 0, 0),
(34, '2016-02-03', 2, 6, 4, -9, -15, 0, 0),
(35, '2016-02-04', 2, 6, 5, -11, -13, 0, 0),
(36, '2016-02-05', 2, 6, 6, -9, -15, 0, 0),
(37, '2016-02-06', 2, 6, 7, -9, -14, 0, 0),
(38, '2016-02-07', 2, 7, 1, -10, -14, 0, 0),
(39, '2016-02-08', 2, 7, 2, -7, -13, 0, 0),
(40, '2016-02-09', 2, 7, 3, -9, -16, 0, 0),
(41, '2016-02-10', 2, 7, 4, -8, -12, 0, 0),
(42, '2016-02-11', 2, 7, 5, -9, -16, 0, 0),
(43, '2016-02-12', 2, 7, 6, -8, -13, 0, 0),
(44, '2016-02-13', 2, 7, 7, -8, -13, 0, 0),
(45, '2016-02-14', 2, 8, 1, -7, -14, 0, 0),
(46, '2016-02-15', 2, 8, 2, -10, -13, 0, 0),
(47, '2016-02-16', 2, 8, 3, -6, -11, 0, 0),
(48, '2016-02-17', 2, 8, 4, -8, -14, 0, 0),
(49, '2016-02-18', 2, 8, 5, -10, -11, 0, 0),
(50, '2016-02-19', 2, 8, 6, -7, -15, 0, 0),
(51, '2016-02-20', 2, 8, 7, -8, -12, 0, 0),
(52, '2016-02-21', 2, 9, 1, -6, -15, 0, 0),
(53, '2016-02-22', 2, 9, 2, -7, -13, 0, 0),
(54, '2016-02-23', 2, 9, 3, -8, -14, 0, 0),
(55, '2016-02-24', 2, 9, 4, -6, -14, 0, 0),
(56, '2016-02-25', 2, 9, 5, -6, -13, 0, 0),
(57, '2016-02-26', 2, 9, 6, -9, -12, 0, 0),
(58, '2016-02-27', 2, 9, 7, -6, -10, 0, 0),
(59, '2016-02-28', 2, 10, 1, -7, -13, 0, 0),
(60, '2016-02-29', 2, 10, 2, -6, -9, 0, 0),
(61, '2016-03-01', 3, 10, 3, -8, -13, 0, 0),
(62, '2016-03-02', 3, 10, 4, -4, -11, 0, 0),
(63, '2016-03-03', 3, 10, 5, -8, -13, 0, 0),
(64, '2016-03-04', 3, 10, 6, -7, -10, 0, 0),
(65, '2016-03-05', 3, 10, 7, -8, -11, 0, 0),
(66, '2016-03-06', 3, 11, 1, -6, -8, 0, 0),
(67, '2016-03-07', 3, 11, 2, -4, -8, 0, 0),
(68, '2016-03-08', 3, 11, 3, -4, -8, 0, 0),
(69, '2016-03-09', 3, 11, 4, -5, -8, 0, 0),
(70, '2016-03-10', 3, 11, 5, -3, -8, 0, 0),
(71, '2016-03-11', 3, 11, 6, -2, -11, 0, 0),
(72, '2016-03-12', 3, 11, 7, -3, -8, 0, 0),
(73, '2016-03-13', 3, 12, 1, -2, -11, 0, 0),
(74, '2016-03-14', 3, 12, 2, -6, -10, 0, 0),
(75, '2016-03-15', 3, 12, 3, -3, -10, 0, 0),
(76, '2016-03-16', 3, 12, 4, -5, -6, 0, 0),
(77, '2016-03-17', 3, 12, 5, -2, -8, 0, 0),
(78, '2016-03-18', 3, 12, 6, -3, -10, 0, 0),
(79, '2016-03-19', 3, 12, 7, -3, -6, 0, 0),
(80, '2016-03-20', 3, 13, 1, -4, -7, 0, 0),
(81, '2016-03-21', 3, 13, 2, 0, -8, 0, 0),
(82, '2016-03-22', 3, 13, 3, -3, -9, 0, 0),
(83, '2016-03-23', 3, 13, 4, 0, -4, 0, 0),
(84, '2016-03-24', 3, 13, 5, 0, -6, 0, 0),
(85, '2016-03-25', 3, 13, 6, -3, -6, 0, 0),
(86, '2016-03-26', 3, 13, 7, -1, -7, 0, 0),
(87, '2016-03-27', 3, 14, 1, -2, -7, 0, 0),
(88, '2016-03-28', 3, 14, 2, -1, -4, 0, 0),
(89, '2016-03-29', 3, 14, 3, 1, -6, 0, 0),
(90, '2016-03-30', 3, 14, 4, 3, -4, 0, 0),
(91, '2016-03-31', 3, 14, 5, 0, -3, 0, 0),
(92, '2016-04-01', 4, 14, 6, 1, -6, 0, 0),
(93, '2016-04-02', 4, 14, 7, 3, -4, 0, 0),
(94, '2016-04-03', 4, 15, 1, 3, -3, 0, 0),
(95, '2016-04-04', 4, 15, 2, 0, -3, 0, 0),
(96, '2016-04-05', 4, 15, 3, 3, 0, 0, 0),
(97, '2016-04-06', 4, 15, 4, 4, -1, 0, 0),
(98, '2016-04-07', 4, 15, 5, 5, -2, 0, 0),
(99, '2016-04-08', 4, 15, 6, 5, 1, 0, 0),
(100, '2016-04-09', 4, 15, 7, 2, -3, 0, 0),
(101, '2016-04-10', 4, 16, 1, 6, -2, 0, 0),
(102, '2016-04-11', 4, 16, 2, 4, -1, 0, 0),
(103, '2016-04-12', 4, 16, 3, 6, -2, 0, 0),
(104, '2016-04-13', 4, 16, 4, 4, -1, 0, 0),
(105, '2016-04-14', 4, 16, 5, 7, -2, 0, 0),
(106, '2016-04-15', 4, 16, 6, 7, 3, 0, 0),
(107, '2016-04-16', 4, 16, 7, 5, 3, 0, 0),
(108, '2016-04-17', 4, 17, 1, 9, 0, 0, 0),
(109, '2016-04-18', 4, 17, 2, 5, 1, 0, 0),
(110, '2016-04-19', 4, 17, 3, 7, 4, 0, 0),
(111, '2016-04-20', 4, 17, 4, 7, 2, 0, 0),
(112, '2016-04-21', 4, 17, 5, 9, 5, 0, 0),
(113, '2016-04-22', 4, 17, 6, 9, 5, 0, 0),
(114, '2016-04-23', 4, 17, 7, 7, 4, 0, 0),
(115, '2016-04-24', 4, 18, 1, 8, 4, 0, 0),
(116, '2016-04-25', 4, 18, 2, 7, 6, 0, 0),
(117, '2016-04-26', 4, 18, 3, 10, 5, 0, 0),
(118, '2016-04-27', 4, 18, 4, 9, 6, 0, 0),
(119, '2016-04-28', 4, 18, 5, 12, 3, 0, 0),
(120, '2016-04-29', 4, 18, 6, 9, 5, 0, 0),
(121, '2016-04-30', 4, 18, 7, 12, 6, 0, 0),
(122, '2016-05-01', 5, 19, 1, 13, 5, 0, 0),
(123, '2016-05-02', 5, 19, 2, 10, 8, 0, 0),
(124, '2016-05-03', 5, 19, 3, 12, 9, 0, 0),
(125, '2016-05-04', 5, 19, 4, 11, 7, 0, 0),
(126, '2016-05-05', 5, 19, 5, 12, 6, 0, 0),
(127, '2016-05-06', 5, 19, 6, 14, 6, 0, 0),
(128, '2016-05-07', 5, 19, 7, 15, 10, 0, 0),
(129, '2016-05-08', 5, 20, 1, 12, 10, 0, 0),
(130, '2016-05-09', 5, 20, 2, 14, 8, 0, 0),
(131, '2016-05-10', 5, 20, 3, 14, 7, 0, 0),
(132, '2016-05-11', 5, 20, 4, 14, 11, 0, 0),
(133, '2016-05-12', 5, 20, 5, 15, 10, 0, 0),
(134, '2016-05-13', 5, 20, 6, 17, 10, 0, 0),
(135, '2016-05-14', 5, 20, 7, 14, 13, 0, 0),
(136, '2016-05-15', 5, 21, 1, 16, 11, 0, 0),
(137, '2016-05-16', 5, 21, 2, 16, 10, 0, 0),
(138, '2016-05-17', 5, 21, 3, 17, 10, 0, 0),
(139, '2016-05-18', 5, 21, 4, 15, 14, 0, 0),
(140, '2016-05-19', 5, 21, 5, 17, 12, 0, 0),
(141, '2016-05-20', 5, 21, 6, 20, 13, 0, 0),
(142, '2016-05-21', 5, 21, 7, 19, 13, 0, 0),
(143, '2016-05-22', 5, 22, 1, 17, 13, 0, 0),
(144, '2016-05-23', 5, 22, 2, 18, 15, 0, 0),
(145, '2016-05-24', 5, 22, 3, 19, 15, 0, 0),
(146, '2016-05-25', 5, 22, 4, 20, 15, 0, 0),
(147, '2016-05-26', 5, 22, 5, 19, 17, 0, 0),
(148, '2016-05-27', 5, 22, 6, 19, 15, 0, 0),
(149, '2016-05-28', 5, 22, 7, 18, 13, 0, 0),
(150, '2016-05-29', 5, 23, 1, 21, 15, 0, 0),
(151, '2016-05-30', 5, 23, 2, 23, 15, 0, 0),
(152, '2016-05-31', 5, 23, 3, 19, 16, 0, 0),
(153, '2016-06-01', 6, 23, 4, 23, 15, 0, 0),
(154, '2016-06-02', 6, 23, 5, 21, 17, 0, 0),
(155, '2016-06-03', 6, 23, 6, 20, 18, 0, 0),
(156, '2016-06-04', 6, 23, 7, 20, 15, 0, 0),
(157, '2016-06-05', 6, 24, 1, 22, 16, 0, 0),
(158, '2016-06-06', 6, 24, 2, 23, 16, 0, 0),
(159, '2016-06-07', 6, 24, 3, 23, 18, 0, 0),
(160, '2016-06-08', 6, 24, 4, 22, 20, 0, 0),
(161, '2016-06-09', 6, 24, 5, 26, 20, 0, 0),
(162, '2016-06-10', 6, 24, 6, 25, 17, 0, 0),
(163, '2016-06-11', 6, 24, 7, 24, 21, 0, 0),
(164, '2016-06-12', 6, 25, 1, 25, 18, 0, 0),
(165, '2016-06-13', 6, 25, 2, 25, 21, 0, 0),
(166, '2016-06-14', 6, 25, 3, 25, 18, 0, 0),
(167, '2016-06-15', 6, 25, 4, 23, 22, 0, 0),
(168, '2016-06-16', 6, 25, 5, 28, 19, 0, 0),
(169, '2016-06-17', 6, 25, 6, 28, 23, 0, 0),
(170, '2016-06-18', 6, 25, 7, 24, 19, 0, 0),
(171, '2016-06-19', 6, 26, 1, 28, 21, 0, 0),
(172, '2016-06-20', 6, 26, 2, 29, 24, 0, 0),
(173, '2016-06-21', 6, 26, 3, 27, 22, 0, 0),
(174, '2016-06-22', 6, 26, 4, 26, 20, 0, 0),
(175, '2016-06-23', 6, 26, 5, 29, 21, 0, 0),
(176, '2016-06-24', 6, 26, 6, 25, 23, 0, 0),
(177, '2016-06-25', 6, 26, 7, 28, 21, 0, 0),
(178, '2016-06-26', 6, 27, 1, 26, 25, 0, 0),
(179, '2016-06-27', 6, 27, 2, 29, 21, 0, 0),
(180, '2016-06-28', 6, 27, 3, 28, 21, 0, 0),
(181, '2016-06-29', 6, 27, 4, 30, 22, 0, 0),
(182, '2016-06-30', 6, 27, 5, 28, 24, 0, 0),
(183, '2016-07-01', 7, 27, 6, 29, 22, 0, 0),
(184, '2016-07-02', 7, 27, 7, 29, 23, 0, 0),
(185, '2016-07-03', 7, 28, 1, 27, 25, 0, 0),
(186, '2016-07-04', 7, 28, 2, 28, 25, 0, 0),
(187, '2016-07-05', 7, 28, 3, 28, 25, 0, 0),
(188, '2016-07-06', 7, 28, 4, 28, 26, 0, 0),
(189, '2016-07-07', 7, 28, 5, 28, 26, 0, 0),
(190, '2016-07-08', 7, 28, 6, 31, 26, 0, 0),
(191, '2016-07-09', 7, 28, 7, 28, 24, 0, 0),
(192, '2016-07-10', 7, 29, 1, 30, 23, 0, 0),
(193, '2016-07-11', 7, 29, 2, 28, 23, 0, 0),
(194, '2016-07-12', 7, 29, 3, 30, 23, 0, 0),
(195, '2016-07-13', 7, 29, 4, 32, 25, 0, 0),
(196, '2016-07-14', 7, 29, 5, 31, 24, 0, 0),
(197, '2016-07-15', 7, 29, 6, 28, 24, 0, 0),
(198, '2016-07-16', 7, 29, 7, 29, 27, 0, 0),
(199, '2016-07-17', 7, 30, 1, 31, 28, 0, 0),
(200, '2016-07-18', 7, 30, 2, 30, 28, 0, 0),
(201, '2016-07-19', 7, 30, 3, 33, 27, 0, 0),
(202, '2016-07-20', 7, 30, 4, 33, 24, 0, 0),
(203, '2016-07-21', 7, 30, 5, 30, 26, 0, 0),
(204, '2016-07-22', 7, 30, 6, 29, 27, 0, 0),
(205, '2016-07-23', 7, 30, 7, 31, 27, 0, 0),
(206, '2016-07-24', 7, 31, 1, 30, 26, 0, 0),
(207, '2016-07-25', 7, 31, 2, 30, 26, 0, 0),
(208, '2016-07-26', 7, 31, 3, 29, 27, 0, 0),
(209, '2016-07-27', 7, 31, 4, 30, 28, 0, 0),
(210, '2016-07-28', 7, 31, 5, 33, 27, 0, 0),
(211, '2016-07-29', 7, 31, 6, 32, 27, 0, 0),
(212, '2016-07-30', 7, 31, 7, 30, 25, 0, 0),
(213, '2016-07-31', 7, 32, 1, 30, 25, 0, 0),
(214, '2016-08-01', 8, 32, 2, 32, 26, 0, 0),
(215, '2016-08-02', 8, 32, 3, 30, 28, 0, 0),
(216, '2016-08-03', 8, 32, 4, 29, 26, 0, 0),
(217, '2016-08-04', 8, 32, 5, 32, 28, 0, 0),
(218, '2016-08-05', 8, 32, 6, 32, 28, 0, 0),
(219, '2016-08-06', 8, 32, 7, 32, 24, 0, 0),
(220, '2016-08-07', 8, 33, 1, 29, 27, 0, 0),
(221, '2016-08-08', 8, 33, 2, 32, 24, 0, 0),
(222, '2016-08-09', 8, 33, 3, 33, 24, 0, 0),
(223, '2016-08-10', 8, 33, 4, 29, 24, 0, 0),
(224, '2016-08-11', 8, 33, 5, 29, 27, 0, 0),
(225, '2016-08-12', 8, 33, 6, 30, 27, 0, 0),
(226, '2016-08-13', 8, 33, 7, 29, 24, 0, 0),
(227, '2016-08-14', 8, 34, 1, 29, 25, 0, 0),
(228, '2016-08-15', 8, 34, 2, 28, 26, 0, 0),
(229, '2016-08-16', 8, 34, 3, 32, 23, 0, 0),
(230, '2016-08-17', 8, 34, 4, 31, 26, 0, 0),
(231, '2016-08-18', 8, 34, 5, 32, 27, 0, 0),
(232, '2016-08-19', 8, 34, 6, 28, 23, 0, 0),
(233, '2016-08-20', 8, 34, 7, 32, 24, 0, 0),
(234, '2016-08-21', 8, 35, 1, 31, 26, 0, 0),
(235, '2016-08-22', 8, 35, 2, 29, 22, 0, 0),
(236, '2016-08-23', 8, 35, 3, 27, 25, 0, 0),
(237, '2016-08-24', 8, 35, 4, 30, 22, 0, 0),
(238, '2016-08-25', 8, 35, 5, 31, 23, 0, 0),
(239, '2016-08-26', 8, 35, 6, 30, 26, 0, 0),
(240, '2016-08-27', 8, 35, 7, 30, 25, 0, 0),
(241, '2016-08-28', 8, 36, 1, 28, 25, 0, 0),
(242, '2016-08-29', 8, 36, 2, 30, 21, 0, 0),
(243, '2016-08-30', 8, 36, 3, 30, 24, 0, 0),
(244, '2016-08-31', 8, 36, 4, 30, 23, 0, 0),
(245, '2016-09-01', 9, 36, 5, 28, 21, 0, 0),
(246, '2016-09-02', 9, 36, 6, 29, 21, 0, 0),
(247, '2016-09-03', 9, 36, 7, 26, 22, 0, 0),
(248, '2016-09-04', 9, 37, 1, 27, 24, 0, 0),
(249, '2016-09-05', 9, 37, 2, 28, 22, 0, 0),
(250, '2016-09-06', 9, 37, 3, 25, 21, 0, 0),
(251, '2016-09-07', 9, 37, 4, 27, 23, 0, 0),
(252, '2016-09-08', 9, 37, 5, 27, 23, 0, 0),
(253, '2016-09-09', 9, 37, 6, 24, 21, 0, 0),
(254, '2016-09-10', 9, 37, 7, 26, 21, 0, 0),
(255, '2016-09-11', 9, 38, 1, 24, 20, 0, 0),
(256, '2016-09-12', 9, 38, 2, 27, 22, 0, 0),
(257, '2016-09-13', 9, 38, 3, 24, 18, 0, 0),
(258, '2016-09-14', 9, 38, 4, 24, 18, 0, 0),
(259, '2016-09-15', 9, 38, 5, 26, 20, 0, 0),
(260, '2016-09-16', 9, 38, 6, 26, 21, 0, 0),
(261, '2016-09-17', 9, 38, 7, 22, 18, 0, 0),
(262, '2016-09-18', 9, 39, 1, 26, 20, 0, 0),
(263, '2016-09-19', 9, 39, 2, 23, 19, 0, 0),
(264, '2016-09-20', 9, 39, 3, 25, 17, 0, 0),
(265, '2016-09-21', 9, 39, 4, 22, 17, 0, 0),
(266, '2016-09-22', 9, 39, 5, 24, 17, 0, 0),
(267, '2016-09-23', 9, 39, 6, 20, 19, 0, 0),
(268, '2016-09-24', 9, 39, 7, 20, 15, 0, 0),
(269, '2016-09-25', 9, 40, 1, 23, 18, 0, 0),
(270, '2016-09-26', 9, 40, 2, 20, 16, 0, 0),
(271, '2016-09-27', 9, 40, 3, 23, 15, 0, 0),
(272, '2016-09-28', 9, 40, 4, 22, 16, 0, 0),
(273, '2016-09-29', 9, 40, 5, 18, 16, 0, 0),
(274, '2016-09-30', 9, 40, 6, 18, 14, 0, 0),
(275, '2016-10-01', 10, 40, 7, 19, 15, 0, 0),
(276, '2016-10-02', 10, 41, 1, 21, 12, 0, 0),
(277, '2016-10-03', 10, 41, 2, 18, 16, 0, 0),
(278, '2016-10-04', 10, 41, 3, 20, 12, 0, 0),
(279, '2016-10-05', 10, 41, 4, 16, 14, 0, 0),
(280, '2016-10-06', 10, 41, 5, 16, 15, 0, 0),
(281, '2016-10-07', 10, 41, 6, 19, 11, 0, 0),
(282, '2016-10-08', 10, 41, 7, 20, 14, 0, 0),
(283, '2016-10-09', 10, 42, 1, 15, 10, 0, 0),
(284, '2016-10-10', 10, 42, 2, 19, 10, 0, 0),
(285, '2016-10-11', 10, 42, 3, 18, 12, 0, 0),
(286, '2016-10-12', 10, 42, 4, 18, 11, 0, 0),
(287, '2016-10-13', 10, 42, 5, 14, 11, 0, 0),
(288, '2016-10-14', 10, 42, 6, 17, 9, 0, 0),
(289, '2016-10-15', 10, 42, 7, 15, 9, 0, 0),
(290, '2016-10-16', 10, 43, 1, 16, 10, 0, 0),
(291, '2016-10-17', 10, 43, 2, 12, 9, 0, 0),
(292, '2016-10-18', 10, 43, 3, 12, 9, 0, 0),
(293, '2016-10-19', 10, 43, 4, 13, 9, 0, 0),
(294, '2016-10-20', 10, 43, 5, 14, 10, 0, 0),
(295, '2016-10-21', 10, 43, 6, 14, 6, 0, 0),
(296, '2016-10-22', 10, 43, 7, 13, 7, 0, 0),
(297, '2016-10-23', 10, 44, 1, 10, 9, 0, 0),
(298, '2016-10-24', 10, 44, 2, 13, 8, 0, 0),
(299, '2016-10-25', 10, 44, 3, 10, 9, 0, 0),
(300, '2016-10-26', 10, 44, 4, 9, 8, 0, 0),
(301, '2016-10-27', 10, 44, 5, 13, 5, 0, 0),
(302, '2016-10-28', 10, 44, 6, 10, 4, 0, 0),
(303, '2016-10-29', 10, 44, 7, 9, 4, 0, 0),
(304, '2016-10-30', 10, 45, 1, 12, 5, 0, 0),
(305, '2016-10-31', 10, 45, 2, 11, 3, 0, 0),
(306, '2016-11-01', 11, 45, 3, 7, 5, 0, 0),
(307, '2016-11-02', 11, 45, 4, 11, 3, 0, 0),
(308, '2016-11-03', 11, 45, 5, 8, 2, 0, 0),
(309, '2016-11-04', 11, 45, 6, 9, 2, 0, 0),
(310, '2016-11-05', 11, 45, 7, 6, 1, 0, 0),
(311, '2016-11-06', 11, 46, 1, 6, 3, 0, 0),
(312, '2016-11-07', 11, 46, 2, 8, 0, 0, 0),
(313, '2016-11-08', 11, 46, 3, 7, 4, 0, 0),
(314, '2016-11-09', 11, 46, 4, 7, 0, 0, 0),
(315, '2016-11-10', 11, 46, 5, 7, 0, 0, 0),
(316, '2016-11-11', 11, 46, 6, 8, -1, 0, 0),
(317, '2016-11-12', 11, 46, 7, 7, -2, 0, 0),
(318, '2016-11-13', 11, 47, 1, 5, -1, 0, 0),
(319, '2016-11-14', 11, 47, 2, 3, 0, 0, 0),
(320, '2016-11-15', 11, 47, 3, 4, -1, 0, 0),
(321, '2016-11-16', 11, 47, 4, 3, 0, 0, 0),
(322, '2016-11-17', 11, 47, 5, 3, -3, 0, 0),
(323, '2016-11-18', 11, 47, 6, 2, -2, 0, 0),
(324, '2016-11-19', 11, 47, 7, 1, -3, 0, 0),
(325, '2016-11-20', 11, 48, 1, 1, -1, 0, 0),
(326, '2016-11-21', 11, 48, 2, 2, -3, 0, 0),
(327, '2016-11-22', 11, 48, 3, 3, -4, 0, 0),
(328, '2016-11-23', 11, 48, 4, 1, -3, 0, 0),
(329, '2016-11-24', 11, 48, 5, 4, -2, 0, 0),
(330, '2016-11-25', 11, 48, 6, 0, -2, 0, 0),
(331, '2016-11-26', 11, 48, 7, 0, -6, 0, 0),
(332, '2016-11-27', 11, 49, 1, 0, -2, 0, 0),
(333, '2016-11-28', 11, 49, 2, 2, -5, 0, 0),
(334, '2016-11-29', 11, 49, 3, 2, -5, 0, 0),
(335, '2016-11-30', 11, 49, 4, 2, -5, 0, 0),
(336, '2016-12-01', 12, 49, 5, 2, -3, 0, 0),
(337, '2016-12-02', 12, 49, 6, -3, -4, 0, 0),
(338, '2016-12-03', 12, 49, 7, -3, -4, 0, 0),
(339, '2016-12-04', 12, 50, 1, -1, -4, 0, 0),
(340, '2016-12-05', 12, 50, 2, 0, -7, 0, 0),
(341, '2016-12-06', 12, 50, 3, -1, -6, 0, 0),
(342, '2016-12-07', 12, 50, 4, 0, -9, 0, 0),
(343, '2016-12-08', 12, 50, 5, -1, -5, 0, 0),
(344, '2016-12-09', 12, 50, 6, -3, -9, 0, 0),
(345, '2016-12-10', 12, 50, 7, -4, -6, 0, 0),
(346, '2016-12-11', 12, 51, 1, -5, -6, 0, 0),
(347, '2016-12-12', 12, 51, 2, -5, -6, 0, 0),
(348, '2016-12-13', 12, 51, 3, -6, -7, 0, 0),
(349, '2016-12-14', 12, 51, 4, -2, -10, 0, 0),
(350, '2016-12-15', 12, 51, 5, -2, -7, 0, 0),
(351, '2016-12-16', 12, 51, 6, -4, -9, 0, 0),
(352, '2016-12-17', 12, 51, 7, -4, -8, 0, 0),
(353, '2016-12-18', 12, 52, 1, -7, -12, 0, 0),
(354, '2016-12-19', 12, 52, 2, -4, -10, 0, 0),
(355, '2016-12-20', 12, 52, 3, -4, -9, 0, 0),
(356, '2016-12-21', 12, 52, 4, -5, -11, 0, 0),
(357, '2016-12-22', 12, 52, 5, -7, -13, 0, 0),
(358, '2016-12-23', 12, 52, 6, -8, -11, 0, 0),
(359, '2016-12-24', 12, 52, 7, -5, -9, 0, 0),
(360, '2016-12-25', 12, 53, 1, -6, -10, 0, 0),
(361, '2016-12-26', 12, 53, 2, -5, -12, 0, 0),
(362, '2016-12-27', 12, 53, 3, -4, -12, 0, 0),
(363, '2016-12-28', 12, 53, 4, -7, -10, 0, 0),
(364, '2016-12-29', 12, 53, 5, -5, -10, 0, 0),
(365, '2016-12-30', 12, 53, 6, -5, -10, 0, 0),
(366, '2016-12-31', 12, 53, 7, -5, -12, 0, 0),
(367, '2017-01-01', 1, 1, 1, -9, -11, 0, 0),
(368, '2017-01-02', 1, 1, 2, -7, -13, 0, 0),
(369, '2017-01-03', 1, 1, 3, -6, -13, 0, 0),
(370, '2017-01-04', 1, 1, 4, -7, -11, 0, 0),
(371, '2017-01-05', 1, 1, 5, -6, -11, 0, 0),
(372, '2017-01-06', 1, 1, 6, -10, -14, 0, 0),
(373, '2017-01-07', 1, 1, 7, -7, -11, 0, 0),
(374, '2017-01-08', 1, 2, 1, -6, -12, 0, 0),
(375, '2017-01-09', 1, 2, 2, -6, -14, 0, 0),
(376, '2017-01-10', 1, 2, 3, -8, -14, 0, 0),
(377, '2017-01-11', 1, 2, 4, -9, -12, 0, 0),
(378, '2017-01-12', 1, 2, 5, -6, -12, 0, 0),
(379, '2017-01-13', 1, 2, 6, -10, -12, 0, 0),
(380, '2017-01-14', 1, 2, 7, -11, -16, 0, 0),
(381, '2017-01-15', 1, 3, 1, -7, -16, 0, 0),
(382, '2017-01-16', 1, 3, 2, -10, -13, 0, 0),
(383, '2017-01-17', 1, 3, 3, -7, -14, 0, 0),
(384, '2017-01-18', 1, 3, 4, -11, -15, 0, 0),
(385, '2017-01-19', 1, 3, 5, -7, -15, 0, 0),
(386, '2017-01-20', 1, 3, 6, -9, -14, 0, 0),
(387, '2017-01-21', 1, 3, 7, -7, -15, 0, 0),
(388, '2017-01-22', 1, 4, 1, -9, -12, 0, 0),
(389, '2017-01-23', 1, 4, 2, -8, -16, 0, 0),
(390, '2017-01-24', 1, 4, 3, -8, -15, 0, 0),
(391, '2017-01-25', 1, 4, 4, -8, -12, 0, 0),
(392, '2017-01-26', 1, 4, 5, -8, -13, 0, 0),
(393, '2017-01-27', 1, 4, 6, -7, -12, 0, 0),
(394, '2017-01-28', 1, 4, 7, -7, -15, 0, 0),
(395, '2017-01-29', 1, 5, 1, -8, -12, 0, 0),
(396, '2017-01-30', 1, 5, 2, -8, -15, 0, 0),
(397, '2017-01-31', 1, 5, 3, -8, -15, 0, 0),
(398, '2017-02-01', 2, 5, 4, -10, -13, 0, 0),
(399, '2017-02-02', 2, 5, 5, -8, -15, 0, 0),
(400, '2017-02-03', 2, 5, 6, -10, -12, 0, 0),
(401, '2017-02-04', 2, 5, 7, -9, -15, 0, 0),
(402, '2017-02-05', 2, 6, 1, -9, -14, 0, 0),
(403, '2017-02-06', 2, 6, 2, -9, -16, 0, 0),
(404, '2017-02-07', 2, 6, 3, -9, -14, 0, 0),
(405, '2017-02-08', 2, 6, 4, -8, -13, 0, 0),
(406, '2017-02-09', 2, 6, 5, -6, -12, 0, 0),
(407, '2017-02-10', 2, 6, 6, -8, -12, 0, 0),
(408, '2017-02-11', 2, 6, 7, -8, -13, 0, 0),
(409, '2017-02-12', 2, 7, 1, -7, -11, 0, 0),
(410, '2017-02-13', 2, 7, 2, -6, -14, 0, 0),
(411, '2017-02-14', 2, 7, 3, -9, -14, 0, 0),
(412, '2017-02-15', 2, 7, 4, -9, -12, 0, 0),
(413, '2017-02-16', 2, 7, 5, -8, -13, 0, 0),
(414, '2017-02-17', 2, 7, 6, -6, -13, 0, 0),
(415, '2017-02-18', 2, 7, 7, -9, -14, 0, 0),
(416, '2017-02-19', 2, 8, 1, -7, -14, 0, 0),
(417, '2017-02-20', 2, 8, 2, -9, -11, 0, 0),
(418, '2017-02-21', 2, 8, 3, -7, -12, 0, 0),
(419, '2017-02-22', 2, 8, 4, -6, -10, 0, 0),
(420, '2017-02-23', 2, 8, 5, -4, -11, 0, 0),
(421, '2017-02-24', 2, 8, 6, -7, -11, 0, 0),
(422, '2017-02-25', 2, 8, 7, -8, -10, 0, 0),
(423, '2017-02-26', 2, 9, 1, -5, -13, 0, 0),
(424, '2017-02-27', 2, 9, 2, -4, -10, 0, 0),
(425, '2017-02-28', 2, 9, 3, -8, -12, 0, 0),
(426, '2017-03-01', 3, 9, 4, -6, -8, 0, 0),
(427, '2017-03-02', 3, 9, 5, -7, -11, 0, 0),
(428, '2017-03-03', 3, 9, 6, -4, -10, 0, 0),
(429, '2017-03-04', 3, 9, 7, -5, -8, 0, 0),
(430, '2017-03-05', 3, 10, 1, -6, -9, 0, 0),
(431, '2017-03-06', 3, 10, 2, -2, -11, 0, 0),
(432, '2017-03-07', 3, 10, 3, -3, -10, 0, 0),
(433, '2017-03-08', 3, 10, 4, -4, -8, 0, 0),
(434, '2017-03-09', 3, 10, 5, -5, -11, 0, 0),
(435, '2017-03-10', 3, 10, 6, -3, -10, 0, 0),
(436, '2017-03-11', 3, 10, 7, -2, -10, 0, 0),
(437, '2017-03-12', 3, 11, 1, -3, -7, 0, 0),
(438, '2017-03-13', 3, 11, 2, -5, -8, 0, 0),
(439, '2017-03-14', 3, 11, 3, -4, -6, 0, 0),
(440, '2017-03-15', 3, 11, 4, 0, -5, 0, 0),
(441, '2017-03-16', 3, 11, 5, -2, -7, 0, 0),
(442, '2017-03-17', 3, 11, 6, -1, -6, 0, 0),
(443, '2017-03-18', 3, 11, 7, -3, -8, 0, 0),
(444, '2017-03-19', 3, 12, 1, -2, -8, 0, 0),
(445, '2017-03-20', 3, 12, 2, -1, -5, 0, 0),
(446, '2017-03-21', 3, 12, 3, 1, -7, 0, 0),
(447, '2017-03-22', 3, 12, 4, -1, -6, 0, 0),
(448, '2017-03-23', 3, 12, 5, 0, -3, 0, 0),
(449, '2017-03-24', 3, 12, 6, -1, -6, 0, 0),
(450, '2017-03-25', 3, 12, 7, 1, -5, 0, 0),
(451, '2017-03-26', 3, 13, 1, 2, -4, 0, 0),
(452, '2017-03-27', 3, 13, 2, 3, -2, 0, 0),
(453, '2017-03-28', 3, 13, 3, 2, -2, 0, 0),
(454, '2017-03-29', 3, 13, 4, 2, -4, 0, 0),
(455, '2017-03-30', 3, 13, 5, 4, -3, 0, 0),
(456, '2017-03-31', 3, 13, 6, 1, -2, 0, 0),
(457, '2017-04-01', 4, 13, 7, 4, -2, 1, 0),
(458, '2017-04-02', 4, 14, 1, 2, -3, 0, 0),
(459, '2017-04-03', 4, 14, 2, 6, -3, 1, 1),
(460, '2017-04-04', 4, 14, 3, 4, -2, 0, 0),
(461, '2017-04-05', 4, 14, 4, 5, -1, 0, 0),
(462, '2017-04-06', 4, 14, 5, 6, -3, 0, 0),
(463, '2017-04-07', 4, 14, 6, 4, 1, 0, 0),
(464, '2017-04-08', 4, 14, 7, 5, -1, 0, 0),
(465, '2017-04-09', 4, 15, 1, 7, 2, 0, 0),
(466, '2017-04-10', 4, 15, 2, 6, 3, 0, 0),
(467, '2017-04-11', 4, 15, 3, 6, 0, 0, 0),
(468, '2017-04-12', 4, 15, 4, 9, 4, 0, 0),
(469, '2017-04-13', 4, 15, 5, 7, 4, 0, 0),
(470, '2017-04-14', 4, 15, 6, 8, 0, 1, 0),
(471, '2017-04-15', 4, 15, 7, 10, 3, 0, 0),
(472, '2017-04-16', 4, 16, 1, 6, 5, 0, 0),
(473, '2017-04-17', 4, 16, 2, 6, 4, 0, 0),
(474, '2017-04-18', 4, 16, 3, 9, 5, 0, 0),
(475, '2017-04-19', 4, 16, 4, 8, 6, 0, 0),
(476, '2017-04-20', 4, 16, 5, 9, 3, 1, 0),
(477, '2017-04-21', 4, 16, 6, 11, 7, 0, 0),
(478, '2017-04-22', 4, 16, 7, 9, 3, 0, 0),
(479, '2017-04-23', 4, 17, 1, 9, 5, 0, 0),
(480, '2017-04-24', 4, 17, 2, 12, 8, 0, 0),
(481, '2017-04-25', 4, 17, 3, 12, 8, 0, 0),
(482, '2017-04-26', 4, 17, 4, 13, 4, 1, 0),
(483, '2017-04-27', 4, 17, 5, 12, 6, 0, 0),
(484, '2017-04-28', 4, 17, 6, 14, 8, 0, 0),
(485, '2017-04-29', 4, 17, 7, 14, 8, 0, 0),
(486, '2017-04-30', 4, 18, 1, 12, 6, 0, 0),
(487, '2017-05-01', 5, 18, 2, 8, 2, 0, 0),
(488, '2017-05-02', 5, 18, 3, 11, 6, 0, 0),
(489, '2017-05-03', 5, 18, 4, 11, 4, 0, 0),
(490, '2017-05-04', 5, 18, 5, 11, 3, 1, 0),
(491, '2017-05-05', 5, 18, 6, 10, 3, 0, 0),
(492, '2017-05-06', 5, 18, 7, 9, 8, 0, 0),
(493, '2017-05-07', 5, 19, 1, 11, 6, 0, 0),
(494, '2017-05-08', 5, 19, 2, 14, 4, 1, 1),
(495, '2017-05-09', 5, 19, 3, 12, 6, 0, 0),
(496, '2017-05-10', 5, 19, 4, 13, 7, 0, 0),
(497, '2017-05-11', 5, 19, 5, 11, 5, 0, 0),
(498, '2017-05-12', 5, 19, 6, 13, 7, 0, 0),
(499, '2017-05-13', 5, 19, 7, 14, 6, 0, 0),
(500, '2017-05-14', 5, 20, 1, 14, 10, 0, 0),
(501, '2017-05-15', 5, 20, 2, 13, 11, 0, 0),
(502, '2017-05-16', 5, 20, 3, 12, 8, 0, 0),
(503, '2017-05-17', 5, 20, 4, 15, 12, 0, 0),
(504, '2017-05-18', 5, 20, 5, 13, 12, 0, 0),
(505, '2017-05-19', 5, 20, 6, 14, 12, 0, 0),
(506, '2017-05-20', 5, 20, 7, 18, 11, 1, 0),
(507, '2017-05-21', 5, 21, 1, 14, 10, 0, 0),
(508, '2017-05-22', 5, 21, 2, 17, 12, 0, 0),
(509, '2017-05-23', 5, 21, 3, 17, 8, 0, 0),
(510, '2017-05-24', 5, 21, 4, 19, 9, 1, 0),
(511, '2017-05-25', 5, 21, 5, 14, 8, 0, 0),
(512, '2017-05-26', 5, 21, 6, 18, 10, 0, 0),
(513, '2017-05-27', 5, 21, 7, 17, 10, 0, 0),
(514, '2017-05-28', 5, 22, 1, 18, 8, 1, 0),
(515, '2017-05-29', 5, 22, 2, 15, 9, 0, 0),
(516, '2017-05-30', 5, 22, 3, 15, 11, 0, 0),
(517, '2017-05-31', 5, 22, 4, 19, 11, 0, 0),
(518, '2017-06-01', 6, 22, 5, 10, 6, 0, 0),
(519, '2017-06-02', 6, 22, 6, 8, 5, 0, 0),
(520, '2017-06-03', 6, 22, 7, 7, 4, 0, 0),
(521, '2017-06-04', 6, 23, 1, 12, 6, 1, 1),
(522, '2017-06-05', 6, 23, 2, 10, 5, 0, 0),
(523, '2017-06-06', 6, 23, 3, 12, 6, 0, 0),
(524, '2017-06-07', 6, 23, 4, 18, 10, 0, 0),
(525, '2017-06-08', 6, 23, 5, 19, 13, 0, 0),
(526, '2017-06-09', 6, 23, 6, 20, 13, 0, 0),
(527, '2017-06-10', 6, 23, 7, 17, 14, 0, 0),
(528, '2017-06-11', 6, 24, 1, 20, 11, 0, 0),
(529, '2017-06-12', 6, 24, 2, 21, 13, 0, 0),
(530, '2017-06-13', 6, 24, 3, 19, 11, 0, 0),
(531, '2017-06-14', 6, 24, 4, 19, 12, 0, 0),
(532, '2017-06-15', 6, 24, 5, 19, 17, 0, 0),
(533, '2017-06-16', 6, 24, 6, 20, 15, 0, 0),
(534, '2017-06-17', 6, 24, 7, 18, 17, 0, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Индексы таблицы `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `weather`
--
ALTER TABLE `weather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
