-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2020 at 01:17 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

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
-- Table structure for table `agentsuppliers`
--

CREATE TABLE `agentsuppliers` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Adress` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Notes` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agentsuppliers`
--

INSERT INTO `agentsuppliers` (`Id`, `Name`, `Adress`, `Phone`, `Email`, `Notes`, `createdAt`, `updatedAt`) VALUES
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
-- Table structure for table `breakdowns`
--

CREATE TABLE `breakdowns` (
  `Code` int(11) NOT NULL,
  `Reason` text COLLATE utf8mb4_general_ci NOT NULL,
  `DATE` text COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `EquipmentCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breakdowns`
--

INSERT INTO `breakdowns` (`Code`, `Reason`, `DATE`, `createdAt`, `updatedAt`, `EquipmentCode`) VALUES
(1, ' MRI helium level is low', '2020-02-15', '2020-05-21 20:08:26', '2020-05-21 20:08:26', 781396),
(2, 'cracks/cuts on the probe lens or on the TEE probe tube.', '2020-05-04', '2020-05-21 20:09:36', '2020-05-21 20:09:45', 4573397),
(3, 'cut on the probe lens or on the TEE probe tube.', '2020-04-06', '2020-05-21 20:10:45', '2020-05-21 20:10:45', 991415561),
(4, 'X-ray tube failure ', '2019-12-28', '2020-05-21 20:11:28', '2020-05-21 20:11:28', 69690),
(5, 'Tube need changes', '2020-04-12', '2020-05-21 20:12:23', '2020-05-21 20:12:23', 12220),
(6, 'Some audible and visual alarms are not working properly.', '2019-05-02', '2020-05-23 03:46:22', '2020-05-23 04:16:10', 201923),
(7, ' The cooling fan filter is not working', '2019-04-02', '2020-05-23 03:47:25', '2020-05-23 04:16:18', 405055),
(8, 'There are cracks on the probe lens (Damaged Transducer)', '2019-03-02', '2020-05-23 03:48:28', '2020-05-23 04:16:26', 582997),
(9, ' The bed wheels are corrupted', '2018-12-02', '2020-05-23 03:50:49', '2020-05-23 04:16:38', 108237),
(10, 'The sound alarm of patient critical state is not working', '2020-05-02', '2020-05-23 03:51:49', '2020-05-23 04:17:01', 109683),
(11, ' The infusion pump fails to generate an audible alarm for an occlusion in clamped tubing', '2018-01-02', '2020-05-23 03:53:00', '2020-05-23 11:27:59', 20370613),
(12, '( “key bounce”)When programs an infusion rate of 10 mL/hour, but the device registers an infusion rate of 100 mL/hour.', '2020-04-02', '2020-05-23 03:53:45', '2020-05-23 11:29:50', 958488),
(13, ' Leads wires are damaged ', '2019-05-05', '2020-05-23 03:57:30', '2020-05-23 04:17:34', 122663),
(14, 'Printing not clear or not uniform', '2019-09-05', '2020-05-23 03:58:06', '2020-05-23 04:17:43', 122663),
(15, ' Inacurrate measurement of heart rate', '2020-05-05', '2020-05-23 04:02:00', '2020-05-23 04:17:51', 414121),
(16, ' The collimator lamp timer is not working', '2019-05-15', '2020-05-23 04:19:03', '2020-05-23 04:19:03', 670523),
(17, ' Automatic clot detection failure', '2019-08-02', '2020-05-23 04:20:15', '2020-05-23 04:20:15', 140374),
(18, ' The device for engaging and disengaging the motor drive mechanism is broken down', '2019-04-06', '2020-05-23 04:20:54', '2020-05-23 04:20:54', 199215),
(19, ' There are tears in the cable (broken wires inside the transducer)', '2019-08-05', '2020-05-23 04:21:24', '2020-05-23 04:21:24', 100060),
(20, 'Unexpected readings of SpO2', '2019-01-04', '2020-05-23 04:22:07', '2020-05-23 04:22:07', 501698),
(21, 'Damaged Transducer', '2019-05-02', '2020-05-23 04:27:59', '2020-05-23 04:27:59', 444502),
(22, 'The door is not closing well (leakage happens)', '2020-05-23', '2020-05-22 23:57:11', '2020-05-22 23:57:11', 318310),
(23, 'Air filter problems', '2020-05-23', '2020-05-22 23:57:55', '2020-05-22 23:57:55', 361310),
(24, 'The HEPA filter must be replaced', '2020-05-23', '2020-05-22 23:58:24', '2020-05-22 23:58:24', 210310),
(25, 'Mineral deposits formed ', '2020-05-23', '2020-05-22 23:58:52', '2020-05-22 23:58:52', 11310),
(26, ' The device for engaging and disengaging the motor drive mechanism is broken down', '2019-11-12', '2020-05-23 01:58:51', '2020-05-23 01:58:51', 9019),
(27, 'Poor C-Arm cleaning habits', '2019-04-15', '2020-05-23 02:24:29', '2020-05-23 02:24:29', 680),
(28, 'Poor electrical connections', '2019-10-03', '2020-05-23 02:26:42', '2020-05-23 02:26:42', 201),
(29, 'Not cleaning dust of the inside of the equipment', '2020-05-23', '2020-05-23 02:29:27', '2020-05-23 02:29:27', 3223),
(30, 'Accumulate dust from the air on the surface of the microscope slide', '2019-09-09', '2020-05-23 02:35:11', '2020-05-23 02:35:11', 5005),
(31, 'Accumulate dust and debris from the air on the surface of the upper lens of the condenser', '2019-12-02', '2020-05-23 02:36:57', '2020-05-23 02:36:57', 9258),
(32, 'Poor electrical connections', '2019-08-12', '2020-05-23 02:38:17', '2020-05-23 02:38:17', 2904),
(33, 'Oxygenator breakdown  ', '2020-04-22', '2020-05-23 02:51:15', '2020-05-23 02:51:15', 2694),
(34, 'The expiration of electrode pads', '2019-06-09', '2020-05-23 02:54:54', '2020-05-23 02:54:54', 4832),
(35, 'Low Pressure', '2020-05-06', '2020-05-23 13:16:23', '2020-05-23 13:16:23', 2024),
(36, 'Misaligned tighteners', '2019-03-13', '2020-05-23 13:17:50', '2020-05-23 13:17:50', 183006),
(37, 'Not reading the operator\'s manual.', '2020-01-15', '2020-05-23 13:18:27', '2020-05-23 13:18:27', 183006),
(38, 'Not replacing worn parts', '2017-06-21', '2020-05-23 13:19:12', '2020-05-23 13:19:12', 331003),
(39, 'fluids are contained within the canister and have worked their way up into the vacuum line', '2020-03-11', '2020-05-23 13:20:27', '2020-05-23 13:20:27', 123235),
(40, 'connect the unit from any power source prior while cleaning', '2014-10-23', '2020-05-23 13:20:59', '2020-05-23 13:20:59', 123235),
(41, 'no lubrication for caster bearings', '2020-04-17', '2020-05-23 13:22:19', '2020-05-23 13:22:19', 157629),
(42, 'Clean casters with a wrong solution.', '2018-11-08', '2020-05-23 13:23:22', '2020-05-23 13:23:22', 267857),
(43, 'Clean casters with a wrong solution.', '2019-12-19', '2020-05-23 13:24:00', '2020-05-23 13:24:00', 210807);

-- --------------------------------------------------------

--
-- Table structure for table `clinicalenginners`
--

CREATE TABLE `clinicalenginners` (
  `DSSN` bigint(20) NOT NULL,
  `FName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `LName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Age` int(11) NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Adress` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `WorkHours` int(11) DEFAULT NULL,
  `Password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `DepartmentCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinicalenginners`
--

