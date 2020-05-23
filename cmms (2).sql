-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2020 at 12:05 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmms`
--

-- --------------------------------------------------------

--
-- Table structure for table `AgentSuppliers`
--

CREATE TABLE `AgentSuppliers` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Notes` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AgentSuppliers`
--

INSERT INTO `AgentSuppliers` (`Id`, `Name`, `Adress`, `Phone`, `Email`, `Notes`, `createdAt`, `updatedAt`) VALUES
(11111, 'El Flwa', '10 El Kasr Al Eainy ,El syda zeinab ,Cairo', 2235651272, 'Fal_med@elfalwa.com', '', '2020-05-21 18:12:28', '2020-05-21 18:12:28'),
(11112, 'The Egyption Group ', '19 Abd El Rahman st,Masr El Gdeda ,Cairo', 222687712, 'null@gmail.com', '', '2020-05-21 18:15:03', '2020-05-21 18:17:11'),
(11113, 'Gesca', '45 Abd El Kahlek tharwat st,Cairo', 223919696, 'info@gesca.com', '', '2020-05-21 18:16:55', '2020-05-21 18:16:55'),
(11114, 'Medical Techology for Trading', '16 El Khartom st,Masr El Gdeda,Cairo', 1001908922, 'null@gmail.com', '', '2020-05-21 18:20:12', '2020-05-21 18:20:12'),
(11115, 'Servomed', 'Sheraton El Matar , Cairo', 222680940, 'servomed@link.net', '', '2020-05-21 18:21:44', '2020-05-21 18:21:44'),
(11116, 'Ghalioungui', 'El Kods Mosque , El Ebagya ,Cairo', 1001703154, 'mail@ghalioungui.com', '', '2020-05-21 18:23:56', '2020-05-21 18:23:56'),
(11117, 'New Technology', '39 El Shahed Abd El Monem Hafz st, ALmaza ,Cairo', 223902736, 'New_technology45@yahoo.com', '', '2020-05-21 18:25:56', '2020-05-21 18:25:56'),
(11118, 'General Electric', ' 14 Elmaza st ,Masr El Gdeda ,Cairo', 227267511, 'null@gmail.com', '', '2020-05-21 18:53:36', '2020-05-21 18:53:36'),
(11119, 'Intermed Hospital', '15 El Sheikh Ali Mahmoud , Masr El Gdeda , Cairo', 226441554, 'null@gmail.com', '', '2020-05-21 18:54:38', '2020-05-21 18:54:38'),
(11120, 'Mindray', '11 Mohamed metwally Imam st ,El Amerya ,Cairo', 222691046, 'service@mindray.com', '', '2020-05-21 18:56:27', '2020-05-21 18:56:27'),
(11121, 'CX-Medical', '28 Mokhles El Alphy st,Nasr City ,Cairo', 224048410, 'cxmedical@gmailc.om', '', '2020-05-21 18:58:41', '2020-05-21 18:58:41'),
(11122, 'Philips', 'C13, CFC Business Park, Cairo ', 233312726, 'null@gmail.com', '', '2020-05-21 18:59:41', '2020-05-21 18:59:41'),
(11123, 'The Medical Trade', '15 Mostafa Kamel st,Cairo', 222687714, 'null@gmail.com', '', '2020-05-21 19:00:36', '2020-05-21 19:00:36'),
(11124, 'Technoscientific', '178 Ter3a El zomr , El Haram ,Giza', 235734687, 'sales@technoscientific.net', '', '2020-05-21 19:01:49', '2020-05-21 19:01:49'),
(11125, 'El Fanar Medical Center', ' 29 Italian Hospital st ,ALex', 34253062, 'null@gmail.com', '', '2020-05-21 19:02:53', '2020-05-21 19:02:53'),
(11126, 'MD Medical Suppliers', 'Nasr City ,Cairo', 222756545, 'null@gmail.com', '', '2020-05-21 19:05:13', '2020-05-21 19:05:13'),
(11127, 'Techno Ray ', '126 El Seka EL Hadid st , El Nozha , Cairo', 22468968, 'trabie@med-technology.net', '', '2020-05-21 19:07:51', '2020-05-21 19:07:51'),
(11128, 'Delta Office', '2 El Sloly st Garden City, Cairo', 227956669, 'null@gmail.com', '', '2020-05-21 19:08:54', '2020-05-21 19:08:54'),
(11129, 'International Company for Medical Equipment ', '24 Gam3a Eldol st,Giza ', 233050795, 'info@icme.com.eg', '', '2020-05-21 19:10:51', '2020-05-21 19:10:51'),
(11130, 'El Kan Medical', '1 Wady El Nile  , El Agoza ,Giza', 233043511, 'alkanmedical@alkan.com', '', '2020-05-21 19:12:11', '2020-05-21 19:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `BreakDowns`
--

CREATE TABLE `BreakDowns` (
  `Code` int(11) NOT NULL,
  `Reason` text NOT NULL,
  `DATE` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `EquipmentCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BreakDowns`
--

INSERT INTO `BreakDowns` (`Code`, `Reason`, `DATE`, `createdAt`, `updatedAt`, `EquipmentCode`) VALUES
(1, ' MRI helium level is low', '2020-02-15', '2020-05-21 20:08:26', '2020-05-21 20:08:26', 781396),
(2, 'cracks/cuts on the probe lens or on the TEE probe tube.', '2020-05-04', '2020-05-21 20:09:36', '2020-05-21 20:09:45', 4573397),
(3, 'cut on the probe lens or on the TEE probe tube.', '2020-04-06', '2020-05-21 20:10:45', '2020-05-21 20:10:45', 991415561),
(4, 'X-ray tube failure ', '2019-12-28', '2020-05-21 20:11:28', '2020-05-21 20:11:28', 69690),
(5, 'Tube need changes', '2020-04-12', '2020-05-21 20:12:23', '2020-05-21 20:12:23', 12220);

-- --------------------------------------------------------

--
-- Table structure for table `ClinicalEnginners`
--

CREATE TABLE `ClinicalEnginners` (
  `DSSN` bigint(20) NOT NULL,
  `FName` varchar(255) NOT NULL,
  `LName` varchar(255) NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `WorkHours` int(11) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `DepartmentCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ClinicalEnginners`
--

INSERT INTO `ClinicalEnginners` (`DSSN`, `FName`, `LName`, `Phone`, `Image`, `Age`, `Email`, `Adress`, `WorkHours`, `Password`, `createdAt`, `updatedAt`, `DepartmentCode`) VALUES
(9921050746980, 'Remon', 'Albear', 1121963376, 'image_remon profile.jpg', 21, 'remonalbear522@gmail.com', '5 marzok shokry st giza', 8, '$2a$10$SqBzUGUAz1fLF.rsiU09N.b08FhgIJaLMtA78op8s/tZePEGEXUk.', '2020-05-21 18:03:56', '2020-05-21 20:54:25', 7686);

-- --------------------------------------------------------

--
-- Table structure for table `Departments`
--

CREATE TABLE `Departments` (
  `Code` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Departments`
