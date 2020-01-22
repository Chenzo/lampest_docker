-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Generation Time: Jun 03, 2019 at 05:08 PM
-- Server version: 10.3.15-MariaDB-1:10.3.15+maria~bionic
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `TbiMisc`
--
CREATE DATABASE IF NOT EXISTS `TbiMisc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `TbiMisc`;

-- --------------------------------------------------------

--
-- Table structure for table `TBOT_EVENT_LOG`
--

CREATE TABLE `TBOT_EVENT_LOG` (
  `Log_GUID` int(11) NOT NULL,
  `Log_Entry` text NOT NULL,
  `Log_Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TBOT_SINGLE_STANDUP`
--

CREATE TABLE `TBOT_SINGLE_STANDUP` (
  `SSU_Guid` int(11) NOT NULL,
  `DTIME` timestamp NOT NULL DEFAULT current_timestamp(),
  `SU_Guid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TBOT_SINGLE_STANDUP`
--

INSERT INTO `TBOT_SINGLE_STANDUP` (`SSU_Guid`, `DTIME`, `SU_Guid`) VALUES
(46, '2019-06-10 13:05:25', 1),
(47, '2019-06-10 14:00:28', 2);

-- --------------------------------------------------------

--
-- Table structure for table `TBOT_USERS`
--

CREATE TABLE `TBOT_USERS` (
  `SU_Guid` int(11) NOT NULL,
  `User_Name` varchar(60) NOT NULL,
  `Slack_User_ID` varchar(60) NOT NULL,
  `Slack_DM_Channel` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TBOT_USERS`
--

INSERT INTO `TBOT_USERS` (`SU_Guid`, `User_Name`, `Slack_User_ID`, `Slack_DM_Channel`) VALUES
(2, 'joe', 'U09A637NE', 'D79MVD2HZ'),
(3, 'vince', 'U092XFZFE', 'D76R8S875'),
(4, 'charles', 'U0A60C8UX', 'D79NVF1A5'),
(5, 'sgibbons', 'U09CBUMBK', 'DG3CDU5G9'),
(6, 'Ethan', 'U5N46BMU1', 'DEK9FC0J2'),
(7, 'Eric', 'U093W4PHV', 'DEJ3E5TEY'),
(8, 'Pieter', 'U09CD44KF', 'DJYMNBSSX'),
(9, 'Mike D', 'U096P5MK4', 'DKG4NEN5D'),
(11, 'Mike A', 'U80D24A4F', 'D802FQQE8');

-- --------------------------------------------------------

--
-- Table structure for table `TBOT_STANDUP`
--