INSERT INTO `clinicalenginners` (`DSSN`, `FName`, `LName`, `Phone`, `Image`, `Age`, `Email`, `Adress`, `WorkHours`, `Password`, `createdAt`, `updatedAt`, `DepartmentCode`) VALUES
(24697, 'Omar', 'Abdelzaher', 1125414586, 'Omar.jpeg', 22, 'omarzaher787@gmail.com', '24 Soliman Badwy', 7, '$2a$10$o9/wxciC2gi1oLzTe.LCtegbaP8aRR8reY702WJrUbmc9b3dIxI66', '2020-05-23 02:59:14', '2020-05-23 13:49:14', 3456),
(31098, 'Sara', 'Adel', 1120592405, 'image_sara.jpeg', 21, 'sarahadel540@gmail.com', '15 May City', 8, '$2a$10$n9BqUSxMIs.uiQLP2Bhp3OJJ2e2JPfa0W6CIrKIF4XB2.d98igTs6', '2020-05-23 05:19:11', '2020-05-25 13:17:01', 7686),
(29151719, 'Rawan', 'Sayed', 1210004644, 'image_Rawan.jpeg', 21, 'rawansayed2021@gmail.com', '6 October Street  Zahraa Nasr City', 8, '$2a$10$SEUBJeUSrX47p0e7fUxMBek46h1YINuMPlhotVthSZO0NliFMi2wm', '2020-05-23 02:15:56', '2020-05-23 02:15:56', 9119),
(9921050746980, 'Remon', 'Albear', 1121963376, 'image_remon profile.jpg', 21, 'remonalbear522@gmail.com', '5 marzok shokry st giza', 8, '$2a$10$SqBzUGUAz1fLF.rsiU09N.b08FhgIJaLMtA78op8s/tZePEGEXUk.', '2020-05-21 18:03:56', '2020-05-25 13:17:11', 1010),
(29809090102359, 'Salma', 'Ayman', 1120448157, 'image_IMG_20190318_154724_250.JPG', 21, 'soayman9@gmail.com', '15 Azam Mosque', 9, '$2a$10$Q1iScIY0CUR2OMTV2VZFX.v37oSZ2K023v8iSKL6vgfBuxk0c2NEK', '2020-05-23 13:33:26', '2020-05-23 13:33:26', 9119);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `Code` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Location` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`Code`, `Name`, `Location`, `createdAt`, `updatedAt`) VALUES
(1010, 'CSSD', 'Ground floor', '2020-05-21 18:01:44', '2020-05-21 18:01:44'),
(3456, 'ICU', 'Second Floor', '2020-05-21 18:00:06', '2020-05-21 18:00:06'),
(7686, 'Radiology', 'First floor', '2020-05-21 18:01:04', '2020-05-21 18:01:04'),
(9119, 'OR', 'Third Floor', '2020-05-21 18:00:25', '2020-05-21 18:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `dialyinspections`
--

CREATE TABLE `dialyinspections` (
  `Code` int(11) NOT NULL,
  `DATE` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q1` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q2` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q3` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q4` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q5` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q6` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q7` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q8` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `EquipmentCode` int(11) DEFAULT NULL,
  `ClinicalEnginnerDSSN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dialyinspections`
--

INSERT INTO `dialyinspections` (`Code`, `DATE`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`, `Q6`, `Q7`, `Q8`, `createdAt`, `updatedAt`, `EquipmentCode`, `ClinicalEnginnerDSSN`) VALUES
(2, '2020-02-04', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '2020-05-23 18:52:57', '2020-05-23 18:52:57', 781396, 9921050746980);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `Code` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Cost` bigint(12) NOT NULL,
  `Model` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `SerialNumber` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `InstallationDate` text COLLATE utf8mb4_general_ci NOT NULL,
  `ArrivalDate` text COLLATE utf8mb4_general_ci NOT NULL,
  `WarrantyDate` text COLLATE utf8mb4_general_ci NOT NULL,
  `Manufacturer` text COLLATE utf8mb4_general_ci,
  `Location` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `PM` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Notes` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `AgentSupplierId` int(11) DEFAULT NULL,
  `DepartmentCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`Code`, `Name`, `Image`, `Cost`, `Model`, `SerialNumber`, `InstallationDate`, `ArrivalDate`, `WarrantyDate`, `Manufacturer`, `Location`, `PM`, `Notes`, `createdAt`, `updatedAt`, `AgentSupplierId`, `DepartmentCode`) VALUES
(201, 'C-ARM Monitor', 'image_carm monitor.jpg', 60000, 'BV-25 GOLD', '1004917.201', '2018-11-05', '2018-11-01', '2021-11-01', 'PHILIPS', 'Room 1', 'Monthly', '', '2020-05-22 21:45:32', '2020-05-22 21:45:32', 11122, 9119),
(375, 'Lithotrispy', 'image_Lithotripsy SPHINIX 30 LITHO.jpg', 236823, '30 Litho', '375', '2020-02-21', '2020-02-21', '2025-01-07', 'SPHINIX', 'Room 25', 'Annualy', '', '2020-05-21 19:42:58', '2020-05-22 09:18:13', 11118, 7686),
(680, 'C-ARM', 'image_carm1.jpg', 1000000, 'ZIEHM VISION R', '10680', '2018-03-15', '2018-03-01', '2023-03-01', 'ZIEHM IMAGUNG', 'Room 1', 'Monthly', '', '2020-05-22 21:38:06', '2020-05-22 21:38:06', 11121, 9119),
(1280, 'Diathermy', 'image_diathermy2.jpg', 130000, 'ValleyLab LS10', 'L1512807GX', '2018-11-12', '2018-11-04', '2022-11-04', 'COVIDIEN', 'Room 2', 'Monthly', '', '2020-05-22 22:02:06', '2020-05-22 22:02:06', 11123, 9119),
(2024, 'Anesthesia', 'image_aneathesia.jpg', 52000, 'AVANCE CS2', 'ANBQ02024', '2015-02-10', '2015-02-02', '2021-02-02', 'GE', 'Room 1', 'Monthly', '', '2020-05-22 14:24:30', '2020-05-22 14:24:30', 11118, 9119),
(2694, 'Heart Lung Machine', 'image_HeartLungMachine.jpg', 5000000, 'Medtronic Biomedicus 560 Centrifugal Pump', 'HL2694', '2019-10-03', '2019-09-27', '2024-09-27', 'Medatronic', 'Room 2', 'Monthly', '', '2020-05-22 22:21:49', '2020-05-22 22:21:49', 11126, 9119),
(2904, 'Drill', 'image_drill.jpg', 12500, 'D3000', 'BBB92904', '2019-04-23', '2022-04-20', '2025-04-20', 'CONMED', 'Room 1', 'Monthly', '', '2020-05-22 22:14:33', '2020-05-22 22:14:33', 11125, 9119),
(3223, 'Diathermy', 'image_diathermy1.jpg', 125000, 'Force FX-8C', 'F4F73223AX', '2018-07-26', '2018-07-20', '2021-07-20', 'COVIDIEN', 'Room 1', 'Monthly', '', '2020-05-22 21:59:01', '2020-05-22 21:59:01', 11123, 9119),
(4832, 'DC-Shock', 'image_dc shock.jpg', 40000, 'Reanibex 700', '2013/20024832', '2013-06-12', '2013-06-03', '2018-06-03', 'BEXEN', 'Room 1', 'Monthly', '', '2020-05-22 21:51:04', '2020-05-22 21:51:04', 11112, 9119),
(5005, 'ENT Microscope', 'image_ENTmicroscope.jpg', 14000, 'OPMI1-H', '205005', '2019-02-15', '2019-02-10', '2024-02-10', 'CARL ZEISS', 'Room 1', 'Monthly', '', '2020-05-22 22:06:37', '2020-05-22 22:06:37', 11124, 9119),
(9019, 'Syringe Pump', 'image_syringe.jpg', 6000, 'KH171', 'N7309019', '2019-01-12', '2019-01-09', '2023-01-09', 'K-MED', 'Room 1', 'Monthly', '', '2020-05-22 21:29:39', '2020-05-22 21:29:39', 11112, 9119),
(9258, 'Microscope (Surgical)', 'image_surgicalmicroscope.jpg', 60000, 'VM 900', '258', '2019-08-17', '2019-08-12', '2024-08-12', 'Moller-Wedel', 'Room 2', 'Monthly', '', '2020-05-22 22:11:39', '2020-05-22 22:11:39', 11124, 9119),
(11310, 'Steam Sterilizer', 'image_Steam Sterilizer AMSCO Eagle 3000 SERIES.jpg', 338600, 'Eagle 3000 SERIES', '0111690-03', '2020-04-27', '2020-05-22', '2025-04-01', 'AMSCO', 'Room1', 'Monthly', '', '2020-05-22 15:03:22', '2020-05-22 15:03:22', 11128, 1010),
(12220, 'Mammography', 'image_Mammography GE Performa.jpg', 85650, 'Performa M Gf 110', '12220', '2019-06-19', '2019-05-28', '2024-05-28', 'GE', 'Room 9', 'Annualy', '', '2020-05-21 19:40:14', '2020-05-21 19:40:14', 11118, 7686),
(69690, 'Desitometry', 'image_Densitometry GE Prodigy.jpg', 205170, 'Prodigy', '69690', '2019-11-05', '2019-10-04', '2024-11-05', 'GE', 'Room 16A', 'Annualy', '', '2020-05-21 19:32:47', '2020-05-21 19:32:47', 11127, 7686),
(69891, 'CT-Scan', 'image_CT-scan GE Lightspeed Ultra advantage.png', 1578820, 'Lightspeed Ultra advantage', '69891HMO', '2019-06-16', '2019-06-16', '2024-05-01', 'GE', 'Room 15', 'Annualy', '', '2020-05-21 19:35:32', '2020-05-22 09:18:43', 11118, 7686),
(100060, 'Ultrasound (Heart)', 'image_Ultrasound.jpg', 1300000, 'vivid55', 'FN000060', '2020-05-10', '2020-05-10', '2026-05-10', 'GE', 'Room4', 'Annualy', '', '2020-05-22 16:44:27', '2020-05-22 18:48:31', 11116, 3456),
(108237, 'Bed', 'image_Bed.jpg', 26800, 'H-rang 346760', '108', '2020-02-05', '2020-01-29', '2025-02-05', 'Malvestio', 'Room1', 'Annualy', '', '2020-05-22 18:38:27', '2020-05-22 18:38:27', 11113, 3456),
(109683, 'Monitor', 'image_Monitor.jpg', 53800, 'ULTRAVIEW SL 2700', '1387-109683', '2020-05-02', '2020-04-28', '2025-05-02', 'Space labs', 'Room1', 'Annualy', '', '2020-05-22 18:47:57', '2020-05-22 18:47:57', 11113, 3456),
(122663, 'ECG', 'image_ECG.jpg', 19950, 'Cardio Vit AT-102', '070-12266', '2020-05-05', '2020-05-05', '2023-05-05', 'Schiller', 'Room4', 'Monthly', '', '2020-05-22 18:04:56', '2020-05-22 18:48:58', 11116, 3456),
(123235, 'Suction Unit', 'image_suction.jpg', 13000, 'HOSPIVAC 350', '12323', '2017-09-15', '2017-09-09', '2023-09-09', 'CA-MI', 'Room 9B', 'Annualy', '', '2020-05-22 14:46:10', '2020-05-22 14:46:10', 11119, 9119),
(138723, 'Monitor', 'image_Monitor.jpg', 53800, 'ULTRAVIEW SL 2700', '1387-109683', '2020-02-02', '2020-01-28', '2025-02-02', 'Space labs', 'Room2', 'Annualy', '', '2020-05-22 18:57:21', '2020-05-22 18:57:21', 11113, 3456),
(140374, 'Blood Gas Analyzer', 'image_Blood Gas Analyzer.jpg', 63250, 'Premier 4000', '14037474', '2020-04-02', '2020-03-28', '2023-04-02', 'GEM', 'lab1', 'Monthly', '', '2020-05-22 17:54:19', '2020-05-22 17:54:19', 11129, 3456),
(157629, 'Table', 'image_table1.jpg', 473646, 'EASY220', '15762', '2012-12-10', '2012-12-04', '2017-12-04', 'STERIS', 'Room 4', 'Annualy', '', '2020-05-22 15:37:57', '2020-05-22 15:37:57', 11113, 9119),
(160579, 'Portable Light', 'image_light1.jpg', 21000, 'X2C', 'H.16.05.1790', '2015-09-15', '2015-09-09', '2020-09-09', 'SURGIRIS', 'Room 10A', 'Annualy', '', '2020-05-22 15:47:58', '2020-05-22 15:47:58', 11120, 9119),
(183006, 'Monitor', 'image_Monitor.jpg', 1000, 'CARESCAPE V100', 'SH61830060SA', '2016-06-09', '2016-06-05', '2021-06-05', 'GE', 'Room 9A', 'Monthly', '', '2020-05-22 14:42:00', '2020-05-22 14:42:00', 11113, 9119),
(199215, 'Syringe Pump', 'image_Syringe Pump.jpg', 6000, 'INJECTOMAT AGILIA IS', '199215a1', '2020-05-06', '2020-05-01', '2023-05-06', 'Fresenius Kabi', 'Room1', 'Monthly', '', '2020-05-22 17:50:08', '2020-05-22 17:50:08', 11112, 3456),
(201923, 'Ventilator', 'image_Ventilator.jpg', 145000, 'Extend XT', '2019', '2020-03-05', '2020-03-05', '2026-03-05', 'Airliquide', 'Room1', 'Annualy', '', '2020-05-22 18:07:37', '2020-05-22 18:30:09', 11112, 3456),
(210310, 'Sterilization with Plasma', 'image_Sterilization with Plasma.jpg', 995000, 'STERRAD 100S', '21097130188', '2020-05-01', '2020-05-22', '2025-04-29', 'Johnson & Johnson', 'Room2', 'Monthly', '', '2020-05-22 15:01:39', '2020-05-22 15:01:39', 11128, 1010),
(210807, 'Portable Light', 'image_light2.png', 21000, 'Hanaulux 2004 OP Lampe', '2108024', '2015-09-16', '2015-09-09', '2020-09-09', 'HERAEUS', 'Room 10A', 'Annualy', '', '2020-05-22 15:45:00', '2020-05-22 15:45:00', 11120, 9119),
(233300, 'Infusion Pump', 'image_Infusion Pump.jpg', 37000, '3300', 'FN60-7265', '2020-05-02', '2020-04-29', '2025-05-02', 'TOP-3300', 'Room3', 'Monthly', '', '2020-05-22 19:10:53', '2020-05-22 19:10:53', 11111, 3456),
(237346, 'Bed', 'image_Bed.jpg', 26800, 'H-rang 346760', '108', '2020-02-02', '2020-01-29', '2025-02-02', 'Malvestio', 'Room3', 'Annualy', '', '2020-05-22 18:43:14', '2020-05-22 18:43:14', 11113, 3456),
(237676, 'Bed', 'image_Bed.jpg', 26800, 'H-rang 346760', '108', '2020-02-02', '2020-02-02', '2025-02-02', 'Malvestio', 'Room4', 'Annualy', '', '2020-05-22 18:44:38', '2020-05-22 18:49:25', 11113, 3456),
(237760, 'Bed', 'image_Bed.jpg', 26800, 'H-rang 346760', '108', '2020-02-02', '2020-01-28', '2025-02-02', 'Malvestio', 'Room2', 'Annualy', '', '2020-05-22 18:41:23', '2020-05-22 18:41:23', 11113, 3456),
(267857, 'Table', 'image_table2.jpg', 473646, '1132.02A1', '267', '2014-06-17', '2014-06-15', '2021-06-15', 'MAQUET-ALPHASTAR', 'Room 5', 'Monthly', '', '2020-05-22 15:41:02', '2020-05-22 15:41:02', 11113, 9119),
(270023, 'Monitor', 'image_Monitor.jpg', 53800, 'ULTRAVIEW SL 2700', '1387-109683', '2020-02-02', '2020-01-28', '2025-02-02', 'Space labs', 'Room3', 'Annualy', '', '2020-05-22 18:59:02', '2020-05-22 18:59:02', 11113, 3456),
(318310, 'Machine Washer', 'image_Machine Washer AMSCO 570.jpg', 145125, '570', '3618890251', '2020-04-04', '2020-05-22', '2025-04-01', 'AMSCO', 'Room1', 'Monthly', '', '2020-05-22 14:59:27', '2020-05-22 14:59:27', 11128, 1010),
(331003, 'Monitor', 'image_monitor2.jpg', 9400, 'B850', 'DTL331J0031', '2020-01-03', '2020-01-01', '2025-01-01', 'GE', 'Room 3B', 'Monthly', '', '2020-05-22 14:36:53', '2020-05-22 14:36:53', 11113, 9119),
(361310, 'Dryer', 'image_Dryer AMSCO 575.png', 20000, '575', '3618890281', '2020-03-02', '2020-05-22', '2025-03-01', 'AMSCO', 'Room2', 'Monthly', '', '2020-05-22 14:27:35', '2020-05-22 14:55:56', 11128, 1010),
(405055, 'Portable Ventilator', 'image_Portable Ventilator.jpg', 85000, 'Trilogy 202', 'TV014050556', '2020-04-03', '2020-04-03', '2024-04-03', 'Philips RESPIRONICS', 'Room4', 'Annualy', '', '2020-05-22 18:14:27', '2020-05-22 18:51:49', 11115, 3456),
(414121, 'DC-Shock', 'image_DC-Shock.jpg', 44500, 'heart start XL', 'US41412123', '2020-03-02', '2020-02-27', '2025-03-02', 'Philips ', 'Room3', 'Monthly', '', '2020-05-22 18:01:12', '2020-05-22 18:01:12', 11112, 3456),
(444502, 'Echocardiogram', 'image_Echocardiogram.jpg', 982000, 'Vivid E9', '28042140400517', '2020-05-23', '2020-06-18', '2025-05-01', 'GE', 'Room1', 'Monthly', '', '2020-05-23 04:06:28', '2020-05-23 04:06:28', 11130, 3456),
(501698, 'Pulse Oximeter', 'image_Pulse Oximeter.jpg', 7000, '7500', '501698347', '2020-04-28', '2020-04-28', '2022-04-28', 'Nonim', 'Room4', 'Monthly', '', '2020-05-22 16:42:09', '2020-05-22 18:52:53', 11115, 3456),
(582997, 'Ultrasound (Abdominal & Heart)', 'image_Ultrasound.jpg', 269000, 'Aplio', 'DU582997', '2020-06-02', '2020-05-28', '2025-06-02', 'To-Shiba', 'Room1', 'Annualy', '', '2020-05-22 18:28:36', '2020-05-22 18:28:36', 11114, 3456),
(670523, 'Portable X-ray', 'image_Portable X-Ray.jpg', 1973000, 'MR300', '6705CS142', '2020-05-15', '2020-05-15', '2026-05-15', 'APIK', 'Room2', 'Annualy', '', '2020-05-22 17:57:56', '2020-05-22 18:32:36', 11117, 3456),
(712345, 'Infusion Pump', 'image_top-3300.jpg', 37000, '3300', 'FN60-7265', '2019-12-06', '2019-05-04', '2024-05-04', 'Top-3300', 'Room 12', 'Annualy', '', '2020-05-21 18:38:56', '2020-05-21 18:38:56', 11111, 3456),
(781396, 'MRI', 'image_MRI philips INGENIA.jpg', 92002000, 'IGENIA', '781396', '2019-04-26', '2019-03-05', '2025-01-01', 'Philips', 'Room 1A', 'Annualy', '', '2020-05-21 19:23:16', '2020-05-21 19:23:16', 11122, 7686),
(871023, 'Monitor', 'image_Monitor.jpg', 53800, 'ULTRAVIEW SL 2700', '1387-109683', '2020-02-02', '2020-02-27', '2025-02-02', 'Space labs', 'Room4', 'Annualy', '', '2020-05-22 19:00:00', '2020-05-22 19:00:00', 11113, 3456),
(924540, 'Operating Light', 'image_light3.jpg', 24000, 'ZW- 500E NEW', 'N/A', '2018-05-14', '2018-05-02', '2023-05-02', 'Mplent', 'Room 9A', 'Annualy', '', '2020-05-22 15:51:26', '2020-05-22 15:51:26', 11120, 9119),
(958488, 'Infusion Pump', 'image_Infusion Pump.jpg', 37000, '3300', 'FN60-7265', '2020-05-28', '2020-05-20', '2025-05-28', 'TOP-3300', 'Room4', 'Monthly', '', '2020-05-22 19:12:48', '2020-05-22 19:12:48', 11111, 3456),
(4573397, 'Ultrasound', 'image_Ultrasound Toshiba NEMIO SSA.550A.jpg', 227900, 'NEMIO_SSA.550A', 'L4573397', '2019-01-05', '2018-12-05', '2024-01-05', 'Toshiba', 'Room 22', 'Annualy', '', '2020-05-21 19:26:34', '2020-05-21 19:28:42', 11114, 7686),
(20370613, 'Infusion Pump', 'image_Infusion Pump.jpg', 37000, 'OPTIMA PT IS', '20370613', '2020-06-05', '2020-05-28', '2025-06-05', 'Fresenius Kabi', 'Room2', 'Monthly', '', '2020-05-22 19:07:04', '2020-05-22 19:07:04', 11112, 3456),
(61242056, 'CT-Scan', 'image_CT-scan Toshiba Aquilion one.jpg', 8784240, 'AquillionOne', '6AA1242056', '2019-07-01', '2019-05-29', '2024-07-01', 'Toshiba', 'Room 18', 'Annualy', '', '2020-05-21 19:38:23', '2020-05-21 19:38:23', 11114, 7686),
(991415561, 'Ultrasound', 'image_Ultrasound Toshiba Nemio MX.jpg', 227900, 'NEMIO MX', '99A1415561', '2019-05-06', '2018-11-26', '2024-05-06', 'Toshiba', 'Room 23', 'Annualy', '', '2020-05-21 19:30:33', '2020-05-21 19:30:33', 11114, 7686);

-- --------------------------------------------------------

--
-- Table structure for table `maintenances`
--

CREATE TABLE `maintenances` (
  `Id` int(11) NOT NULL,
  `StartDate` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `EndDate` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Description` text COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `BreakDownCode` int(11) DEFAULT NULL,
  `ClinicalEnginnerDSSN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenances`
