-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2018 at 04:25 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `stadium` ()  NO SQL
select * from stadiums$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `cricket_boards`
--

-- CREATE TABLE `cricket_boards` (
--   `board_name` varchar(20) NOT NULL,
  
--   `team` varchar(10) NOT NULL
  
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `cricket_boards`
-- --

-- INSERT INTO `cricket_boards` (`board_name`, `team`) VALUES
-- (`andhra`, `srh`),
-- (`chennai`, `csk`),
-- (`bengaluru`,`rcb`),
-- (`mumbai`, `mi`),
-- (`panjab`,`pbks`),
-- (`delhi`,`dc`),
-- (`rajasthan`,`rr`),
-- (`lucknow`,`lsg`),
-- (`gujarat`,`gt`),
-- (`kolkata`,`kkr`);
CREATE TABLE `cricket_boards` (
  `board_name` VARCHAR(20) NOT NULL,
  `team` VARCHAR(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cricket_boards`
--

INSERT INTO `cricket_boards` (`board_name`, `team`) VALUES
('andhra', 'srh'),
('chennai', 'csk'),
('bengaluru', 'rcb'),
('mumbai', 'mi'),
('panjab', 'pbks'),
('delhi', 'dc'),
('rajasthan', 'rr'),
('lucknow', 'lsg'),
('gujarat', 'gt'),
('kolkata', 'kkr');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('user', '123');

-- --------------------------------------------------------

--
-- Table structure for table `played_in`
--

-- CREATE TABLE `played_in` (
--   `stadium_name` varchar(50) NOT NULL,
--   `board_name` varchar(20) NOT NULL,
--   `team` varchar(10) NOT NULL,
--   `team1` varchar(20) NOT NULL,
--   `date` date NOT NULL,
--   `team2` varchar(20) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `played_in`
-- --

-- INSERT INTO `played_in` (`stadium_name`, `board_name`, `team`, `team1`, `date`, `team2`) VALUES
-- ('chidambaram', 'chennai', 'csk', 'csk', '2018-12-27', 'rcb'),
-- ('M.Chinnaswamy Stadium', 'bengaluru', 'rcb', 'rcb', '2018-12-20', 'srh'),
-- ('Rajiv Gandhi', 'andhra', 'srh', 'srh', '2018-12-28', 'mi'),
-- ('Wankhede', 'mumbai', 'mi', 'mi', '2018-12-26', 'csk');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `cap_no` decimal(4,0) NOT NULL,
  `age` decimal(2,0) NOT NULL,
  `dob` date NOT NULL,
  `runs` decimal(5,0) NOT NULL,
  `wickets` decimal(3,0) NOT NULL,
  `type` varchar(20) NOT NULL,
  `no_of_matches` decimal(3,0) NOT NULL,
  `batting_best` varchar(10) NOT NULL,
  `bowling_best` varchar(10) NOT NULL,
  `playername` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--
INSERT INTO `player` (`cap_no`, `age`, `dob`, `runs`, `wickets`, `type`, `no_of_matches`, `batting_best`, `bowling_best`, `playername`, `image`, `name`) VALUES
('1', '32', '1975-05-01', '1200', '59', 'Allrounder', '98', '77', '32/5', 'Vinay kumar R', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX3IKOMOkXSiKbbDGwA3BzscOFGyWm2Gv9Bg&s', 'kkr'),
('2', '32', '1975-05-01', '1200', '59', 'Allrounder', '98', '77', '32/5', 'Navdeep Saini', 'https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/322700/322702.png', 'kkr'),
('3', '34', '1978-01-01', '1203', '58', 'bowler', '98', '95', '23/4', 'Mohammad Siraj', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7OASB7w4sKmmdS8hPrLrEgcVIFXrYrjHO6A&s', 'kkr'),
('4', '33', '1997-02-04', '3542', '22', 'batsman', '113', '115*', '18/9', 'Suresh Raina', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGxi-Sa66qwQ-5mw_OKaEa54gysImNIHGIYg&s', 'rcb'),
('5', '29', '1985-11-14', '2565', '45', 'batsman', '54', '75', '25/3', 'Kane williamson', 'https://documents.iplt20.com/ipl/IPLHeadshot2024/65.png', 'rcb'),
('6', '32', '1992-07-06', '4500', '10', 'batsman', '150', '100*', '78/34', 'MS Dhoni', 'https://www.mpl.live/blog/wp-content/uploads/2021/04/MS-Dhoni.png', 'CSK'),
('7', '29', '1995-11-18', '3200', '23', 'batsman', '90', '91', '23/6', 'Ruturaj Gaikwad', 'https://crictoday.com/wp-content/uploads/2021/06/Ruturaj-Gaikwad.jpg', 'CSK'),
('8', '30', '1993-05-17', '3600', '12', 'batsman', '120', '101', '23/3', 'Ambati Rayudu', 'https://staticc.sportskeeda.com/editor/2023/05/6d6bd-16852780402160-1920.jpg', 'CSK'),
('9', '33', '1989-07-10', '4100', '13', 'batsman', '130', '99', '34/2', 'Suresh Raina', 'https://images.news18.com/malayalam/uploads/2022/09/suresh-raina-166245043916x9.jpg', 'CSK'),
('10', '35', '1987-04-24', '5000', '100', 'allrounder', '160', '120', '4/32', 'Ravindra Jadeja', 'https://images.indianexpress.com/2021/04/JadejavsRCB.jpg', 'CSK'),
-- Players for MI
('11', '32', '1988-04-30', '5000', '45', 'batsman', '160', '109*', '14/6', 'Rohit Sharma', 'https://tse4.explicit.bing.net/th?id=OIP.xWHIMb7vVpX4Quor_PzdvwAAAA&pid=Api&P=0&h=180', 'MI'),
('12', '29', '1991-10-30', '3200', '23', 'batsman', '90', '92', '15/7', 'Suryakumar Yadav', 'https://www.dilsedeshi.com/wp-content/uploads/2020/10/Suryakumar-Yadav-Biography-in-Hindi-4.jpg', 'MI'),
('13', '31', '1990-12-07', '3600', '13', 'batsman', '110', '100', '36/6', 'Ishan Kishan', 'https://image.crictracker.com/wp-content/uploads/2022/03/Ishan-Kishan.jpg', 'MI'),
('14', '34', '1988-12-13', '4100', '10', 'batsman', '130', '99', '45/4', 'Kieron Pollard', 'https://ik.imagekit.io/j83rchiauw/A_List_Star/kieron-pollard-cricket.png', 'MI'),
('15', '28', '1992-06-28', '3600', '80', 'allrounder', '100', '99', '4/22', 'Hardik Pandya', 'https://images1.dnaindia.com/images/DNA-EN/900x1600/2023/5/29/1685349341328_HardikPandyaGujaratTitans.jpg', 'MI'),
-- Players for RCB
('16', '32', '1988-11-05', '6000', '44', 'batsman', '170', '122*', '26/9', 'Virat Kohli', 'https://wallpapercave.com/wp/wp7489540.jpg', 'RCB'),
('17', '30', '1990-03-01', '3800', '23', 'batsman', '100', '101', '28/6', 'AB de Villiers', 'https://wallpapercave.com/wp/wp4555275.jpg', 'RCB'),
('18', '33', '1987-12-17', '4200', '24', 'batsman', '110', '100', '39/6', 'Glenn Maxwell', 'https://static.standard.co.uk/s3fs-public/thumbnails/image/2019/10/31/08/glennmaxwell3110a.jpg', 'RCB'),
('19', '29', '1992-05-12', '3900', '70', 'allrounder', '120', '100', '78/24', 'Washington Sundar', 'https://wallpapercave.com/wp/wp8366996.jpg', 'RCB'),
('20', '26', '1994-12-18', '2200', '13', 'batsman', '60', '81', '67/8', 'Devdutt Padikkal', 'https://cricketarroyo.com/wp-content/uploads/2023/03/Devdutt-Padikkal.jpg', 'RCB'),
-- Players for SRH
('21', '34', '1986-10-27', '5400', '14', 'batsman', '140', '126', '67/9', 'David Warner', 'https://www.sportzcraazy.com/wp-content/uploads/2020/02/david-warner-srh.jpeg', 'SRH'),
('22', '31', '1989-09-29', '3200', '14', 'batsman', '90', '92', '56/7', 'Manish Pandey', 'https://images.thequint.com/thequint/2020-10/696cd1d1-afb0-4df7-bacd-2cdb89e766df/RON_0023.jpg?rect=0%2C0%2C1416%2C797&auto=format%2Ccompress&fmt=webp', 'SRH');

  

--
-- Triggers `player`
--
DELIMITER $$
CREATE TRIGGER `update` BEFORE UPDATE ON `player` FOR EACH ROW BEGIN
IF (new.runs<old.runs) THEN SET new.runs=old.runs;
IF (new.wickets<old.wickets) THEN SET new.wickets=old.wickets;
END IF;
IF (new.no_of_matches<old.no_of_matches) THEN SET new.no_of_matches=old.no_of_matches;
END IF;
END IF;
END
$$
DELIMITER ;
-- DELIMITER //
-- CREATE TRIGGER 'insert'
-- BEFORE INSERT ON 'player'
-- FOR EACH ROW
-- BEGIN
--     IF NOT EXISTS (SELECT 1 FROM team WHERE name = NEW.name) THEN
--         INSERT INTO team (name) VALUES (NEW.name);
--     END IF;
-- END //
-- DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `team1` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `match_no` decimal(3,0) NOT NULL,
  `team2` varchar(20) NOT NULL,
  PRIMARY KEY (`team1`, `date`, `team2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`team1`, `date`, `match_no`, `team2`) VALUES
('csk', '2018-12-27', '3', 'rcb'),
('mi', '2018-12-26', '2', 'csk'),
('mi', '2019-01-01', '5', 'csk'),
('RCB', '2018-12-20', '1', 'SRH'),
('SRH', '2018-12-28', '4', 'MI');

-- --------------------------------------------------------

--
-- Table structure for table `selected_for`
--

-- CREATE TABLE `selected_for` (
--   `position` varchar(20) NOT NULL,
--   `cap_no` decimal(4,0) NOT NULL,
--   `name` varchar(30) NOT NULL,
--   `team1` varchar(20) NOT NULL,
--   `date` date NOT NULL,
--   `team2` varchar(20) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selected_for`
--

-- INSERT INTO `selected_for` (`position`, `cap_no`, `name`, `team1`, `date`, `team2`) VALUES
-- ('CAPTAIN', '17', 'rcb', 'rcb', '2018-12-20', 'srh'),
-- ('VICE-CAPTAIN', '18', 'rcb', 'rcb', '2018-12-20', 'srh');

-- --------------------------------------------------------

--
-- Table structure for table `stadiums`
--

CREATE TABLE `stadiums` (
  `stadium_name` varchar(50) NOT NULL,
  `capacity` decimal(6,0) NOT NULL,
  `DOI` date NOT NULL,
  `board_name` varchar(20) NOT NULL,
   `team` varchar(10) NOT NULL,
  PRIMARY KEY (`stadium_name`,`board_name`)
 

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stadiums`
--

INSERT INTO `stadiums` (`stadium_name`, `capacity`, `DOI`, `board_name`,`team`) VALUES
('chidambaram', '84000', '2018-12-27', 'chennai','csk'),
('M.Chinnaswamy Stadium', '41000', '2018-12-26', 'bengaluru','rcb'),
('Rajiv Gandhi', '25000','2018-12-20', 'andhra','srh'),
('Wankhede', '65000', '2018-12-28', 'mumbai','mi');

--
-- Triggers `stadiums`
--
-- DELIMITER $$
-- CREATE TRIGGER `default_date` BEFORE INSERT ON `stadiums` FOR EACH ROW set new.DOI=CURRENT_DATE()
-- $$
-- DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `teams` (
  -- `rank` decimal(5,0) NOT NULL,
  -- `rating` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `teams` ( `name`) VALUES
('csk'),
('mi'),
('rcb'),
('srh'),
('lsg'),
('pbks'),
('kkr'),
('dc'),('rr'),('gt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `cricket_boards`
--
ALTER TABLE `cricket_boards`
  ADD PRIMARY KEY (`board_name`,`team`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `played_in`
--
-- ALTER TABLE `played_in`
--   ADD PRIMARY KEY (`stadium_name`,`board_name`,`team`,`team1`,`date`,`team2`),
--   ADD KEY `team1` (`team1`,`date`,`team2`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`cap_no`,`name`),
  -- ADD KEY `name` (`name`);

--
-- Indexes for table `schedules`
--
-- ALTER TABLE `schedules`
--   ADD PRIMARY KEY (`team1`,`date`,`team2`);

--
-- Indexes for table `selected_for`
--
-- ALTER TABLE `selected_for`
--   ADD PRIMARY KEY (`cap_no`,`name`,`team1`,`date`,`team2`),
--   ADD KEY `team1` (`team1`,`date`,`team2`);

--
-- Indexes for table `stadiums`
--
-- ALTER TABLE `stadiums`
--   ADD PRIMARY KEY (`stadium_name`,`board_name`),
--   ADD KEY `board_name` (`board_name`);

--
-- Indexes for table `team`
--
-- ALTER TABLE `team`
--   ADD PRIMARY KEY (`name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `played_in`
--
-- ALTER TABLE `played_in`
--   ADD CONSTRAINT `played_in_ibfk_1` FOREIGN KEY (`stadium_name`,`board_name`,`team`) REFERENCES `stadiums` (`stadium_name`, `board_name`, `team`),
--   ADD CONSTRAINT `played_in_ibfk_2` FOREIGN KEY (`team1`,`date`,`team2`) REFERENCES `schedules` (`team1`, `date`, `team2`);

--
-- Constraints for table `player`
-- INSERT INTO team (name)
-- SELECT DISTINCT name FROM player
-- WHERE name NOT IN (SELECT name FROM team);

--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`name`) REFERENCES `teams`(`name`) ON DELETE CASCADE;

--
-- Constraints for table `selected_for`
--
-- ALTER TABLE `selected_for`
--   ADD CONSTRAINT `selected_for_ibfk_1` FOREIGN KEY (`cap_no`,`name`) REFERENCES `player` (`cap_no`, `name`),
--   ADD CONSTRAINT `selected_for_ibfk_2` FOREIGN KEY (`team1`,`date`,`team2`) REFERENCES `schedules` (`team1`, `date`, `team2`) ON DELETE CASCADE;

--
-- Constraints for table `stadiums`
--
ALTER TABLE `stadiums`
  ADD CONSTRAINT `stadiums_ibfk_1` FOREIGN KEY (`board_name`,`team`) REFERENCES `cricket_boards` (`board_name`,`team`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
