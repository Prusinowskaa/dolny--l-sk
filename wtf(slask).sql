-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 23 2023 г., 19:47
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wtf`
--

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `ID` int(11) NOT NULL,
  `miasto` varchar(30) NOT NULL,
  `adres` varchar(30) DEFAULT NULL,
  `nrtel` int(10) DEFAULT NULL,
  `cena` varchar(50) DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `godod` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
