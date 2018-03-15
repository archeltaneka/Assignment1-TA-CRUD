-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2018 at 02:09 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `14maret2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(2, 'Archel', 'archeltaneka@ymail.com', '430313a449ba21d6fa3d8dea3c7ccdd0'),
(3, 'Tama', 'tamanamanumo@yahoo.com', '24da12a8aa5c179150732722c16d9767'),
(5, 'Jeffrey', 'Jeffrey@gmail.com', '511ccad217adf014488a7ae70bc20a89'),
(6, 'Andra', 'andraandthebackbone@yahoo.com', '42bac1926278ce0cf8c4ecb46a979d17'),
(7, 'Record to Delete', 'delete@yahoo.co.id', '76cea2dd7c3a9149f13efe7b6e4e1798'),
(8, 'Record to Update', 'update@yahoo.com', 'df485764d4a3d18f28a54ae3c29794d7'),
(9, 'test', 'test@yahoo.com', '71661fc02e68f8ae8c6501538bf7e005'),
(10, 'asdf', 'asdf@yh.com', '82512e9f526c2735bacdbaa29ea202da');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
