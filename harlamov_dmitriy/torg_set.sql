-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 23 2016 г., 08:19
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `torg_set`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categorii`
--

CREATE TABLE IF NOT EXISTS `categorii` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazv_cat` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  UNIQUE KEY `id_3` (`id`),
  KEY `id_4` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `categorii`
--

INSERT INTO `categorii` (`id`, `nazv_cat`) VALUES
(1, 'Комнатные растения'),
(2, 'Садовые цветы');

-- --------------------------------------------------------

--
-- Структура таблицы `comn_rast`
--

CREATE TABLE IF NOT EXISTS `comn_rast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazv_rast` varchar(100) NOT NULL,
  `strana` varchar(100) NOT NULL,
  `tip_rast` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `comn_rast`
--

INSERT INTO `comn_rast` (`id`, `nazv_rast`, `strana`, `tip_rast`, `price`) VALUES
(1, 'Агава', 'Испания', 'Многолетнее травянистое розеточное суккулентное растение с коротким стеблем.\n', 250),
(2, 'Агапетес', 'Бразилия', 'Вечнозеленые кустарники с утолщенным у основания стволом и небольшими яйцевидными листочками. ', 300),
(3, 'Лавр', 'Россия', 'Вечнозеленый кустарник с кожистыми волнистыми по краям листьями.', 100);

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) NOT NULL,
  `adress` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `info`
--

INSERT INTO `info` (`id`, `phone`, `adress`) VALUES
(1, '88123456789', 'Санк-Петербург, ул.Бухарестская д.22'),
(2, '88125678745', 'Санкт-Петербург, ул.Фучика д.36');

-- --------------------------------------------------------

--
-- Структура таблицы `rasteniya`
--

CREATE TABLE IF NOT EXISTS `rasteniya` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazv_rast` varchar(255) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `opis` varchar(255) NOT NULL,
  `price` int(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_cat` (`id_cat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `rasteniya`
--

INSERT INTO `rasteniya` (`id`, `nazv_rast`, `id_cat`, `opis`, `price`) VALUES
(1, 'Агава', 1, 'Многолетнее травянистое розеточное суккулентное растение с коротким стеблем.', 250),
(2, 'Агапетес', 1, 'Вечнозеленые кустарники с утолщенным у основания стволом и небольшими яйцевидными листочками. ', 300),
(3, 'Лавр', 1, 'Вечнозеленый кустарник с кожистыми волнистыми по краям листьями.', 100),
(4, 'Агератум', 2, 'Эти теплолюбивые растения в средней полосе России выращиваются как летники. ', 400),
(5, 'Адонис', 2, 'Это одно- и многолетние травянистые растения.', 360),
(6, 'Вербена', 2, 'Стебли стелющиеся или прямостоячие, 20-50 см высотой, сильноветвистые. ', 360);

-- --------------------------------------------------------

--
-- Структура таблицы `sad_cvet`
--

CREATE TABLE IF NOT EXISTS `sad_cvet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazv_rast` varchar(100) NOT NULL,
  `strana` varchar(100) NOT NULL,
  `tip_rast` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sad_cvet`
--

INSERT INTO `sad_cvet` (`id`, `nazv_rast`, `strana`, `tip_rast`, `price`) VALUES
(1, 'Агератум', 'Россия', 'Эти теплолюбивые растения в средней полосе России выращиваются как летники. ', 400),
(2, 'Адонис ', 'Сербия', 'Это одно- и многолетние травянистые растения.', 360),
(3, 'Вербена', 'Венгрия', 'Стебли стелющиеся или прямостоячие, 20-50 см высотой, сильноветвистые. ', 400);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `rasteniya`
--
ALTER TABLE `rasteniya`
  ADD CONSTRAINT `rasteniya_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `categorii` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
