-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2017 at 08:09 PM
-- Server version: 5.0.67-community-nt
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hpstp16`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE IF NOT EXISTS `candidate` (
  `cid` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `city` varchar(255) default NULL,
  `cname` varchar(255) default NULL,
  `count` int(11) NOT NULL,
  `pass` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `symbol` varchar(255) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`cid`, `age`, `city`, `cname`, `count`, `pass`, `sex`, `symbol`) VALUES
('101', 60, 'KOLKATA', 'Narendra Modi', 2, '123', 'M', 'Lotus'),
('102', 48, 'New Delhi', 'Arvind Kejriwal', 0, '123', 'M', 'Broom'),
('103', 55, 'Bhilai', 'Raman Singh', 0, '123', 'M', 'Lotus'),
('104', 52, 'Kolkata', 'Mamta Bannerjee', 0, '123', 'F', 'Trinamol'),
('105', 65, 'Lucknow', 'Mulayam Singh Yadav', 0, '123', 'M', 'Cycle');

-- --------------------------------------------------------

--
-- Table structure for table `collage`
--

CREATE TABLE IF NOT EXISTS `collage` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE IF NOT EXISTS `consumer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) default NULL,
  `cdid_FK` int(11) default NULL,
  PRIMARY KEY  (`cid`),
  KEY `FK_h9u0ohbpo5rj562y0xfnlsqef` (`cdid_FK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consumerdetail`
--

CREATE TABLE IF NOT EXISTS `consumerdetail` (
  `cdid_PK` int(11) NOT NULL,
  `address` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  PRIMARY KEY  (`cdid_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE IF NOT EXISTS `dealer` (
  `did` int(11) NOT NULL,
  `address` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `mobile` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`did`, `address`, `email`, `mobile`, `name`) VALUES
(1001, 'KOLKATA', 'VK.kr@gmail.com', '984283828', 'Ayon');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL auto_increment,
  `comment` varchar(255) default NULL,
  `datetime` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `comment`, `datetime`, `email`, `name`) VALUES
(1, 'hii', 'Sat Jun 11 11:53:15 IST 2016', 'a.kr.dey98@gmail.com', 'Ayon Kumar Dey');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `empId` int(11) NOT NULL auto_increment,
  `dept` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `salary` float NOT NULL,
  PRIMARY KEY  (`empId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empId`, `dept`, `name`, `salary`) VALUES
(1, 'CRICKET', 'M.S.Dhoni', 3.33333e+006),
(2, 'BJP', NULL, 0),
(4, 'BOLLYWOOD', 'Varun Dhawan', 327367),
(5, 'Sports', 'Sania Mirza', 3.00274e+007),
(6, 'IT', 'Karan', 2367),
(7, 'ACCOUNT', 'Nilesg', 277),
(8, 'NETWORK', 'Sourabh', 7367),
(10, 'CS', 'Ayon', 100000),
(11, 'CS', 'karan', 100000),
(12, 'dfb', 'sk', 1212);

-- --------------------------------------------------------

--
-- Table structure for table `liveproject`
--

CREATE TABLE IF NOT EXISTS `liveproject` (
  `cost` float NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_dixh7iosfttfexnlaiorecd8g` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `lid` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `last_login` date default NULL,
  PRIMARY KEY  (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`lid`, `pass`, `role`, `last_login`) VALUES
('a.kr.dey', '1234', 'USER', '2016-05-27'),
('ayon', '121', 'user', '2016-05-24'),
('bbbb', 'acx', 'USER', '2016-06-01'),
('hpes', 'india', 'admin', '2016-01-01'),
('james', 'engine', 'user', '2016-02-08'),
('newton', 'gravity', 'user', '2016-02-01'),
('xyz', '121', 'user', '2016-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `majorproject`
--

CREATE TABLE IF NOT EXISTS `majorproject` (
  `dbname` varchar(255) default NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_agfpilmwy0lg7skebo54gc2dq` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `miniproject`
--

CREATE TABLE IF NOT EXISTS `miniproject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `mid` int(4) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `type` varchar(15) default 'DRAMA',
  `rating` int(1) default '0',
  `rdate` date default NULL,
  PRIMARY KEY  (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=122 ;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`mid`, `name`, `type`, `rating`, `rdate`) VALUES
(101, 'Sholey', 'Action', 5, '1995-09-09'),
(104, 'X-MAN', 'SI-FI', 0, '2016-05-21'),
(106, 'DHOOM-2', 'Action', 0, '2004-01-07'),
(108, ' xxx', 'Action', 3, '1995-03-02'),
(109, ' abc', 'action', 3, NULL),
(110, ' ccccc', 'Action', 10, '1995-01-02'),
(111, 'asa', 'action', 4, '1234-02-03'),
(112, 'ffff', 'ACTION', 4, '2016-05-10'),
(113, 'Ayon', 'ACTION', 2, '2016-06-24'),
(114, 'bbbbbbbb', 'COMEDY', 2, '2016-06-22'),
(115, 'bbbbbbbb', 'COMEDY', 2, '2016-06-22'),
(116, 'bbbbbbbbxxx', 'SCI-FI', 3, '2016-06-15'),
(118, 'batman', 'COMEDY', 4, '2016-06-08'),
(119, 'SPIDER MAN', 'SCI-FI', 4, '2016-06-28'),
(120, 'TNG#', 'ACTION', 2, '2016-06-21'),
(121, 'TNG3', 'SCI-FI', 4, '2016-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `persondetail_master`
--

CREATE TABLE IF NOT EXISTS `persondetail_master` (
  `age` int(11) default NULL,
  `email` varchar(255) default NULL,
  `mobile` varchar(255) default NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_ntuxwhc6lidf508ynlmqiit2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_master`
--

CREATE TABLE IF NOT EXISTS `person_master` (
  `id` int(11) NOT NULL auto_increment,
  `ename` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(11) NOT NULL,
  `sname` varchar(255) default NULL,
  `collage_cid` int(11) default NULL,
  PRIMARY KEY  (`sid`),
  KEY `FK_79sqv36v0bm18ohmmk7ep05rd` (`collage_cid`),
  KEY `FK_mshoeiuj85pbekysaosp0enbx` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE IF NOT EXISTS `voter` (
  `vid` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `city` varchar(255) default NULL,
  `flag` int(11) NOT NULL,
  `pass` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `vname` varchar(255) default NULL,
  PRIMARY KEY  (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`vid`, `age`, `city`, `flag`, `pass`, `role`, `sex`, `vname`) VALUES
('1001', 45, 'KOLKATA', 1, '111', 'user', 'M', 'Raju'),
('1002', 40, 'KOLKATA', 1, '111', 'user', 'F', 'Sejuti'),
('1003', 35, 'KOLKATA', 0, '111', 'user', 'M', 'Amir'),
('1004', 22, 'KOLKATA', 0, '111', 'user', 'F', 'Sonali'),
('1005', 31, 'KOLKATA', 0, '111', 'user', 'M', 'Rijul'),
('1006', 55, 'KOLKATA', 0, '111', 'user', 'F', 'Ananya'),
('1007', 24, 'KOLKATA', 0, '111', 'user', 'M', 'Adesh'),
('1009', 24, 'KOLKATA', 0, '1234', 'admin', 'M', 'Saurav');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consumer`
--
ALTER TABLE `consumer`
  ADD CONSTRAINT `FK_h9u0ohbpo5rj562y0xfnlsqef` FOREIGN KEY (`cdid_FK`) REFERENCES `consumerdetail` (`cdid_PK`);

--
-- Constraints for table `liveproject`
--
ALTER TABLE `liveproject`
  ADD CONSTRAINT `FK_dixh7iosfttfexnlaiorecd8g` FOREIGN KEY (`id`) REFERENCES `majorproject` (`id`);

--
-- Constraints for table `majorproject`
--
ALTER TABLE `majorproject`
  ADD CONSTRAINT `FK_agfpilmwy0lg7skebo54gc2dq` FOREIGN KEY (`id`) REFERENCES `miniproject` (`id`);

--
-- Constraints for table `persondetail_master`
--
ALTER TABLE `persondetail_master`
  ADD CONSTRAINT `FK_ntuxwhc6lidf508ynlmqiit2` FOREIGN KEY (`id`) REFERENCES `person_master` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `FK_79sqv36v0bm18ohmmk7ep05rd` FOREIGN KEY (`collage_cid`) REFERENCES `collage` (`cid`),
  ADD CONSTRAINT `FK_mshoeiuj85pbekysaosp0enbx` FOREIGN KEY (`sid`) REFERENCES `collage` (`cid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
