-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2024 at 02:32 PM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mherron11`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `avg_manager_salary`
-- (See below for the actual view)
--
CREATE TABLE `avg_manager_salary` (
`Job Level` varchar(255)
,`Jobs` bigint(21)
,`Average Salary` decimal(14,6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `born_between`
-- (See below for the actual view)
--
CREATE TABLE `born_between` (
`id` int(11)
,`jobid` int(11)
,`forename` varchar(255)
,`date_of_birth` date
);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `building_no` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `representativeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `name`, `building_no`, `street`, `town`, `country`, `postcode`, `email`, `phone`, `representativeid`) VALUES
(1, 'apple', 24, 'old kent road', 'manchester', 'england', 'ff8 8fs', 'information@apple.com', '07836826853', 22),
(2, 'microsoft', 64, 'whitechapel road', 'london', 'england', 'ir3 9kg', 'billgates@outlook.co.uk', '07963947395', 7),
(3, 'amazon', 95, 'kings cross station', 'london', 'england', 'sw5 9gs', 'customerservice@amazon.com', '07583928492', 35),
(4, 'Tesla', 45, 'euston road', 'glasgow', 'scotland', 'jf34 9df', 'elon@x.com', '07843912052', 13),
(5, 'johnson and johnson', 34, 'pentonville road', 'birmingham', 'england', 'jf4 8fw', 'johnson@j&j.com', '07923952752', 49),
(6, 'Visa', 75, 'pall mall', 'bristol', 'england', 'hg4 9gm', 'visadebit@gmail.com', '07289159943', 3),
(7, 'nvidia', 88, 'whitehall', 'leeds', 'england', 'gh89 0db', 'graphics@nvidia.co.uk', '07845395927', 14),
(8, 'walmart', 57, 'northumberland lane', 'liverpool', 'england', 'pf9 8fq', 'enquiries@walmart.org', '07937866385', 6),
(9, 'jpmorgan chase', 77, 'marylebone station', 'edinburgh', 'scotland', 'jg5 8fd', 'jpmorgan@outlook.co.uk', '07923624514', 44),
(10, 'mastercard', 33, 'bow street', 'sheffield', 'england', 'hf74 9jj', 'themasters@mastercard.com', '07853912842', 21),
(11, 'nestle', 102, 'marlborough street', 'cardiff', 'wales', 'bf43 8em', 'nestlecoffee@yahoo.com', '07935472956', 29),
(12, 'samsung', 21, 'vine street', 'belfast', 'northern ireland', 'bt1 6ds', 'samsungtechnology@gmail.com', '07826482542', 42),
(13, 'meta', 74, 'strand', 'newcastle', 'england', 'hf82 9fn', 'zucky@facebook.co.uk', '07539523124', 11),
(14, 'pfizer', 53, 'fleet street', 'nottingham', 'england', 'fs6 3he', 'pfizerpharma@pfizer.co', '07552845275', 9),
(15, 'coca cola', 99, 'trafalgar square', 'london', 'england', 'sg5 9lw', 'coke@cocacolaco.net', '07432895322', 20),
(16, 'pepsi', 104, 'fenchurch street station', 'southampton', 'england', 'nf83 0ln', 'pepsico@hotmail.com', '07438192942', 19),
(17, 'alibaba', 10, 'leicester square', 'aberdeen', 'scotland', 'hf84 0fy', 'alibaba@ccp.com', '07594023988', 17),
(18, 'oracle', 9, 'coventry street', 'oxford', 'england', 'hf2 0gb', 'javaenquiries@oracle.com', '07882424526', 10),
(19, 'costco', 3, 'piccadilly', 'manchester', 'england', 'pf43 9fr', 'shopping@cost.co', '07783423114', 26),
(20, 'mcdonalds', 4, 'regent street', 'cambridge', 'england', 'hg92 9js', 'ronald@mcdonalds.com', '07432517916', 38),
(21, 'shell', 54, 'oxford street', 'brighton', 'england', 'jf3 0dp', 'shellco@shell.gov', '07444356092', 41),
(22, 'loreal', 75, 'bond street', 'york', 'england', 'uf9 9ht', 'lorealparis@gmail.co.uk', '07885323091', 30),
(23, 'toyota', 82, 'liverpool street station', 'coventry', 'england', 'pf43 3ds', 'enquiries@toyota.com', '07882756354', 28),
(24, 'nike', 105, 'park lane', 'newcastle', 'england', 'uf0 0fe', 'justdoit@nike.co.uk', '07743612522', 36),
(25, 'disney', 113, 'mayfair', 'london', 'england', 'sg1 0aw', 'waltdisney@gmail.com', '07624526122', 12),
(26, 'comcast', 92, 'oak lane', 'london', 'england', 'jf9 0tl', 'requests@comcast.co', '07914057105', 50),
(27, 'adobe', 93, 'ash avenue', 'birmingham', 'england', 'iw24 4pl', 'adobe@adobetechnologies.com', '07432515090', 45),
(28, 'netflix', 12, 'willow park', 'bristol', 'england', 'ql90 7er', 'business@netflix.com', '07882593142', 8),
(29, 'paramount', 83, 'mahogany street', 'manchester', 'england', 'sr8 p12', 'subscriptions@paramount.co.uk', '07935416290', 34),
(30, 'hulu', 3, 'chestnut grove', 'sheffield', 'england', 'dw02 0pl', 'complaints@hulu.com', '07889204812', 5),
(31, 'bbc', 1, 'university street', 'leeds', 'england', '07824150294', 'news@bbc.gov.uk', '07729142562', 1),
(32, 'sky', 104, 'blue lane', 'edinburgh', 'scotland', 'qp24 7qm', 'broadband@sky.com', '07924019243', 46),
(33, 'itv', 78, 'college avenue', 'belfast', 'northern ireland', 'bt17 0pl', 'schedule@itv.org', '07824100524', 15),
(34, 'siemens', 34, 'rugby avenue', 'cardiff', 'wales', 'fd80 3ln', 'tech@siemens.eu', '07284195124', 33),
(35, 'intel', 99, 'lisburn road', 'derry', 'northern ireland', 'bt92 0fq', 'damages@intel.com', '07002941242', 31),
(36, 'starbucks', 101, 'castle gardens', 'nottingham', 'england', 'jf09 0kf', 'starbucks@gmail.com', '07009223819', 48),
(37, 'greggs', 83, 'great victoria street', 'newcastle', 'england', 'fk90 0kd', 'delivery@greggs.com', '07244152766', 23),
(38, 'cafe nero', 22, 'ormeau road', 'southampton', 'england', 'if89 9wm', 'details@cafenero.co', '07009893214', 4),
(39, 'spar', 99, 'malone road', 'brighton', 'england', 'fs91 0fw', 'spar@outlook.com', '07883212422', 2),
(40, 'centra', 89, 'botanic avenue', 'wolverhampton', 'england', 'dp3 0pe', 'requests@centra.org', '07192412842', 18),
(41, 'queens university belfast', 12, 'university road', 'belfast', 'england', 'bt7 2df', 'accommodation@qub.ac.uk', '07788645723', 39),
(42, 'university of ulster', 30, 'dublin road', 'oxford', 'england', 'sr4 7pt', 'union@ulster.co.uk', '07964376243', 24),
(43, 'tesco', 12, 'donegal road', 'london', 'england', 'os02 0fa', 'tesco@yahoo.com', '07708532163', 47),
(44, 'asda', 74, 'fitzroy avenue', 'bristol', 'england', 'fd93 9fp', 'management@asda.com', '07321953204', 16),
(45, 'b&m bargains', 91, 'antrim road', 'sheffield', 'england', 'fp3 2la', 'bargains@outlook.com', '07291942551', 27),
(46, 'homebase', 105, 'boucher road', 'london', 'england', 'sq24 1lr', 'deliveries@homebase.eu', '07294104404', 43),
(47, 'ikea', 22, 'waterloo gardens', 'liverpool', 'england', 'hg65 7ae', 'furniture@ikea.com', '07885153264', 32),
(48, 'boojum', 56, 'victoria lane', 'glasgow', 'scotland', 'hf5 7ds', 'food@boojumex.co.uk', '07932532786', 25),
(49, 'kfc', 22, 'fitzwilliam street', 'aberdeen', 'scotland', 'if92 9le', 'order@kfc.com', '07992491592', 40);