CREATE TABLE `TBOT_STANDUP` (
  `SU_Guid` int(11) NOT NULL,
  `SU_Name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TBOT_STANDUP`
--

INSERT INTO `TBOT_STANDUP` (`SU_Guid`, `SU_Name`, `Is_Active`) VALUES
(1, 'Testing SU Only', 0),
(2, 'Web Dev Standups', 1),
(3, 'Thrid', 0);

-- --------------------------------------------------------

--
-- Table structure for table `TBOT_STANDUP_ANSWERS`
--

CREATE TABLE `TBOT_STANDUP_ANSWERS` (
  `SU_Answers_Guid` int(11) NOT NULL,
  `SU_User_Guid` int(11) NOT NULL,
  `SSU_Guid` int(11) NOT NULL,
  `SU_Question_Guid` int(11) NOT NULL,
  `Question_Order` int(11) NOT NULL,
  `Asked` datetime DEFAULT NULL,
  `Answered` datetime DEFAULT NULL,
  `Answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------


INSERT INTO `TBOT_STANDUP_ANSWERS` (`SU_Answers_Guid`, `SU_User_Guid`, `SSU_Guid`, `SU_Question_Guid`, `Question_Order`, `Asked`, `Answered`, `Answer`) VALUES
(55, 5, 46, 1, 1, '2019-06-10 09:05:29', '2019-06-10 09:05:38', 'a bunch of stuff'),
(56, 5, 46, 2, 2, '2019-06-10 09:05:38', '2019-06-10 09:05:42', 'some more stuff'),
(57, 5, 46, 3, 3, '2019-06-10 09:05:42', '2019-06-10 09:05:44', 'nope'),
(58, 6, 47, 4, 1, '2019-06-10 10:00:38', '2019-06-10 10:01:16', 'lex and feed issues'),
(59, 7, 47, 4, 1, '2019-06-10 10:00:38', NULL, NULL),
(60, 9, 47, 4, 1, '2019-06-10 10:00:38', '2019-06-10 10:02:42', 'Displaying applied filters under search bar'),
(61, 10, 47, 4, 1, '2019-06-10 10:00:38', '2019-06-10 10:01:17', 'quick delivery homes landing page and toll floors city living application'),
(62, 11, 47, 4, 1, '2019-06-10 10:00:38', '2019-06-10 10:21:21', '- Migration of hqsubvpt01\n- Exported NSE postcard/webform results\n- redirects\n- preference center export for salesforce migration\n- digital registration deploy to production and provide links'),
(63, 12, 47, 4, 1, '2019-06-10 10:00:39', '2019-06-10 10:01:42', 'whiskey'),
(64, 13, 47, 4, 1, '2019-06-10 10:00:39', '2019-06-10 10:06:58', 'on friday i fixed the video thumbnails for nakase. i worked on creating a feature post header for the blog that the social team can edit in wordpress. I also worked on the sticky lead footer button for <http://tb.com|tb.com>.'),
(65, 6, 47, 5, 2, '2019-06-10 10:01:17', '2019-06-10 10:02:01', 'Lex, GTM Custom Dim, some small feed issues'),
(66, 7, 47, 5, 2, NULL, NULL, NULL),
(67, 9, 47, 5, 2, '2019-06-10 10:02:42', '2019-06-10 10:02:55', 'Display applied filters under search bar javascript'),
(68, 10, 47, 5, 2, '2019-06-10 10:01:18', '2019-06-10 10:02:09', 'toll floors city living application - adding url variables and beginning mobile views'),
(69, 11, 47, 5, 2, '2019-06-10 10:21:21', '2019-06-10 10:22:36', '- Migration of CA,UT,NV,AZ regions to salesforce\n- form update for Victoria\n- e1 documentation for migration'),
(70, 12, 47, 5, 2, '2019-06-10 10:01:42', '2019-06-10 10:02:03', 'dy form tests'),
(71, 13, 47, 5, 2, '2019-06-10 10:06:58', '2019-06-10 10:09:48', 'iâ€™m going to finish both the <http://tb.com|tb.com> sticky lead footer and the feature post header for the blog. then iâ€™m going to get into the new custom dimension page type ticket for <http://tb.com|tb.com> and the tracking fixes that are needed for the blog.'),
(72, 6, 47, 6, 3, '2019-06-10 10:02:01', '2019-06-10 10:02:05', 'no'),
(73, 7, 47, 6, 3, NULL, NULL, NULL),
(74, 9, 47, 6, 3, '2019-06-10 10:02:55', '2019-06-10 10:03:05', 'I am working with Mike to go over the code'),
(75, 10, 47, 6, 3, '2019-06-10 10:02:09', '2019-06-10 10:02:15', 'no'),
(76, 11, 47, 6, 3, '2019-06-10 10:22:37', '2019-06-10 10:22:42', 'no'),
(77, 12, 47, 6, 3, '2019-06-10 10:02:03', '2019-06-10 10:02:08', 'nah'),
(78, 13, 47, 6, 3, '2019-06-10 10:09:48', '2019-06-10 10:14:44', 'for the blog tracking fixes iâ€™m not sure what the new classes should be.');








--
-- Table structure for table `TBOT_STANDUP_QUESTIONS`
--

CREATE TABLE `TBOT_STANDUP_QUESTIONS` (
  `SUQ_Guid` int(11) NOT NULL,
  `SU_Guid` int(11) NOT NULL,
  `Question` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TBOT_STANDUP_QUESTIONS`
--

INSERT INTO `TBOT_STANDUP_QUESTIONS` (`SUQ_Guid`, `SU_Guid`, `Question`) VALUES
(1, 1, 'What did you work on yesterday?'),
(2, 1, 'What are you going to work on today?'),
(3, 1, 'Do you need help with anything?'),
(4, 2, 'What did you work on yesterday?'),
(5, 2, 'What are you going to work on today?'),
(6, 2, 'Do you need help with anything?');

-- --------------------------------------------------------

--
-- Table structure for table `TBOT_STANDUP_USERS`
--

CREATE TABLE `TBOT_STANDUP_USERS` (
  `SU_User_Guid` int(11) NOT NULL,
  `Slack_User_Guid` int(11) NOT NULL,
  `Standup_Guid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TBOT_STANDUP_USERS`
--

INSERT INTO `TBOT_STANDUP_USERS` (`SU_User_Guid`, `Slack_User_Guid`, `Standup_Guid`) VALUES
(5, 3, 1),
(6, 5, 2),
(7, 4, 2),
(8, 2, 1),
(9, 6, 2),
(10, 7, 2),
(11, 8, 2),
(12, 9, 2),
(13, 11, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `TBOT_EVENT_LOG`
--
ALTER TABLE `TBOT_EVENT_LOG`
  ADD PRIMARY KEY (`Log_GUID`);

--
-- Indexes for table `TBOT_SINGLE_STANDUP`
--
ALTER TABLE `TBOT_SINGLE_STANDUP`
  ADD PRIMARY KEY (`SSU_Guid`),
  ADD KEY `SU_Guid` (`SU_Guid`);

--
-- Indexes for table `TBOT_USERS`
--
ALTER TABLE `TBOT_USERS`
  ADD PRIMARY KEY (`SU_Guid`);

--
-- Indexes for table `TBOT_STANDUP`
--
ALTER TABLE `TBOT_STANDUP`
  ADD PRIMARY KEY (`SU_Guid`);

--
-- Indexes for table `TBOT_STANDUP_ANSWERS`
--
ALTER TABLE `TBOT_STANDUP_ANSWERS`
  ADD PRIMARY KEY (`SU_Answers_Guid`),
  ADD KEY `SU_Question_Guid` (`SU_Question_Guid`),
  ADD KEY `SSU_Guid` (`SSU_Guid`),
  ADD KEY `SU_User_Guid` (`SU_User_Guid`);

--
-- Indexes for table `TBOT_STANDUP_QUESTIONS`
--
ALTER TABLE `TBOT_STANDUP_QUESTIONS`
  ADD PRIMARY KEY (`SUQ_Guid`),
  ADD KEY `SU_Guid` (`SU_Guid`);

--
-- Indexes for table `TBOT_STANDUP_USERS`
--
ALTER TABLE `TBOT_STANDUP_USERS`
  ADD PRIMARY KEY (`SU_User_Guid`),
  ADD KEY `Slack_User_Guid` (`Slack_User_Guid`),
  ADD KEY `Standup_Guid` (`Standup_Guid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `TBOT_EVENT_LOG`
--
ALTER TABLE `TBOT_EVENT_LOG`
  MODIFY `Log_GUID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `TBOT_SINGLE_STANDUP`
--
ALTER TABLE `TBOT_SINGLE_STANDUP`
  MODIFY `SSU_Guid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `TBOT_USERS`
--
ALTER TABLE `TBOT_USERS`
  MODIFY `SU_Guid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `TBOT_STANDUP`
--
ALTER TABLE `TBOT_STANDUP`
  MODIFY `SU_Guid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `TBOT_STANDUP_ANSWERS`
--
ALTER TABLE `TBOT_STANDUP_ANSWERS`
  MODIFY `SU_Answers_Guid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `TBOT_STANDUP_QUESTIONS`
--
ALTER TABLE `TBOT_STANDUP_QUESTIONS`
  MODIFY `SUQ_Guid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `TBOT_STANDUP_USERS`
--
ALTER TABLE `TBOT_STANDUP_USERS`
  MODIFY `SU_User_Guid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `TBOT_SINGLE_STANDUP`
--
ALTER TABLE `TBOT_SINGLE_STANDUP`
  ADD CONSTRAINT `TBOT_SINGLE_STANDUP_ibfk_1` FOREIGN KEY (`SU_Guid`) REFERENCES `TBOT_STANDUP` (`SU_Guid`);

--
-- Constraints for table `TBOT_STANDUP_ANSWERS`
--
ALTER TABLE `TBOT_STANDUP_ANSWERS`
  ADD CONSTRAINT `TBOT_STANDUP_ANSWERS_ibfk_1` FOREIGN KEY (`SU_Question_Guid`) REFERENCES `TBOT_STANDUP_QUESTIONS` (`SUQ_Guid`),
  ADD CONSTRAINT `TBOT_STANDUP_ANSWERS_ibfk_2` FOREIGN KEY (`SSU_Guid`) REFERENCES `TBOT_SINGLE_STANDUP` (`SSU_Guid`),
  ADD CONSTRAINT `TBOT_STANDUP_ANSWERS_ibfk_3` FOREIGN KEY (`SU_User_Guid`) REFERENCES `TBOT_STANDUP_USERS` (`SU_User_Guid`);

--
-- Constraints for table `TBOT_STANDUP_QUESTIONS`
--
ALTER TABLE `TBOT_STANDUP_QUESTIONS`
  ADD CONSTRAINT `TBOT_STANDUP_QUESTIONS_ibfk_1` FOREIGN KEY (`SU_Guid`) REFERENCES `TBOT_STANDUP` (`SU_Guid`);

--
-- Constraints for table `TBOT_STANDUP_USERS`
--
ALTER TABLE `TBOT_STANDUP_USERS`
  ADD CONSTRAINT `TBOT_STANDUP_USERS_ibfk_1` FOREIGN KEY (`Slack_User_Guid`) REFERENCES `TBOT_USERS` (`SU_Guid`),
  ADD CONSTRAINT `TBOT_STANDUP_USERS_ibfk_2` FOREIGN KEY (`Standup_Guid`) REFERENCES `TBOT_STANDUP` (`SU_Guid`);
COMMIT;
