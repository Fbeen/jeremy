-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Gegenereerd op: 25 nov 2015 om 22:04
-- Serverversie: 5.5.44-MariaDB
-- PHP-versie: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jeremy`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(74) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `page`
--

INSERT INTO `page` (`id`, `title`, `slug`, `body`, `created`, `changed`) VALUES
(1, 'grappig', 'grappig', '<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <meta charset="UTF-8" />\r\n        <title>{% block title %}{{ title }}{% endblock %}</title>\r\n        {% block stylesheets %}{% endblock %}\r\n        <link rel="icon" type="image/x-icon" href="{{ asset(''favicon.ico'') }}" />\r\n    </head>\r\n    <body>\r\n        {% block body %}\r\n           <h1>{{ title }}</h1>\r\n           Welkom\r\n        {% endblock %}\r\n        {% block javascripts %}{% endblock %}\r\n    </body>\r\n</html>', '2015-11-25 13:29:00', '2015-11-25 21:59:21');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