--

INSERT INTO `maintenances` (`Id`, `StartDate`, `EndDate`, `Description`, `createdAt`, `updatedAt`, `BreakDownCode`, `ClinicalEnginnerDSSN`) VALUES
(4, '2019-10-25', '2019-10-28', 'The problem solved', '2020-05-23 18:40:44', '2020-05-23 18:40:44', 12, 24697),
(5, '2019-05-04', '2019-05-05', 'changing lead wires', '2020-05-23 18:41:18', '2020-05-23 18:41:18', 13, 31098),
(6, '2019-06-17', '2019-06-18', 'Helium level adjusted', '2020-05-23 18:41:58', '2020-05-23 18:41:58', 1, 24697),
(7, '2019-07-12', '2019-07-14', 'changing tube', '2020-05-23 18:42:27', '2020-05-23 18:42:27', 5, 31098),
(8, '2019-04-12', '2019-04-15', 'change tube', '2020-05-23 18:43:33', '2020-05-23 18:43:33', 4, 29151719),
(9, '2019-12-06', '2019-12-07', 'change probes', '2020-05-23 18:44:30', '2020-05-23 18:44:30', 8, 29809090102359),
(10, '2019-06-12', '2019-06-13', 'Calibrate Spo2 level', '2020-05-23 18:45:11', '2020-05-23 18:45:11', 20, 9921050746980),
(11, '2019-07-24', '2019-07-25', 'fix the fan (change capacitor)', '2020-05-23 18:46:07', '2020-05-23 18:46:07', 7, 29151719),
(12, '2019-11-01', '2019-11-02', 'Calibrate the device', '2020-05-23 18:46:55', '2020-05-23 18:46:55', 15, 29809090102359);

