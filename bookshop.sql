-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2024 at 05:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publication_date` date NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `pages` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `publication_date`, `publisher`, `pages`, `category_id`) VALUES
(1, 'Laskar Pelangi12334', 'Andrea Hirata', '0000-00-00', 'Bentang Pustaka', 300, 3),
(22, 'The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10', 'Charles Scribner\'s Sons', 218, 3),
(23, '1984', 'George Orwell', '1949-06-08', 'Secker & Warburg', 328, 3),
(24, 'To Kill a Mockingbird', 'Harper Lee', '1960-07-11', 'J.B. Lippincott & Co.', 281, 3),
(25, 'Pride and Prejudice', 'Jane Austen', '1813-01-28', 'T. Egerton', 279, 3),
(26, 'The Catcher in the Rye', 'J.D. Salinger', '1951-07-16', 'Little, Brown and Company', 277, 3),
(27, 'The Hobbit', 'J.R.R. Tolkien', '1937-09-21', 'George Allen & Unwin', 310, 3),
(28, 'Fahrenheit 451', 'Ray Bradbury', '1953-10-19', 'Ballantine Books', 249, 3),
(29, 'Moby-Dick', 'Herman Melville', '1851-11-14', 'Harper & Brothers', 585, 3),
(30, 'War and Peace', 'Leo Tolstoy', '1869-01-01', 'The Russian Messenger', 1225, 3),
(31, 'Great Expectations', 'Charles Dickens', '1861-08-01', 'Chapman & Hall', 505, 6),
(32, 'The Odyssey', 'Homer', '0000-00-00', 'Ancient Greece', 541, 7),
(33, 'Crime and Punishment', 'Fyodor Dostoevsky', '1866-01-01', 'The Russian Messenger', 430, 5),
(34, 'Alice\'s Adventures in Wonderland', 'Lewis Carroll', '1865-11-26', 'Macmillan Publishers', 200, 4),
(35, 'Brave New World', 'Aldous Huxley', '1932-01-01', 'Chatto & Windus', 311, 3),
(36, 'Wuthering Heights', 'Emily Brontë', '1847-12-01', 'Thomas Cautley Newby', 416, 3),
(37, 'Jane Eyre', 'Charlotte Brontë', '1847-10-16', 'Smith, Elder & Co.', 500, 3),
(38, 'The Divine Comedy', 'Dante Alighieri', '1320-01-01', 'John Murray', 798, 7),
(39, 'Don Quixote', 'Miguel de Cervantes', '1605-01-16', 'Francisco de Robles', 1072, 6),
(40, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', '1967-05-30', 'Harper & Row', 417, 4),
(41, 'The Brothers Karamazov', 'Fyodor Dostoevsky', '1880-01-01', 'The Russian Messenger', 824, 5),
(42, 'Mariana Karpov', 'Andrea', '2024-07-16', 'knewknkewn', 23, 3),
(43, 'nseej', 'jejfe', '2024-07-09', 'knewknkewn', 234, 3);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(3, 'marisa'),
(4, 'horror'),
(5, 'mystery'),
(6, 'horror'),
(7, 'mystery'),
(8, 'history'),
(9, 'history'),
(10, 'history'),
(13, 'fiction');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