--

INSERT INTO `Departments` (`Code`, `Name`, `Location`, `createdAt`, `updatedAt`) VALUES
(1010, 'CSSD', 'First floor', '2020-05-21 18:01:44', '2020-05-21 18:01:44'),
(3456, 'ICU', 'Second Floor', '2020-05-21 18:00:06', '2020-05-21 18:00:06'),
(7686, 'Radiology', 'Ground floor', '2020-05-21 18:01:04', '2020-05-21 18:01:04'),
(9119, 'OR', 'Third Floor', '2020-05-21 18:00:25', '2020-05-21 18:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `DialyInspections`
--

CREATE TABLE `DialyInspections` (
  `Code` int(11) NOT NULL,
  `DATE` varchar(255) NOT NULL,
  `Q1` varchar(255) NOT NULL,
  `Q2` varchar(255) NOT NULL,
  `Q3` varchar(255) NOT NULL,
  `Q4` varchar(255) NOT NULL,
  `Q5` varchar(255) NOT NULL,
  `Q6` varchar(255) NOT NULL,
  `Q7` varchar(255) NOT NULL,
  `Q8` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `EquipmentCode` int(11) DEFAULT NULL,
  `ClinicalEnginnerDSSN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Equipment`
--

CREATE TABLE `Equipment` (
  `Code` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Cost` bigint(12) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `SerialNumber` varchar(255) NOT NULL,
  `InstallationDate` text NOT NULL,
  `ArrivalDate` text NOT NULL,
  `WarrantyDate` text NOT NULL,
  `Manufacturer` text DEFAULT NULL,
  `Location` varchar(255) NOT NULL,
  `PM` varchar(255) NOT NULL,
  `Notes` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `AgentSupplierId` int(11) DEFAULT NULL,
  `DepartmentCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Equipment`
--

INSERT INTO `Equipment` (`Code`, `Name`, `Image`, `Cost`, `Model`, `SerialNumber`, `InstallationDate`, `ArrivalDate`, `WarrantyDate`, `Manufacturer`, `Location`, `PM`, `Notes`, `createdAt`, `updatedAt`, `AgentSupplierId`, `DepartmentCode`) VALUES
(375, 'Lithotrispy', 'image_Lithotripsy SPHINIX 30 LITHO.jpg', 236823, '30 Litho', '375', '2020-02-21', '2020-02-20', '2025-01-07', 'SPHINIX', 'Room 25', 'Annualy', '', '2020-05-21 19:42:58', '2020-05-21 20:49:51', 11118, 9119),
(12220, 'Mammography', 'image_Mammography GE Performa.jpg', 85650, 'Performa M Gf 110', '12220', '2019-06-19', '2019-05-28', '2024-05-28', 'GE', 'Room 9', 'Annualy', '', '2020-05-21 19:40:14', '2020-05-21 19:40:14', 11118, 7686),
(69690, 'Desitometry', 'image_Densitometry GE Prodigy.jpg', 205170, 'Prodigy', '69690', '2019-11-05', '2019-10-04', '2024-11-05', 'GE', 'Room 16A', 'Annualy', '', '2020-05-21 19:32:47', '2020-05-21 19:32:47', 11127, 7686),
(69891, 'CT-Scan', 'image_CT-scan GE Lightspeed Ultra advantage.png', 1578820, 'Lightspeed Ultra advantage', '69891HMO', '2019-06-16', '2019-06-16', '2024-05-01', 'GE', 'Room 15', 'Annualy', '', '2020-05-21 19:35:32', '2020-05-21 19:35:56', 11118, 9119),
(712345, 'Infusion Pump', 'image_top-3300.jpg', 37000, '3300', 'FN60-7265', '2019-12-06', '2019-05-04', '2024-05-04', 'Top-3300', 'Room 12', 'Annualy', '', '2020-05-21 18:38:56', '2020-05-21 18:38:56', 11111, 3456),
(781396, 'MRI', 'image_MRI philips INGENIA.jpg', 92002000, 'IGENIA', '781396', '2019-04-26', '2019-03-05', '2025-01-01', 'Philips', 'Room 1A', 'Annualy', '', '2020-05-21 19:23:16', '2020-05-21 19:23:16', 11122, 7686),
(4573397, 'Ultrasound', 'image_Ultrasound Toshiba NEMIO SSA.550A.jpg', 227900, 'NEMIO_SSA.550A', 'L4573397', '2019-01-05', '2018-12-05', '2024-01-05', 'Toshiba', 'Room 22', 'Annualy', '', '2020-05-21 19:26:34', '2020-05-21 19:28:42', 11114, 7686),
(61242056, 'CT-Scan', 'image_CT-scan Toshiba Aquilion one.jpg', 8784240, 'AquillionOne', '6AA1242056', '2019-07-01', '2019-05-29', '2024-07-01', 'Toshiba', 'Room 18', 'Annualy', '', '2020-05-21 19:38:23', '2020-05-21 19:38:23', 11114, 7686),
(991415561, 'Ultrasound', 'image_Ultrasound Toshiba Nemio MX.jpg', 227900, 'NEMIO MX', '99A1415561', '2019-05-06', '2018-11-26', '2024-05-06', 'Toshiba', 'Room 23', 'Annualy', '', '2020-05-21 19:30:33', '2020-05-21 19:30:33', 11114, 7686);

-- --------------------------------------------------------

--
-- Table structure for table `Maintenances`
--

CREATE TABLE `Maintenances` (
  `Id` int(11) NOT NULL,
  `StartDate` varchar(255) NOT NULL,
  `EndDate` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `BreakDownCode` int(11) DEFAULT NULL,
  `ClinicalEnginnerDSSN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PpmQuestions`
--

CREATE TABLE `PpmQuestions` (
  `Code` int(11) NOT NULL,
  `Q1` text DEFAULT NULL,
  `Q2` text DEFAULT NULL,
  `Q3` text DEFAULT NULL,
  `Q4` text DEFAULT NULL,
  `Q5` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `EquipmentCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PPMs`
--

CREATE TABLE `PPMs` (
  `Code` int(11) NOT NULL,
  `DATE` varchar(255) NOT NULL,
  `Q1` varchar(255) NOT NULL,
  `Q2` varchar(255) NOT NULL,
  `Q3` varchar(255) NOT NULL,
  `Q4` varchar(255) NOT NULL,
  `Q5` varchar(255) NOT NULL,
  `N1` text DEFAULT NULL,
  `N2` text DEFAULT NULL,
  `N3` text DEFAULT NULL,
  `N4` text DEFAULT NULL,
  `N5` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `EquipmentCode` int(11) DEFAULT NULL,
  `ClinicalEnginnerDSSN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SpareParts`
--

CREATE TABLE `SpareParts` (
  `Code` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Amount` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `AgentSupplierId` int(11) DEFAULT NULL,
  `EquipmentCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SpareParts`
--

INSERT INTO `SpareParts` (`Code`, `Name`, `Image`, `Amount`, `createdAt`, `updatedAt`, `AgentSupplierId`, `EquipmentCode`) VALUES
(942, 'X-ray tubes', 'image_X-ray tubes.jpg', 1, '2020-05-21 21:25:12', '2020-05-21 21:25:12', 11114, 61242056),
(5441, 'Water Hose Assembly ', 'image_Water Hose Assembly .jpg', 1, '2020-05-21 21:32:27', '2020-05-21 21:32:27', 11114, 12220),
(5942, 'condor power supply', 'image_condor power supply .jpg', 1, '2020-05-21 21:12:07', '2020-05-21 21:12:07', 11127, 69690),
(7842, 'Mammography Lamp Set  ', 'image_Mammography Lamp Set.jpg', 1, '2020-05-21 21:31:03', '2020-05-21 21:31:03', 11118, 12220),
(15541, 'Programmed PL 103 CPU Board ', 'image_Programmed PL 103 CPU Board.jpg', 1, '2020-05-21 21:32:00', '2020-05-21 21:32:00', 11114, 12220),
(18122, 'Single Gas Spring 450mm 2550 Newtons', 'image_Single Gas Spring 450mm 2550 Newtons.jpg', 1, '2020-05-21 21:29:50', '2020-05-21 21:29:50', 11114, 12220),
(44547, 'Power Supply', 'image_Power supply.jpg', 3, '2020-05-21 21:08:07', '2020-05-21 21:10:45', 11114, 4573397),
(44582, 'Monitor', 'image_Monitor.jpg', 2, '2020-05-21 21:09:48', '2020-05-21 21:10:52', 11114, 4573397),
(58912, 'CCA board', 'image_CCA board .jpg', 1, '2020-05-21 21:17:53', '2020-05-21 21:17:53', 11127, 69690),
(78155, 'X-ray Generator', 'image_X-ray Generator.png', 1, '2020-05-21 21:22:29', '2020-05-21 21:22:29', 11118, 69891),
(78226, 'Tube head', 'image_Tube head .jpg', 1, '2020-05-21 21:18:24', '2020-05-21 21:18:24', 11127, 69690),
(79189, 'Monitor', 'image_Monitor.jpg', 1, '2020-05-21 21:21:35', '2020-05-21 21:21:35', 11118, 69891),
(87812, 'Probes', 'image_Probes.png', 2, '2020-05-21 21:38:43', '2020-05-21 21:38:43', 11114, 375),
(87942, 'Power cord', 'image_Power cord.jpg', 2, '2020-05-21 21:38:17', '2020-05-21 21:38:17', 11118, 375),
(95553, 'collimator', 'image_collimator .jpg', 1, '2020-05-21 21:17:16', '2020-05-21 21:17:16', 11127, 69690),
(98412, ' acquisition computer ', 'image_acquisition computer.jpg', 1, '2020-05-21 21:18:57', '2020-05-21 21:18:57', 11127, 69690),
(145557, 'Footswitch', 'image_Footswitch.jpg', 2, '2020-05-21 21:37:38', '2020-05-21 21:37:38', 11114, 375),
(181588, 'high voltage tank', 'image_High voltage tank.jpg', 2, '2020-05-21 21:24:12', '2020-05-21 21:24:12', 11114, 61242056),
(742189, 'Rotation Potentiometer ', 'image_Rotation Potentiometer .jpg', 1, '2020-05-21 21:29:04', '2020-05-21 21:29:04', 11118, 12220),
(781229, 'Transducer probe', 'image_Transducer probe.jpg', 4, '2020-05-21 21:07:26', '2020-05-21 21:10:59', 11114, 4573397),
(785632, 'Power Supply', 'image_Power Supply.jpg', 1, '2020-05-21 21:01:06', '2020-05-21 21:01:06', 11122, 781396),
(845316, ' RF Amplifier', 'image_RF Amplifier.jpg', 2, '2020-05-21 21:00:26', '2020-05-21 21:00:26', 11122, 781396),
(941389, 'UPS Battery', 'image_UPS Battery.jpg', 1, '2020-05-21 21:31:33', '2020-05-21 21:31:33', 11114, 12220),
(968946, 'Gradient Amplifier', 'image_Gradient Amplifier.jpg', 2, '2020-05-21 20:59:49', '2020-05-21 20:59:49', 11122, 781396),
(1234458, 'Keyboard', 'image_Keyboard.jpg', 1, '2020-05-21 21:10:21', '2020-05-21 21:10:21', 11114, 4573397),
(4573397, 'Breast Coil', 'image_Breast Coil.jpg', 2, '2020-05-21 20:34:38', '2020-05-21 20:49:12', 11122, 781396),
(7801255, 'Face Shield Assembly', 'image_Face Shield Assembly.jpg', 1, '2020-05-21 21:30:28', '2020-05-21 21:30:28', 11114, 12220),
(7919411, 'KA connecting cable', 'image_KA connecting cable.jpg', 1, '2020-05-21 21:37:12', '2020-05-21 21:37:12', 11118, 375),
(991415561, 'Head Coil', 'image_Head Coil.jpg', 1, '2020-05-21 20:59:11', '2020-05-21 20:59:11', 11122, 781396);

-- --------------------------------------------------------

--
-- Table structure for table `WorkOrders`
--

CREATE TABLE `WorkOrders` (
  `Code` int(11) NOT NULL,
  `StartDate` text NOT NULL,
  `EndDate` text NOT NULL,
  `Description` text NOT NULL,
  `Cost` int(11) NOT NULL,
  `Priority` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ClinicalEnginnerDSSN` bigint(20) DEFAULT NULL,
  `EquipmentCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AgentSuppliers`
--
ALTER TABLE `AgentSuppliers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `BreakDowns`
--
ALTER TABLE `BreakDowns`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `EquipmentCode` (`EquipmentCode`);

--
-- Indexes for table `ClinicalEnginners`
--
ALTER TABLE `ClinicalEnginners`
  ADD PRIMARY KEY (`DSSN`),
  ADD KEY `DepartmentCode` (`DepartmentCode`);

--
-- Indexes for table `Departments`
--
ALTER TABLE `Departments`
  ADD PRIMARY KEY (`Code`),
  ADD UNIQUE KEY `Code` (`Code`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `DialyInspections`
--
ALTER TABLE `DialyInspections`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `EquipmentCode` (`EquipmentCode`),
  ADD KEY `ClinicalEnginnerDSSN` (`ClinicalEnginnerDSSN`);

--
-- Indexes for table `Equipment`
--
ALTER TABLE `Equipment`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `AgentSupplierId` (`AgentSupplierId`),
  ADD KEY `DepartmentCode` (`DepartmentCode`);

--
-- Indexes for table `Maintenances`
--
ALTER TABLE `Maintenances`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `BreakDownCode` (`BreakDownCode`),
  ADD KEY `ClinicalEnginnerDSSN` (`ClinicalEnginnerDSSN`);

--
-- Indexes for table `PpmQuestions`
--
ALTER TABLE `PpmQuestions`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `EquipmentCode` (`EquipmentCode`);

--
-- Indexes for table `PPMs`
--
ALTER TABLE `PPMs`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `EquipmentCode` (`EquipmentCode`),
  ADD KEY `ClinicalEnginnerDSSN` (`ClinicalEnginnerDSSN`);

--
-- Indexes for table `SpareParts`
--
ALTER TABLE `SpareParts`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `AgentSupplierId` (`AgentSupplierId`),
  ADD KEY `EquipmentCode` (`EquipmentCode`);

--
-- Indexes for table `WorkOrders`
--
ALTER TABLE `WorkOrders`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `ClinicalEnginnerDSSN` (`ClinicalEnginnerDSSN`),
  ADD KEY `EquipmentCode` (`EquipmentCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AgentSuppliers`
--
ALTER TABLE `AgentSuppliers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11131;

--
-- AUTO_INCREMENT for table `BreakDowns`
--
ALTER TABLE `BreakDowns`
  MODIFY `Code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `DialyInspections`
--
ALTER TABLE `DialyInspections`
  MODIFY `Code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Maintenances`
--
ALTER TABLE `Maintenances`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PpmQuestions`
--
ALTER TABLE `PpmQuestions`
  MODIFY `Code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PPMs`
--
ALTER TABLE `PPMs`
  MODIFY `Code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `WorkOrders`
--
ALTER TABLE `WorkOrders`
  MODIFY `Code` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `BreakDowns`
--
ALTER TABLE `BreakDowns`
  ADD CONSTRAINT `BreakDowns_ibfk_1` FOREIGN KEY (`EquipmentCode`) REFERENCES `Equipment` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ClinicalEnginners`
--
ALTER TABLE `ClinicalEnginners`
  ADD CONSTRAINT `ClinicalEnginners_ibfk_1` FOREIGN KEY (`DepartmentCode`) REFERENCES `Departments` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `DialyInspections`
--
ALTER TABLE `DialyInspections`
  ADD CONSTRAINT `DialyInspections_ibfk_1` FOREIGN KEY (`EquipmentCode`) REFERENCES `Equipment` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `DialyInspections_ibfk_2` FOREIGN KEY (`ClinicalEnginnerDSSN`) REFERENCES `ClinicalEnginners` (`DSSN`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Equipment`
--
ALTER TABLE `Equipment`
  ADD CONSTRAINT `Equipment_ibfk_1` FOREIGN KEY (`AgentSupplierId`) REFERENCES `AgentSuppliers` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Equipment_ibfk_2` FOREIGN KEY (`DepartmentCode`) REFERENCES `Departments` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Maintenances`
--
ALTER TABLE `Maintenances`
  ADD CONSTRAINT `Maintenances_ibfk_1` FOREIGN KEY (`BreakDownCode`) REFERENCES `BreakDowns` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Maintenances_ibfk_2` FOREIGN KEY (`ClinicalEnginnerDSSN`) REFERENCES `ClinicalEnginners` (`DSSN`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `PpmQuestions`
--
ALTER TABLE `PpmQuestions`
  ADD CONSTRAINT `PpmQuestions_ibfk_1` FOREIGN KEY (`EquipmentCode`) REFERENCES `Equipment` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `PPMs`
--
ALTER TABLE `PPMs`
  ADD CONSTRAINT `PPMs_ibfk_1` FOREIGN KEY (`EquipmentCode`) REFERENCES `Equipment` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `PPMs_ibfk_2` FOREIGN KEY (`ClinicalEnginnerDSSN`) REFERENCES `ClinicalEnginners` (`DSSN`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `SpareParts`
--
ALTER TABLE `SpareParts`
  ADD CONSTRAINT `SpareParts_ibfk_1` FOREIGN KEY (`AgentSupplierId`) REFERENCES `AgentSuppliers` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `SpareParts_ibfk_2` FOREIGN KEY (`EquipmentCode`) REFERENCES `Equipment` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `WorkOrders`
--
ALTER TABLE `WorkOrders`
  ADD CONSTRAINT `WorkOrders_ibfk_1` FOREIGN KEY (`ClinicalEnginnerDSSN`) REFERENCES `ClinicalEnginners` (`DSSN`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `WorkOrders_ibfk_2` FOREIGN KEY (`EquipmentCode`) REFERENCES `Equipment` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
