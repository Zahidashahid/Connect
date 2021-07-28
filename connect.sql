-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2019 at 07:35 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_content` mediumtext NOT NULL,
  `Time_Created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Time_Edited` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `connect_group`
--

CREATE TABLE `connect_group` (
  `group_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `description` varchar(155) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `connect_group_admins`
--

CREATE TABLE `connect_group_admins` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `connect_page`
--

CREATE TABLE `connect_page` (
  `Page_Id` int(11) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `Description` varchar(155) NOT NULL,
  `Date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `connect_page_admins`
--

CREATE TABLE `connect_page_admins` (
  `user_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `connect_page_likes`
--

CREATE TABLE `connect_page_likes` (
  `user_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `liked_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `User_id` int(11) NOT NULL,
  `Contact_No` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `message_content` varchar(300) NOT NULL,
  `time_stamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `message_attachment`
--

CREATE TABLE `message_attachment` (
  `message_attachment_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `attachment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `Post_Id` int(30) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Post_Content` longtext NOT NULL,
  `Time_Created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Time_Edited` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Privacy` varchar(30) NOT NULL DEFAULT 'public',
  `Group_Id` int(11) NOT NULL,
  `Page_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `post_attachment`
--

CREATE TABLE `post_attachment` (
  `Post_Attachment_Id` int(11) NOT NULL,
  `Post_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Attachment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `Reply_id` int(11) NOT NULL,
  `Comment_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Reply_Content` mediumtext NOT NULL,
  `Time_Created` datetime NOT NULL,
  `Time_Edited` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `Post_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(11) NOT NULL,
  `Full_Name` varchar(30) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Address` varchar(1200) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Country` varchar(120) NOT NULL,
  `Profile_Picture` varchar(1600) NOT NULL,
  `Cover_Picture` varchar(1600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `Full_Name`, `Email`, `Password`, `Gender`, `Address`, `Date_Of_Birth`, `Country`, `Profile_Picture`, `Cover_Picture`) VALUES
(102, 'java', 'java@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '0000-00-00', '', '', ''),
(103, 'aliahmed', 'ali@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_connect_group`
--

CREATE TABLE `user_connect_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `connect_group`
--
ALTER TABLE `connect_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `Name` (`name`);

--
-- Indexes for table `connect_group_admins`
--
ALTER TABLE `connect_group_admins`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `connect_page`
--
ALTER TABLE `connect_page`
  ADD PRIMARY KEY (`Page_Id`);

--
-- Indexes for table `connect_page_admins`
--
ALTER TABLE `connect_page_admins`
  ADD PRIMARY KEY (`user_id`,`page_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `connect_page_likes`
--
ALTER TABLE `connect_page_likes`
  ADD PRIMARY KEY (`user_id`,`page_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Contact_No`,`User_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`user_id`,`friend_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `friend_id` (`friend_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `message_attachment`
--
ALTER TABLE `message_attachment`
  ADD PRIMARY KEY (`message_attachment_id`),
  ADD KEY `message_id` (`message_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`Post_Id`),
  ADD KEY `User_id` (`User_id`),
  ADD KEY `Group_Id` (`Group_Id`),
  ADD KEY `Page_Id` (`Page_Id`);

--
-- Indexes for table `post_attachment`
--
ALTER TABLE `post_attachment`
  ADD PRIMARY KEY (`Post_Attachment_Id`),
  ADD KEY `Post_Id` (`Post_Id`),
  ADD KEY `User_Id` (`User_Id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`Reply_id`),
  ADD KEY `Comment_id` (`Comment_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`Post_Id`,`User_Id`),
  ADD KEY `Post_Id` (`Post_Id`),
  ADD KEY `User_Id` (`User_Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `user_connect_group`
--
ALTER TABLE `user_connect_group`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`Post_Id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `connect_group_admins`
--
ALTER TABLE `connect_group_admins`
  ADD CONSTRAINT `connect_group_admins_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `connect_group` (`Group_Id`),
  ADD CONSTRAINT `connect_group_admins_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `connect_page_admins`
--
ALTER TABLE `connect_page_admins`
  ADD CONSTRAINT `connect_page_admins_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `connect_page` (`Page_Id`),
  ADD CONSTRAINT `connect_page_admins_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `connect_page_likes`
--
ALTER TABLE `connect_page_likes`
  ADD CONSTRAINT `connect_page_likes_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `connect_page` (`Page_Id`),
  ADD CONSTRAINT `connect_page_likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_id`),
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user` (`User_id`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `message_attachment`
--
ALTER TABLE `message_attachment`
  ADD CONSTRAINT `message_attachment_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `message` (`message_id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`Group_Id`) REFERENCES `connect_group` (`Group_Id`),
  ADD CONSTRAINT `post_ibfk_3` FOREIGN KEY (`Page_Id`) REFERENCES `connect_page` (`Page_Id`),
  ADD CONSTRAINT `post_ibfk_4` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `post_attachment`
--
ALTER TABLE `post_attachment`
  ADD CONSTRAINT `post_attachment_ibfk_2` FOREIGN KEY (`Post_Id`) REFERENCES `post` (`Post_Id`),
  ADD CONSTRAINT `post_attachment_ibfk_3` FOREIGN KEY (`User_Id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`Comment_id`) REFERENCES `comment` (`Comment_Id`),
  ADD CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`Post_Id`) REFERENCES `post` (`Post_Id`),
  ADD CONSTRAINT `tag_ibfk_2` FOREIGN KEY (`User_Id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `user_connect_group`
--
ALTER TABLE `user_connect_group`
  ADD CONSTRAINT `user_connect_group_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `connect_group` (`Group_Id`),
  ADD CONSTRAINT `user_connect_group_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
