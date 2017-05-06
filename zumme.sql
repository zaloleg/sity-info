-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 06 2017 г., 22:46
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `zumme`
--

-- --------------------------------------------------------

--
-- Структура таблицы `rates`
--

CREATE TABLE IF NOT EXISTS `rates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `destination` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `is_mobile` enum('0','1') NOT NULL,
  `call_price` float(10,4) NOT NULL,
  `connection_fee` int(11) NOT NULL,
  `sms_price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Дамп данных таблицы `rates`
--

INSERT INTO `rates` (`id`, `destination`, `location`, `is_mobile`, `call_price`, `connection_fee`, `sms_price`) VALUES
(1, 'Reunion', '', '1', 0.0790, 0, 0),
(2, 'Reunion', '', '0', 0.1600, 0, 0),
(3, 'Romania', '', '1', 0.0190, 0, 0),
(4, 'Romania', '', '0', 0.0100, 0, 0),
(5, 'Russia', '', '1', 0.0950, 0, 0),
(6, 'Russia', '', '0', 0.0230, 0, 0),
(7, 'Russia', 'Moscow', '0', 0.0230, 0, 0),
(8, 'Russia', 'St. Petersburg', '0', 0.0230, 0, 0),
(9, 'Rwanda', '', '1', 0.4900, 0, 0),
(10, 'Rwanda', '', '0', 0.4900, 0, 0),
(11, 'Costa Rica', '', '1', 0.0950, 0, 0),
(12, 'Costa Rica', '', '0', 0.0490, 0, 0),
(13, 'Czech Republic', '', '1', 0.1000, 0, 0),
(14, 'Czech Republic', '', '0', 0.0300, 0, 0),
(15, 'Democratic Republic of Congo', '', '1', 0.4500, 0, 0),
(16, 'Democratic Republic of Congo', '', '0', 0.3750, 0, 0),
(17, 'Dominican Republic', '', '1', 0.1300, 0, 0),
(18, 'Dominican Republic', '', '0', 0.0550, 0, 0),
(19, 'Puerto Rico', '', '1', 0.0210, 0, 0),
(20, 'Puerto Rico', '', '0', 0.0210, 0, 0),
(21, 'Central African Republic', '', '1', 1.2000, 0, 0),
(22, 'Central African Republic', '', '0', 1.2000, 0, 0),
(23, 'Syrian Arab Republic', '', '1', 0.2900, 0, 0),
(24, 'Syrian Arab Republic', '', '0', 0.2500, 0, 0),
(25, 'Serbia', '', '1', 0.4900, 0, 0),
(26, 'Serbia', '', '0', 0.1900, 0, 0),
(27, 'Algeria', '', '1', 0.7200, 0, 0),
(28, 'Algeria', '', '0', 0.1300, 0, 0),
(29, 'Austria', '', '1', 0.1200, 0, 0),
(30, 'Austria', '', '0', 0.1650, 0, 0),
(31, 'Bulgaria', '', '1', 0.2000, 0, 0),
(32, 'Bulgaria', '', '0', 0.0400, 0, 0),
(33, 'Cameroon', '', '1', 0.4500, 0, 0),
(34, 'Cameroon', '', '0', 0.3900, 0, 0),
(35, 'Cape Verde', '', '1', 0.4200, 0, 0),
(36, 'Cape Verde', '', '0', 0.4200, 0, 0),
(37, 'Equatorial Guinea', '', '1', 0.6000, 0, 0),
(38, 'Equatorial Guinea', '', '0', 0.6000, 0, 0),
(39, 'Iraq', '', '1', 0.3500, 0, 0),
(40, 'Iraq', '', '0', 0.2500, 0, 0),
(41, 'Israel', '', '1', 0.0600, 0, 0),
(42, 'Israel', '', '0', 0.0190, 0, 0),
(43, 'Liberia', '', '1', 0.5900, 0, 0),
(44, 'Liberia', '', '0', 0.5900, 0, 0),
(45, 'Morocco', '', '1', 0.4900, 0, 0),
(46, 'Morocco', '', '0', 0.0210, 0, 0),
(47, 'Palau', '', '1', 0.4300, 0, 0),
(48, 'Palau', '', '0', 0.4300, 0, 0),
(49, 'Peru', '', '1', 0.1290, 0, 0),
(50, 'Peru', '', '0', 0.0210, 0, 0),
(51, 'South Africa', '', '1', 0.0750, 0, 0),
(52, 'South Africa', '', '0', 0.0390, 0, 0),
(53, 'United Kingdom', '', '1', 0.0590, 0, 0),
(54, 'United Kingdom', '', '0', 0.0190, 0, 0),
(55, 'United Kingdom', 'Guernsey', '1', 0.2900, 0, 0),
(56, 'United Kingdom', 'Special & Personal Numbers', '0', 0.3900, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