-- --------------------------------------------------------

--
-- Table structure for table `client_location`
--

CREATE TABLE `client_location` (
  `clientid` int(11) NOT NULL,
  `locationid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_location`
--

INSERT INTO `client_location` (`clientid`, `locationid`) VALUES
(1, 6),
(1, 16),
(1, 27),
(2, 9),
(2, 20),
(2, 21),
(3, 7),
(3, 10),
(3, 27),
(4, 3),
(4, 4),
(4, 11),
(5, 1),
(5, 15),
(5, 25),
(6, 27),
(6, 28),
(6, 30),
(7, 11),
(7, 17),
(7, 29),
(8, 3),
(8, 25),
(8, 28),
(9, 2),
(9, 6),
(9, 19),
(10, 17),
(10, 19),
(10, 29),
(11, 1),
(11, 8),
(11, 28),
(12, 10),
(12, 21),
(12, 26),
(13, 8),
(13, 13),
(13, 24),
(14, 9),
(14, 18),
(14, 22),
(15, 8),
(15, 14),
(15, 28),
(16, 14),
(16, 29),
(17, 3),
(17, 13),
(17, 29),
(18, 14),
(18, 16),
(18, 23),
(19, 5),
(19, 21),
(19, 25),
(20, 1),
(20, 11),
(20, 15),
(21, 4),
(21, 5),
(21, 20),
(22, 7),
(22, 16),
(22, 19),
(23, 16),
(23, 22),
(23, 23),
(24, 1),
(24, 4),
(24, 30),
(25, 2),
(25, 10),
(25, 17),
(26, 3),
(26, 5),
(26, 15),
(27, 1),
(28, 18),
(29, 2),
(30, 11),
(31, 9),
(32, 30),
(33, 24),
(34, 14),
(35, 6),
(36, 20),
(37, 8),
(38, 12),
(39, 27),
(40, 30),
(41, 6),
(42, 23),
(43, 7),
(44, 26),
(45, 4),
(46, 15),
(47, 25),
(48, 17),
(49, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `forename` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `house_no` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `medical_conditions` varchar(255) DEFAULT NULL,
  `jobid` int(11) DEFAULT NULL,
  `recruiterid` int(11) NOT NULL,
  `primary_skill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `forename`, `surname`, `date_of_birth`, `house_no`, `street`, `town`, `country`, `postcode`, `email`, `phone`, `medical_conditions`, `jobid`, `recruiterid`, `primary_skill`) VALUES
(1, 'Jon', 'Snow', '1989-07-22', 15, 'Cranmer Road', 'Cardiff', 'Wales', 'CF11 6AR', 'jon.snow@gmail.com', '07145586789', NULL, NULL, 8, 6),
(2, 'Arya', 'Stark', '1997-09-25', 23, 'Kingston Road', 'Glasgow', 'Scotland', 'G4 5GA', 'arya.stark@hotmail.com', '07909354567', NULL, NULL, 3, 11),
(3, 'Tyrion', 'Lannister', '1980-04-08', 7, 'Strawberry Vale', 'Manchester', 'England', 'M21 5AA', 'tyrion.lannister@yahoo.com', '07639101098', NULL, 8, 10, 16),
(4, 'Daenerys', 'Targaryen', '1986-11-24', 30, 'High Street', 'Birmingham', 'England', 'B1 5BG', 'daenerys.targaryen@hotmail.com', '07123736389', 'Epilepsy', 11, 2, 19),
(5, 'Sansa', 'Stark', '1995-02-05', 42, 'Park Road', 'Liverpool', 'England', 'L51 5AT', 'sansa.stark@gmail.com', '07934552679', NULL, 13, 15, 8),
(6, 'Jaime', 'Lannister', '1981-10-15', 25, 'Queen Street', 'London', 'England', 'E1 6SP', 'jaime.lannister@yahoo.com', '07621215098', NULL, NULL, 17, 14),
(7, 'Cersei', 'Lannister', '1978-08-30', 11, 'Main Street', 'Belfast', 'Northern Ireland', 'BT81 4BH', 'cersei.lannister@hotmail.com', '07125672378', 'Alcoholism', 14, 5, 10),
(8, 'Bran', 'Stark', '1999-03-16', 17, 'Green Lane', 'Edinburgh', 'Scotland', 'EH1 0FW', 'bran.stark@gmail.com', '07951234567', NULL, 17, 9, 3),
(9, 'Sandor', 'Clegane', '1975-12-05', 38, 'Station Road', 'Leeds', 'England', 'LS17 3LD', 'sandor.clegane@yahoo.com', '07654090098', NULL, 19, 16, 18),
(10, 'Margaery', 'Tyrell', '1983-06-12', 20, 'Mill Road', 'Cardiff', 'Wales', 'CF10 3TK', 'margaery.tyrell@hotmail.com', '07345523789', 'Asthma', NULL, 12, 4),
(11, 'Rachel', 'Green', '1969-05-05', 18, 'Park Avenue', 'Manchester', 'England', 'M2 5AB', 'rachel.green@gmail.com', '07901234501', 'Claustrophobia', 1, 18, 5),
(12, 'Ross', 'Geller', '1967-11-11', 22, 'Grove Street', 'London', 'England', 'E2 4TB', 'ross.geller@yahoo.com', '07652892109', NULL, 2, 2, 11),
(13, 'Monica', 'Geller', '1969-04-22', 11, 'Maple Avenue', 'Birmingham', 'England', 'B3 3PL', 'monica.geller@hotmail.com', '07156723589', 'OCD', 3, 6, 14),
(14, 'Chandler', 'Bing', '1968-04-08', 15, 'Crescent Road', 'Glasgow', 'Scotland', 'G2 5DF', 'chandler.bing@yahoo.com', '07904096567', NULL, 4, 11, 8),
(15, 'Joey', 'Tribbiani', '1967-12-12', 10, 'Church Street', 'Edinburgh', 'Scotland', 'EH3 9AD', 'joey.tribbiani@gmail.com', '07651051098', 'Dyslexia', 5, 15, 20),
(16, 'Phoebe', 'Buffay', '1991-02-16', 7, 'Willow Street', 'Leeds', 'England', 'LS3 6BE', 'phoebe.buffay@hotmail.com', '07109156789', 'Sleepwalking', 6, 19, 12),
(17, 'Gunther', 'Smith', '1970-09-15', 2, 'Baker Street', 'London', 'England', 'E3 2LM', 'gunther.cafe@gmail.com', '07900934367', NULL, NULL, 3, 16),
(18, 'Janice', 'Litman', '1967-08-09', 21, 'Hillside Avenue', 'Sheffield', 'England', 'S3 0LW', 'janice_litman@yahoo.com', '07175456791', 'Chronic halitosis', 9, 14, 10),
(19, 'Mike', 'Hannigan', '1986-12-07', 5, 'Bridge Street', 'Manchester', 'England', 'M4 2AB', 'mike.hannigan@hotmail.com', '07902734567', NULL, 10, 17, 18),
(20, 'James', 'Stinson', '1976-09-21', 5, 'Elm Street', 'Glasgow', 'Scotland', 'G6 5AC', 'james.stinson@hotmail.com', '07123456534', NULL, 18, 13, 14),
(21, 'Meredith', 'Grey', '1978-06-15', 12, 'High Street', 'London', 'England', 'E13 6GH', 'meredith.grey@gmail.com', '07458246789', NULL, 21, 3, 1),
(22, 'Derek', 'Shepherd', '1966-10-02', 25, 'Queen Street', 'Manchester', 'England', 'M2 4LG', 'derek.shepherd@yahoo.com', '07901054567', NULL, 22, 16, 8),
(23, 'Cristina', 'Yang', '1979-03-23', 30, 'Market Street', 'Birmingham', 'England', 'B3 1ME', 'cristina.yang@hotmail.com', '07692421098', 'ADD', 23, 5, 15),
(24, 'Alex', 'Karev', '1989-07-05', 18, 'Park Road', 'Glasgow', 'Scotland', 'G4 5IT', 'alex.karev@gmail.com', '07123620959', NULL, NULL, 12, 19),
(25, 'Miranda', 'Bailey', '1971-11-30', 22, 'Church Street', 'Cardiff', 'Wales', 'CF98 0GB', 'miranda.bailey@yahoo.com', '07901834567', NULL, 25, 10, 13),
(26, 'Richard', 'Webber', '1960-04-06', 15, 'Broadway', 'Belfast', 'Northern Ireland', 'BT1 2LX', 'richard.webber@hotmail.com', '07017321098', NULL, 26, 19, 20),
(27, 'Izzie', 'Stevens', '1977-08-25', 28, 'Victoria Road', 'Edinburgh', 'Scotland', 'EH1 7GW', 'izzie.stevens@gmail.com', '07129521789', NULL, 27, 8, 7),
(28, 'George', 'O\'Malley', '1978-02-14', 20, 'Station Road', 'Leeds', 'England', 'LS51 8KQ', 'george.omalley@yahoo.com', '07901224456', NULL, NULL, 18, 11),
(29, 'Mark', 'Sloan', '1964-12-30', 35, 'Chapel Street', 'Sheffield', 'England', 'S1 0MW', 'mark.sloan@hotmail.com', '07658105098', 'Arthritis', 29, 15, 18),
(30, 'Lexie', 'Grey', '1993-05-22', 42, 'Market Place', 'Bristol', 'England', 'BS0 5AR', 'lexie.grey@gmail.com', '07101536789', NULL, 30, 2, 12),
(31, 'Jane', 'Hopper', '1971-11-30', 15, 'Oak Road', 'Manchester', 'England', 'M1 6FJ', 'eleven@hawkinslab.com', '07907589127', 'PTSD', 31, 7, 20),
(32, 'Richard', 'Burke', '1964-07-20', 14, 'Castle Road', 'Bristol', 'England', 'BS3 5KR', 'richard.burke@yahoo.com', '0767611098', NULL, 93, 7, 19),
(33, 'Jane', 'Hopper', '1990-01-01', 11, 'Park Avenue', 'London', 'England', 'W1D 4FA', 'eleven@lab.com', '07109296789', NULL, 51, 6, 14),
(34, 'Mike', 'Wheeler', '1970-03-14', 14, 'Bridge Street', 'Manchester', 'England', 'M7 9FY', 'mike@gmail.com', '07893243210', NULL, 52, 18, 1),
(35, 'Will', 'Byers', '1987-03-22', 22, 'Maple Avenue', 'Birmingham', 'England', 'B1 7PW', 'will@updown.com', '07102416789', NULL, 53, 10, 19),
(36, 'Lucas', 'Sinclair', '1970-10-24', 24, 'Cedar Road', 'Glasgow', 'Scotland', 'G5 2LC', 'lucas@yahoo.com', '07898533210', NULL, 54, 3, 10),
(37, 'Dustin', 'Henderson', '1970-11-10', 10, 'Forest Avenue', 'Cardiff', 'Wales', 'CF1 6WM', 'dustin@hotmail.com', '07101926789', NULL, 55, 14, 8),
(38, 'Max', 'Mayfield', '1970-11-17', 17, 'Lake Street', 'Edinburgh', 'Scotland', 'EH3 1LP', 'max@yelp.com', '07804243210', NULL, 56, 17, 5),
(39, 'Nancy', 'Wheeler', '1970-12-20', 20, 'River Road', 'Belfast', 'Northern Ireland', 'BT19 0DF', 'nancy@gmail.com', '07158326789', NULL, 57, 20, 16),
(40, 'Steve', 'Harrington', '1971-01-23', 23, 'Mountain View', 'Leeds', 'England', 'LS1 2PL', 'steve@outlook.com', '07801923210', NULL, NULL, 12, 7),
(41, 'Jonathan', 'Byers', '1971-03-15', 15, 'Valley Road', 'Sheffield', 'England', 'S1 8JX', 'jonathan@gmail.com', '07124156789', NULL, 59, 8, 11),
(42, 'Billy', 'Hargrove', '1971-04-08', 8, 'Ocean Drive', 'Bristol', 'England', 'BS1 0QM', 'billy@updown.com', '07847363210', NULL, NULL, 1, 18),
(43, 'Michael', 'Scott', '1963-03-15', 15, 'Hillside Avenue', 'London', 'England', 'W1D 3NN', 'michael.scott@dundermifflin.com', '07942556789', NULL, 61, 7, 13),
(44, 'Dwight', 'Schrute', '1968-01-20', 20, 'Station Road', 'Manchester', 'England', 'M2 4PA', 'dwight.schrute@dundermifflin.com', '07896523610', NULL, 62, 19, 1),
(45, 'Jim', 'Halpert', '1978-10-01', 1, 'Church Lane', 'Birmingham', 'England', 'B9 3LD', 'jim.halpert@gmail.com', '07915236789', NULL, 63, 10, 19),
(46, 'Pam', 'Beesly', '1979-06-25', 25, 'High Street', 'Glasgow', 'Scotland', 'G4 7SA', 'pam.beesly@outlook.com', '07935243210', NULL, 64, 3, 10),
(47, 'Ryan', 'Howard', '1977-12-05', 5, 'Queen Street', 'Edinburgh', 'Scotland', 'EH1 2ST', 'ryan.howard@hotmail.com', '07641956789', NULL, 65, 16, 20),
(48, 'Stanley', 'Hudson', '1956-11-19', 19, 'Market Street', 'Cardiff', 'Wales', 'CF1 8WO', 'stanley.hudson@gmail.com', '07891923210', 'Diabetes', 66, 5, 7),
(49, 'Angela', 'Martin', '1975-09-25', 15, 'Park Road', 'Belfast', 'Northern Ireland', 'BT1 6PL', 'angela.martin@dundermifflin.com', '07941526789', NULL, 67, 20, 16),
(50, 'Oscar', 'Martinez', '1973-07-30', 30, 'Church Road', 'Leeds', 'England', 'LS2 9TG', 'oscar.martinez@dundermifflin.com', '07852743210', NULL, 68, 12, 12),
(51, 'Phyllis', 'Vance', '1953-03-08', 8, 'Broadway', 'Sheffield', 'England', 'S1 1OF', 'phyllis.vance@gmail.com', '07123821499', NULL, 69, 8, 18),
(52, 'Kevin', 'Malone', '1968-07-17', 17, 'Queen Street', 'Bristol', 'England', 'BS4 5DG', 'kevin.malone@dundermifflin.com', '07872143210', 'Hyperactivity Disorder', NULL, 1, 3),
(53, 'Walter', 'White', '1967-09-07', 7, 'Main Street', 'London', 'England', 'W1D 0NK', 'walter.white@outlook.com', '07752856789', NULL, 81, 7, 14),
(54, 'Jesse', 'Pinkman', '1984-09-24', 24, 'High Street', 'Manchester', 'England', 'M1 4DQ', 'jesse.pinkman@gmail.com', '07241543210', 'Substance Abuse', 82, 19, 1),
(55, 'Skyler', 'White', '1972-05-23', 23, 'Oak Avenue', 'Birmingham', 'England', 'B1 0BA', 'skyler.white@hotmail.com', '07151362339', NULL, NULL, 10, 19),
(56, 'Hank', 'Schrader', '1968-03-14', 14, 'Park Lane', 'Glasgow', 'Scotland', 'G1 8LK', 'hank.schrader@dea.com', '07892148152', 'PTSD', 84, 3, 10),
(57, 'Marie', 'Schrader', '1969-08-21', 21, 'Victoria Road', 'Cardiff', 'Wales', 'CF1 2NP', 'marie.schrader@sgh.com', '07525356789', 'OCD', 85, 16, 20),
(58, 'Saul', 'Goodman', '1963-11-14', 14, 'Queen Street', 'Edinburgh', 'Scotland', 'EH1 9NS', 'saul.goodman@jmg.com', '07194281210', NULL, 86, 5, 7),
(59, 'Mike', 'Ehrmantraut', '1954-04-05', 5, 'Church Street', 'Belfast', 'Northern Ireland', 'BT1 7GE', 'mike.ehrmantraut@pollo.com', '07121849789', NULL, 87, 20, 16),
(60, 'Gustavo', 'Fring', '1957-12-12', 12, 'Market Road', 'Leeds', 'England', 'LS1 3LX', 'gustavo.fring@pollo.com', '07824123210', NULL, 88, 12, 12),
(61, 'Hector', 'Salamanca', '1940-02-22', 22, 'Broadway', 'Bristol', 'England', 'BS1 6ZV', 'hector.salamanca@yahoo.com', '07821489124', 'Quadriplegia', 90, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `hours` int(11) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `clientid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `primary_skill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `title`, `hours`, `salary`, `clientid`, `roleid`, `primary_skill`) VALUES
(1, 'Software Engineer', 40, 98650.00, 2, 6, 2),
(2, 'Software Developer', 38, 94500.00, 2, 6, 2),
(3, 'Database Administrator', 38, 82200.00, 3, 5, 3),
(4, 'Data Analyst', 35, 83500.00, 3, 5, 14),
(5, 'Electrical Engineer', 42, 92000.00, 4, 6, 11),
(6, 'Mechanical Engineer', 37, 84500.00, 4, 6, 8),
(7, 'Software Engineer', 42, 96600.00, 4, 6, 2),
(8, 'Software Engineer', 40, 98700.00, 1, 6, 2),
(9, 'Database Administrator', 37, 83700.00, 1, 5, 3),
(10, 'Software Engineer', 40, 98650.00, 5, 6, 2),
(11, 'Financial Analyst', 40, 87000.00, 5, 7, 10),
(12, 'Graphic Designer', 40, 71500.00, 6, 5, 9),
(13, 'Human Resources Assistant', 35, 56000.00, 6, 2, 7),
(14, 'Software Developer', 38, 94500.00, 7, 6, 2),
(15, 'Data Analyst', 35, 83500.00, 7, 5, 14),
(16, 'Store Manager', 45, 48000.00, 8, 6, 17),
(17, 'Sales Associate', 37, 50200.00, 8, 4, 17),
(18, 'Financial Analyst', 40, 87000.00, 9, 7, 10),
(19, 'Marketing Manager', 40, 79500.00, 9, 7, 18),
(20, 'Project Manager', 40, 89500.00, 9, 6, 13),
(21, 'Software Engineer', 40, 98700.00, 10, 6, 2),
(22, 'Database Administrator', 37, 83700.00, 10, 5, 3),
(23, 'Software Developer', 38, 91300.00, 11, 6, 2),
(24, 'Software Engineer', 42, 97000.00, 12, 6, 2),
(25, 'Database Administrator', 38, 82200.00, 12, 5, 3),
(26, 'Software Engineer', 40, 98500.00, 13, 6, 2),
(27, 'Data Analyst', 35, 83500.00, 13, 5, 14),
(28, 'Software Developer', 38, 94500.00, 14, 6, 2),
(29, 'Marketing Coordinator', 37, 59000.00, 14, 2, 18),
(30, 'Software Engineer', 40, 98650.00, 15, 6, 2),
(31, 'Business Analyst', 42, 86000.00, 15, 6, 10),
(32, 'Software Developer', 40, 91300.00, 16, 6, 2),
(33, 'Software Engineer', 40, 98700.00, 17, 6, 2),
(34, 'Database Administrator', 37, 83700.00, 17, 5, 3),
(35, 'Software Developer', 38, 94500.00, 18, 6, 2),
(36, 'Data Analyst', 35, 83500.00, 18, 5, 14),
(37, 'Store Manager', 45, 48000.00, 19, 6, 17),
(38, 'Sales Associate', 37, 50200.00, 19, 4, 17),
(39, 'Cashier', 20, 21000.00, 20, 2, 17),
(40, 'Mechanical Engineer', 37, 84500.00, 21, 6, 8),
(41, 'Store Manager', 45, 48000.00, 21, 6, 17),
(42, 'Graphic Designer', 40, 71500.00, 22, 5, 9),
(43, 'Marketing Coordinator', 37, 59000.00, 22, 2, 18),
(44, 'Mechanical Engineer', 37, 84500.00, 23, 6, 8),
(45, 'Sales Associate', 37, 50200.00, 23, 4, 17),
(46, 'Sales Associate', 37, 50200.00, 24, 4, 17),
(47, 'Animator', 40, 64000.00, 25, 6, 9),
(48, 'Software Engineer', 40, 98650.00, 25, 6, 2),
(49, 'Software Developer', 38, 94500.00, 26, 6, 2),
(50, 'Database Administrator', 38, 82200.00, 26, 5, 3),
(51, 'Graphic Designer', 40, 71500.00, 27, 5, 9),
(52, 'Software Engineer', 40, 98650.00, 27, 6, 2),
(53, 'Software Engineer', 40, 98650.00, 28, 6, 2),
(54, 'Marketing Coordinator', 37, 59000.00, 28, 2, 18),
(55, 'Software Developer', 38, 94500.00, 29, 6, 2),
(56, 'Data Analyst', 35, 83500.00, 29, 5, 14),
(57, 'Software Engineer', 42, 97000.00, 30, 6, 2),
(58, 'Journalist', 40, 56000.00, 31, 6, 12),
(59, 'Software Developer', 38, 94500.00, 31, 6, 2),
(60, 'Software Engineer', 40, 98650.00, 32, 6, 2),
(61, 'Database Administrator', 37, 83700.00, 32, 5, 3),
(62, 'Journalist', 40, 56000.00, 33, 6, 12),
(63, 'Software Developer', 38, 94500.00, 33, 6, 2),
(64, 'Mechanical Engineer', 37, 84500.00, 34, 6, 8),
(65, 'Electrical Engineer', 42, 92000.00, 34, 6, 11),
(66, 'Software Engineer', 40, 98650.00, 35, 6, 2),
(67, 'Database Administrator', 37, 83700.00, 35, 5, 3),
(68, 'Barista', 30, 27500.00, 36, 1, 17),
(69, 'Store Manager', 45, 48000.00, 36, 6, 17),
(70, 'Baker', 35, 23500.00, 37, 1, 4),
(71, 'Store Manager', 45, 48000.00, 37, 6, 17),
(72, 'Barista', 30, 27500.00, 38, 1, 17),
(73, 'Store Manager', 45, 48000.00, 38, 6, 17),
(74, 'Sales Associate', 37, 50200.00, 39, 4, 17),
(75, 'Store Manager', 45, 48000.00, 39, 6, 17),
(76, 'Sales Associate', 37, 50200.00, 40, 4, 17),
(77, 'Store Manager', 45, 48000.00, 40, 6, 17),
(78, 'Research Assistant', 37, 33200.00, 41, 2, 19),
(79, 'Professor', 40, 72000.00, 41, 7, 19),
(80, 'Research Assistant', 37, 33200.00, 42, 2, 19),
(81, 'Professor', 40, 72000.00, 42, 7, 19),
(82, 'Cashier', 20, 21000.00, 43, 2, 17),
(83, 'Store Manager', 45, 48000.00, 43, 6, 17),
(84, 'Cashier', 20, 21000.00, 44, 2, 17),
(85, 'Store Manager', 45, 48000.00, 44, 6, 17),
(86, 'Sales Associate', 37, 50200.00, 45, 4, 17),
(87, 'Store Manager', 45, 48000.00, 45, 6, 17),
(88, 'Sales Associate', 37, 50200.00, 46, 4, 17),
(89, 'Store Manager', 45, 48000.00, 46, 6, 17),
(90, 'Sales Associate', 37, 50200.00, 47, 4, 17),
(91, 'Store Manager', 45, 48000.00, 47, 6, 17),
(92, 'Chef', 40, 34500.00, 48, 4, 4),
(93, 'Store Manager', 45, 48000.00, 48, 6, 17),
(94, 'Cook', 35, 22700.00, 49, 4, 4),
(95, 'Cashier', 20, 18000.00, 49, 2, 17),
(96, 'Database Manager', 35, 45000.00, 1, 1, 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `job_options`
-- (See below for the actual view)
--
CREATE TABLE `job_options` (
`Employee` int(11)
,`Forename` varchar(255)
,`Surname` varchar(255)
,`Job Title` varchar(255)
,`Salary` decimal(10,2)
,`Client` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `building_no` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `parking_spaces` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `title`, `building_no`, `street`, `town`, `country`, `postcode`, `parking_spaces`) VALUES
(1, 'wework', 123, 'green street', 'london', 'england', 'e1 6bf', 56),
(2, 'regus', 45, 'high street', 'cardiff', 'wales', 'ca2 4ad', 32),
(3, 'the office group (tog)', 78, 'oxford street', 'london', 'england', 'w1d 1bs', 105),
(4, 'workspace group plc', 56, 'shoreditch high street', 'london', 'england', 'e1 6jj', 17),
(5, 'bizspace', 33, 'long lane', 'aberdeen', 'scotland', 'ab1 2jp', 78),
(6, 'pure offices', 10, 'queen street', 'nottingham', 'england', 'ng1 2bl', 92),
(7, 'spaces', 99, 'buchanan street', 'glasgow', 'scotland', 'g1 3hf', 24),
(8, 'the brew', 27, 'clerkenwell road', 'london', 'england', 'ec1m 5rn', 61),
(9, 'huckletree', 18, 'finsbury square', 'london', 'england', 'ec2a 1ah', 39),
(10, 'boxpod', 72, 'argyle street', 'bristol', 'england', 'bs2 8eg', 20),
(11, 'storage king', 5, 'bridge street', 'manchester', 'england', 'm3 2fw', 48),
(12, 'big yellow self storage', 20, 'wandsworth road', 'london', 'england', 'sw8 2gb', 79),
(13, 'safestore', 15, 'york road', 'birmingham', 'england', 'b14 7sa', 110),
(14, 'instant offices', 66, 'westgate street', 'cardiff', 'wales', 'cf10 1ds', 85),
(15, 'the office providers', 7, 'chiswell street', 'london', 'england', 'ec1y 4up', 41),
(16, 'london executive offices', 45, 'grosvenor street', 'london', 'england', 'w1k 3hp', 16),
(17, 'city pavilion', 20, 'fenwick street', 'london', 'england', 'ec2m 5rr', 78),
(18, 'techhub', 1, 'ropemaker street', 'belfast', 'northern ireland', 'bt82 0fs', 93),
(19, 'the shard', 32, 'london bridge street', 'derry', 'northern ireland', 'bt68 5pl', 4),
(20, 'shoreditch works', 40, 'paul street', 'london', 'england', 'ec2a 4lb', 37),
(21, 'runway east', 10, 'temple back', 'bristol', 'england', 'bs1 6fl', 85),
(22, 'second home', 1, 'holland park', 'london', 'england', 'w11 3tp', 79),
(23, 'plexal', 14, 'east bay lane', 'london', 'england', 'e15 2gw', 62),
(24, 'the trampery', 239, 'old street', 'london', 'england', 'ec1v 9ey', 14),
(25, 'codebase', 38, 'castle terrace', 'edinburgh', 'scotland', 'eh3 9dz', 109),
(26, 'the studio', 17, 'renfield street', 'glasgow', 'england', 'g2 5ah', 24),
(27, 'platform', 21, 'leeds road', 'leeds', 'england', 'ls11 5ab', 59),
(28, 'colony coworking', 30, 'brown street', 'manchester', 'england', 'm2 1dh', 78),
(29, 'clockwise', 1, 'royal avenue', 'belfast', 'northern ireland', 'bt1 1da', 20),
(30, 'desklodge', 1, 'temple quay', 'bristol', 'england', 'bs1 6dx', 104);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter`
--

CREATE TABLE `recruiter` (
  `id` int(11) NOT NULL,
  `forename` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `house_no` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `medical_conditions` varchar(255) DEFAULT NULL,
  `national_insurance` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recruiter`
--

INSERT INTO `recruiter` (`id`, `forename`, `surname`, `date_of_birth`, `house_no`, `street`, `town`, `country`, `postcode`, `email`, `phone`, `medical_conditions`, `national_insurance`) VALUES
(1, 'Alice', 'Smith', '1990-05-15', 42, 'Maple Avenue', 'London', 'United Kingdom', 'SW1A 1AA', 'alice.smith@gmail.com', '07912345678', 'Asthma', 'AB123456C'),
(2, 'Sophia', 'Taylor', '1995-09-07', 56, 'Birch Lane', 'Liverpool', 'United Kingdom', 'L1 1AA', 'sophia.taylor@aol.com', '07812345678', NULL, 'IJ567890G'),
(3, 'James', 'Wilson', '1982-12-12', 29, 'Pine Street', 'Leeds', 'United Kingdom', 'LS1 1AA', 'james.wilson@icloud.com', '07312345678', NULL, 'KL678901H'),
(4, 'Olivia', 'Anderson', '1998-04-25', 91, 'Holly Avenue', 'Bristol', 'United Kingdom', 'BS7 7HH', 'olivia.anderson@live.com', '07412345678', NULL, 'MN234567D'),
(5, 'William', 'Martinez', '1993-07-30', 11, 'Ash Road', 'Edinburgh', 'United Kingdom', 'EH8 8II', 'william.martinez@protonmail.com', '07212345678', NULL, 'OP876543E'),
(6, 'Amelia', 'Thomas', '1980-01-19', 67, 'Chestnut Drive', 'Sheffield', 'United Kingdom', 'S9 9JJ', 'ameliathomas@yandex.com', '07112345678', NULL, 'QR543210F'),
(7, 'Daniel', 'Clark', '1987-06-03', 35, 'Willow Close', 'Newcastle', 'United Kingdom', 'NE1 1AA', 'danielclark@zoho.com', '07012345678', NULL, 'ST210987G'),
(8, 'John', 'Doe', '1985-08-20', 75, 'Oak Street', 'Manchester', 'United Kingdom', 'M2 2CC', 'john.doe@outlook.com', '07712345678', 'Diabetes', 'CD987654Y'),
(9, 'Emma', 'Johnson', '1992-11-10', 18, 'Cedar Road', 'Birmingham', 'United Kingdom', 'B3 3DD', 'emmajohnson@yahoo.com', '07512345678', 'High Blood Pressure', 'EF654321Z'),
(10, 'Isabella', 'Rodriguez', '1994-10-17', 84, 'Fir Street', 'Cardiff', 'United Kingdom', 'CF1 2BB', 'isabellarodriguez@fastmail.com', '07922345678', NULL, 'UV789012H'),
(11, 'Benjamin', 'Lee', '1983-02-09', 47, 'Sycamore Avenue', 'Belfast', 'United Kingdom', 'BT2 3CC', 'benjaminlee@gmx.com', '07822345678', NULL, 'WX456789I'),
(12, 'Charlotte', 'Scott', '1991-11-02', 19, 'Juniper Road', 'Southampton', 'United Kingdom', 'SO2 4DD', 'charlottescott@mail.com', '07722345678', NULL, 'YZ098765J'),
(13, 'Mason', 'Young', '1986-05-28', 73, 'Beech Street', 'Oxford', 'United Kingdom', 'OX3 5EE', 'masonyoung@protonmail.com', '07622345678', NULL, 'ZA567890K'),
(14, 'David', 'Brown', '1988-03-28', 103, 'Elm Close', 'Glasgow', 'United Kingdom', 'G4 4EE', 'david.brown@hotmail.com', '07612345678', 'Anxiety', 'GH123456A'),
(15, 'Ava', 'Lopez', '1997-08-14', 26, 'Rowan Lane', 'Cambridge', 'United Kingdom', 'CB4 6FF', 'avalopez@yandex.com', '07522345678', NULL, 'AB678901L'),
(16, 'Ethan', 'Hernandez', '1981-03-06', 61, 'Poplar Road', 'Norwich', 'United Kingdom', 'NR5 7GG', 'ethanhernandez@outlook.co.uk', '07422345678', NULL, 'CD789012M'),
(17, 'Mia', 'Adams', '1996-06-22', 110, 'Hazel Close', 'Brighton', 'United Kingdom', 'BN6 8HH', 'miaadams@gmail.com', '07322345678', NULL, 'EF890123N'),
(18, 'Noah', 'Garcia', '1984-09-09', 38, 'Cherry Avenue', 'Leicester', 'United Kingdom', 'LE7 9II', 'noah.garcia@yahoo.com', '07222345678', NULL, 'FG012345O'),
(19, 'Grace', 'King', '1989-12-31', 95, 'Maple Street', 'Portsmouth', 'United Kingdom', 'PO8 1AA', 'graceking@aol.com', '07122345678', NULL, 'GH567890P'),
(20, 'Logan', 'Wright', '1990-02-18', 24, 'Cedar Close', 'Exeter', 'United Kingdom', 'EX9 2BB', 'loganwright@icloud.com', '07022345678', NULL, 'IJ678901Q');

-- --------------------------------------------------------

--
-- Table structure for table `representative`
--

CREATE TABLE `representative` (
  `id` int(11) NOT NULL,
  `forename` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `representative`
--

INSERT INTO `representative` (`id`, `forename`, `surname`, `email`, `phone`) VALUES
(1, 'Emma', 'Smith', 'emma.smith@gmail.com', '07891234567'),
(2, 'Jack', 'Johnson', 'jack.johnson@outlook.co.uk', '07895432109'),
(3, 'Olivia', 'Brown', 'olivia.brown@yahoo.com', '07896543210'),
(4, 'Harry', 'Taylor', 'harry.taylor@hotmail.com', '07894321098'),
(5, 'Sophia', 'Williams', 'sophia.williams@aol.com', '07897654321'),
(6, 'James', 'Jones', 'james.jones@icloud.com', '07892345678'),
(7, 'Mia', 'Davis', 'mia.davis@live.com', '07891098765'),
(8, 'Alexander', 'Evans', 'alexander.evans@protonmail.com', '07894567890'),
(9, 'Isabella', 'Wilson', 'isabella.wilson@yandex.com', '07897890123'),
(10, 'Oliver', 'Thomas', 'oliver.thomas@zoho.com', '07899012345'),
(11, 'Emily', 'Roberts', 'emily.roberts@fastmail.com', '07896789012'),
(12, 'William', 'Johnson', 'william.johnson@mail.com', '07890123456'),
(13, 'Ava', 'Brown', 'ava.brown@gmx.com', '07893456789'),
(14, 'Noah', 'Clarke', 'noah.clarke@protonmail.com', '07891234567'),
(15, 'Charlotte', 'Lewis', 'charlotte.lewis@yandex.com', '07894321098'),
(16, 'George', 'Harris', 'george.harris@outlook.co.uk', '07898765432'),
(17, 'Amelia', 'King', 'amelia.king@icloud.com', '07893210987'),
(18, 'Benjamin', 'Allen', 'benjamin.allen@hotmail.com', '07899876543'),
(19, 'Mia', 'Turner', 'mia.turner@gmail.com', '07890987654'),
(20, 'Henry', 'White', 'henry.white@yahoo.com', '07891234567'),
(21, 'Ella', 'Hill', 'ella.hill@aol.com', '07895432109'),
(22, 'Thomas', 'Green', 'thomas.green@live.com', '07896543210'),
(23, 'Grace', 'Baker', 'grace.baker@outlook.co.uk', '07894321098'),
(24, 'Lucas', 'Harris', 'lucas.harris@hotmail.com', '07897654321'),
(25, 'Freya', 'Scott', 'freya.scott@icloud.com', '07892345678'),
(26, 'Alexander', 'Cox', 'alexander.cox@gmail.com', '07891098765'),
(27, 'Lily', 'Edwards', 'lily.edwards@mail.com', '07894567890'),
(28, 'Isaac', 'Turner', 'isaac.turner@protonmail.com', '07897890123'),
(29, 'Eva', 'Ward', 'eva.ward@fastmail.com', '07899012345'),
(30, 'Dylan', 'Phillips', 'dylan.phillips@yandex.com', '07896789012'),
(31, 'Matilda', 'Mitchell', 'matilda.mitchell@zoho.com', '07890123456'),
(32, 'Arthur', 'Price', 'arthur.price@gmx.com', '07893456789'),
(33, 'Ruby', 'Hayes', 'ruby.hayes@outlook.co.uk', '07891234567'),
(34, 'Jacob', 'Fisher', 'jacob.fisher@yahoo.com', '07894321098'),
(35, 'Poppy', 'Powell', 'poppy.powell@icloud.com', '07898765432'),
(36, 'Ava', 'Russell', 'ava.russell@gmail.com', '07893210987'),
(37, 'Logan', 'Bennett', 'logan.bennett@hotmail.com', '07899876543'),
(38, 'Florence', 'Brooks', 'florence.brooks@live.com', '07890987654'),
(39, 'Teddy', 'Hughes', 'teddy.hughes@outlook.co.uk', '07891234567'),
(40, 'Daisy', 'Foster', 'daisy.foster@aol.com', '07895432109'),
(41, 'Sebastian', 'Gray', 'sebastian.gray@yahoo.com', '07896543210'),
(42, 'Elsie', 'Simpson', 'elsie.simpson@protonmail.com', '07894321098'),
(43, 'Max', 'Wright', 'max.wright@gmail.com', '07897654321'),
(44, 'Luna', 'Marshall', 'luna.marshall@hotmail.com', '07892345678'),
(45, 'Archie', 'Perry', 'archie.perry@icloud.com', '07891098765'),
(46, 'Chloe', 'Palmer', 'chloe.palmer@mail.com', '07894567890'),
(47, 'Finn', 'Kennedy', 'finn.kennedy@outlook.co.uk', '07897890123'),
(48, 'Ivy', 'Richardson', 'ivy.richardson@gmail.com', '07899012345'),
(49, 'Hugo', 'Stone', 'hugo.stone@yahoo.com', '07896789012'),
(50, 'Zara', 'Mason', 'zara.mason@live.com', '07890123456');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `title`, `level`) VALUES
(1, 'Trainee', 1),
(2, 'Administration', 2),
(3, 'Entry-Level Worker', 2),
(4, 'General Operative', 3),
(5, 'Supervisor', 4),
(6, 'Manager', 5),
(7, 'Director', 6),
(8, 'CEO', 7);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`) VALUES
(1, 'Medical Diagnosis'),
(2, 'Java Programming'),
(3, 'SQL Database Management'),
(4, 'Culinary Arts'),
(5, 'Network Security'),
(6, 'Legal Research'),
(7, 'Talent Acquisition'),
(8, 'Mechanical Engineering'),
(9, 'Graphic Design'),
(10, 'Financial Analysis'),
(11, 'Electrical Wiring'),
(12, 'Copywriting'),
(13, 'Project Management'),
(14, 'Data Analysis'),
(15, 'Event Planning'),
(16, 'Public Speaking'),
(17, 'Customer Service'),
(18, 'Digital Marketing'),
(19, 'Environmental Science'),
(20, 'Foreign Language Translation');

-- --------------------------------------------------------

--
-- Stand-in structure for view `unemployed`
-- (See below for the actual view)
--
CREATE TABLE `unemployed` (
`id` int(11)
,`forename` varchar(255)
,`surname` varchar(255)
,`primary_skill` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `avg_manager_salary`
--
DROP TABLE IF EXISTS `avg_manager_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mherron11`@`localhost` SQL SECURITY DEFINER VIEW `avg_manager_salary`  AS SELECT `role`.`title` AS `Job Level`, count(`job`.`id`) AS `Jobs`, avg(`job`.`salary`) AS `Average Salary` FROM (`job` join `role`) WHERE `role`.`id` = 6 AND `job`.`roleid` = `role`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `born_between`
--
DROP TABLE IF EXISTS `born_between`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mherron11`@`localhost` SQL SECURITY DEFINER VIEW `born_between`  AS SELECT `employee`.`id` AS `id`, `employee`.`jobid` AS `jobid`, `employee`.`forename` AS `forename`, `employee`.`date_of_birth` AS `date_of_birth` FROM `employee` WHERE `employee`.`date_of_birth` > '1985-12-31' AND `employee`.`date_of_birth` < '2000-01-01' ;

-- --------------------------------------------------------

--
-- Structure for view `job_options`
--
DROP TABLE IF EXISTS `job_options`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mherron11`@`localhost` SQL SECURITY DEFINER VIEW `job_options`  AS SELECT `employee`.`id` AS `Employee`, `employee`.`forename` AS `Forename`, `employee`.`surname` AS `Surname`, `job`.`title` AS `Job Title`, `job`.`salary` AS `Salary`, `client`.`name` AS `Client` FROM ((`job` join `employee` on(`employee`.`primary_skill` = `job`.`primary_skill`)) join `client` on(`job`.`clientid` = `client`.`id`)) WHERE `employee`.`jobid` is null ORDER BY `employee`.`forename` ASC, `job`.`salary` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `unemployed`
--
DROP TABLE IF EXISTS `unemployed`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mherron11`@`localhost` SQL SECURITY DEFINER VIEW `unemployed`  AS SELECT `employee`.`id` AS `id`, `employee`.`forename` AS `forename`, `employee`.`surname` AS `surname`, `employee`.`primary_skill` AS `primary_skill` FROM `employee` WHERE `employee`.`jobid` is null ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `representativeid` (`representativeid`);

--
-- Indexes for table `client_location`
--
ALTER TABLE `client_location`
  ADD PRIMARY KEY (`clientid`,`locationid`),
  ADD KEY `locationid` (`locationid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jobid` (`jobid`),
  ADD UNIQUE KEY `jobid_2` (`jobid`),
  ADD KEY `recruiterid` (`recruiterid`),
  ADD KEY `primary_skill` (`primary_skill`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_ibfk_1` (`clientid`),
  ADD KEY `roleid` (`roleid`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `representative`
--
ALTER TABLE `representative`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567630;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `recruiter`
--
ALTER TABLE `recruiter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `representative`
--
ALTER TABLE `representative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`representativeid`) REFERENCES `representative` (`id`);

--
-- Constraints for table `client_location`
--
ALTER TABLE `client_location`
  ADD CONSTRAINT `client_location_ibfk_1` FOREIGN KEY (`clientid`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `client_location_ibfk_2` FOREIGN KEY (`locationid`) REFERENCES `location` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`jobid`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`recruiterid`) REFERENCES `recruiter` (`id`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`primary_skill`) REFERENCES `skills` (`id`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`clientid`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `job_ibfk_2` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
