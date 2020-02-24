-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2020 at 01:39 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swissranks`
--

-- --------------------------------------------------------

--
-- Table structure for table `intern`
--

CREATE TABLE `intern` (
  `Part_No` varchar(50) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `Mat_Category` varchar(15) NOT NULL,
  `PartName` varchar(50) NOT NULL,
  `CreatedBy` varchar(15) NOT NULL,
  `ApproveBy` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intern`
--

INSERT INTO `intern` (`Part_No`, `Status`, `Mat_Category`, `PartName`, `CreatedBy`, `ApproveBy`) VALUES
('6-604-SR004-40', 'Approved', 'Mechanical', 'OVERHANGING ACTUATOR BRACKET', 'Engineeer 1', 'Approver 1'),
('6-604-SR004-41', 'Under Query', 'Mechanical', 'OVERHANGING ACTUATOR DATUM', 'Engineeer 2', 'Approver 2'),
('6-604-SR004-42', 'Approved', 'Mechanical', 'SENSOR SLIDER BLOCK', 'Engineeer 1', 'Approver 4'),
('6-601-SR002-65', 'In Progress', 'Mechanical', 'Y IGUS BRACKET', 'Engineeer 3', 'Approver 2'),
('4-438-SR001-57', 'Approved', 'Electronics', 'Displacement measurement sensors OD Mini / OD Mini', 'Engineeer 2', 'Approver 3'),
('6-610-SR004-26', 'Approved', 'Mechanical', 'Stainless Steel Dowel Pin', 'Engineeer 5', 'Approver 1'),
('6-610-SR003-16', 'In Progress', 'Mechanical', '316 Stainless Steel Split Lock Washer', 'Engineeer 2', 'Approver 2'),
('6-610-SR002-97', 'Approved', 'Mechanical', 'M4 LOCK WASHER, SST', 'Engineeer 1', 'Approver 3'),
('6-610-SR002-12', 'Draft', 'Mechanical', '316 Split Lock Washer', 'Engineeer 4', 'Approver 4'),
('6-610-SR003-84', 'Approved', 'Mechanical', 'FLAT WASHER, METRIC, M5', 'Engineeer 5', 'Approver 5'),
('6-610-SR003-96', 'Approved', 'Mechanical', 'Stainless Steel Washerfor', 'Engineeer 3', 'Approver 1'),
('6-610-SR004-67', 'Draft', 'Mechanical', 'Stainless Steel Washer for M3', 'Engineeer 4', 'Approver 2'),
('6-610-SR004-20', 'Approved', 'Mechanical', 'Stainless Steel Socket Head Screw', 'Engineeer 2', 'Approver 1'),
('6-610-SR007-20', 'Approved', 'Mechanical', 'SOCKET HEAD SCREW, M5 X 0.8 MM THREAD, 18 MM LONG', 'Engineeer 2', 'Approver 3'),
('6-610-SR007-03', 'Under Query', 'Mechanical', 'Super-Corrosion-Resistant 316 Stainless Steel Sock', 'Engineeer 5', 'Approver 4'),
('6-610-SR007-04', 'Approved ', 'Mechanical', '316 Stainless Steel Button Head Hex Drive Screws, ', 'Engineeer 1', 'Approver 5'),
('3-306-SR001-84', 'Approved', 'Electrical', 'MANIFOLD EX600 WITH 9 STATION I/O 10 VALVE STATION', 'Engineeer 3', 'Approver 4'),
('3-306-SR001-85', 'Approved', 'Electrical', 'SI Unit', 'Engineeer 4', 'Approver 5'),
('3-303-SR001-48', 'Approved', 'Electrical', 'COMPACT ELECTRO PNEUMATIC REGULATOR 0.001 - 0.5 MP', 'Engineeer 1', 'Approver 3'),
('3-314-SR001-08', 'Approved', 'Electrical', 'VALVE 1/2\"FACE SEAL FEMALE 1/4 TURN GAS SHUT OFF L', 'Engineeer 2', 'Approver 5'),
('3-306-SR001-86', 'In Progress', 'Electrical', 'EX600, Endplate', 'Engineeer 4', 'Approver 2'),
('3-306-SR001-87', 'In Progress', 'Mechanical', 'Communication Cable for Ethernet Fieldbus 0.5M Wit', 'Engineeer 5', 'Approver 3'),
('3-306-SR001-88', 'In Progress', 'Mechanical', 'Communication Cable for Ethernet Fieldbus 1M With ', 'Engineeer 1', 'Approver 1'),
('3-306-SR001-89', 'In Progress', 'Mechanical', 'EX600, Power Supply Cable, M12 Connector (5-pin B-', 'Engineeer 4', 'Approver 5'),
('3-306-SR001-90', 'In Progress', 'Mechanical', 'EX600, Power Supply Cable, M12 Connector (5-pin B-', 'Engineeer 4', 'Approver 1'),
('3-306-SR001-91', 'Draft', 'Mechanical', 'Communication Cable for Ethernet Fieldbus 5M', 'Engineeer 1', 'Approver 3'),
('3-306-SR001-92', 'In Progress', 'Mechanical', 'Communication Cable for Ethernet Fieldbus 5M', 'Engineeer 2', 'Approver 5'),
('3-306-SR001-93', 'Draft', 'Mechanical', 'Communication Cable for Ethernet Fieldbus 5M', 'Engineeer 1', 'Approver 3'),
('3-305-SR005-09', 'Approved', 'Mechanical', 'FITTING SS316 UNION TEE 1/2\" TUBE', 'Engineeer 4', 'Approver 2'),
('3-305-SR005-10', 'In Progress', 'Mechanical', 'FITTING SS316 UNION TEE 3/8\" TUBE', 'Engineeer 1', 'Approver 3'),
('3-305-SR005-11', 'Approved', 'Mechanical', 'insert fitting; ss; union elbow; 1/2\" OD x 3/8\" ID', 'Engineeer 3', 'Approver 5'),
('3-305-SR005-12', 'Draft', 'Mechanical', 'one-touch; union tee; 5/32\" x 5/32\" x 5/32\" tubing', 'Engineeer 5', 'Approver 4'),
('6-604-SR001-02', 'Approved', 'Mechanical', 'BLADE PAD', 'Engineeer 1', 'Approver 4'),
('6-601-SR001-02', 'Approved', 'Mechanical', 'REFLECTOR PLATE', 'Engineeer 5', 'Approver 1'),
('6-604-SR001-03', 'Approved', 'Mechanical', 'BOTTOM BRACKET', 'Engineeer 2', 'Approver 5'),
('6-603-SR001-01', 'Approved', 'Mechanical', 'GAS LINE 1, VOIDS FREE CHAMBER', 'Engineeer 4', 'Approver 2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
