-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2019 at 08:44 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codegig`
--

-- --------------------------------------------------------

--
-- Table structure for table `gigs`
--

CREATE TABLE `gigs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `technologies` varchar(200) NOT NULL,
  `budget` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `contact_email` varchar(200) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gigs`
--

INSERT INTO `gigs` (`id`, `title`, `technologies`, `budget`, `description`, `contact_email`, `createdAt`, `updatedAt`) VALUES
(1, 'Looking for a React Developer', 'react,javascript,html,css', '$3000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea porro aut sit amet possimus libero cum obcaecati assumenda sint sequi illum praesentium, mollitia consequuntur exercitationem fugiat et voluptatem iste quasi!', 'user1@gmail.com', '2019-01-14', '2019-01-14'),
(2, 'Wordpress developer', 'web development, wordpress, html, css', '$2000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea porro aut sit amet possimus libero cum obcaecati assumenda sint sequi illum praesentium, mollitia consequuntur exercitationem fugiat et voluptatem iste quasi!', 'user2@gmail.com', '2019-01-14', '2019-01-14'),
(3, 'Flutter', 'javascript,react', '$4500', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea porro aut sit amet possimus libero cum obcaecati assumenda sint sequi illum praesentium, mollitia consequuntur exercitationem fugiat et voluptatem iste quasi!', 'abidemis01@gmail.com', '2019-01-14', '2019-01-14'),
(4, 'Mr mavins developer', 'javascript,css,html', '$2000', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. At, inventore odit maiores, eius accusantium doloremque distinctio facere modi error consectetur quaerat a repellendus accusamus molestiae neque facilis? Porro, ipsam! Amet!', 'user4@gmail.com', '2019-01-15', '2019-01-15'),
(5, 'Vue To Do App', 'vue', '$3000', 'A vue todo app', 'abidemis01@gmail.com', '2019-03-27', '2019-03-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gigs`
--
ALTER TABLE `gigs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gigs`
--
ALTER TABLE `gigs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
