-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 10, 2018 at 04:46 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_videoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` int(10) UNSIGNED NOT NULL,
  `genre_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'comedy'),
(2, 'action'),
(3, 'animation'),
(4, 'family');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` int(10) UNSIGNED NOT NULL,
  `movies_name` text NOT NULL,
  `movies_pic` text NOT NULL,
  `movies_desc` text NOT NULL,
  `movies_trailer` text NOT NULL,
  `movies_genre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_name`, `movies_pic`, `movies_desc`, `movies_trailer`, `movies_genre`) VALUES
(1, 'The perfect wedding', 'wedding.jpg', 'The Perfect Wedding is an independent film co-created by New York Times Bestselling Author Suzanne Brockmann, Edgar Award Finalist Ed Gaffney, and Off-Broadway actor Jason T. Gaffney. In 2013, it won the Bud Abbott Award for Feature Length Comedy at the Garden State Film Festival. It was filmed in 2011 and released on VOD/Streaming and DVD from distributor Wolfe Releasing in 2013.', 'wedding.mp4', '1'),
(2, 'Fun2shh', 'fun2shh.jpg', 'Fun 2shh: Dudes in the 10th Century is a 2003 Indian Hindi comedy film directed by Imtiaz Punjabi and starring Amitabh Bachchan (voice), Gulshan Grover and Paresh Rawal.', 'fun2shh.mp4', '1'),
(3, 'Agent Fox', 'agentfox.jpg', 'Agent F.O.X. , also known as The Firefox of Bunnington Burrows, is a 2015 Chinese 3D computer animated fantasy adventure film directed by Ge Shuiying. The film was released on October 30, 2015 in both 2D and 3D.', 'agentfox.mp4', '3'),
(4, 'The Lucky Dragon', 'dragon.jpg', 'Follow the journey of a mischievous dragon that has been transformed by magic into a little boy and exiled from his home in the clouds to live among humans.', 'dragon.mp4', '3'),
(5, 'Where is my home', 'home.jpg', 'Wenya\'s parents separated when she was two, and after that she lived with her father and stepmother. Her stepmother couldn\'t stand her and was always arguing with her father. He had little ...', 'home.mp4', '4'),
(6, 'Lost Island', 'island.jpg', 'Lost Islands is a 2008 Israeli film by the writer and director Reshef Levy. The film is named after the Australian television series The Lost Islands, which was broadcast in Israel, where the plot takes place. The film was nominated for 14 Ophir Awards, of which it won four.', 'island.mp4', '4'),
(7, 'Ironman1', 'iron1.jpg', 'Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures.1 It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus and Hawk Ostby and Art Marcum and Matt Holloway. ', 'iron1.mp4', '2'),
(8, 'Ironman2', 'iron2.jpeg', 'With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health and a vengeful mad man with ties to his father\'s legacy.', 'iron2.mp4', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
