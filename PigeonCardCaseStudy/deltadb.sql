-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2019 at 03:05 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deltadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aircrafts`
--

CREATE TABLE `aircrafts` (
  `Type` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircrafts`
--

INSERT INTO `aircrafts` (`Type`, `Quantity`) VALUES
('A220-100', 4),
('A319-100', 57),
('A320-200', 62),
('A321-200', 65),
('A330-200', 11),
('A330-300', 31),
('A350-900', 11),
('B717-200', 91),
('B737-700', 10),
('B737-800', 77),
('B737-900ER', 114),
('B757-200', 111),
('B757-300', 16),
('B767-300', 2),
('B767-300ER', 56),
('B767-400ER', 21),
('B777-200ER', 8),
('B777-200LR', 10),
('MD-88', 82),
('MD-90-30', 40);

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `Arrival` varchar(30) DEFAULT NULL,
  `Departure` varchar(30) DEFAULT NULL,
  `FlightNumber` varchar(30) DEFAULT NULL,
  `FlightsPerDay` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`Arrival`, `Departure`, `FlightNumber`, `FlightsPerDay`) VALUES
('St. John\'s', 'Dallas', 'DL8821', 13),
('Buenos Aires', 'Dallas', 'DL5335', 3),
('Oranjestad', 'Dallas', 'DL228', 3),
('Sydney', 'Dallas', 'DL7165', 7),
('Freeport', 'Dallas', 'DL3922', 2),
('Nassau', 'Dallas', 'DL1968', 18),
('Brussels', 'Dallas', 'DL2551', 3),
('Belize City', 'Dallas', 'DL9435', 11),
('Hamilton', 'Dallas', 'DL6599', 7),
('Kralendijk', 'Dallas', 'DL6788', 12),
('Rio de Janeiro', 'Dallas', 'DL9955', 15),
('São Paulo', 'Dallas', 'DL8858', 17),
('Calgary', 'Dallas', 'DL141', 17),
('Edmonton', 'Dallas', 'DL7809', 12),
('Montreal', 'Dallas', 'DL2826', 6),
('Toronto', 'Dallas', 'DL3520', 15),
('Vancouver', 'Dallas', 'DL7677', 12),
('Grand Cayman', 'Dallas', 'DL5406', 10),
('Santiago', 'Dallas', 'DL6705', 16),
('Beijing', 'Dallas', 'DL4035', 2),
('Shanghai', 'Dallas', 'DL1939', 20),
('Bogotá', 'Dallas', 'DL131', 12),
('Cartagena', 'Dallas', 'DL3244', 2),
('Liberia', 'Dallas', 'DL1297', 12),
('San José', 'Dallas', 'DL3055', 6),
('Havana', 'Dallas', 'DL8109', 1),
('Prague', 'Dallas', 'DL6699', 20),
('Copenhagen', 'Dallas', 'DL8305', 13),
('Punta Cana', 'Dallas', 'DL300', 3),
('Santiago de los Caballeros', 'Dallas', 'DL3797', 16),
('Santo Domingo', 'Dallas', 'DL4578', 7),
('Santo Domingo', 'Dallas', 'DL4094', 7),
('Quito', 'Dallas', 'DL2703', 7),
('San Salvador', 'Dallas', 'DL8415', 14),
('Nice', 'Dallas', 'DL2691', 3),
('Paris', 'Dallas', 'DL3331', 9),
('Berlin', 'Dallas', 'DL7276', 5),
('Düsseldorf', 'Dallas', 'DL8458', 6),
('Frankfurt', 'Dallas', 'DL8503', 2),
('Hamburg', 'Dallas', 'DL7827', 18),
('Munich', 'Dallas', 'DL1807', 8),
('Stuttgart', 'Dallas', 'DL5925', 9),
('Accra', 'Dallas', 'DL1613', 8),
('Athens', 'Dallas', 'DL1143', 10),
('St. George\'s', 'Dallas', 'DL2571', 1),
('Guatemala City', 'Dallas', 'DL8137', 16),
('Port-au-Prince', 'Dallas', 'DL6720', 16),
('Roatán', 'Dallas', 'DL3287', 20),
('San Pedro Sula', 'Dallas', 'DL7102', 11),
('Tegucigalpa', 'Dallas', 'DL3257', 15),
('Reykjavík', 'Dallas', 'DL2222', 19),
('Mumbai', 'Dallas', 'DL1928', 9),
('Begins 2019', 'Dallas', 'DL1157', 11),
('Dublin', 'Dallas', 'DL4694', 19),
('Shannon', 'Dallas', 'DL5796', 17),
('Tel Aviv', 'Dallas', 'DL4270', 4),
('Milan', 'Dallas', 'DL9184', 14),
('Rome', 'Dallas', 'DL8383', 15),
('Venice', 'Dallas', 'DL2768', 1),
('Kingston', 'Dallas', 'DL7226', 2),
('Montego Bay', 'Dallas', 'DL6535', 20),
('Fukuoka', 'Dallas', 'DL1879', 6),
('Ends May 8, 2019', 'Dallas', 'DL6713', 12),
('Nagoya', 'Dallas', 'DL5213', 2),
('Osaka', 'Dallas', 'DL5050', 5),
('Tokyo', 'Dallas', 'DL6091', 11),
('Tokyo', 'Dallas', 'DL1374', 18),
('Cancún', 'Dallas', 'DL1568', 14),
('Cozumel', 'Dallas', 'DL8611', 17),
('Guadalajara', 'Dallas', 'DL6565', 6),
('Ixtapa', 'Dallas', 'DL1900', 11),
('Mazatlán', 'Dallas', 'DL9047', 14),
('Mexico City', 'Dallas', 'DL6366', 6),
('Monterrey', 'Dallas', 'DL9860', 20),
('Puerto Vallarta', 'Dallas', 'DL548', 2),
('San José del Cabo', 'Dallas', 'DL7034', 5),
('Amsterdam', 'Dallas', 'DL1451', 10),
('Managua', 'Dallas', 'DL9795', 3),
('Lagos', 'Dallas', 'DL1166', 19),
('Koror', 'Dallas', 'DL7274', 4),
('Panama City', 'Dallas', 'DL9731', 19),
('Lima', 'Dallas', 'DL9169', 12),
('Manila', 'Dallas', 'DL9899', 18),
('Lisbon', 'Dallas', 'DL528', 5),
('Ponta Delgada', 'Dallas', 'DL1542', 4),
('San Juan', 'Dallas', 'DL5858', 7),
('Saint Kitts', 'Dallas', 'DL8198', 18),
('Vieux-Fort', 'Dallas', 'DL8066', 12),
('Dakar', 'Dallas', 'DL4489', 17),
('Singapore', 'Dallas', 'DL5824', 7),
('Philipsburg', 'Dallas', 'DL4645', 4),
('Johannesburg', 'Dallas', 'DL200', 14),
('Seoul', 'Dallas', 'DL4444', 12),
('Barcelona', 'Dallas', 'DL8321', 4),
('Madrid', 'Dallas', 'DL1752', 18),
('Málaga', 'Dallas', 'DL8584', 8),
('Zürich', 'Dallas', 'DL5587', 11),
('Providenciales', 'Dallas', 'DL2503', 1),
('Saint Thomas', 'Dallas', 'DL3025', 9),
('Edinburgh', 'Dallas', 'DL1849', 19),
('Glasgow', 'Dallas', 'DL1125', 2),
('London', 'Dallas', 'DL5022', 6),
('Akron', 'Dallas', 'DL4332', 7),
('Albany, NY', 'Dallas', 'DL6115', 12),
('Albuquerque', 'Dallas', 'DL3644', 9),
('Allentown', 'Dallas', 'DL2148', 20),
('Anchorage', 'Dallas', 'DL4564', 13),
('Appleton', 'Dallas', 'DL8739', 12),
('Asheville', 'Dallas', 'DL7653', 14),
('Atlanta', 'Dallas', 'DL5532', 6),
('Augusta', 'Dallas', 'DL3302', 9),
('Austin', 'Dallas', 'DL2331', 15),
('Baltimore', 'Dallas', 'DL7085', 14),
('Bangor', 'Dallas', 'DL2175', 8),
('Baton Rouge', 'Dallas', 'DL4071', 13),
('Billings', 'Dallas', 'DL3787', 17),
('Birmingham, AL', 'Dallas', 'DL9235', 1),
('Bismarck', 'Dallas', 'DL3428', 19),
('Boise', 'Dallas', 'DL5764', 2),
('Boston', 'Dallas', 'DL9476', 2),
('Bozeman', 'Dallas', 'DL9009', 17),
('Bristol, TN', 'Dallas', 'DL9754', 2),
('Brunswick', 'Dallas', 'DL91', 17),
('Buffalo', 'Dallas', 'DL3886', 15),
('Burlington', 'Dallas', 'DL5637', 5),
('Cedar Rapids', 'Dallas', 'DL6578', 16),
('Charleston', 'Dallas', 'DL5933', 18),
('Charleston, WV', 'Dallas', 'DL1522', 13),
('Charlotte', 'Dallas', 'DL7481', 3),
('Chattanooga', 'Dallas', 'DL253', 8),
('Chicago', 'Dallas', 'DL8770', 19),
('Chicago', 'Dallas', 'DL7239', 18),
('Cincinnati', 'Dallas', 'DL1500', 18),
('Cleveland', 'Dallas', 'DL8932', 14),
('Colorado Springs', 'Dallas', 'DL3967', 9),
('Columbia', 'Dallas', 'DL34', 10),
('Columbus', 'Dallas', 'DL1334', 15),
('Dayton', 'Dallas', 'DL736', 7),
('Daytona Beach', 'Dallas', 'DL1218', 15),
('Denver', 'Dallas', 'DL3585', 19),
('Des Moines', 'Dallas', 'DL3578', 15),
('Detroit', 'Dallas', 'DL6094', 2),
('El Paso', 'Dallas', 'DL5737', 16),
('Evansville', 'Dallas', 'DL365', 16),
('Fairbanks', 'Dallas', 'DL4940', 17),
('Fargo', 'Dallas', 'DL8673', 16),
('Fayetteville', 'Dallas', 'DL8593', 20),
('Flint', 'Dallas', 'DL5486', 10),
('Fort Lauderdale', 'Dallas', 'DL5042', 12),
('Fort Myers', 'Dallas', 'DL7121', 17),
('Fort Walton Beach', 'Dallas', 'DL9706', 10),
('Fort Wayne', 'Dallas', 'DL1322', 12),
('Gainesville', 'Dallas', 'DL9757', 4),
('Grand Rapids', 'Dallas', 'DL8887', 8),
('Great Falls', 'Dallas', 'DL2799', 2),
('Green Bay', 'Dallas', 'DL2226', 6),
('Greensboro', 'Dallas', 'DL528', 4),
('Greenville', 'Dallas', 'DL7011', 2),
('Gulfport', 'Dallas', 'DL4399', 14),
('Harlingen', 'Dallas', 'DL6344', 11),
('Harrisburg', 'Dallas', 'DL3312', 4),
('Hartford', 'Dallas', 'DL3090', 2),
('Hayden', 'Dallas', 'DL6909', 12),
('Honolulu', 'Dallas', 'DL5137', 2),
('Houston', 'Dallas', 'DL6306', 6),
('Houston', 'Dallas', 'DL5751', 14),
('Huntsville', 'Dallas', 'DL5838', 6),
('Idaho Falls', 'Dallas', 'DL4779', 12),
('Indianapolis', 'Dallas', 'DL6839', 5),
('Jackson', 'Dallas', 'DL5092', 9),
('Jackson Hole', 'Dallas', 'DL8633', 12),
('Jacksonville', 'Dallas', 'DL8186', 2),
('Jacksonville', 'Dallas', 'DL8608', 12),
('Juneau', 'Dallas', 'DL9484', 16),
('Kahului', 'Dallas', 'DL4419', 11),
('Kalispell', 'Dallas', 'DL7416', 19),
('Kansas City', 'Dallas', 'DL4772', 18),
('Key West', 'Dallas', 'DL2639', 15),
('Knoxville', 'Dallas', 'DL6202', 19),
('Kona', 'Dallas', 'DL9907', 19),
('Lansing', 'Dallas', 'DL3930', 1),
('Las Vegas', 'Dallas', 'DL1326', 18),
('Lexington', 'Dallas', 'DL5756', 14),
('Lihue', 'Dallas', 'DL6234', 4),
('Little Rock', 'Dallas', 'DL8491', 5),
('Long Beach', 'Dallas', 'DL8542', 18),
('Los Angeles', 'Dallas', 'DL2443', 7),
('Louisville', 'Dallas', 'DL8620', 10),
('Madison', 'Dallas', 'DL335', 2),
('Manchester, NH', 'Dallas', 'DL234', 4),
('Melbourne, FL', 'Dallas', 'DL6513', 10),
('Memphis', 'Dallas', 'DL2216', 16),
('Miami', 'Dallas', 'DL1233', 17),
('Milwaukee', 'Dallas', 'DL7106', 5),
('Minneapolis', 'Dallas', 'DL629', 2),
('Minot', 'Dallas', 'DL2964', 16),
('Missoula', 'Dallas', 'DL512', 7),
('Mobile', 'Dallas', 'DL7480', 1),
('Montrose', 'Dallas', 'DL4987', 1),
('Myrtle Beach', 'Dallas', 'DL3823', 7),
('Nashville', 'Dallas', 'DL8380', 13),
('New Orleans', 'Dallas', 'DL9122', 18),
('New York City', 'Dallas', 'DL9719', 6),
('New York City', 'Dallas', 'DL6336', 10),
('Newark', 'Dallas', 'DL9065', 12),
('Newport News', 'Dallas', 'DL9253', 11),
('Norfolk', 'Dallas', 'DL5355', 15),
('Oakland', 'Dallas', 'DL3082', 12),
('Oklahoma City', 'Dallas', 'DL3801', 3),
('Omaha', 'Dallas', 'DL5275', 18),
('Ontario', 'Dallas', 'DL6224', 11),
('Orlando', 'Dallas', 'DL229', 12),
('Palm Springs', 'Dallas', 'DL5253', 13),
('Panama City, FL', 'Dallas', 'DL7394', 8),
('Pasco', 'Dallas', 'DL1826', 5),
('Pensacola', 'Dallas', 'DL9782', 3),
('Philadelphia', 'Dallas', 'DL6336', 10),
('Phoenix', 'Dallas', 'DL1207', 18),
('Pittsburgh', 'Dallas', 'DL5136', 9),
('Portland, ME', 'Dallas', 'DL6287', 10),
('Portland, OR', 'Dallas', 'DL3963', 3),
('Providence', 'Dallas', 'DL8088', 5),
('Raleigh', 'Dallas', 'DL5418', 16),
('Rapid City', 'Dallas', 'DL8773', 17),
('Reno', 'Dallas', 'DL9076', 12),
('Richmond', 'Dallas', 'DL6498', 6),
('Roanoke', 'Dallas', 'DL5480', 1),
('Rochester', 'Dallas', 'DL2015', 18),
('Sacramento', 'Dallas', 'DL7025', 1),
('St. Louis', 'Dallas', 'DL4089', 16),
('St. Petersburg, FL', 'Dallas', 'DL8571', 13),
('Salt Lake City', 'Dallas', 'DL8743', 1),
('San Antonio', 'Dallas', 'DL6152', 1),
('San Diego', 'Dallas', 'DL9633', 25),
('San Francisco', 'Dallas', 'DL4502', 4),
('San Jose, CA', 'Dallas', 'DL1591', 15),
('Santa Ana', 'Dallas', 'DL8705', 5),
('Sarasota', 'Dallas', 'DL7898', 8),
('Savannah', 'Dallas', 'DL1421', 14),
('Seattle', 'Dallas', 'DL4055', 4),
('Sioux Falls', 'Dallas', 'DL9204', 20),
('South Bend', 'Dallas', 'DL9956', 16),
('Spokane', 'Dallas', 'DL7927', 16),
('Springfield', 'Dallas', 'DL1560', 9),
('Syracuse', 'Dallas', 'DL3779', 15),
('Tallahassee', 'Dallas', 'DL2976', 3),
('Tampa', 'Dallas', 'DL2794', 20),
('Toledo', 'Dallas', 'DL1442', 17),
('Traverse City', 'Dallas', 'DL4978', 16),
('Tucson', 'Dallas', 'DL4750', 11),
('Tulsa', 'Dallas', 'DL723', 8),
('Vail', 'Dallas', 'DL1071', 19),
('Washington, D.C.', 'Dallas', 'DL9595', 17),
('Washington, D.C.', 'Dallas', 'DL2892', 19),
('West Palm Beach', 'Dallas', 'DL8429', 16),
('White Plains', 'Dallas', 'DL2945', 2),
('Wichita', 'Dallas', 'DL6421', 16),
('Wilkes-Barre', 'Dallas', 'DL670', 11);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `Type` varchar(255) NOT NULL,
  `GroundedAircrafts` int(11) NOT NULL,
  `InServiceAircrafts` int(11) NOT NULL,
  `FleetAge` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`Type`, `GroundedAircrafts`, `InServiceAircrafts`, `FleetAge`) VALUES
('A319-100', 7, 50, '20'),
('A320-200', 12, 50, '15'),
('A321-200', 5, 60, '23'),
('A330-200', 3, 8, '10'),
('A330-300', 11, 20, '9'),
('A350-900', 1, 10, '2'),
('B717-200', 81, 10, '40'),
('B737-700', 5, 5, '20'),
('B737-800', 7, 70, '16'),
('B737-900ER', 4, 110, '5'),
('B757-200', 11, 100, '10'),
('B757-300', 6, 10, '10'),
('B767-300', 2, 0, '15'),
('B767-300ER', 16, 40, '13'),
('B767-400ER', 1, 20, '10'),
('B777-200ER', 0, 8, '20'),
('B777-200LR', 0, 10, '10'),
('MD-88', 72, 10, '45'),
('MD-90-30', 20, 20, '49'),
('A220-100', 2, 2, '3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('DeltaAdmin2019', 'deltaadmin999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aircrafts`
--
ALTER TABLE `aircrafts`
  ADD PRIMARY KEY (`Type`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD KEY `Type` (`Type`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `aircrafts` (`Type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