-- --------------------------------------------------------

--
-- Table structure for table `ppmquestions`
--

CREATE TABLE `ppmquestions` (
  `Code` int(11) NOT NULL,
  `Q1` text COLLATE utf8mb4_general_ci,
  `Q2` text COLLATE utf8mb4_general_ci,
  `Q3` text COLLATE utf8mb4_general_ci,
  `Q4` text COLLATE utf8mb4_general_ci,
  `Q5` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `EquipmentCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ppmquestions`
--

INSERT INTO `ppmquestions` (`Code`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`, `createdAt`, `updatedAt`, `EquipmentCode`) VALUES
(1, 'All connections of the components for tightness examine.\r\n\r\n\r\n', 'Surfaces of the units on damages of lacquer and scrapes examine.', 'All parts on transport damages, depressions, tears, or breaks examine.', 'All cable and connectors on outward damages examine.', 'Control whether all mechanical safety devices are in the prescribed position.\r\n', '2019-12-22 06:27:36', '2019-12-22 06:27:36', 680),
(2, 'Make sure that the connectors, patient cables, and paddles are not damaged nor\r\nexpired.\r\n\r\n', 'Make sure that the memory card is inserted into the device and that it has a sufficient\r\nmemory capacity.', 'Connect the device to an external power supply and check that the corresponding\r\nindicator on the front panel is illuminated.\r\n', 'Check that the recorder has paper and that it prints correctly.\r\n', 'Check that the battery is charged and that it does not present any signs of damage.', '2019-12-22 06:27:36', '2019-12-22 06:27:36', 4832),
(3, 'Make sure that the connectors, patient cables, and paddles are not damaged nor\r\nexpired.\r\n\r\n', 'Make sure that the memory card is inserted into the device and that it has a sufficient\r\nmemory capacity.', 'Connect the device to an external power supply and check that the corresponding\r\nindicator on the front panel is illuminated.\r\n', 'Check that the recorder has paper and that it prints correctly.\r\n', 'Check that the battery is charged and that it does not present any signs of damage.', '2019-12-22 06:27:36', '2019-12-22 06:27:36', 414121),
(4, 'Check the power cord each time the generator is used.\r\n', 'Check the monopolar and bipolar high-frequency leakage current.\r\n', 'Check the output of the cut modes.\r\n', 'Check the output of the coag modes.\r\n', 'Check the fuses to be replaced if the generator stopped functioning.', '2019-12-22 07:44:22', '2019-12-22 06:27:36', 1280),
(5, 'Check the power cord each time the generator is used.\r\n', 'Check the monopolar and bipolar high-frequency leakage current.\r\n', 'Check the output of the cut modes.\r\n', 'Check the output of the coag modes.\r\n', 'Check the fuses to be replaced if the generator stopped functioning.', '2019-12-22 07:44:22', '2019-12-22 06:27:36', 3223),
(6, 'Gantry ceiling fan operational check.\r\n', 'Checking that the rotating unit is firmly secured.\r\n', 'Console DC power-supply voltage check.\r\n', 'Checking for interference to cables inside the couch.\r\n', 'Lubrication of vertical motion gear of the couch.', '2019-12-22 06:27:36', '2019-12-22 07:44:22', 61242056),
(7, 'Gantry ceiling fan operational check.\r\n', 'Checking that the rotating unit is firmly secured.\r\n', 'Console DC power-supply voltage check.\r\n', 'Checking for interference to cables inside the couch.\r\n', 'Lubrication of vertical motion gear of the couch.', '2019-12-22 06:27:36', '2019-12-22 07:44:22', 69891),
(8, 'Check Half Value Layer (HVL) of the tube.\r\n', 'Check Breast Thickness Measurement of the gantry.\r\n', 'Check for correct collimation.\r\n', 'Check Gantry emergency stop buttons.\r\n', 'Check DICOM Printer.', '2019-12-22 06:27:36', '2019-12-22 06:27:36', 12220),
(9, 'Inspecting and adjusting the radiofrequency (RF) power output\r\n', 'Inspecting the gradient calibration\r\n', 'Performing a rotational surface coil test\r\n', 'Checking the operation of the workspace fans, intakes, and monitor\r\n', 'Performing head signal-to-noise ratio (SNR)', '2019-12-22 06:27:36', '2019-12-22 06:27:36', 781396),
(10, 'Check the oxygen mixer function.\r\n', 'Check leakage absence.\r\n', 'Check the low pressure/apnea alarm.\r\n', 'Check the gas supply alarm.\r\n', 'Check the power supply failure alarm.', '2019-12-22 06:27:36', '2019-12-22 06:27:36', 201923),
(11, 'Check the infusion rate.\r\n', 'Check the Door-Open alarm.\r\n', 'Check the occlusion alarm.\r\n', 'Check the air-in-line alarm.\r\n', 'Check the flow rate sensor.', '2019-12-22 06:27:36', '2019-12-22 06:27:36', 20370613),
(12, 'Check the infusion rate.\r\n', 'Check the Door-Open alarm.\r\n', 'Check the occlusion alarm.\r\n', 'Check the air-in-line alarm.\r\n', 'Check the flow rate sensor.', '2019-12-22 06:27:36', '2019-12-22 06:27:36', 958488),
(13, 'Check the infusion rate.\r\n', 'Check the Door-Open alarm.\r\n', 'Check the occlusion alarm.\r\n', 'Check the air-in-line alarm.\r\n', 'Check the flow rate sensor.', '2019-12-22 06:27:36', '2019-12-22 06:27:36', 712345),
(14, 'Check the infusion rate.\r\n', 'Check the Door-Open alarm.\r\n', 'Check the occlusion alarm.\r\n', 'Check the air-in-line alarm.\r\n', 'Check the flow rate sensor.', '2019-12-22 06:27:36', '2019-12-22 06:27:36', 233300),
(15, 'Check the electrodes for dirt and rust.\r\n', 'Check the power cord and lead cable for damage.\r\n', 'Check the AC operation and battery operation.\r\n', 'Check the recorder test.\r\n', 'Check the power fuses for a breakdown.', '2019-12-22 06:27:36', '2019-12-22 06:27:36', 122663);

-- --------------------------------------------------------

--
-- Table structure for table `ppms`
--

CREATE TABLE `ppms` (
  `Code` int(11) NOT NULL,
  `DATE` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q1` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q2` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q3` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q4` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Q5` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `N1` text COLLATE utf8mb4_general_ci,
  `N2` text COLLATE utf8mb4_general_ci,
  `N3` text COLLATE utf8mb4_general_ci,
  `N4` text COLLATE utf8mb4_general_ci,
  `N5` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `EquipmentCode` int(11) DEFAULT NULL,
  `ClinicalEnginnerDSSN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ppms`
--

INSERT INTO `ppms` (`Code`, `DATE`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`, `N1`, `N2`, `N3`, `N4`, `N5`, `createdAt`, `updatedAt`, `EquipmentCode`, `ClinicalEnginnerDSSN`) VALUES
(1, '2020-05-22', 'on', 'on', 'on', 'on', 'on', '', '', '', '', '', '2020-05-23 18:53:29', '2020-05-23 18:53:29', 781396, 9921050746980);

-- --------------------------------------------------------

--
-- Table structure for table `spareparts`
--

CREATE TABLE `spareparts` (
  `Code` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Amount` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `AgentSupplierId` int(11) DEFAULT NULL,
  `EquipmentCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spareparts`
--

INSERT INTO `spareparts` (`Code`, `Name`, `Image`, `Amount`, `createdAt`, `updatedAt`, `AgentSupplierId`, `EquipmentCode`) VALUES
(942, 'X-ray tubes', 'image_X-ray tubes.jpg', 1, '2020-05-21 21:25:12', '2020-05-21 21:25:12', 11114, 61242056),
(1465, 'Perfusion System Components', 'image_images_Perfusion.jpg', 2, '2020-05-23 01:30:24', '2020-05-23 01:30:24', 11126, 2694),
(1555, 'Beam Splitter dual port ', 'image_beamsplitterdual.jpg', 1, '2020-05-23 00:38:28', '2020-05-23 00:38:28', 11124, 9258),
(1599, 'Replacement Battery', 'image_Replacement Battery.jpg', 2, '2020-05-22 23:45:06', '2020-05-22 23:45:06', 11112, 9019),
(1929, 'AC Plug Holder', 'image_AC plug holder.jpg', 1, '2020-05-23 00:02:11', '2020-05-23 00:02:11', 11122, 201),
(2588, 'Carl Zeiss Light guide 1,5m', 'image_carlzeisslightguide.jpg', 1, '2020-05-23 00:39:20', '2020-05-23 00:39:20', 11124, 9258),
(2629, '5 Leads ECG Cable', 'image_5 Lead ECG Cable, IEC.jpg', 5, '2020-05-23 00:19:02', '2020-05-23 00:19:02', 11112, 4832),
(2995, 'Zeiss Fiber Optic Cable', 'image_zeiss-fiber-optic-cable.jpg', 1, '2020-05-23 00:34:48', '2020-05-23 00:34:48', 11124, 5005),
(3218, 'AC Adaptor', 'image_AC adaptor.jpg', 1, '2020-05-23 00:00:44', '2020-05-23 00:00:44', 11122, 201),
(3563, 'Canister', 'image_Canister .jpg', 2, '2020-05-22 23:48:05', '2020-05-22 23:48:05', 11119, 123235),
(3574, 'CCD Camera', 'image_CCD-camera.png', 2, '2020-05-22 23:54:11', '2020-05-22 23:54:11', 11121, 680),
(3578, 'Halogen Lamp 12V 100W', 'image_halogenlamp.jpg', 1, '2020-05-23 00:39:49', '2020-05-23 00:39:49', 11124, 9258),
(3684, 'External Paddles water resistant', 'image_External Paddles water resistant.jpg', 2, '2020-05-23 00:19:36', '2020-05-23 00:19:36', 11112, 4832),
(4198, 'Isoflurane Vaporiser', 'image_isofluranevaporiser.jpg', 5, '2020-05-22 23:30:38', '2020-05-22 23:30:38', 11118, 2024),
(4199, 'Fogger Machine', 'image_fogger-machine.jpg', 3, '2020-05-22 23:30:09', '2020-05-22 23:30:09', 11118, 2024),
(4472, 'Welch Allyn LumiView Portable Binocular', 'image_welch-allyn-lumiview-portable-binocular-microscope.jpg', 1, '2020-05-23 00:33:15', '2020-05-23 00:33:15', 11124, 5005),
(4595, 'X-Ray Tubes', 'image_X-ray tubes.png', 1, '2020-05-22 23:49:48', '2020-05-22 23:49:48', 11121, 680),
(4637, 'Bacterial Filter', 'image_Bacterial Filter, Reusable.jpg', 4, '2020-05-22 23:46:31', '2020-05-22 23:46:31', 11119, 123235),
(5312, 'Roller Pump Blood Analyzer ', 'images_Roller Pump.jpg', 3, '2020-05-23 01:06:29', '2020-05-23 01:06:29', 11126, 2694),
(5441, 'Water Hose Assembly ', 'image_Water Hose Assembly .jpg', 1, '2020-05-21 21:32:27', '2020-05-21 21:32:27', 11114, 12220),
(5511, 'POWER FACTOR 5000 P.F', 'image_POWER FACTOR 5000 P.F 5kv-DC.W..jpg', 3, '2020-05-23 00:27:25', '2020-05-23 00:27:25', 11123, 1280),
(5626, 'Pediatric Pads', 'image_Pediatric Pads HS-4000, 5 sets-case.jpg', 5, '2020-05-23 00:17:24', '2020-05-23 00:17:24', 11112, 4832),
(5655, 'Surgical Drill Stand', 'image_Surgical Drill Stand.jpg', 2, '2020-05-23 00:42:49', '2020-05-23 00:42:49', 11125, 2904),
(5725, 'Trephine Bur 3.0/2.0mm', 'image_Trephine Bur 3.0-2.0mm.jpg', 2, '2020-05-23 00:42:10', '2020-05-23 00:42:10', 11125, 2904),
(5891, 'Valve Base for 250 Watt (S.W.D)', 'image_VALVE BASE FOR 250 WATT S.W.D (shot wave diathermy unit).jpg', 1, '2020-05-23 00:25:58', '2020-05-23 00:25:58', 11123, 1280),
(5942, 'condor power supply', 'image_condor power supply .jpg', 1, '2020-05-21 21:12:07', '2020-05-21 21:12:07', 11127, 69690),
(5984, 'Capacitors 110 P.F', 'image_CAPECITORS.jpg', 2, '2020-05-23 00:08:20', '2020-05-23 00:26:48', 11123, 1280),
(6195, 'DC Cable', 'image_DC cable.jpg', 1, '2020-05-23 00:01:28', '2020-05-23 00:01:28', 11122, 201),
(6461, 'Seiler 10X Lockable Eyepiece', 'image_seiler-10x-lockable-eyepiece.jpg', 1, '2020-05-23 00:34:18', '2020-05-23 00:34:18', 11124, 5005),
(6578, 'Oxygen Flow meter', 'image_oxygenflowmeter.jpg', 3, '2020-05-22 23:29:31', '2020-05-22 23:29:31', 11118, 2024),
(6586, 'Image Intensifier', 'image_image-intensifier.png', 1, '2020-05-22 23:52:32', '2020-05-22 23:52:32', 11121, 680),
(6687, 'Electro-surgical Diathermy Pencil', 'image_electrosurgical diathermy pencil.jpg', 2, '2020-05-23 00:27:59', '2020-05-23 00:27:59', 11123, 1280),
(6698, 'Zumax 250 mm Objective Lens with Fine Focusing', 'image_zumax-250-mm-objective-lens-with-fine-focusing.jpg', 1, '2020-05-23 00:33:48', '2020-05-23 00:33:48', 11124, 5005),
(7521, 'Lindeman Drill 2.6mm - Short', 'image_Lindeman Drill 2.6mm - Short.jpg', 1, '2020-05-23 00:40:49', '2020-05-23 00:40:49', 11125, 2904),
(7758, 'Operating Theatre Table Cords', 'image_Operating Theatre Table Cords.jpg', 6, '2020-05-22 23:52:48', '2020-05-22 23:52:48', 11113, 157629),
(7842, 'Mammography Lamp Set  ', 'image_Mammography Lamp Set.jpg', 1, '2020-05-21 21:31:03', '2020-05-21 21:31:03', 11118, 12220),
(8457, 'Suction Liner', 'Suction Liner.jpg', 3, '2020-05-22 23:43:07', '2020-05-22 23:43:07', 11119, 123235),
(8486, 'Patient Adhesives', 'image_Patient Adhesives (pkg. 10 x 3).jpg', 20, '2020-05-23 00:10:16', '2020-05-23 00:10:16', 11112, 4832),
(8489, 'Adult Electrode Pads', 'image_Adult Electrode Pads 5 pairs.jpg', 5, '2020-05-23 00:16:16', '2020-05-23 00:16:16', 11112, 4832),
(9385, 'Operating Theatre Table Foot Controls', 'image_Operating Theatre Table Foot Controls.jpg', 6, '2020-05-22 23:51:55', '2020-05-22 23:51:55', 11113, 157629),
(9492, 'High Voltage Cables', 'image_high-voltages-cables.png', 2, '2020-05-22 23:57:48', '2020-05-22 23:57:48', 11121, 680),
(9998, 'Ac PlugHolder', 'AC plug holder.jpg', 5, '2020-05-22 23:35:48', '2020-05-22 23:35:48', 11113, 183006),
(15541, 'Programmed PL 103 CPU Board ', 'image_Programmed PL 103 CPU Board.jpg', 1, '2020-05-21 21:32:00', '2020-05-21 21:32:00', 11114, 12220),
(18122, 'Single Gas Spring 450mm 2550 Newtons', 'image_Single Gas Spring 450mm 2550 Newtons.jpg', 1, '2020-05-21 21:29:50', '2020-05-21 21:29:50', 11114, 12220),
(23798, 'Ac Adapter ', 'AC adaptor.jpg', 5, '2020-05-22 23:34:16', '2020-05-22 23:34:16', 11113, 183006),
(31098, 'DC Cable ', 'DC cable.jpg', 5, '2020-05-22 23:35:09', '2020-05-22 23:35:09', 11113, 183006),
(34123, 'Hand Control', 'image_handcontrol.jpg', 2, '2020-05-22 23:50:58', '2020-05-22 23:50:58', 11113, 157629),
(44547, 'Power Supply', 'image_Power supply.jpg', 3, '2020-05-21 21:08:07', '2020-05-21 21:10:45', 11114, 4573397),
(44582, 'Monitor', 'image_Monitor.jpg', 2, '2020-05-21 21:09:48', '2020-05-21 21:10:52', 11114, 4573397),
(58912, 'CCA board', 'image_CCA board .jpg', 1, '2020-05-21 21:17:53', '2020-05-21 21:17:53', 11127, 69690),
(76648, 'Suction Jar', 'image_suction jar.jpg', 1, '2020-05-22 23:48:49', '2020-05-22 23:48:49', 11119, 123235),
(78155, 'X-ray Generator', 'image_X-ray Generator.png', 1, '2020-05-21 21:22:29', '2020-05-21 21:22:29', 11118, 69891),
(78226, 'Tube head', 'image_Tube head .jpg', 1, '2020-05-21 21:18:24', '2020-05-21 21:18:24', 11127, 69690),
(79189, 'Monitor', 'image_Monitor.jpg', 1, '2020-05-21 21:21:35', '2020-05-21 21:21:35', 11118, 69891),
(87812, 'Probes', 'image_Probes.png', 2, '2020-05-21 21:38:43', '2020-05-21 21:38:43', 11114, 375),
(87942, 'Power cord', 'image_Power cord.jpg', 2, '2020-05-21 21:38:17', '2020-05-21 21:38:17', 11118, 375),
(95553, 'collimator', 'image_collimator .jpg', 1, '2020-05-21 21:17:16', '2020-05-21 21:17:16', 11127, 69690),
(98412, ' acquisition computer ', 'image_acquisition computer.jpg', 1, '2020-05-21 21:18:57', '2020-05-21 21:18:57', 11127, 69690),
(145557, 'Footswitch', 'image_Footswitch.jpg', 2, '2020-05-21 21:37:38', '2020-05-21 21:37:38', 11114, 375),
(181588, 'high voltage tank', 'image_High voltage tank.jpg', 2, '2020-05-21 21:24:12', '2020-05-21 21:24:12', 11114, 61242056),
(291501, 'Drop Sensor', 'image_Drop Sensor.jpg', 50, '2020-05-22 23:16:29', '2020-05-22 23:16:29', 11111, 233300),
(291502, 'AC power cable', 'image_AC power cable.png', 50, '2020-05-22 23:29:23', '2020-05-22 23:29:23', 11111, 233300),
(291503, 'AC adaptor ', 'image_AC adaptor.jpg', 50, '2020-05-22 23:31:40', '2020-05-22 23:31:40', 11113, 138723),
(291504, 'DC cable', 'image_DC cable.jpg', 50, '2020-05-22 23:37:51', '2020-05-22 23:37:51', 11113, 138723),
(291505, 'AC plug holder', 'image_AC plug holder.jpg', 50, '2020-05-22 23:38:26', '2020-05-22 23:38:26', 11113, 138723),
(291506, 'Traction frame support', 'image_Traction frame support.jpg', 5, '2020-05-22 23:40:00', '2020-05-22 23:40:00', 11113, 108237),
(291507, 'Patient helper support', 'image_Patient helper support.jpg', 6, '2020-05-22 23:40:55', '2020-05-22 23:40:55', 11113, 108237),
(291508, 'IV pole', 'image_IV pole.jpg', 5, '2020-05-22 23:41:57', '2020-05-22 23:41:57', 11113, 108237),
(291509, 'Rectangular Probe', 'image_Rectangular Probe.jpg', 5, '2020-05-22 23:43:56', '2020-05-22 23:43:56', 11114, 582997),
(291510, 'Curved Probe', 'image_Curved Probe.jpg', 5, '2020-05-22 23:46:00', '2020-05-22 23:46:00', 11114, 582997),
(291511, 'Scan Ultrasound Gel', 'image_Scan Ultrasound Gel.jpg', 5, '2020-05-22 23:46:30', '2020-05-22 23:46:30', 11114, 582997),
(291512, 'Exhalation flow sensor', 'image_Exhalation flow sensor.png', 6, '2020-05-22 23:48:11', '2020-05-22 23:48:11', 11115, 405055),
(291513, ' Air and Oxygen hoses ', 'image_Air and Oxygen hoses .jpg', 3, '2020-05-22 23:49:01', '2020-05-22 23:49:01', 11115, 405055),
(291514, 'Air and Oxygen inlet water traps', 'image_Air and Oxygen inlet water traps.jpg', 3, '2020-05-22 23:49:48', '2020-05-22 23:49:48', 11115, 405055),
(291515, 'Disposable bacteria filters', 'image_Disposable bacteria filters.jpg', 5, '2020-05-22 23:50:38', '2020-05-22 23:50:38', 11115, 405055),
(291516, 'Air compressor', 'image_Air compressor.jpg', 3, '2020-05-22 23:51:13', '2020-05-22 23:51:13', 11115, 405055),
(291517, 'Battery', 'image_Battery.jpg', 5, '2020-05-22 23:51:52', '2020-05-22 23:51:52', 11115, 405055),
(291518, ' Mains cable', 'image_Main cables.jpg', 10, '2020-05-22 23:58:07', '2020-05-22 23:58:07', 11116, 122663),
(291519, 'Limb electrodes', 'image_Limb electrodes.jpg', 10, '2020-05-22 23:58:59', '2020-05-22 23:58:59', 11116, 122663),
(291520, 'Chest electrodes', 'image_Chest electrodes.jpg', 6, '2020-05-23 00:00:14', '2020-05-23 00:00:14', 11116, 122663),
(291521, 'Self-Adhesive electrodes', 'image_Self-Adhesive electrodes.jpg', 10, '2020-05-23 00:00:50', '2020-05-23 00:00:50', 11116, 122663),
(291522, ' BTL patient cable', 'image_BTL patient cable.jpg', 6, '2020-05-23 00:01:23', '2020-05-23 00:01:23', 11116, 122663),
(291523, 'Adult/Pediatrics External Reusable Paddles', 'image_External Resuable Paddles.jpg', 3, '2020-05-23 00:03:08', '2020-05-23 00:03:08', 11112, 414121),
(291524, 'Internal Resuable Paddles', 'image_Internal Resuable Paddles.jpg', 3, '2020-05-23 00:04:38', '2020-05-23 00:04:38', 11112, 414121),
(291525, '4 Lead Patient Cable', 'image_4 Lead Patient Cable.jpg', 3, '2020-05-23 00:05:38', '2020-05-23 00:05:38', 11112, 414121),
(291526, 'Single-Use monitoring electrodes', 'image_Single-Use monitoring electrodes.jpg', 3, '2020-05-23 00:06:19', '2020-05-23 00:08:46', 11112, 414121),
(291527, 'collimator', 'image_Collimator.jpg', 2, '2020-05-23 00:11:30', '2020-05-23 00:11:30', 11117, 670523),
(291528, 'Power Supply', 'image_Power Supply .jpg', 3, '2020-05-23 00:12:26', '2020-05-23 00:12:58', 11117, 670523),
(291529, 'pCO2 Electrode', 'image_pCO2 Electrode.jpg', 2, '2020-05-23 02:35:59', '2020-05-23 03:27:13', 11129, 140374),
(291530, 'pO2 Electrode', 'image_pO2 Electrode.jpg', 2, '2020-05-23 03:32:07', '2020-05-23 03:32:07', 11129, 140374),
(291531, 'pH Electrode', 'image_PH Electrode.jpg', 2, '2020-05-23 03:32:37', '2020-05-23 03:32:37', 11129, 140374),
(291532, 'Replacement Battery', 'image_Replacement Battery.jpg', 1, '2020-05-23 03:41:39', '2020-05-23 03:41:39', 11112, 199215),
(291533, 'Rectangular Probe', 'image_Rectangular Probe.jpg', 1, '2020-05-23 03:46:09', '2020-05-23 03:46:09', 11116, 100060),
(291534, 'Curved Probe', 'image_Curved Probe.jpg', 1, '2020-05-23 03:47:18', '2020-05-23 03:47:18', 11116, 100060),
(291535, 'Scan Ultrasound Gel', 'image_Scan Ultrasound Gel.jpg', 2, '2020-05-23 03:48:04', '2020-05-23 03:48:04', 11116, 100060),
(291536, 'Extension Cable', 'image_Extension Cable.jpg', 2, '2020-05-23 03:52:13', '2020-05-23 03:52:13', 11115, 501698),
(291537, 'Sticky Tapes', 'image_Sticky Tapes.jpg', 2, '2020-05-23 03:53:49', '2020-05-23 03:53:49', 11115, 501698),
(291538, 'Earlobe Clip', 'image_Earlobe Clip.jpg', 3, '2020-05-23 03:54:32', '2020-05-23 03:54:32', 11115, 501698),
(291539, 'Rectangular probe', 'image_Rectangular Probe.jpg', 2, '2020-05-23 04:09:13', '2020-05-23 04:09:13', 11130, 444502),
(291540, 'Curved probe', 'image_Curved Probe.jpg', 1, '2020-05-23 04:09:57', '2020-05-23 04:09:57', 11130, 444502),
(310123, 'Relay Solid State ', 'image_Relay Solid State.jpg', 2, '2020-05-22 23:29:26', '2020-05-22 23:29:26', 11128, 318310),
(310321, 'KIT Valve Repair ', 'image_KIT VALVE REPAIR.jpg', 3, '2020-05-22 23:34:12', '2020-05-22 23:34:12', 11128, 318310),
(310456, 'Fuse 20A 250V', 'image_Fuse 20A 250V.jpg', 2, '2020-05-22 23:38:49', '2020-05-22 23:38:49', 11128, 361310),
(310546, 'Delay Timer ', 'image_Delay Timer.jpg', 1, '2020-05-22 23:40:30', '2020-05-22 23:40:30', 11128, 361310),
(310654, 'Element heater ', 'image_Element heater.jpg', 1, '2020-05-22 23:39:47', '2020-05-22 23:39:47', 11128, 361310),
(310789, 'Tray', 'image_Tray.jpg', 2, '2020-05-22 23:44:11', '2020-05-22 23:44:11', 11128, 210310),
(310879, 'Valve Check', 'image_Valve Check.jpg', 2, '2020-05-22 23:48:53', '2020-05-22 23:48:53', 11128, 11310),
(310897, 'Repair KIT', 'image_Repair KIT.jpg', 1, '2020-05-22 23:49:28', '2020-05-22 23:49:28', 11128, 11310),
(310987, 'Door Gasket', 'image_Door Gasket.jpg', 1, '2020-05-22 23:47:36', '2020-05-22 23:47:36', 11128, 11310),
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
-- Table structure for table `workorders`
--

CREATE TABLE `workorders` (
  `Code` int(11) NOT NULL,
  `StartDate` text COLLATE utf8mb4_general_ci NOT NULL,
  `EndDate` text COLLATE utf8mb4_general_ci NOT NULL,
  `Description` text COLLATE utf8mb4_general_ci NOT NULL,
  `Cost` int(11) NOT NULL,
  `Priority` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ClinicalEnginnerDSSN` bigint(20) DEFAULT NULL,
  `EquipmentCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workorders`
--

INSERT INTO `workorders` (`Code`, `StartDate`, `EndDate`, `Description`, `Cost`, `Priority`, `createdAt`, `updatedAt`, `ClinicalEnginnerDSSN`, `EquipmentCode`) VALUES
(5, '2020-05-23', '2020-05-25', 'Urgent', 1500, 'High', '2020-05-23 18:48:05', '2020-05-23 18:48:05', 24697, 2694),
(6, '2020-05-22', '2020-05-26', 'claibration', 500, 'Low', '2020-05-23 18:49:26', '2020-05-23 18:49:26', 31098, 122663),
(7, '2019-05-22', '2019-05-26', 'Calibrate the device', 500, 'Medium', '2020-05-23 18:50:05', '2020-05-23 18:52:01', 29151719, 4832),
(8, '2020-05-24', '2020-05-27', 'Urgent', 15000, 'High', '2020-05-23 18:50:36', '2020-05-23 18:50:36', 29809090102359, 1280),
(9, '2020-05-24', '2020-05-26', 'UnKnown', 15000, 'High', '2020-05-23 18:51:52', '2020-05-23 18:51:52', 9921050746980, 781396);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agentsuppliers`
--
ALTER TABLE `agentsuppliers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `breakdowns`
--
ALTER TABLE `breakdowns`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `EquipmentCode` (`EquipmentCode`);

--
-- Indexes for table `clinicalenginners`
--
ALTER TABLE `clinicalenginners`
  ADD PRIMARY KEY (`DSSN`),
  ADD KEY `DepartmentCode` (`DepartmentCode`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`Code`),
  ADD UNIQUE KEY `Code` (`Code`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `dialyinspections`
--
ALTER TABLE `dialyinspections`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `EquipmentCode` (`EquipmentCode`),
  ADD KEY `ClinicalEnginnerDSSN` (`ClinicalEnginnerDSSN`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `AgentSupplierId` (`AgentSupplierId`),
  ADD KEY `DepartmentCode` (`DepartmentCode`);

--
-- Indexes for table `maintenances`
--
ALTER TABLE `maintenances`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `BreakDownCode` (`BreakDownCode`),
  ADD KEY `ClinicalEnginnerDSSN` (`ClinicalEnginnerDSSN`);

--
-- Indexes for table `ppmquestions`
--
ALTER TABLE `ppmquestions`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `EquipmentCode` (`EquipmentCode`);

--
-- Indexes for table `ppms`
--
ALTER TABLE `ppms`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `EquipmentCode` (`EquipmentCode`),
  ADD KEY `ClinicalEnginnerDSSN` (`ClinicalEnginnerDSSN`);

--
-- Indexes for table `spareparts`
--
ALTER TABLE `spareparts`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `AgentSupplierId` (`AgentSupplierId`),
  ADD KEY `EquipmentCode` (`EquipmentCode`);

--
-- Indexes for table `workorders`
--
ALTER TABLE `workorders`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `ClinicalEnginnerDSSN` (`ClinicalEnginnerDSSN`),
  ADD KEY `EquipmentCode` (`EquipmentCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agentsuppliers`
--
ALTER TABLE `agentsuppliers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11131;

--
-- AUTO_INCREMENT for table `breakdowns`
--
ALTER TABLE `breakdowns`
  MODIFY `Code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `dialyinspections`
--
ALTER TABLE `dialyinspections`
  MODIFY `Code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `maintenances`
--
ALTER TABLE `maintenances`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ppmquestions`
--
ALTER TABLE `ppmquestions`
  MODIFY `Code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ppms`
--
ALTER TABLE `ppms`
  MODIFY `Code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workorders`
--
ALTER TABLE `workorders`
  MODIFY `Code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `breakdowns`
--
ALTER TABLE `breakdowns`
  ADD CONSTRAINT `breakdowns_ibfk_1` FOREIGN KEY (`EquipmentCode`) REFERENCES `equipment` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `clinicalenginners`
--
ALTER TABLE `clinicalenginners`
  ADD CONSTRAINT `clinicalenginners_ibfk_1` FOREIGN KEY (`DepartmentCode`) REFERENCES `departments` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `dialyinspections`
--
ALTER TABLE `dialyinspections`
  ADD CONSTRAINT `dialyinspections_ibfk_1` FOREIGN KEY (`EquipmentCode`) REFERENCES `equipment` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `dialyinspections_ibfk_2` FOREIGN KEY (`ClinicalEnginnerDSSN`) REFERENCES `clinicalenginners` (`DSSN`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `equipment`
--
ALTER TABLE `equipment`
  ADD CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`AgentSupplierId`) REFERENCES `agentsuppliers` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `equipment_ibfk_2` FOREIGN KEY (`DepartmentCode`) REFERENCES `departments` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `maintenances`
--
ALTER TABLE `maintenances`
  ADD CONSTRAINT `maintenances_ibfk_1` FOREIGN KEY (`BreakDownCode`) REFERENCES `breakdowns` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `maintenances_ibfk_2` FOREIGN KEY (`ClinicalEnginnerDSSN`) REFERENCES `clinicalenginners` (`DSSN`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ppmquestions`
--
ALTER TABLE `ppmquestions`
  ADD CONSTRAINT `ppmquestions_ibfk_1` FOREIGN KEY (`EquipmentCode`) REFERENCES `equipment` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ppms`
--
ALTER TABLE `ppms`
  ADD CONSTRAINT `ppms_ibfk_1` FOREIGN KEY (`EquipmentCode`) REFERENCES `equipment` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ppms_ibfk_2` FOREIGN KEY (`ClinicalEnginnerDSSN`) REFERENCES `clinicalenginners` (`DSSN`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `spareparts`
--
ALTER TABLE `spareparts`
  ADD CONSTRAINT `spareparts_ibfk_1` FOREIGN KEY (`AgentSupplierId`) REFERENCES `agentsuppliers` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `spareparts_ibfk_2` FOREIGN KEY (`EquipmentCode`) REFERENCES `equipment` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `workorders`
--
ALTER TABLE `workorders`
  ADD CONSTRAINT `workorders_ibfk_1` FOREIGN KEY (`ClinicalEnginnerDSSN`) REFERENCES `clinicalenginners` (`DSSN`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `workorders_ibfk_2` FOREIGN KEY (`EquipmentCode`) REFERENCES `equipment` (`Code`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
