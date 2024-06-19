-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 20, 2024 at 12:28 AM
-- Server version: 10.3.39-MariaDB-0ubuntu0.20.04.2
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s7_konoharp`
--

-- --------------------------------------------------------

--
-- Table structure for table `911calls`
--

CREATE TABLE `911calls` (
  `ID` int(11) NOT NULL,
  `IssuerName` varchar(24) NOT NULL,
  `IssuerID` int(12) NOT NULL DEFAULT 0,
  `Reason` varchar(64) NOT NULL,
  `Type` int(3) NOT NULL DEFAULT 0,
  `Sector` int(3) NOT NULL DEFAULT 0,
  `Number` int(5) NOT NULL DEFAULT 0,
  `Time` int(12) NOT NULL DEFAULT 0,
  `Location` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `ID` int(12) NOT NULL,
  `Skin` int(3) NOT NULL DEFAULT 1,
  `Anim` int(4) NOT NULL DEFAULT 0,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `PosA` float NOT NULL DEFAULT 0,
  `Name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `World` int(4) NOT NULL DEFAULT 0,
  `Interior` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `arrest`
--

CREATE TABLE `arrest` (
  `id` int(8) NOT NULL,
  `owner` int(8) NOT NULL DEFAULT 0,
  `fine` int(8) NOT NULL DEFAULT 0,
  `reason` varchar(64) NOT NULL,
  `date` varchar(40) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `atmID` int(11) NOT NULL,
  `atmX` float NOT NULL,
  `atmY` float NOT NULL,
  `atmZ` float NOT NULL,
  `atmA` float NOT NULL DEFAULT 0,
  `atmInterior` int(11) NOT NULL,
  `atmWorld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `bizID` int(12) NOT NULL,
  `bizName` varchar(32) NOT NULL DEFAULT 'None Business',
  `bizOwner` int(12) NOT NULL DEFAULT -1,
  `bizExtX` float NOT NULL DEFAULT 0,
  `bizExtY` float NOT NULL DEFAULT 0,
  `bizExtZ` float NOT NULL DEFAULT 0,
  `bizIntX` float NOT NULL DEFAULT 0,
  `bizIntY` float NOT NULL DEFAULT 0,
  `bizIntZ` float NOT NULL DEFAULT 0,
  `bizProduct1` int(5) NOT NULL DEFAULT 0,
  `bizProduct2` int(5) NOT NULL DEFAULT 0,
  `bizProduct3` int(5) NOT NULL DEFAULT 0,
  `bizProduct4` int(5) NOT NULL DEFAULT 0,
  `bizProduct5` int(5) NOT NULL DEFAULT 0,
  `bizProduct6` int(5) NOT NULL DEFAULT 0,
  `bizProduct7` int(5) NOT NULL DEFAULT 0,
  `bizWorld` int(8) NOT NULL DEFAULT 0,
  `bizInterior` int(8) NOT NULL DEFAULT 0,
  `bizPrice` int(8) NOT NULL DEFAULT 0,
  `bizVault` int(8) NOT NULL DEFAULT 0,
  `bizStock` int(8) NOT NULL DEFAULT 0,
  `bizFuel` int(8) NOT NULL DEFAULT 0,
  `bizType` int(6) NOT NULL DEFAULT 0,
  `bizOwnerName` varchar(64) NOT NULL DEFAULT 'None',
  `bizProdName1` varchar(24) NOT NULL DEFAULT 'None',
  `bizProdName2` varchar(24) NOT NULL DEFAULT 'None',
  `bizProdName3` varchar(24) NOT NULL DEFAULT 'None',
  `bizProdName4` varchar(24) NOT NULL DEFAULT 'None',
  `bizProdName5` varchar(24) NOT NULL DEFAULT 'None',
  `bizProdName6` varchar(24) NOT NULL DEFAULT 'None',
  `bizProdName7` varchar(24) NOT NULL DEFAULT 'None',
  `bizDeliverX` float NOT NULL DEFAULT 0,
  `bizDeliverY` float NOT NULL DEFAULT 0,
  `bizDeliverZ` float NOT NULL DEFAULT 0,
  `bizCargo` int(6) NOT NULL DEFAULT 1000,
  `bizFuelX` float NOT NULL DEFAULT 0,
  `bizFuelY` float NOT NULL DEFAULT 0,
  `bizFuelZ` float NOT NULL DEFAULT 0,
  `bizDiesel` int(7) NOT NULL DEFAULT 0,
  `bizLocked` int(3) NOT NULL DEFAULT 0,
  `bizDescription1` varchar(40) NOT NULL DEFAULT 'No description',
  `bizDescription2` varchar(40) NOT NULL DEFAULT 'No description',
  `bizDescription3` varchar(40) NOT NULL DEFAULT 'No description',
  `bizDescription4` varchar(40) NOT NULL DEFAULT 'No description',
  `bizDescription5` varchar(40) NOT NULL DEFAULT 'No description',
  `bizDescription6` varchar(40) NOT NULL DEFAULT 'No description',
  `bizDescription7` varchar(40) NOT NULL DEFAULT 'No description'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`bizID`, `bizName`, `bizOwner`, `bizExtX`, `bizExtY`, `bizExtZ`, `bizIntX`, `bizIntY`, `bizIntZ`, `bizProduct1`, `bizProduct2`, `bizProduct3`, `bizProduct4`, `bizProduct5`, `bizProduct6`, `bizProduct7`, `bizWorld`, `bizInterior`, `bizPrice`, `bizVault`, `bizStock`, `bizFuel`, `bizType`, `bizOwnerName`, `bizProdName1`, `bizProdName2`, `bizProdName3`, `bizProdName4`, `bizProdName5`, `bizProdName6`, `bizProdName7`, `bizDeliverX`, `bizDeliverY`, `bizDeliverZ`, `bizCargo`, `bizFuelX`, `bizFuelY`, `bizFuelZ`, `bizDiesel`, `bizLocked`, `bizDescription1`, `bizDescription2`, `bizDescription3`, `bizDescription4`, `bizDescription5`, `bizDescription6`, `bizDescription7`) VALUES
(29, 'Ratna Fast Food', 10, 2105.38, -1806.45, 13.5547, 363.22, -74.86, 1001.5, 50, 100, 75, 0, 0, 0, 0, 1029, 10, 200, 0, 100, 1000, 1, 'Boundan', 'Burger', 'Fried Chicken', 'Coca Cola', '', '', '', '', 2110.6, -1826.23, 13.5521, 10000, 0, 0, 0, 1000, 0, 'No description', 'No description', 'No description', 'No description', 'No description', 'No description', 'No description'),
(30, 'None Business', 10, 2244.35, -1665.36, 15.4766, 207.55, -110.67, 1005.13, 250, 50, 0, 0, 0, 0, 0, 1030, 15, 1, 0, 100, 1000, 3, 'Boundan', 'Clothes', 'Accessory', '', '', '', '', '', 2277.19, -1683.95, 14.0862, 10000, 0, 0, 0, 1000, 0, 'No description', 'No description', 'No description', 'No description', 'No description', 'No description', 'No description'),
(31, 'Ratna 24/7 Store', 10, 1928.86, -1776.3, 13.5469, 5.73, -31.04, 1003.54, 20, 20, 1000, 750, 500, 500, 350, 1031, 10, 1, 0, 100, 1000, 2, 'Boundan', 'Chitato', 'Danone Mineral', 'Mask', 'First Aid', 'Rolling Paper', 'Axe', 'Fish Rod', 1914.26, -1791.78, 13.3828, 10000, 0, 0, 0, 1000, 0, 'No description', 'No description', 'No description', 'No description', 'No description', 'No description', 'No description'),
(32, 'Ratna Chukin Bell Food', 10, 2419.72, -1509.03, 24, 363.22, -74.86, 1001.5, 50, 100, 50, 0, 0, 0, 0, 1032, 10, 1, 0, 100, 1000, 1, 'Boundan', 'French Fries', 'Fried Chicken', 'Coca Cola', '', '', '', '', 0, 0, 0, 10000, 0, 0, 0, 1000, 0, 'No description', 'No description', 'No description', 'No description', 'No description', 'No description', 'No description'),
(33, 'None Business', 65, 2665.45, -1095.88, 69.4394, 5.73, -31.04, 1003.54, 0, 0, 0, 0, 0, 0, 0, 1033, 10, 10, 0, 100, 1000, 2, 'Aufa', 'Chitato', 'Danone Mineral', 'Mask', 'First Aid', 'Rolling Paper', 'Axe', 'Fish Rod', 2663.84, -1094.68, 69.4681, 10000, 0, 0, 0, 1000, 1, 'No description', 'No description', 'No description', 'No description', 'No description', 'No description', 'No description'),
(34, 'None Business', 20, 1000.6, -919.977, 42.3281, 5.73, -31.04, 1003.54, 0, 0, 0, 0, 0, 0, 0, 1034, 10, 1, 0, 100, 1000, 2, 'Zain', 'Chitato', 'Danone Mineral', 'Mask', 'First Aid', 'Rolling Paper', 'Axe', 'Fish Rod', 1002.71, -906.487, 42.1867, 10000, 0, 0, 0, 1000, 1, 'No description', 'No description', 'No description', 'No description', 'No description', 'No description', 'No description'),
(35, 'None Business', 1, -2786.33, -2454.28, 3.13798, 207.55, -110.67, 1005.13, 0, 0, 0, 0, 0, 0, 0, 1035, 15, 1, 0, 100, 1000, 3, 'eggar', 'Clothes', 'Accessory', '', '', '', '', '', 0, 0, 0, 10000, 0, 0, 0, 1000, 1, 'No description', 'No description', 'No description', 'No description', 'No description', 'No description', 'No description'),
(37, 'None Business', 1, 1832.8, -1842.69, 13.5781, -2240.78, 137.186, 1035.41, 250, 20, 0, 100, 0, 0, 0, 1037, 6, 1, 0, 100, 1000, 4, 'Eggar_Austerline', 'Huawei Mate', 'GPS', 'Walkie Talkie', 'Electric Credit', '', '', '', 0, 0, 0, 10000, 0, 0, 0, 1000, 0, 'No description', 'No description', 'No description', 'No description', 'No description', 'No description', 'No description');

-- --------------------------------------------------------

--
-- Table structure for table `carstorage`
--

CREATE TABLE `carstorage` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `carstorage`
--

INSERT INTO `carstorage` (`ID`, `itemID`, `itemName`, `itemModel`, `itemQuantity`) VALUES
(1, 1, 'Sampah', 2840, 108),
(1, 2, 'Ayam Hidup', 16776, 16),
(1, 3, 'Botol Bekas', 2683, 8);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `pID` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL DEFAULT '0',
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `Health` float NOT NULL DEFAULT 100,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `World` int(11) NOT NULL DEFAULT 0,
  `UCP` varchar(22) NOT NULL DEFAULT '0',
  `Age` int(11) NOT NULL DEFAULT 0,
  `Origin` varchar(22) NOT NULL DEFAULT '0',
  `Gender` int(11) NOT NULL DEFAULT 0,
  `Skin` int(11) NOT NULL DEFAULT 0,
  `Lapar` int(11) NOT NULL DEFAULT 100,
  `Haus` int(11) NOT NULL DEFAULT 100,
  `Stress` int(11) NOT NULL DEFAULT 0,
  `AdminLevel` int(11) NOT NULL DEFAULT 0,
  `InBiz` int(11) NOT NULL DEFAULT 0,
  `Money` int(11) NOT NULL DEFAULT 0,
  `Job` int(11) NOT NULL DEFAULT 0,
  `Gun1` int(11) NOT NULL DEFAULT 0,
  `Gun2` int(11) NOT NULL DEFAULT 0,
  `Gun3` int(11) NOT NULL DEFAULT 0,
  `Gun4` int(11) NOT NULL DEFAULT 0,
  `Gun5` int(11) NOT NULL DEFAULT 0,
  `Gun6` int(11) NOT NULL DEFAULT 0,
  `Gun7` int(11) NOT NULL DEFAULT 0,
  `Gun8` int(11) NOT NULL DEFAULT 0,
  `Gun9` int(11) NOT NULL DEFAULT 0,
  `Gun10` int(11) NOT NULL DEFAULT 0,
  `Gun11` int(11) NOT NULL DEFAULT 0,
  `Gun12` int(11) NOT NULL DEFAULT 0,
  `Gun13` int(11) NOT NULL DEFAULT 0,
  `Ammo1` int(11) NOT NULL DEFAULT 0,
  `Ammo2` int(11) NOT NULL DEFAULT 0,
  `Ammo3` int(11) NOT NULL DEFAULT 0,
  `Ammo4` int(11) NOT NULL DEFAULT 0,
  `Ammo5` int(11) NOT NULL DEFAULT 0,
  `Ammo6` int(11) NOT NULL DEFAULT 0,
  `Ammo7` int(11) NOT NULL DEFAULT 0,
  `Ammo8` int(11) NOT NULL DEFAULT 0,
  `Ammo9` int(11) NOT NULL DEFAULT 0,
  `Ammo10` int(11) NOT NULL DEFAULT 0,
  `Ammo11` int(11) NOT NULL DEFAULT 0,
  `Ammo12` int(11) NOT NULL DEFAULT 0,
  `Ammo13` int(11) NOT NULL DEFAULT 0,
  `Durability1` int(11) NOT NULL DEFAULT 0,
  `Durability2` int(11) NOT NULL DEFAULT 0,
  `Durability3` int(11) NOT NULL DEFAULT 0,
  `Durability4` int(11) NOT NULL DEFAULT 0,
  `Durability5` int(11) NOT NULL DEFAULT 0,
  `Durability6` int(11) NOT NULL DEFAULT 0,
  `Durability7` int(11) NOT NULL DEFAULT 0,
  `Durability8` int(11) NOT NULL DEFAULT 0,
  `Durability9` int(11) NOT NULL DEFAULT 0,
  `Durability10` int(11) NOT NULL DEFAULT 0,
  `Durability11` int(11) NOT NULL DEFAULT 0,
  `Durability12` int(11) NOT NULL DEFAULT 0,
  `Durability13` int(11) NOT NULL DEFAULT 0,
  `Number` int(11) NOT NULL DEFAULT 0,
  `Faction` int(11) NOT NULL DEFAULT -1,
  `FactionID` int(11) NOT NULL DEFAULT -1,
  `FactionRank` int(11) NOT NULL DEFAULT -1,
  `FactionSkin` int(11) NOT NULL DEFAULT 0,
  `Onduty` int(11) NOT NULL DEFAULT 0,
  `Birthdate` varchar(32) NOT NULL DEFAULT '',
  `Height` int(11) NOT NULL DEFAULT 0,
  `Weight` int(11) NOT NULL DEFAULT 0,
  `Armor` float NOT NULL DEFAULT 0,
  `Salary` int(11) NOT NULL DEFAULT 0,
  `Bank` int(11) NOT NULL DEFAULT 0,
  `InDoor` int(11) NOT NULL DEFAULT -1,
  `Arrest` int(11) NOT NULL DEFAULT 0,
  `JailTime` int(11) NOT NULL DEFAULT 0,
  `JailReason` varchar(32) NOT NULL DEFAULT '0',
  `JailBy` varchar(24) NOT NULL DEFAULT '0',
  `Injured` int(11) NOT NULL DEFAULT 0,
  `BusDelay` int(11) NOT NULL DEFAULT 0,
  `Credit` int(11) NOT NULL DEFAULT 0,
  `Healthy` float NOT NULL DEFAULT 100,
  `Head` float NOT NULL DEFAULT 100,
  `RightArm` float NOT NULL DEFAULT 100,
  `LeftArm` float NOT NULL DEFAULT 100,
  `Torso` float NOT NULL DEFAULT 100,
  `RightLeg` float NOT NULL DEFAULT 100,
  `LeftLeg` float NOT NULL DEFAULT 100,
  `Groin` float NOT NULL DEFAULT 100,
  `MaskID` int(11) NOT NULL DEFAULT 0,
  `Exp` int(11) NOT NULL DEFAULT 0,
  `Level` int(11) NOT NULL DEFAULT 1,
  `Minute` int(11) NOT NULL DEFAULT 0,
  `Second` int(11) NOT NULL DEFAULT 0,
  `Hour` int(11) NOT NULL DEFAULT 0,
  `Paycheck` int(11) NOT NULL DEFAULT 0,
  `InHouse` int(11) NOT NULL DEFAULT -1,
  `Quitjob` int(11) NOT NULL DEFAULT 0,
  `Channel` int(11) NOT NULL DEFAULT 0,
  `Funds` int(11) NOT NULL DEFAULT 0,
  `Bullet1` int(11) NOT NULL DEFAULT 0,
  `Bullet2` int(11) NOT NULL DEFAULT 0,
  `Bullet3` int(11) NOT NULL DEFAULT 0,
  `Bullet4` int(11) NOT NULL DEFAULT 0,
  `Bullet5` int(11) NOT NULL DEFAULT 0,
  `Bullet6` int(11) NOT NULL DEFAULT 0,
  `Bullet7` int(11) NOT NULL DEFAULT 0,
  `DrivingLicense` int(11) NOT NULL DEFAULT 0,
  `FishDelay` int(11) NOT NULL DEFAULT 0,
  `Fish1` int(11) NOT NULL DEFAULT 0,
  `Fish2` int(11) NOT NULL DEFAULT 0,
  `Fish3` int(11) NOT NULL DEFAULT 0,
  `Fish4` int(11) NOT NULL DEFAULT 0,
  `Fish5` int(11) NOT NULL DEFAULT 0,
  `Fish6` int(11) NOT NULL DEFAULT 0,
  `Fish7` int(11) NOT NULL DEFAULT 0,
  `Fish8` int(11) NOT NULL DEFAULT 0,
  `Fish9` int(11) NOT NULL DEFAULT 0,
  `Fish10` int(11) NOT NULL DEFAULT 0,
  `FishName1` varchar(24) NOT NULL DEFAULT '0',
  `FishName2` varchar(24) NOT NULL DEFAULT '0',
  `FishName3` varchar(24) NOT NULL DEFAULT '0',
  `FishName4` varchar(24) NOT NULL DEFAULT '0',
  `FishName5` varchar(24) NOT NULL DEFAULT '0',
  `FishName6` varchar(24) NOT NULL DEFAULT '0',
  `FishName7` varchar(24) NOT NULL DEFAULT '0',
  `FishName8` varchar(24) NOT NULL DEFAULT '0',
  `FishName9` varchar(24) NOT NULL DEFAULT '0',
  `FishName10` varchar(24) NOT NULL DEFAULT '0',
  `Spawn` int(11) NOT NULL DEFAULT 0,
  `SpawnTimer` int(11) NOT NULL DEFAULT 0,
  `sks` int(11) NOT NULL DEFAULT 0,
  `streamer` int(11) NOT NULL DEFAULT 2,
  `last_login` varchar(64) NOT NULL DEFAULT '0',
  `claimveh` int(11) NOT NULL DEFAULT 0,
  `vip` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `vip_time` int(23) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`pID`, `Name`, `PosX`, `PosY`, `PosZ`, `Health`, `Interior`, `World`, `UCP`, `Age`, `Origin`, `Gender`, `Skin`, `Lapar`, `Haus`, `Stress`, `AdminLevel`, `InBiz`, `Money`, `Job`, `Gun1`, `Gun2`, `Gun3`, `Gun4`, `Gun5`, `Gun6`, `Gun7`, `Gun8`, `Gun9`, `Gun10`, `Gun11`, `Gun12`, `Gun13`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `Ammo12`, `Ammo13`, `Durability1`, `Durability2`, `Durability3`, `Durability4`, `Durability5`, `Durability6`, `Durability7`, `Durability8`, `Durability9`, `Durability10`, `Durability11`, `Durability12`, `Durability13`, `Number`, `Faction`, `FactionID`, `FactionRank`, `FactionSkin`, `Onduty`, `Birthdate`, `Height`, `Weight`, `Armor`, `Salary`, `Bank`, `InDoor`, `Arrest`, `JailTime`, `JailReason`, `JailBy`, `Injured`, `BusDelay`, `Credit`, `Healthy`, `Head`, `RightArm`, `LeftArm`, `Torso`, `RightLeg`, `LeftLeg`, `Groin`, `MaskID`, `Exp`, `Level`, `Minute`, `Second`, `Hour`, `Paycheck`, `InHouse`, `Quitjob`, `Channel`, `Funds`, `Bullet1`, `Bullet2`, `Bullet3`, `Bullet4`, `Bullet5`, `Bullet6`, `Bullet7`, `DrivingLicense`, `FishDelay`, `Fish1`, `Fish2`, `Fish3`, `Fish4`, `Fish5`, `Fish6`, `Fish7`, `Fish8`, `Fish9`, `Fish10`, `FishName1`, `FishName2`, `FishName3`, `FishName4`, `FishName5`, `FishName6`, `FishName7`, `FishName8`, `FishName9`, `FishName10`, `Spawn`, `SpawnTimer`, `sks`, `streamer`, `last_login`, `claimveh`, `vip`, `vip_time`) VALUES
(1, 'Eggar_Austerline', 1707.77, -1265.91, 14.0469, 100, 0, 0, 'eggar', 0, 'indonesia', 1, 288, 78, 78, 6, 999999, -1, 34189, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150289, 4, 12, 8, 171, 0, '19/05/2003', 190, 90, 0, 0, 28500, 9, 0, 0, '', '', 1, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 94870, 0, 111, 56, 57, 61, 0, -1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 0, 0, 2, '0', 0, 0, 0),
(2, 'Lival_Johnson', 1748.63, -2516.2, 14.0969, 100, 0, 0, 'Lival', 0, 'German', 1, 23, 93, 92, 0, 11, -1, 99750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130164, -1, -1, 0, 0, 0, '09/05/2000', 187, 65, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 5, 44, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717759282, 0, 0, '0', 0, 0, 0),
(3, 'Renn_Dawsoon', 2822.22, -2437.02, 12.0972, 95, 0, 0, 'Sukatani', 0, 'Indonesia', 1, 121, 97, 98, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '18/01/2008', 165, 50, 0, 0, 1000, 0, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 2, 1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716089913, 0, 0, '0', 0, 0, 0),
(4, 'Austin_Grey', 2732.46, 676.479, 10.9381, 16, 0, 0, 'Austin', 0, 'Indonesia', 1, 2, 26, 9, 100, 4, -1, 1650, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 613321, 4, 12, 8, 171, 1, '12/12/1999', 192, 73, 0, 0, 3750, -1, 0, 0, '', '', 0, 0, 0, 204, 100, 100, 100, 97.36, 100, 100, 100, 0, 0, 12, 41, 30, 8, 0, -1, 0, 99, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717682983, 0, 0, '0', 1, 0, 0),
(5, 'Doni_Benjamin', 1537.89, -2256.08, 13.5469, 100, 0, 0, 'IniLexyyy', 0, 'Indonesia ', 1, 2, 24, 18, 40, 3, -1, 45610, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 498, 499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 293967, -1, -1, 0, 0, 0, '19/9/1999', 184, 76, 0, 0, 2000, -1, 0, 0, '', '', 0, 0, 0, 243, 100, 100, 100, 54.46, 100, 100, 100, 0, 0, 5, 6, 3, 2, 0, -1, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717314340, 0, 0, '0', 1, 0, 0),
(6, 'Jiman_Fantera', 1701.72, -2312.18, 13.5469, 100, 0, 0, 'Retzka', 0, '0', 0, 0, 80, 83, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 14, 38, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 1, 1716095826, 0, 2, '0', 0, 0, 0),
(7, 'Asep_Rakabuming', 1683.26, -2260.41, 13.5205, 46, 0, 0, 'Stealer', 0, 'indonesia', 1, 121, 95, 95, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '13/12/1999', 189, 56, 46, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 2, 47, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716118499, 0, 0, '0', 0, 0, 0),
(8, 'Eggar_Tes', 1685.69, -2332.45, 13.5469, 100, 0, 0, 'eggar', 0, 'indo', 1, 121, 97, 97, 0, 11, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '19/06/2003', 190, 90, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 2, 4, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716133361, 0, 0, '0', 0, 0, 0),
(9, 'Bambang_Susanto', 1689.08, -2326.83, 13.5469, 100, 0, 0, 'Adnannnn', 0, 'Indonesia', 1, 121, 96, 96, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '04/04/2000', 170, 43, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 2, 28, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716170567, 0, 0, '0', 0, 0, 0),
(10, 'Madson_Hoover', 1575.04, -2100.25, 24.5243, 98, 0, 0, 'Cammora', 0, 'Indonesia - bandung', 1, 1, 73, 71, 4, 8, -1, 50000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '17/02/2000', 175, 75, 0, 0, 1250, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 98.68, 100, 100, 100, 0, 0, 2, 22, 33, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717074872, 0, 0, '0', 1, 0, 0),
(11, 'Zeon_Warka', 0, 0, 0, 0, 0, 0, 'ZeonWarka', 0, 'Indonesian ', 1, 22, 70, 74, 14, 0, -1, 37010, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 253734, -1, -1, 0, 0, 0, '29/05/2001', 152, 52, 0, 0, 1500, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 98.68, 100, 100, 100, 0, 0, 3, 9, 33, 1, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717125807, 0, 0, '0', 1, 0, 0),
(12, 'Adler_Kruger', 1554.37, -2255.8, 13.5421, 100, 0, 0, 'Senn', 0, 'Germany', 1, 113, 70, 67, 2, 1316134911, -1, 248, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 890, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 510216, -1, -1, 0, 0, 0, '06/11/2002', 170, 60, 100, 0, 3000, -1, 0, 0, 'PAKE PERMEN', 'eggar', 0, 0, 0, 108, 100, 100, 100, 100, 100, 100, 100, 0, 0, 9, 34, 0, 5, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716821074, 0, 0, '0', 0, 0, 0),
(13, 'Uje_Vov', 1743.35, -2506, 20.2869, 100, 0, 0, 'Glis', 0, 'Indonesia', 1, 121, 99, 99, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '19/12/1999', 110, 60, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 49, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716918165, 0, 0, '0', 0, 0, 0),
(14, 'Rama_Satria', 223.68, 143.849, 1003.02, 63, 3, 0, 'RamaSatria', 0, 'Indonesia', 1, 223, 86, 86, 18, 4, -1, 374, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 324287, 0, 2, 10, 281, 0, '06/02/1995', 170, 45, 0, 0, 3500, 14, 0, 0, '', '', 0, 0, 0, 179, 100, 100, 100, 98.68, 100, 100, 100, 0, 0, 11, 22, 26, 6, 0, -1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717599395, 0, 0, '0', 0, 0, 0),
(15, 'Luis_Salvador', 1738.77, -2534.89, 13.5978, 100, 0, 0, 'vezima', 0, 'padang', 1, 264, 93, 93, 0, 0, -1, 47677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '25/07/1997', 188, 66, 0, 0, 1250, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 59, 41, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716299149, 0, 0, '0', 0, 0, 0),
(16, 'Jacob_Daniel', 1554.52, -2304.03, 13.5414, 100, 0, 0, 'achmde', 0, 'Amerika Serikat', 1, 113, 85, 84, 4, 0, -1, 49900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '11/08/1998', 178, 58, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 10, 48, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716902781, 0, 0, '0', 1, 0, 0),
(17, 'Putri_Grey', 0, 0, 0, 100, 0, 0, 'Ziza', 0, '0', 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 2, '0', 0, 0, 0),
(18, 'Cahaya_Grey', 2731.51, 688.904, 10.9181, 94, 0, 0, 'Ziza', 0, 'Indonesia', 2, 193, 34, 30, 44, 1, -1, 22900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 5, 172, 0, '02/02/2002', 150, 42, 0, 0, 3500, 9, 0, 0, 'bug', 'Austin', 0, 0, 0, 100, 100, 100, 100, 84.16, 100, 100, 100, 0, 0, 11, 22, 25, 7, 0, -1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717682959, 0, 0, '0', 0, 0, 0),
(19, 'Nmanu_Furqon', 1685.23, -2327.75, 13.5469, 100, 0, 0, 'ZeonWarka', 0, '0', 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 14, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 1, 1716901497, 0, 2, '0', 0, 0, 0),
(20, 'Kamil_Ganteng', 1554.49, -2244.04, 13.5421, 100, 0, 0, 'KamilRorr', 0, 'Indonesia', 1, 121, 93, 93, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '24/07/2003', 174, 54, 0, 0, 1000, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 5, 27, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716230017, 0, 2, '0', 0, 0, 0),
(21, 'Souji_Hiroyuki', 1727.72, -2527.65, 13.5969, 100, 0, 0, 'Hiroyuki', 0, 'Indonesia', 1, 121, 95, 95, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '11/11/2000', 170, 60, 0, 0, 1000, 0, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 4, 5, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716230396, 0, 2, '0', 0, 0, 0),
(22, 'Dion_Mahendra', 1685.71, -2335.06, 13.5469, 100, 0, 0, 'Dazarr', 0, 'Indonesia', 1, 121, 97, 97, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '20/01/2000', 200, 120, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 2, 26, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716442781, 0, 0, '0', 1, 0, 0),
(23, 'Dika_Syahputra', 1552.45, -2205.07, 13.5469, 96, 0, 0, 'Dika', 0, 'Indonesia', 1, 115, 55, 53, 8, 0, -1, 8734, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 734505, -1, -1, 0, 0, 0, '15/09/1992', 170, 51, 0, 0, 1750, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 97.36, 100, 100, 100, 0, 0, 4, 11, 59, 2, 0, -1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717163478, 0, 0, '0', 1, 0, 0),
(24, 'Kenzo_Corleon', 1682.76, -2314.59, 13.3828, 100, 0, 0, 'KenzoCorleon', 0, 'indonesia', 1, 121, 98, 99, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '11/11/2001', 174, 56, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 3, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716477628, 0, 0, '0', 0, 0, 0),
(25, 'Mike_Walker', 1741.02, -2494.9, 13.6069, 100, 0, 0, 'MikeWalker', 0, '0', 0, 1, 93, 94, 0, 0, 0, 1900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 6, 19, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 1, 1716535498, 0, 2, '0', 0, 0, 0),
(26, 'Brian_Skinny', 0, 0, 0, 0, 0, 0, 'MikeWalker', 0, '0', 0, 294, 42, 46, 52, 0, 0, 50399, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 10, 265, 0, '', 0, 0, 0, 0, 1000, -1, 0, 0, '0', '0', 0, 0, 0, 119, 100, 100, 100, 94.72, 100, 100, 100, 0, 0, 5, 24, 27, 2, 0, -1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 1, 1716547516, 0, 2, '0', 0, 0, 0),
(27, 'Vanno_Escobar', -2304.64, 504.293, -103.911, 100, 3, 102, 'KrazyBrazy', 0, '0', 0, 108, 64, 26, 8, 9, -1, 40740, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 10, 280, 1, '', 0, 0, 0, 0, 2500, -1, 0, 5920, '.', 'KrazyBrazy', 1, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 11, 58, 59, 4, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 1, 1716982146, 0, 2, '0', 1, 0, 0),
(28, 'Calvin_Adelio', 1676.4, -2262.43, 13.5358, 100, 0, 0, 'teten', 0, 'Amerika', 1, 121, 86, 81, 2, 0, -1, 49500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '24/06/2000', 180, 80, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 12, 9, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717420538, 0, 1, '0', 0, 0, 0),
(29, 'Aryo_Junior', 1686.11, -2309.55, 13.5469, 70, 0, 0, 'AryoJunior', 0, 'indonesia', 1, 121, 96, 97, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '12/10/2002', 175, 50, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 2, 31, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716548260, 0, 0, '0', 1, 0, 0),
(30, 'Aryo_Kamek', 1749.45, -2516.51, 13.5969, 100, 0, 0, 'AryoJunior', 0, 'indonesia', 1, 2, 51, 51, 4, 0, -1, 8019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '12/10/2002', 175, 50, 0, 0, 1250, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 41, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717153949, 0, 2, '0', 1, 0, 0),
(31, 'Clayy_Edilision', 1688.82, -2317.17, 13.3828, 100, 0, 0, 'Vann', 0, 'Indonesia', 1, 121, 98, 99, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '20/11/2001', 119, 50, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 19, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716565545, 0, 0, '0', 1, 0, 0),
(32, 'Kevin_Theodore', 1659.75, -1267.52, 16.4769, 82, 0, 0, 'kevv', 0, 'Indonesia', 1, 2, 35, 37, 10, 5, -1, 25280, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 957760, 0, 2, 10, 280, 1, '18/11/1999', 170, 70, 100, 0, 6750, -1, 0, 0, 'bug', 'Austin', 0, 0, 0, 100, 100, 100, 100, 97.36, 100, 100, 100, 0, 0, 24, 31, 46, 13, 0, -1, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717681237, 0, 0, '0', 1, 0, 0),
(33, 'Jono_Darmono', 0, 0, 0, 0, 0, 0, 'Umar', 0, 'Indonesia', 1, 121, 93, 94, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '10/07/2003', 175, 130, 0, 0, 1000, 0, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 5, 22, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716651150, 0, 0, '0', 0, 0, 0),
(34, 'Bisma_Wiratama', 1748.63, -2516.2, 13.5969, 100, 1, 0, 'Lutffy', 0, 'Indonesian ', 1, 121, 96, 97, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '04/01/2004', 190, 80, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 2, 43, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717080454, 0, 0, '0', 0, 0, 0),
(35, 'Kyle_Smith', 1693.78, -2312.2, 13.5469, 100, 0, 0, 'Minguin', 0, 'inggris', 1, 121, 91, 91, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '08/11/1999', 183, 50, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 4, 50, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716698684, 0, 0, '0', 0, 0, 0),
(36, 'Johan_Larry', 1667.52, -2312.18, 13.2135, 100, 0, 0, 'Salman', 0, 'indonesia', 1, 121, 86, 86, 2, 0, -1, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '10/02/2005', 165, 55, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 13, 24, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717143682, 0, 0, '0', 1, 0, 0),
(37, 'Xary_Carian', 1815.62, -1632.38, 13.5469, 100, 0, 0, 'XaryCarian', 0, 'Japanese', 1, 121, 74, 74, 6, 0, -1, 519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '21/10/2004', 180, 80, 0, 0, 1250, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 20, 25, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717743696, 0, 0, '0', 1, 0, 0),
(38, 'Salman_Yanto', 1962.52, -2016.59, 13.1111, 100, 0, 0, 'Salman', 0, 'indonesia', 1, 174, 45, 44, 10, 0, -1, 48476, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 887710, 4, 12, 1, 171, 0, '10/02/2005', 165, 55, 0, 0, 1750, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 98.3997, 100, 100, 100, 0, 0, 4, 49, 41, 2, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717422903, 0, 0, '0', 1, 0, 0),
(39, 'Jhordan_Vamosa', 1372.37, 1576.44, 17.0003, 100, 0, 0, 'Jhordan', 0, 'Indonesia', 1, 121, 91, 90, 2, 0, -1, -924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '10/04/1999', 182, 65, 0, 0, 1250, 1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 8, 34, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 0, 0, 0, '0', 0, 0, 0),
(40, 'FARIQ_SUMBATAU', 1623, -2314.43, -3.34467, 100, 0, 0, 'ROYRJN', 0, 'INDONESIA', 1, 121, 88, 88, 4, 0, -1, -443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '20/12/2001', 190, 41, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 8, 15, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716804007, 0, 0, '0', 0, 0, 0),
(41, 'Boy_William', 1694.53, -1280.03, 14.8111, 100, 0, 0, 'ROYRJN', 0, 'Indonesia', 1, 2, 94, 93, 0, 0, -1, 35649, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 174583, -1, -1, 0, 0, 0, '20/12/2005', 199, 40, 0, 0, 4750, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, -0.98, 100, 100, 100, 0, 0, 16, 9, 26, 9, 0, -1, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717236681, 0, 0, '0', 1, 0, 0),
(42, 'Asepp_Sudiorja', 0, 0, 0, 100, 0, 0, 'XaryCarian', 0, '0', 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 2, '0', 0, 0, 0),
(43, 'Damian_Velarquez', 1028.21, -1433.04, 13.5611, 90, 0, 0, 'Damy', 0, 'Indonesia', 1, 1, 75, 77, 6, 0, -1, 38500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '01/02/1999', 110, 40, 0, 0, 1250, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 90.1, 100, 100, 100, 0, 0, 2, 20, 47, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716890393, 0, 0, '0', 1, 0, 0),
(44, 'Al_Capone', 1703.31, -1292.42, 13.5744, 85, 0, 0, 'Senn', 0, 'Espanol', 1, 121, 66, 60, 10, 99999, -1, 1000, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '06/11/2002', 170, 60, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 97.36, 100, 100, 100, 0, 0, 1, 28, 15, 0, 0, -1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716819063, 0, 0, '0', 1, 0, 0),
(45, 'Taylor_Swift', 1681.17, -2324.49, 13.5469, 100, 0, 0, 'Senn', 0, 'USA', 2, 226, 81, 77, 4, 99999, -1, 1000, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 1, '06/11/2002', 160, 50, 0, 0, 1250, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 16, 38, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716811545, 0, 0, '0', 1, 0, 0),
(46, 'Budi_Herianto', 1672.42, -2313.11, 13.549, 32, 0, 0, 'XDavid', 0, 'Indonesia', 1, 106, 45, 39, 36, 0, -1, 48150, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 872483, -1, -1, 0, 0, 0, '12/4/1999', 170, 56, 0, 0, 2000, -1, 0, 0, '.', 'KrazyBrazy', 0, 0, 0, 164, 100, 100, 100, 100, 100, 100, 100, 0, 0, 5, 14, 28, 2, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717503662, 0, 2, '0', 1, 0, 0),
(47, 'FIHMA_GGS', 0, 0, 0, 0, 0, 0, 'ROYRJN', 0, 'Indonesia', 1, 121, 99, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '20/12/2009', 180, 40, 0, 0, 1250, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 1, 33, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716813642, 0, 0, '0', 0, 0, 0),
(48, 'Carley_Kimberly', 1693.55, -2312.29, 13.5469, 100, 0, 0, 'astronot', 0, 'Mexico', 1, 121, 98, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '01/01/2000', 185, 65, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 4, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716815387, 0, 0, '0', 0, 0, 0),
(49, 'Joy_Granetcio', 1674.8, -1286.31, 14.1035, 40, 0, 0, 'Leon', 0, 'rusia', 1, 30, 31, 52, 40, 0, -1, 54829, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '11/11/2000', 180, 40, 0, 0, 2000, -1, 0, 0, '', '', 0, 0, 0, 149, 100, 100, 100, 79.54, 100, 100, 100, 0, 0, 5, 23, 24, 2, 0, -1, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717578038, 0, 0, '0', 1, 0, 0),
(50, 'Jhon_Sengkuni', 1666.7, -2310.79, 13.5516, 100, 0, 0, 'Luzivert', 0, 'Indonesia', 1, 7, 73, 80, 2, 0, -1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '08/02/2000', 200, 40, 0, 0, 1500, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 3, 22, 15, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716990425, 0, 0, '0', 1, 0, 0),
(51, 'Dungkey_Chambers', 1677.58, -2305.39, 13.5438, 90, 0, 0, 'Dudung', 0, 'Amerika', 1, 127, 77, 78, 6, 0, -1, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 1, '07/11/2000', 173, 53, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 97.36, 100, 100, 100, 0, 0, 1, 16, 44, 0, 0, -1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716830473, 0, 0, '0', 0, 0, 0),
(52, 'Rexy_Chambers', 1674.63, -2310.87, 13.548, 96, 0, 0, 'Rexsta', 0, 'indonesia', 1, 250, 83, 84, 4, 0, -1, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128836, -1, -1, 0, 0, 1, '28/12/2001', 175, 65, 0, 0, 1000, -1, 0, 0, '.', 'KrazyBrazy', 0, 0, 0, 100, 100, 100, 100, 98.68, 100, 100, 100, 0, 0, 1, 12, 35, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716830347, 0, 2, '0', 1, 0, 0),
(53, 'Floyd_Vaughn', 1681.81, -2310.96, 13.5469, 100, 0, 0, 'Reinn', 0, 'USA', 1, 121, 97, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '10/10/2004', 199, 69, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 2, 54, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716867593, 0, 2, '0', 0, 0, 0),
(54, 'Gevano_Chambers', 1679.76, -2324.93, 13.5469, 89, 0, 0, 'zekio', 0, 'Indonesia', 1, 121, 98, 96, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '03/05/2000', 180, 50, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 96.04, 100, 100, 100, 0, 0, 1, 2, 28, 0, 0, -1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716830429, 0, 0, '0', 0, 0, 0),
(55, 'Stefen_Morgan', 1680.2, -2313.36, 13.5469, 100, 0, 0, 'Dzaxt', 0, 'American', 1, 121, 99, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '15/01/2002', 185, 75, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 50, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716855121, 0, 0, '0', 0, 0, 0),
(56, 'Nekoma_San', 197.635, 175.376, 1003.02, 98, 3, 100, 'Nekoma', 0, 'Indonesia ', 1, 2, 87, 87, 2, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '12/12/1999', 200, 79, 0, 0, 1000, -1, 0, 40, 'bug', 'Austin', 0, 0, 0, 100, 100, 100, 100, 98.68, 100, 100, 100, 0, 0, 1, 9, 44, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716882715, 0, 0, '0', 1, 0, 0),
(57, 'Fadhil_Decamora', 0, 0, 0, 100, 0, 0, 'Clint', 0, '0', 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 2, '0', 0, 0, 0),
(58, 'Kai_Oconnor', 210.897, 148.16, 1003.02, 72, 3, 0, 'depen', 0, '0', 0, 1, 12, 15, 34, 0, -1, 29990, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 750, 14, 0, 0, '', '', 0, 0, 0, 117, 100, 100, 100, 97.36, 100, 100, 100, 0, 0, 4, 44, 52, 1, 0, -1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 1, 1717596830, 0, 2, '0', 0, 0, 0),
(59, 'Bramanty_Kiano', 1746.85, -2512.88, 13.5969, 100, 0, 0, 'Bramanty', 0, '0', 0, 1, 83, 83, 2, 0, -1, 51000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 11, 25, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 1, 1716959230, 0, 2, '0', 1, 0, 0),
(60, 'Revan_Dacamora', 198.309, 175.211, 1003.02, 85, 3, 103, 'Revanlons', 0, 'indonesia', 1, 121, 44, 46, 10, 0, -1, 11000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '20/02/2000', 110, 50, 0, 0, 1250, -1, 0, 3006, 'BAHASA KASAR', 'eggar', 0, 0, 0, 100, 100, 100, 100, 97.36, 100, 100, 100, 0, 0, 2, 40, 40, 0, 0, -1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717678878, 0, 2, '0', 1, 0, 0),
(61, 'Ayam_Jago', 0, 0, 0, 0, 0, 0, 'Ayammmm', 0, 'Russia', 1, 121, 97, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '18/08/2000', 180, 80, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 2, 9, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716889859, 0, 0, '0', 0, 0, 0),
(62, 'Kai_Cenat', 1708.47, -1286.2, 13.5469, 100, 0, 0, 'Elgib', 0, 'Amerika Serikat ', 1, 121, 87, 86, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '11/01/1998', 197, 56, 0, 0, 1000, -1, 0, 0, '.', 'KrazyBrazy', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 7, 33, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716903921, 0, 2, '0', 1, 0, 0),
(63, 'Senoo_Heyresz', 1495.32, -2012.34, 30.7202, 96, 0, 0, 'Xyanzu', 0, 'indonesia', 1, 1, 44, 49, 12, 0, -1, 51000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 1, '11/12/2000', 176, 78, 0, 0, 1250, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 40, 46, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716902766, 0, 1, '0', 1, 0, 0),
(64, 'Zano_Morris', 2717.84, 687.9, 10.9081, 70, 0, 0, 'Zanoo', 0, 'Mexsico', 1, 240, 45, 35, 32, 0, -1, 30319, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 1, 171, 0, '03/03/2000', 178, 56, 0, 0, 1500, 9, 0, 0, 'BAHASA KASAR', 'eggar', 0, 0, 0, 100, 100, 100, 100, 84.49, 100, 100, 100, 0, 0, 3, 44, 2, 1, 0, -1, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717424044, 0, 2, '0', 1, 0, 0),
(65, 'Vinz_Zemora', 1685.7, -2335.48, 13.5469, 100, 0, 0, 'Kelpinzz', 0, 'indonesia', 1, 121, 99, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '18/02/1999', 163, 70, 0, 0, 1000, -1, 0, 0, 'bug', 'Austin', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 19, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716906608, 0, 0, '0', 0, 0, 0),
(66, 'Nald_Smith', 1685.72, -2335.35, 13.5469, 100, 0, 0, 'Nald', 0, 'Indonesia', 1, 121, 100, 100, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '25/11/2000', 170, 45, 0, 0, 1000, -1, 0, 0, 'bug', 'Austin', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 27, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716908824, 0, 0, '0', 1, 0, 0),
(67, 'Richard_Vons', 1735.19, -2531.56, 13.5969, 88, 0, 0, 'Glis', 0, 'English', 1, 115, 94, 72, 38, 0, -1, 19319, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 639080, -1, -1, 0, 0, 0, '19/10/1998', 180, 60, 0, 0, 2250, 0, 0, 0, '', '', 0, 0, 0, 161, 100, 100, 100, 96.04, 100, 100, 100, 0, 0, 6, 41, 52, 3, 0, -1, 0, 201, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717424506, 0, 0, '0', 0, 0, 0),
(68, 'Caca_Putihh', 1685.12, -2324.55, 13.5469, 100, 0, 0, 'Ziza', 0, 'Indonesia', 2, 190, 98, 98, 0, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '02/03/2003', 160, 44, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 52, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1716984552, 0, 0, '0', 0, 0, 0),
(69, 'Prapto_Adhinatha', 1531.28, -2277.98, 13.5469, 97, 0, 0, 'stepmom', 0, 'indonesia', 1, 121, 82, 80, 4, 0, -1, 50490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '06/11/1996', 200, 70, 0, 0, 1000, 12, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 13, 23, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717163465, 0, 0, '0', 1, 0, 0),
(70, 'Xavier_Gilmer', 1677.49, -2312.14, 13.5469, 100, 0, 0, 'Xynnn', 0, 'indonesia', 1, 121, 99, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '21/02/2000', 200, 60, 0, 0, 1000, 12, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 34, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717061586, 0, 0, '0', 1, 0, 0),
(71, 'Atew_Astuko', 1375.56, 1577.52, 17.0003, 100, 0, 0, 'Dikamk', 0, 'Indonesia', 1, 121, 96, 96, 0, 0, -1, -924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '1/2/2000', 170, 50, 0, 0, 1000, 1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 3, 24, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717070352, 0, 0, '0', 0, 0, 0),
(72, 'Johan_Agus', 1680.85, -2264.83, 13.5194, 94, 0, 0, 'Salman', 0, 'indonesia', 1, 121, 83, 83, 2, 0, -1, 51000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '10/02/2005', 165, 55, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 97.36, 100, 100, 100, 0, 0, 1, 10, 43, 0, 0, -1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717422572, 0, 0, '0', 1, 0, 0),
(73, 'Khay_Andersn', 1695.5, -2332.51, 13.5874, 235, 0, 0, 'Khay', 0, 'america', 1, 121, 98, 99, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '09/01/2000', 165, 62, 100, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 25, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717153874, 0, 0, '0', 1, 0, 0),
(74, 'Rizal_Atzuko', 1244.27, -2009.86, 59.8696, 100, 0, 0, 'JosepAtsuko', 0, 'INDONESIA', 1, 28, 63, 66, 4, 0, -1, 50000, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 479746, -1, -1, 0, 0, 0, '01/05/2000', 150, 45, 0, 0, 1250, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 24, 52, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717165189, 0, 0, '0', 0, 0, 0),
(75, 'Josep_Ocanner', 1675.99, -2319.56, 13.3828, 100, 0, 0, 'JosepAtsuko', 0, 'INDONESIA', 1, 48, 87, 88, 2, 0, -1, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '12/05/2002', 155, 56, 0, 0, 1250, -1, 0, 0, 'bug', 'Austin', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 9, 31, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717166153, 0, 0, '0', 1, 0, 0),
(76, 'Baimz_Fernandez', 1677.3, -2313.99, 13.5469, 100, 0, 0, 'Baimz', 0, 'Jepang', 1, 121, 98, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '12/03/1999', 190, 76, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 3, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717201272, 0, 0, '0', 0, 0, 0),
(77, 'Zergan_Reuzaburow', 0, 0, 0, 0, 0, 0, 'Jeki', 0, 'AMERIKA', 1, 121, 90, 91, 0, 0, -1, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 878811, -1, -1, 0, 0, 0, '20/10/2001', 189, 48, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 6, 50, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717218567, 0, 0, '0', 0, 0, 0),
(78, 'Shiba_Robinson', 1748.63, -2516.2, 13.5969, 100, 0, 0, 'Shiba', 0, 'jepang', 1, 121, 99, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '25/07/2005', 175, 65, 0, 0, 1000, -1, 0, 0, 'bug', 'Austin', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 40, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717565455, 0, 0, '0', 1, 0, 0),
(79, 'Ethan_Dalton', 1685.92, -2335, 13.6469, 100, 0, 0, 'bharon', 0, 'indonesia', 1, 121, 92, 93, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '11/11/2000', 170, 70, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 6, 9, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717419711, 0, 0, '0', 1, 0, 0),
(80, 'Narzi_Belwyn', 2707.07, 759.259, 10.9081, 100, 0, 0, 'heyaji', 0, '0', 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 51, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 1, 1717419505, 0, 2, '0', 0, 0, 0),
(81, 'Fazri_Alfatir', 1653.88, -1268.57, 16.4779, 100, 0, 0, 'heyaji', 0, 'indonesia', 1, 1, 59, 59, 80, 0, -1, 3119, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 0, '15/04/1998', 160, 40, 0, 0, 2500, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 96.04, 100, 100, 100, 0, 0, 7, 21, 42, 4, 0, -1, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717600818, 0, 0, '0', 1, 0, 0),
(82, 'Gerry_Launcher', 1685.73, -2335.33, 14.008, 100, 0, 0, 'xSann', 0, 'Indonesia', 1, 121, 99, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '12/03/2000', 185, 55, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 31, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717426070, 0, 0, '0', 0, 0, 0),
(83, 'Sirpai_Joger', 1682.99, -2308.17, 13.5401, 100, 0, 0, 'faiidejong', 0, 'Indonesia', 1, 121, 99, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '16/10/2004', 172, 40, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 52, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717438595, 0, 0, '0', 1, 0, 0),
(84, 'Soulking_Brook', 1673.76, -2256.32, -2.8832, 100, 0, 0, 'Donxuiqote', 0, 'inggris', 1, 121, 96, 96, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '27/07/2003', 180, 57, 0, 0, 1250, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 3, 38, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717445673, 0, 0, '0', 1, 0, 0),
(85, 'Albert_Reyes', 1615.97, -2327.85, 13.5469, 100, 0, 0, 'exynos', 0, 'British', 1, 121, 98, 99, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '08/09/2000', 180, 62, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 43, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717468890, 0, 0, '0', 1, 0, 0);
INSERT INTO `characters` (`pID`, `Name`, `PosX`, `PosY`, `PosZ`, `Health`, `Interior`, `World`, `UCP`, `Age`, `Origin`, `Gender`, `Skin`, `Lapar`, `Haus`, `Stress`, `AdminLevel`, `InBiz`, `Money`, `Job`, `Gun1`, `Gun2`, `Gun3`, `Gun4`, `Gun5`, `Gun6`, `Gun7`, `Gun8`, `Gun9`, `Gun10`, `Gun11`, `Gun12`, `Gun13`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `Ammo12`, `Ammo13`, `Durability1`, `Durability2`, `Durability3`, `Durability4`, `Durability5`, `Durability6`, `Durability7`, `Durability8`, `Durability9`, `Durability10`, `Durability11`, `Durability12`, `Durability13`, `Number`, `Faction`, `FactionID`, `FactionRank`, `FactionSkin`, `Onduty`, `Birthdate`, `Height`, `Weight`, `Armor`, `Salary`, `Bank`, `InDoor`, `Arrest`, `JailTime`, `JailReason`, `JailBy`, `Injured`, `BusDelay`, `Credit`, `Healthy`, `Head`, `RightArm`, `LeftArm`, `Torso`, `RightLeg`, `LeftLeg`, `Groin`, `MaskID`, `Exp`, `Level`, `Minute`, `Second`, `Hour`, `Paycheck`, `InHouse`, `Quitjob`, `Channel`, `Funds`, `Bullet1`, `Bullet2`, `Bullet3`, `Bullet4`, `Bullet5`, `Bullet6`, `Bullet7`, `DrivingLicense`, `FishDelay`, `Fish1`, `Fish2`, `Fish3`, `Fish4`, `Fish5`, `Fish6`, `Fish7`, `Fish8`, `Fish9`, `Fish10`, `FishName1`, `FishName2`, `FishName3`, `FishName4`, `FishName5`, `FishName6`, `FishName7`, `FishName8`, `FishName9`, `FishName10`, `Spawn`, `SpawnTimer`, `sks`, `streamer`, `last_login`, `claimveh`, `vip`, `vip_time`) VALUES
(86, 'Asep_Gedebog', 1704.95, -2304.47, 6.3233, 100, 0, 0, 'Ryzxx', 0, 'korea', 1, 121, 98, 98, 0, 0, -1, 490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '16/12/2000', 170, 50, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 40, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717506280, 0, 0, '0', 0, 0, 0),
(87, 'Asep_Denamros', 1683.64, -2308.6, 13.5458, 100, 0, 0, 'Ryzxx', 0, 'Australia', 1, 121, 99, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '16/12/2000', 170, 50, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 50, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717506494, 0, 0, '0', 1, 0, 0),
(88, 'Raiz_Fairuz', 1520.63, -2091.45, 27.886, 100, 0, 0, 'Kubil', 0, 'Indonesia ', 1, 2, 71, 76, 8, 0, -1, 410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 1, '19/11/2001', 170, 50, 0, 0, 1250, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 24, 7, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717508212, 0, 0, '0', 1, 0, 0),
(89, 'Regy_Suregar', 1685.72, -2335.35, 14.1435, 100, 0, 0, 'Regy', 0, 'indonesia', 1, 2, 98, 99, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 1, '31/03/2000', 187, 56, 0, 0, 1000, -1, 0, 0, 'bug', 'Austin', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 32, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717507800, 0, 0, '0', 1, 0, 0),
(90, 'Regy_Kamiel', 1569.87, -2263.52, 13.5462, 100, 0, 0, 'Regy', 0, 'indonesia', 1, 2, 93, 93, 2, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 1, '12/03/2000', 187, 56, 0, 0, 1000, -1, 0, 0, 'bug', 'Austin', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 6, 39, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717508394, 0, 0, '0', 1, 0, 0),
(91, 'Bryan_Mattrix', 1775.72, -1767.31, 15.0254, 100, 0, 1031, 'Bryan', 0, 'Amerika', 1, 121, 94, 94, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '18/5/1998', 178, 42, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 6, 55, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717567553, 0, 0, '0', 1, 0, 0),
(92, 'Seven_Alendra', 1621.13, -2262.25, 13.1189, 100, 0, 0, 'Gyzee', 0, 'Indonesia ', 1, 121, 90, 91, 0, 0, -1, 15490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 1, '16/12/2000', 192, 75, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 6, 18, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717514174, 0, 0, '0', 1, 0, 0),
(93, 'Muhammad_Auraiza', 0, 0, 0, 0, 0, 0, 'dujaa', 0, 'Indonesia', 1, 121, 96, 97, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '03/06/2002', 175, 45, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 3, 19, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717526326, 0, 0, '0', 0, 0, 0),
(94, 'Elgib_Gunena', 1685.7, -2329.81, 13.5469, 100, 0, 0, 'Elgib', 0, 'Indonesia ', 1, 121, 99, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '18/03/2001', 172, 52, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 34, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717579834, 0, 0, '0', 1, 0, 0),
(95, 'Elgib_Krio', 246.94, 62.9731, 1004.14, 100, 0, 0, 'Elgib', 0, 'Indonesia ', 1, 121, 89, 90, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '21/03/2001', 172, 52, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 6, 13, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717592908, 0, 0, '0', 1, 0, 0),
(96, 'Mamang_Ryzz', 1364.85, 1575.18, 17.0003, 100, 0, 0, 'Ryzz', 0, 'Indonesia', 1, 121, 95, 95, 2, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '25/08/2004', 192, 64, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 4, 19, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717595775, 0, 0, '0', 1, 0, 0),
(97, 'Uziii_Luzivert', 1513.39, -1658.86, 13.5469, 98, 0, 0, 'Xauzy', 0, 'los santos', 1, 112, 37, 42, 16, 0, -1, 219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '05/05/2003', 145, 45, 0, 0, 1250, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 98.68, 100, 100, 100, 0, 0, 2, 46, 30, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717600152, 0, 0, '0', 1, 0, 0),
(98, 'Yourzi_Vanero', 1674.43, -2260.12, 13.542, 100, 0, 0, 'KAGExYourzii', 0, 'Turki', 1, 121, 97, 96, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '25/09/2003', 174, 54, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 2, 30, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717598956, 0, 0, '0', 1, 0, 0),
(99, 'Zanxy_Onnconer', 1176.93, -1361.67, 14.3, 100, 0, 0, 'Zanxy', 0, 'INDONESIA', 1, 170, 61, 59, 10, 0, -1, -1650, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '20/1/2000', 182, 50, 0, 0, 1750, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 4, 18, 42, 2, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717658931, 0, 0, '0', 1, 0, 0),
(100, 'Traymiento_Bienvenueza', 132, -67.625, 2.01976, 100, 0, 0, 'boundan', 0, 'indonesia', 1, 240, 7, 20, 28, 0, -1, 13700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 280, 0, '20/02/2002', 180, 69, 100, 0, 1250, -1, 0, 0, '', '', 1, 0, 0, 106, 100, 100, 100, 98.68, 100, 100, 100, 0, 0, 2, 26, 40, 1, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717728493, 0, 0, '0', 1, 0, 0),
(101, 'Boyy_Sinulingga', 1750.56, -2516.39, 14.0969, 100, 0, 0, 'Masboyy', 0, 'Indonesian ', 1, 121, 98, 98, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '1 02 1992', 200, 150, 0, 0, 1000, 0, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 43, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717619759, 0, 0, '0', 1, 0, 0),
(102, 'Akeno_Smith', 1182.77, -1361.69, 14.3, 100, 0, 0, 'Akeno', 0, 'Indonesia', 1, 121, 96, 98, 0, 0, -1, 38, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '11/02/2007', 169, 50, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 11, 8, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717724829, 0, 0, '0', 1, 0, 0),
(103, 'Reyz_Laksamana', -30.0664, 143.658, 3.07693, 77, 0, 0, 'Reyzz', 0, 'Indonesia', 1, 121, 65, 60, 18, 0, -1, 1000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '1/2/2000', 170, 55, 0, 0, 1500, -1, 0, 0, '', '', 0, 0, 0, 121, 100, 100, 100, 96.37, 100, 100, 100, 0, 0, 3, 6, 18, 1, 0, -1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717640307, 0, 0, '0', 1, 0, 0),
(104, 'Dandru_Kodir', 1512.69, -1657.9, 13.5469, 125, 0, 0, 'Dandru', 0, 'Indonesia', 1, 121, 34, 35, 10, 0, -1, 8000, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '12/12/1999', 200, 70, 0, 0, 1500, 0, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 89.44, 100, 100, 100, 0, 0, 3, 49, 10, 0, 0, -1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717640459, 0, 0, '0', 1, 0, 0),
(105, 'Paul_Wakanda', 0, 0, 0, 0, 0, 0, 'Calzexzy', 0, '0', 0, 2, 23, 16, 22, 0, -1, 2000, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 500, -1, 0, 0, '0', '0', 0, 0, 0, 107, 100, 100, 100, 100, 100, 100, 100, 0, 0, 3, 11, 32, 1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 1, 1717654635, 0, 2, '0', 1, 0, 0),
(106, 'Cecep_Hendrawan', 1688.55, -2246.77, 13.2178, 100, 0, 0, 'Rucha', 0, '0', 0, 2, 92, 93, 2, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 6, 6, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 1, 0, 0, 0, '0', 1, 0, 0),
(107, 'Memet_Kopak', 1270.26, -2024.19, 58.7918, 100, 0, 0, 'Anggaxyz', 0, 'Indonesia', 1, 114, 90, 89, 2, 0, -1, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '11/01/1998', 176, 67, 0, 0, 1000, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 7, 56, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717640783, 0, 2, '0', 1, 0, 0),
(108, 'Alexander_Petterson', 0, 0, 0, 0, 0, 0, 'fefet', 0, '0', 0, 2, 52, 48, 10, 0, -1, 1519, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 250, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 41, 9, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 1, 1717650267, 0, 2, '0', 1, 0, 0),
(109, 'Johan_Santhos', 1683.09, -2274.6, -1.58731, 100, 0, 0, 'kadex', 0, 'Indonesian', 1, 121, 89, 89, 4, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '19/09/1999', 175, 55, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 8, 41, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717645282, 0, 0, '0', 1, 0, 0),
(110, 'Ucup_Baba', 0, 0, 0, 0, 0, 0, 'Diard', 0, 'Indonesia', 1, 121, 75, 72, 6, 0, -1, -1040, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '28/7/2002', 180, 70, 0, 0, 1250, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 19, 3, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717648136, 0, 0, '0', 1, 0, 0),
(111, 'Charles_Giovani', 1537.03, -2231.38, 13.5469, 70, 0, 0, 'DIMAS', 0, 'Indonesian ', 1, 2, 89, 91, 2, 0, -1, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '6/11/2004', 110, 40, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 8, 10, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717650667, 0, 0, '0', 1, 0, 0),
(112, 'Lexxa_Aldways', 1681.9, -2311.5, 13.5469, 100, 0, 0, 'Bangnaa', 0, 'Amerika', 1, 18, 96, 96, 2, 0, -1, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '14/01/2000', 179, 67, 0, 0, 1250, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 3, 17, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717655107, 0, 2, '0', 1, 0, 0),
(113, 'Vincent_Grey', 1750.56, -2515.79, 13.5969, 100, 0, 0, 'Dimaz', 0, '0', 0, 0, 98, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 250, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 2, 1, 35, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 1, 1717665067, 0, 1, '0', 0, 0, 0),
(114, 'Reolette_Osbourne', 1303.99, -1950.84, 28.6938, 100, 0, 0, 'Reolette', 0, 'Las Venturas', 1, 121, 84, 85, 4, 0, -1, 519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '01/01/1999', 170, 70, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 10, 38, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717666755, 0, 0, '0', 1, 0, 0),
(115, 'Hiro_Frazier', 1369.29, 1576.15, 17.0003, 100, 0, 0, 'Hirotoshi', 0, 'Indonesia', 1, 121, 92, 92, 2, 0, -1, 1000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '01/01/1998', 168, 57, 0, 0, 1000, 1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 4, 56, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717667721, 0, 0, '0', 1, 0, 0),
(116, 'Leon_Hindia', 1697.09, -2314.34, 13.3828, 100, 0, 0, 'Leonax', 0, 'Indonesia', 1, 59, 89, 89, 2, 0, -1, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 543994, -1, -1, 0, 0, 0, '21/06/2010', 170, 40, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 9, 19, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717680254, 0, 0, '0', 1, 0, 0),
(117, 'Kyzoo_Thosiro', 1690.15, -2329.21, 13.5469, 100, 0, 0, 'Kyzoo', 0, 'Indonesia', 1, 121, 97, 96, 2, 9, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '1/03/2000', 145, 45, 0, 0, 1000, 12, 0, 0, 'bug', 'Austin', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 9, 8, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717699816, 0, 0, '0', 0, 0, 0),
(118, 'Adrean_Oconer', 0, 0, 0, 100, 0, 0, 'abuyxc', 0, '0', 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, '', 0, 0, 0, 0, 0, -1, 0, 0, '0', '0', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 2, '0', 0, 0, 0),
(119, 'Ricko_Escobar', 0, 0, 0, 0, 0, 0, 'Rickojk', 0, 'indonesia', 1, 121, 96, 97, 0, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, '02/04/2000', 190, 54, 0, 0, 1000, -1, 0, 0, '', '', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 1, 1, 35, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 1, 1717739628, 0, 0, '0', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(12) DEFAULT 0,
  `contactID` int(12) NOT NULL,
  `contactName` varchar(32) DEFAULT NULL,
  `contactNumber` int(12) DEFAULT 0,
  `contactOwner` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`ID`, `contactID`, `contactName`, `contactNumber`, `contactOwner`) VALUES
(12, 1, 'Eggar', 670520, 12),
(1, 2, '510216', 510216, 1),
(67, 3, 'rahma', 324287, 67);

-- --------------------------------------------------------

--
-- Table structure for table `crates`
--

CREATE TABLE `crates` (
  `ID` int(12) NOT NULL,
  `Type` int(5) NOT NULL DEFAULT 0,
  `Vehicle` int(12) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `crates`
--

INSERT INTO `crates` (`ID`, `Type`, `Vehicle`) VALUES
(2, 2, -1),
(3, 4, 39),
(4, 4, 39),
(5, 2, 41),
(6, 2, 41),
(7, 2, 41),
(8, 2, 41),
(11, 4, 39),
(12, 4, 39),
(13, 4, 39);

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `ID` int(12) NOT NULL,
  `Owner` int(8) NOT NULL DEFAULT -1,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `SpawnX` float NOT NULL DEFAULT 0,
  `SpawnY` float NOT NULL DEFAULT 0,
  `SpawnZ` float NOT NULL DEFAULT 0,
  `SpawnA` float NOT NULL DEFAULT 0,
  `Name` varchar(24) NOT NULL DEFAULT 'Undefined',
  `Stock` int(5) NOT NULL DEFAULT 0,
  `Vehicle1` int(11) NOT NULL DEFAULT 0,
  `Vehicle2` int(11) NOT NULL DEFAULT 0,
  `Vehicle3` int(11) NOT NULL DEFAULT 0,
  `Vehicle4` int(11) NOT NULL DEFAULT 0,
  `Vehicle5` int(11) NOT NULL DEFAULT 0,
  `Vehicle6` int(11) NOT NULL DEFAULT 0,
  `Price` int(4) NOT NULL DEFAULT 0,
  `Cost1` int(5) NOT NULL DEFAULT 0,
  `Cost2` int(5) NOT NULL DEFAULT 0,
  `Cost3` int(5) NOT NULL DEFAULT 0,
  `Cost4` int(5) NOT NULL DEFAULT 0,
  `Cost5` int(5) NOT NULL DEFAULT 0,
  `Cost6` int(5) NOT NULL DEFAULT 0,
  `Stock1` int(5) NOT NULL DEFAULT 0,
  `Stock2` int(5) NOT NULL DEFAULT 0,
  `Stock3` int(5) NOT NULL DEFAULT 0,
  `Stock4` int(5) NOT NULL DEFAULT 0,
  `Stock5` int(5) NOT NULL DEFAULT 0,
  `Stock6` int(5) NOT NULL DEFAULT 0,
  `Vault` int(8) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`ID`, `Owner`, `PosX`, `PosY`, `PosZ`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnA`, `Name`, `Stock`, `Vehicle1`, `Vehicle2`, `Vehicle3`, `Vehicle4`, `Vehicle5`, `Vehicle6`, `Price`, `Cost1`, `Cost2`, `Cost3`, `Cost4`, `Cost5`, `Cost6`, `Stock1`, `Stock2`, `Stock3`, `Stock4`, `Stock5`, `Stock6`, `Vault`) VALUES
(6, 98, 987.405, -1227.16, 16.9273, 0, 0, 0, 0, 'Undefined', 2, 438, 560, 19300, 19300, 19300, 19300, 10, 1100, 1000, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doors`
--

CREATE TABLE `doors` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT 'None',
  `password` varchar(50) DEFAULT '',
  `icon` int(11) DEFAULT 19130,
  `mapicon` tinyint(4) NOT NULL DEFAULT 0,
  `locked` int(11) NOT NULL DEFAULT 0,
  `admin` int(11) NOT NULL DEFAULT 0,
  `vip` int(11) NOT NULL DEFAULT 0,
  `faction` int(11) NOT NULL DEFAULT 0,
  `family` int(11) NOT NULL DEFAULT -1,
  `garage` tinyint(4) NOT NULL DEFAULT 0,
  `custom` int(11) NOT NULL DEFAULT 0,
  `extvw` int(11) DEFAULT 0,
  `extint` int(11) DEFAULT 0,
  `extposx` float DEFAULT 0,
  `extposy` float DEFAULT 0,
  `extposz` float DEFAULT 0,
  `extposa` float DEFAULT 0,
  `intvw` int(11) DEFAULT 0,
  `intint` int(11) NOT NULL DEFAULT 0,
  `intposx` float DEFAULT 0,
  `intposy` float DEFAULT 0,
  `intposz` float DEFAULT 0,
  `intposa` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doors`
--

INSERT INTO `doors` (`ID`, `name`, `password`, `icon`, `mapicon`, `locked`, `admin`, `vip`, `faction`, `family`, `garage`, `custom`, `extvw`, `extint`, `extposx`, `extposy`, `extposz`, `extposa`, `intvw`, `intint`, `intposx`, `intposy`, `intposz`, `intposa`) VALUES
(0, 'Bandara International', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1685.71, -2335.06, 13.5469, 178.463, 0, 0, 1750.56, -2516.39, 13.5969, 91.896),
(1, 'kantor pemerintah', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1125.15, -2036.69, 69.8822, 86.94, 0, 0, 1366.15, 1575.37, 17.0003, 99.5574),
(2, 'Rumah Sakit', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1172.55, -1323.46, 15.4032, 88.2614, 0, 0, -2236.78, 521.839, -6.56032, 279.242),
(3, 'Goa', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 468.868, 968.392, 5.73571, 313.91, 0, 255, 1413.8, 1763.14, 10.8653, 6.46466),
(4, 'Night Club', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 2421.41, -1219.24, 25.5622, 349.371, 0, 17, 493.525, -24.9618, 1000.67, 188.066),
(5, 'Bawah tanah', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 255, 1371.29, -24.5208, 1000.92, 268.548, 0, -1, 1372.33, -24.4139, 1000.92, 81.5414),
(6, 'Bank', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1457.54, -1010.08, 26.8438, 3.39655, 0, 255, 1388.61, -26.5772, 1000.91, 262.293),
(7, 'Sa News', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 649.304, -1357.54, 13.6419, 272.849, 0, -1, 186.867, 132.462, 1003.03, 266.875),
(8, 'Fish Factory', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 2850.97, -1532.38, 11.0991, 101.528, 0, -1, 1328.73, 1572.9, 3001.09, 92.3367),
(9, 'Pintu Masuk', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 2727.29, 682.899, 10.9281, 0.855923, 0, 0, 2727.39, 685.203, 10.9281, 174.384),
(10, 'pintu locker', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 2738.32, 669.315, 10.9381, 271.924, 0, 0, 2741.3, 669.21, 10.9381, 88.3299),
(11, 'Masuk Onduty', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 2729.67, 665.793, 10.9381, 274.716, 0, 0, 2733.12, 666.03, 10.9381, 91.4421),
(12, 'Bus Menuju Bandara', '', 19197, 5, 0, 0, 0, 0, -1, 0, 0, 0, 0, 129.863, -68.1824, 1.57812, 40.0637, 0, 0, 1642.2, -2335.47, 13.5469, 177.851),
(14, 'Ruang Utama', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 6, 242.869, 66.3767, 1003.64, 89.1315, 0, 3, 288.956, 167.484, 1007.17, 169.784),
(13, 'Lantai 2', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1647.47, -1263.92, 16.4769, 83.6819, 0, 6, 246.94, 62.9731, 1003.64, 175.529),
(15, 'Kantor Samsat', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1555.46, -1675.72, 16.1953, 274.326, 0, 3, -2027.06, -104.142, 1035.17, 6.46802),
(16, 'STADION BALAP', '', 19197, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 2695.59, -1704.68, 11.8438, 203.674, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dropped`
--

CREATE TABLE `dropped` (
  `ID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemX` float DEFAULT 0,
  `itemY` float DEFAULT 0,
  `itemZ` float DEFAULT 0,
  `itemInt` int(12) DEFAULT 0,
  `itemWorld` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0,
  `itemAmmo` int(12) DEFAULT 0,
  `itemWeapon` int(12) DEFAULT 0,
  `itemPlayer` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dropped`
--

INSERT INTO `dropped` (`ID`, `itemName`, `itemModel`, `itemX`, `itemY`, `itemZ`, `itemInt`, `itemWorld`, `itemQuantity`, `itemAmmo`, `itemWeapon`, `itemPlayer`) VALUES
(2, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(3, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(4, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(5, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(6, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(7, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(8, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(9, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(10, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(11, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(12, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(13, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(14, 'Sampah', 2840, 2701.07, 729.328, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(15, 'Radio', 19942, -1935.57, -2405.38, 29.725, 0, 0, 1, 0, 0, 'KrazyBrazy'),
(18, 'Sampah', 2840, 473.056, 963.679, 4.5535, 0, 0, 1, 0, 0, 'Brian Skinny'),
(25, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(26, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(27, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(28, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(29, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(30, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(31, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(32, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(33, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(34, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(35, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(36, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(37, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(38, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(39, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(40, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(41, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(42, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(43, 'Sampah', 2840, 2702.16, 728.614, 10.008, 0, 0, 1, 0, 0, 'Austin'),
(46, 'Sampah', 2840, 2407.57, -1256.39, 22.9265, 0, 0, 1, 0, 0, 'Boy William'),
(47, 'Sampah', 2840, 2126.17, -1499.43, 23.0751, 0, 0, 1, 0, 0, 'Boy William'),
(48, 'Sampah', 2840, 2126.17, -1499.43, 23.0751, 0, 0, 1, 0, 0, 'Boy William'),
(49, 'Sampah', 2840, 2126.17, -1499.43, 23.0751, 0, 0, 1, 0, 0, 'Boy William'),
(50, 'Sampah', 2840, 2126.17, -1499.43, 23.0751, 0, 0, 1, 0, 0, 'Boy William'),
(51, 'Sampah', 2840, 2126.17, -1499.43, 23.0751, 0, 0, 1, 0, 0, 'Boy William'),
(52, 'Sampah', 2840, 2126.17, -1499.43, 23.0751, 0, 0, 1, 0, 0, 'Boy William'),
(53, 'Sampah', 2840, 2126.17, -1499.43, 23.0751, 0, 0, 1, 0, 0, 'Boy William'),
(64, 'Sampah', 2840, 2701.31, 729.549, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(65, 'Sampah', 2840, 2701.31, 729.549, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(66, 'Sampah', 2840, 2701.31, 729.549, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(67, 'Sampah', 2840, 2701.31, 729.549, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(68, 'Sampah', 2840, 2701.31, 729.549, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(69, 'Sampah', 2840, 2701.31, 729.549, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(70, 'Sampah', 2840, 2701.31, 729.549, 10.008, 0, 0, 1, 0, 0, 'Cahaya Grey'),
(74, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(75, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(76, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(77, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(78, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(79, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(80, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(81, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(82, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(83, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(84, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(85, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(86, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(87, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(88, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(89, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(90, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(91, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(92, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(93, 'Sampah', 2840, 2702.13, 726.929, 10.008, 0, 0, 1, 0, 0, 'Richard Vons'),
(94, 'Sampah', 2840, 2702.35, 728.578, 10.008, 0, 0, 1, 0, 0, 'Salman Yanto'),
(96, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(97, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(98, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(99, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(100, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(101, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(102, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(103, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(104, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(105, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(106, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(107, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(108, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(109, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(110, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(111, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(112, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(113, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(114, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(115, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(116, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(117, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(118, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(119, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(120, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(121, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(122, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(123, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(124, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(125, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(126, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(127, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(128, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(129, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(130, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(131, 'Sampah', 2840, 486.332, 961.88, 5.5148, 0, 0, 1, 0, 0, 'Boy William'),
(136, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(137, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(138, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(139, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(140, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(141, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(142, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(143, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(144, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(145, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(146, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(147, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(148, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(149, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(150, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(151, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(152, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(153, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(154, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(155, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(156, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(157, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(158, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(159, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(160, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(161, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(162, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(163, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(164, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(165, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(166, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(167, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(168, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(169, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(170, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(171, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(172, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(173, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(174, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(175, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(176, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(177, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(178, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(179, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(180, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(181, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(182, 'Sampah', 2840, -51.7832, 61.0127, 2.2171, 0, 0, 1, 0, 0, 'RamaSatria'),
(183, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(184, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(185, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(186, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(187, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(188, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(189, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(190, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(191, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(192, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(193, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(194, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(195, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(196, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(197, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(198, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(199, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(200, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(201, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(202, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(203, 'Sampah', 2840, -821.758, -1960.56, 6.0393, 0, 0, 1, 0, 0, 'Boy William'),
(204, 'Sampah', 2840, 2698.85, 667.018, 9.9203, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(205, 'Sampah', 2840, 2698.85, 667.018, 9.9203, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(206, 'Sampah', 2840, 2698.85, 667.018, 9.9203, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(207, 'Sampah', 2840, 2698.85, 667.018, 9.9203, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(208, 'Sampah', 2840, 2698.85, 667.018, 9.9203, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(209, 'Sampah', 2840, 2698.85, 667.018, 9.9203, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(211, 'Sampah', 2840, 475.829, 962.57, 4.5969, 0, 0, 1, 0, 0, 'Zeon Warka'),
(213, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(214, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(215, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(216, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(217, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(218, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(219, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(220, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(221, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(222, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(223, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(224, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(225, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(226, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(227, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(228, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(229, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(230, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(231, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(232, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(233, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(234, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(235, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(236, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(237, 'Sampah', 2840, 2702.15, 728.232, 10.008, 0, 0, 1, 0, 0, 'Budi Herianto'),
(249, 'Sampah', 2840, 5.028, -17.8783, 1002.65, 10, 1031, 1, 0, 0, 'Joy Granetcio'),
(250, 'Sampah', 2840, 5.028, -17.8783, 1002.65, 10, 1031, 1, 0, 0, 'Joy Granetcio'),
(251, 'Sampah', 2840, 5.028, -17.8783, 1002.65, 10, 1031, 1, 0, 0, 'Joy Granetcio'),
(252, 'Sampah', 2840, 5.028, -17.8783, 1002.65, 10, 1031, 1, 0, 0, 'Joy Granetcio'),
(253, 'Sampah', 2840, 5.028, -17.8783, 1002.65, 10, 1031, 1, 0, 0, 'Joy Granetcio'),
(254, 'Sampah', 2840, 5.028, -17.8783, 1002.65, 10, 1031, 1, 0, 0, 'Joy Granetcio'),
(255, 'Sampah', 2840, 5.028, -17.8783, 1002.65, 10, 1031, 1, 0, 0, 'Joy Granetcio'),
(256, 'Sampah', 2840, 5.028, -17.8783, 1002.65, 10, 1031, 1, 0, 0, 'Joy Granetcio'),
(257, 'Sampah', 2840, 5.028, -17.8783, 1002.65, 10, 1031, 1, 0, 0, 'Joy Granetcio'),
(258, 'Sampah', 2840, 5.028, -17.8783, 1002.65, 10, 1031, 1, 0, 0, 'Joy Granetcio'),
(259, 'Sampah', 2840, 1623.22, -2265.7, 12.601, 0, 0, 1, 0, 0, 'Joy Granetcio'),
(260, 'Sampah', 2840, 1623.22, -2265.7, 12.601, 0, 0, 1, 0, 0, 'Joy Granetcio'),
(261, 'Sampah', 2840, 1623.22, -2265.7, 12.601, 0, 0, 1, 0, 0, 'Joy Granetcio'),
(262, 'Sampah', 2840, 1623.22, -2265.7, 12.601, 0, 0, 1, 0, 0, 'Joy Granetcio'),
(263, 'Sampah', 2840, 1623.22, -2265.7, 12.601, 0, 0, 1, 0, 0, 'Joy Granetcio'),
(264, 'Sampah', 2840, 1623.22, -2265.7, 12.601, 0, 0, 1, 0, 0, 'Joy Granetcio'),
(265, 'Sampah', 2840, 1623.22, -2265.7, 12.601, 0, 0, 1, 0, 0, 'Joy Granetcio'),
(266, 'Sampah', 2840, 1623.22, -2265.7, 12.601, 0, 0, 1, 0, 0, 'Joy Granetcio'),
(267, 'Sampah', 2840, 1623.22, -2265.7, 12.601, 0, 0, 1, 0, 0, 'Joy Granetcio'),
(268, 'Sampah', 2840, 1623.22, -2265.7, 12.601, 0, 0, 1, 0, 0, 'Joy Granetcio'),
(270, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(271, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(272, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(273, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(274, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(275, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(276, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(277, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(278, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(279, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(280, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(281, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(282, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(283, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(284, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(285, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(286, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(287, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(288, 'Sampah', 2840, 1914.02, -1781.86, 12.6468, 0, 0, 1, 0, 0, 'Kevin Theodore'),
(289, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(290, 'Vodka', 2958, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(291, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(292, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(293, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(294, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(295, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(296, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(297, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(298, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(299, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(300, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(301, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(302, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(303, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(304, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(305, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(306, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(307, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(308, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(309, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(310, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(311, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(312, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(313, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(314, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(315, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(316, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(317, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(318, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(319, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(320, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(321, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(322, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(323, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(324, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(325, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(326, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(327, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(328, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(329, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(330, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(331, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(332, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(333, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(334, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(335, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(336, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(337, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(338, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(339, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(340, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(341, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(342, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(343, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(344, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(345, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(346, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(347, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(348, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(349, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(350, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(351, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(352, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(353, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(354, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(355, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(356, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(357, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(358, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(359, 'Sampah', 2840, -99.9105, 88.9223, 2.2171, 0, 0, 1, 0, 0, 'Eggar Austerline'),
(361, 'Sampah', 2840, 1320.36, -892.885, 38.7402, 0, 0, 1, 0, 0, 'Fazri Alfatir'),
(363, 'Botol Bekas', 2683, -58.6114, 84.4798, 2.2171, 0, 0, 1, 0, 0, 'Zanxy Onnconer'),
(364, 'Karung Goni', 2060, -51.3178, 60.811, 2.2171, 0, 0, 1, 0, 0, 'Zanxy Onnconer'),
(365, 'Karung Goni', 2060, -51.3178, 60.811, 2.2171, 0, 0, 1, 0, 0, 'Zanxy Onnconer'),
(366, 'Karung Goni', 2060, -51.3178, 60.811, 2.2171, 0, 0, 1, 0, 0, 'Zanxy Onnconer'),
(367, 'Karung Goni', 2060, -51.3178, 60.811, 2.2171, 0, 0, 1, 0, 0, 'Zanxy Onnconer'),
(368, 'Karung Goni', 2060, -51.3178, 60.811, 2.2171, 0, 0, 1, 0, 0, 'Zanxy Onnconer'),
(369, 'Karung Goni', 2060, -51.3178, 60.811, 2.2171, 0, 0, 1, 0, 0, 'Zanxy Onnconer'),
(370, 'Botol Bekas', 2683, -51.3178, 60.811, 2.2171, 0, 0, 1, 0, 0, 'Zanxy Onnconer'),
(371, 'Botol Bekas', 2683, -51.3178, 60.811, 2.2171, 0, 0, 1, 0, 0, 'Zanxy Onnconer'),
(372, 'Botol Bekas', 2683, -51.3178, 60.811, 2.2171, 0, 0, 1, 0, 0, 'Zanxy Onnconer'),
(373, 'Botol Bekas', 2683, -51.3178, 60.811, 2.2171, 0, 0, 1, 0, 0, 'Zanxy Onnconer'),
(374, 'Botol Bekas', 2683, -51.3178, 60.811, 2.2171, 0, 0, 1, 0, 0, 'Zanxy Onnconer'),
(376, 'Karung Goni', 2060, -33.4123, 148.189, 2.0472, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(377, 'Botol Bekas', 2683, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(378, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(379, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(380, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(381, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(382, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(383, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(384, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(385, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(386, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(387, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(388, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(389, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(390, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(391, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(392, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(393, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(394, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(395, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(396, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(397, 'Sampah', 2840, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(398, 'Botol Bekas', 2683, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(399, 'Botol Bekas', 2683, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(400, 'Botol Bekas', 2683, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(401, 'Botol Bekas', 2683, -33.4123, 148.189, 2.306, 0, 0, 1, 0, 0, 'Reyz Laksamana'),
(405, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(406, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(407, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(408, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(409, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(410, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(411, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(412, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(413, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(414, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(415, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(416, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(417, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(418, 'Sampah', 2840, 2407.95, -1243.56, 22.9125, 0, 0, 1, 0, 0, 'Ziza'),
(419, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(420, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(421, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(422, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(423, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(424, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(425, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(426, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(427, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(428, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(429, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(430, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(431, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(432, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(433, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(434, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(435, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(436, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(437, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(438, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(439, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(440, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(441, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(442, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(443, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(444, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(445, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(446, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(447, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(448, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(449, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(450, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(451, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(452, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(453, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(454, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(455, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(456, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(457, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(458, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(459, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(460, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(461, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(462, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(463, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(464, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(465, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(466, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(467, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(468, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(469, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(470, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(471, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(472, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(473, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(474, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(475, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(476, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(477, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(478, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(479, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(480, 'Sampah', 2840, 2702.25, 726.742, 10.008, 0, 0, 1, 0, 0, 'Austin Grey'),
(481, 'Nasi Bungkus', 2663, 2732.96, 680.347, 10.038, 0, 0, 1, 0, 0, 'Eggar Austerline');

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `factionID` int(12) NOT NULL,
  `factionName` varchar(32) DEFAULT NULL,
  `factionColor` int(12) DEFAULT 0,
  `factionType` int(12) DEFAULT 0,
  `factionRanks` int(12) DEFAULT 0,
  `factionLockerX` float DEFAULT 0,
  `factionLockerY` float DEFAULT 0,
  `factionLockerZ` float DEFAULT 0,
  `factionLockerInt` int(12) DEFAULT 0,
  `factionLockerWorld` int(12) DEFAULT 0,
  `factionWeapon1` int(12) DEFAULT 0,
  `factionAmmo1` int(12) DEFAULT 0,
  `factionWeapon2` int(12) DEFAULT 0,
  `factionAmmo2` int(12) DEFAULT 0,
  `factionWeapon3` int(12) DEFAULT 0,
  `factionAmmo3` int(12) DEFAULT 0,
  `factionWeapon4` int(12) DEFAULT 0,
  `factionAmmo4` int(12) DEFAULT 0,
  `factionWeapon5` int(12) DEFAULT 0,
  `factionAmmo5` int(12) DEFAULT 0,
  `factionWeapon6` int(12) DEFAULT 0,
  `factionAmmo6` int(12) DEFAULT 0,
  `factionWeapon7` int(12) DEFAULT 0,
  `factionAmmo7` int(12) DEFAULT 0,
  `factionWeapon8` int(12) DEFAULT 0,
  `factionAmmo8` int(12) DEFAULT 0,
  `factionWeapon9` int(12) DEFAULT 0,
  `factionAmmo9` int(12) DEFAULT 0,
  `factionWeapon10` int(12) DEFAULT 0,
  `factionAmmo10` int(12) DEFAULT 0,
  `factionRank1` varchar(32) DEFAULT NULL,
  `factionRank2` varchar(32) DEFAULT NULL,
  `factionRank3` varchar(32) DEFAULT NULL,
  `factionRank4` varchar(32) DEFAULT NULL,
  `factionRank5` varchar(32) DEFAULT NULL,
  `factionRank6` varchar(32) DEFAULT NULL,
  `factionRank7` varchar(32) DEFAULT NULL,
  `factionRank8` varchar(32) DEFAULT NULL,
  `factionRank9` varchar(32) DEFAULT NULL,
  `factionRank10` varchar(32) DEFAULT NULL,
  `factionRank11` varchar(32) DEFAULT NULL,
  `factionRank12` varchar(32) DEFAULT NULL,
  `factionRank13` varchar(32) DEFAULT NULL,
  `factionRank14` varchar(32) DEFAULT NULL,
  `factionRank15` varchar(32) DEFAULT NULL,
  `factionSkin1` int(12) DEFAULT 0,
  `factionSkin2` int(12) DEFAULT 0,
  `factionSkin3` int(12) DEFAULT 0,
  `factionSkin4` int(12) DEFAULT 0,
  `factionSkin5` int(12) DEFAULT 0,
  `factionSkin6` int(12) DEFAULT 0,
  `factionSkin7` int(12) DEFAULT 0,
  `factionSkin8` int(12) DEFAULT 0,
  `SpawnX` float NOT NULL DEFAULT 0,
  `SpawnY` float NOT NULL,
  `SpawnZ` float NOT NULL,
  `SpawnInterior` int(11) NOT NULL,
  `SpawnVW` int(1) NOT NULL,
  `factionDurability1` int(7) NOT NULL DEFAULT 0,
  `factionDurability2` int(7) NOT NULL DEFAULT 0,
  `factionDurability3` int(7) NOT NULL DEFAULT 0,
  `factionDurability4` int(7) NOT NULL DEFAULT 0,
  `factionDurability5` int(7) NOT NULL DEFAULT 0,
  `factionDurability6` int(7) NOT NULL DEFAULT 0,
  `factionDurability7` int(7) NOT NULL DEFAULT 0,
  `factionDurability8` int(7) NOT NULL DEFAULT 0,
  `factionDurability9` int(7) NOT NULL DEFAULT 0,
  `factionDurability10` int(7) NOT NULL DEFAULT 0,
  `factionSalary1` int(5) NOT NULL DEFAULT 0,
  `factionSalary2` int(5) NOT NULL DEFAULT 0,
  `factionSalary3` int(5) NOT NULL DEFAULT 0,
  `factionSalary4` int(5) NOT NULL DEFAULT 0,
  `factionSalary5` int(5) NOT NULL DEFAULT 0,
  `factionSalary6` int(5) NOT NULL DEFAULT 0,
  `factionSalary7` int(5) NOT NULL DEFAULT 0,
  `factionSalary8` int(5) NOT NULL DEFAULT 0,
  `factionSalary9` int(5) NOT NULL DEFAULT 0,
  `factionSalary10` int(5) NOT NULL DEFAULT 0,
  `factionSalary11` int(5) NOT NULL DEFAULT 0,
  `factionSalary12` int(5) NOT NULL DEFAULT 0,
  `factionSalary13` int(5) NOT NULL DEFAULT 0,
  `factionSalary14` int(5) NOT NULL DEFAULT 0,
  `factionSalary15` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`factionID`, `factionName`, `factionColor`, `factionType`, `factionRanks`, `factionLockerX`, `factionLockerY`, `factionLockerZ`, `factionLockerInt`, `factionLockerWorld`, `factionWeapon1`, `factionAmmo1`, `factionWeapon2`, `factionAmmo2`, `factionWeapon3`, `factionAmmo3`, `factionWeapon4`, `factionAmmo4`, `factionWeapon5`, `factionAmmo5`, `factionWeapon6`, `factionAmmo6`, `factionWeapon7`, `factionAmmo7`, `factionWeapon8`, `factionAmmo8`, `factionWeapon9`, `factionAmmo9`, `factionWeapon10`, `factionAmmo10`, `factionRank1`, `factionRank2`, `factionRank3`, `factionRank4`, `factionRank5`, `factionRank6`, `factionRank7`, `factionRank8`, `factionRank9`, `factionRank10`, `factionRank11`, `factionRank12`, `factionRank13`, `factionRank14`, `factionRank15`, `factionSkin1`, `factionSkin2`, `factionSkin3`, `factionSkin4`, `factionSkin5`, `factionSkin6`, `factionSkin7`, `factionSkin8`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnInterior`, `SpawnVW`, `factionDurability1`, `factionDurability2`, `factionDurability3`, `factionDurability4`, `factionDurability5`, `factionDurability6`, `factionDurability7`, `factionDurability8`, `factionDurability9`, `factionDurability10`, `factionSalary1`, `factionSalary2`, `factionSalary3`, `factionSalary4`, `factionSalary5`, `factionSalary6`, `factionSalary7`, `factionSalary8`, `factionSalary9`, `factionSalary10`, `factionSalary11`, `factionSalary12`, `factionSalary13`, `factionSalary14`, `factionSalary15`) VALUES
(2, 'Polisi', 641859072, 1, 10, 257.637, 78.4576, 1003.64, 6, 0, 24, 300, 29, 500, 25, 150, 27, 300, 26, 0, 31, 500, 34, 0, 0, 0, 0, 0, 0, 0, 'Siswa', 'BRIPDA - BINTARA PERTAMA', 'BRIGPOL - BINTARA PERTAMA', 'Sergeant I', 'Sergeant II', 'Lieutenant', 'Captain', 'Commander', 'BRIGJEN', 'IRJEN', 'Commisioner', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 280, 281, 265, 266, 267, 282, 306, 309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 200000, 300000, 400000, 500000, 600000, 700000, 800000, 900000, 1000000, 20000, 0, 0, 0, 0),
(3, 'Los Santos Emergency Service', -8224256, 3, 10, -2239.65, 541.169, -6.2729, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cadet', 'Fellow', 'EMT Intermediate', 'Junior Paramedic', 'Senior Paramedic', 'Attending Physician', 'District Executive', 'Assistant Chief', 'Deputy Chief of LSES', 'Chief of LSES', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 274, 275, 276, 277, 278, 308, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 12000, 15000, 16000, 17000, 18000, 19000, 20000, 22000, 25000, 0, 0, 0, 0, 0),
(4, 'Los Santos News', 77361408, 2, 10, 172.907, 137.465, 1003.03, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Staff', 'Senior Staff', 'Supervisor I', 'Supervisor II', 'Head of Operational Staff', 'Manager Divisions', 'General Manager', 'Vice CEO', 'CEO', 'Commisioner', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12000, 13000, 14000, 15000, 17000, 18000, 20000, 23000, 25000, 27500, 0, 0, 0, 0, 0),
(5, 'Los Santos Government', -793842689, 4, 5, 2118.36, 756.531, 97.2449, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Rank 5', 'Rank 6', 'Rank 7', 'Rank 8', 'Rank 9', 'Rank 10', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'KedaiMahfud', -256, 6, 8, -2722.82, 2848.88, 173.213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Traning', 'Karyawan', 'Chef', 'Kepala Chef', 'Assistent HRD', 'HRD', 'Wakil Direktur', 'Direktur', 'Rank 9', 'Rank 10', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'MekaKotaNihBos', -256, 5, 5, -70.2876, -1112.23, 1.0781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Rank 5', 'Rank 6', 'Rank 7', 'Rank 8', 'Rank 9', 'Rank 10', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `factionvehicle`
--

CREATE TABLE `factionvehicle` (
  `ID` int(12) NOT NULL,
  `Model` int(6) NOT NULL DEFAULT 0,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `PosA` float NOT NULL DEFAULT 0,
  `Color1` int(4) NOT NULL DEFAULT 0,
  `Color2` int(4) NOT NULL DEFAULT 0,
  `Faction` int(7) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flat`
--

CREATE TABLE `flat` (
  `flatID` int(11) NOT NULL,
  `flatOwner` int(11) DEFAULT 0,
  `flatOwnerName` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `flatPrice` int(8) NOT NULL DEFAULT 0,
  `flatPosX` float NOT NULL DEFAULT 0,
  `flatPosY` float NOT NULL DEFAULT 0,
  `flatPosZ` float NOT NULL DEFAULT 0,
  `flatPosRX` float NOT NULL DEFAULT 0,
  `flatPosRY` float NOT NULL DEFAULT 0,
  `flatPosRZ` float NOT NULL DEFAULT 0,
  `flatInterior` int(8) NOT NULL DEFAULT 0,
  `flatVW` int(8) NOT NULL DEFAULT 0,
  `flatPointX` float NOT NULL DEFAULT 0,
  `flatPointY` float NOT NULL DEFAULT 0,
  `flatPointZ` float NOT NULL DEFAULT 0,
  `flatPointRadius` float NOT NULL DEFAULT 0,
  `flatLocked` int(2) NOT NULL DEFAULT 0,
  `flatMoney` int(12) NOT NULL DEFAULT 0,
  `flatTextX` float NOT NULL DEFAULT 0,
  `flatTextY` float NOT NULL DEFAULT 0,
  `flatTextZ` float NOT NULL DEFAULT 0,
  `flatStatus` int(2) NOT NULL DEFAULT 0,
  `flatMoveX` float NOT NULL DEFAULT 0,
  `flatMoveY` float NOT NULL DEFAULT 0,
  `flatMoveZ` float NOT NULL DEFAULT 0,
  `flatMoveRX` float NOT NULL DEFAULT 0,
  `flatMoveRY` float NOT NULL DEFAULT 0,
  `flatMoveRZ` float NOT NULL DEFAULT 0,
  `flatWeapon1` int(11) NOT NULL DEFAULT 0,
  `flatAmmo1` int(11) NOT NULL DEFAULT 0,
  `flatWeapon2` int(11) NOT NULL DEFAULT 0,
  `flatAmmo2` int(11) NOT NULL DEFAULT 0,
  `flatWeapon3` int(11) NOT NULL DEFAULT 0,
  `flatAmmo3` int(11) NOT NULL DEFAULT 0,
  `flatWeapon4` int(11) NOT NULL DEFAULT 0,
  `flatAmmo4` int(11) NOT NULL DEFAULT 0,
  `flatWeapon5` int(11) NOT NULL DEFAULT 0,
  `flatAmmo5` int(11) NOT NULL DEFAULT 0,
  `flatObjectX1` float NOT NULL DEFAULT 0,
  `flatObjectY1` float NOT NULL DEFAULT 0,
  `flatObjectZ1` float NOT NULL DEFAULT 0,
  `flatObjectRX1` float NOT NULL DEFAULT 0,
  `flatObjectRY1` float NOT NULL DEFAULT 0,
  `flatObjectRZ1` float NOT NULL DEFAULT 0,
  `flatObjectModel1` int(8) NOT NULL DEFAULT 0,
  `flatObjectExists1` int(8) NOT NULL DEFAULT 0,
  `flatObjectX2` float NOT NULL DEFAULT 0,
  `flatObjectY2` float NOT NULL DEFAULT 0,
  `flatObjectZ2` float NOT NULL DEFAULT 0,
  `flatObjectRX2` float NOT NULL DEFAULT 0,
  `flatObjectRY2` float NOT NULL DEFAULT 0,
  `flatObjectRZ2` float NOT NULL DEFAULT 0,
  `flatObjectModel2` int(8) NOT NULL DEFAULT 0,
  `flatObjectExists2` int(8) NOT NULL DEFAULT 0,
  `flatObjectX3` float NOT NULL DEFAULT 0,
  `flatObjectY3` float NOT NULL DEFAULT 0,
  `flatObjectZ3` float NOT NULL DEFAULT 0,
  `flatObjectRX3` float NOT NULL DEFAULT 0,
  `flatObjectRY3` float NOT NULL DEFAULT 0,
  `flatObjectRZ3` float NOT NULL DEFAULT 0,
  `flatObjectModel3` int(8) NOT NULL DEFAULT 0,
  `flatObjectExists3` int(8) NOT NULL DEFAULT 0,
  `flatObjectX4` float NOT NULL DEFAULT 0,
  `flatObjectY4` float NOT NULL DEFAULT 0,
  `flatObjectZ4` float NOT NULL DEFAULT 0,
  `flatObjectRX4` float NOT NULL DEFAULT 0,
  `flatObjectRY4` float NOT NULL DEFAULT 0,
  `flatObjectRZ4` float NOT NULL DEFAULT 0,
  `flatObjectModel4` int(8) NOT NULL DEFAULT 0,
  `flatObjectExists4` int(8) NOT NULL DEFAULT 0,
  `flatObjectX5` float NOT NULL DEFAULT 0,
  `flatObjectY5` float NOT NULL DEFAULT 0,
  `flatObjectZ5` float NOT NULL DEFAULT 0,
  `flatObjectRX5` float NOT NULL DEFAULT 0,
  `flatObjectRY5` float NOT NULL DEFAULT 0,
  `flatObjectRZ5` float NOT NULL DEFAULT 0,
  `flatObjectModel5` int(8) NOT NULL DEFAULT 0,
  `flatObjectExists5` int(8) NOT NULL DEFAULT 0,
  `flatDurability1` int(11) NOT NULL DEFAULT 0,
  `flatDurability2` int(11) NOT NULL DEFAULT 0,
  `flatDurability3` int(11) NOT NULL DEFAULT 0,
  `flatDurability4` int(11) NOT NULL DEFAULT 0,
  `flatDurability5` int(11) NOT NULL DEFAULT 0,
  `flatSerial1` int(5) NOT NULL DEFAULT 0,
  `flatSerial2` int(5) NOT NULL DEFAULT 0,
  `flatSerial3` int(5) NOT NULL DEFAULT 0,
  `flatSerial4` int(5) NOT NULL DEFAULT 0,
  `flatSerial5` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flat`
--

INSERT INTO `flat` (`flatID`, `flatOwner`, `flatOwnerName`, `flatPrice`, `flatPosX`, `flatPosY`, `flatPosZ`, `flatPosRX`, `flatPosRY`, `flatPosRZ`, `flatInterior`, `flatVW`, `flatPointX`, `flatPointY`, `flatPointZ`, `flatPointRadius`, `flatLocked`, `flatMoney`, `flatTextX`, `flatTextY`, `flatTextZ`, `flatStatus`, `flatMoveX`, `flatMoveY`, `flatMoveZ`, `flatMoveRX`, `flatMoveRY`, `flatMoveRZ`, `flatWeapon1`, `flatAmmo1`, `flatWeapon2`, `flatAmmo2`, `flatWeapon3`, `flatAmmo3`, `flatWeapon4`, `flatAmmo4`, `flatWeapon5`, `flatAmmo5`, `flatObjectX1`, `flatObjectY1`, `flatObjectZ1`, `flatObjectRX1`, `flatObjectRY1`, `flatObjectRZ1`, `flatObjectModel1`, `flatObjectExists1`, `flatObjectX2`, `flatObjectY2`, `flatObjectZ2`, `flatObjectRX2`, `flatObjectRY2`, `flatObjectRZ2`, `flatObjectModel2`, `flatObjectExists2`, `flatObjectX3`, `flatObjectY3`, `flatObjectZ3`, `flatObjectRX3`, `flatObjectRY3`, `flatObjectRZ3`, `flatObjectModel3`, `flatObjectExists3`, `flatObjectX4`, `flatObjectY4`, `flatObjectZ4`, `flatObjectRX4`, `flatObjectRY4`, `flatObjectRZ4`, `flatObjectModel4`, `flatObjectExists4`, `flatObjectX5`, `flatObjectY5`, `flatObjectZ5`, `flatObjectRX5`, `flatObjectRY5`, `flatObjectRZ5`, `flatObjectModel5`, `flatObjectExists5`, `flatDurability1`, `flatDurability2`, `flatDurability3`, `flatDurability4`, `flatDurability5`, `flatSerial1`, `flatSerial2`, `flatSerial3`, `flatSerial4`, `flatSerial5`) VALUES
(21, 1, 'Eggar_Austerline', 1, 1685.66, -1397.77, 84.6561, 0, 0, 0, 0, 0, 1686.41, -1397.33, 84.6562, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `ID` int(12) DEFAULT 0,
  `furnitureID` int(12) NOT NULL,
  `furnitureName` varchar(32) DEFAULT NULL,
  `furnitureModel` int(12) DEFAULT 0,
  `furnitureX` float DEFAULT 0,
  `furnitureY` float DEFAULT 0,
  `furnitureZ` float DEFAULT 0,
  `furnitureRX` float DEFAULT 0,
  `furnitureRY` float DEFAULT 0,
  `furnitureRZ` float DEFAULT 0,
  `furnitureType` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `furniture`
--

INSERT INTO `furniture` (`ID`, `furnitureID`, `furnitureName`, `furnitureModel`, `furnitureX`, `furnitureY`, `furnitureZ`, `furnitureRX`, `furnitureRY`, `furnitureRZ`, `furnitureType`) VALUES
(9, 59, 'Bed 4', 1745, 248.343, 305.062, 998.308, 0.2, 0, 144.166, 0),
(10, 60, 'Bed 12', 1799, 2232.59, -1105.21, 1049.95, 0, 0, 90.2215, 0),
(10, 61, 'Cabinet 18', 2329, 2234.24, -1104.94, 1049.89, 0, 0, -89.2295, 0),
(10, 62, 'Cabinet 8', 2066, 2229.38, -1105.99, 1049.87, 0, 0, 91.5273, 0),
(10, 63, 'Table 4', 2180, 2229.63, -1109.26, 1049.9, 0, 0, -0.6025, 0),
(10, 65, 'Television 7', 1752, 2229.5, -1109.45, 1050.69, 0, 0, 154.256, 0),
(10, 66, 'Water Cooler 2', 2002, 2229.37, -1106.57, 1049.88, 0, 0, 91.8946, 0),
(10, 67, 'Lamp 1', 2108, 2228.65, -1112.93, 1054.53, 179.7, 0, 164.057, 0),
(10, 68, 'Mop and Pail', 1778, 2231.17, -1114.81, 1049.88, 0, 0, -88.9822, 0),
(10, 69, 'Frame 20', 2270, 2229.36, -1104.71, 1051.95, 0, 0, 91.3863, 0),
(10, 70, 'Frame 15', 2275, 2229.4, -1106.3, 1052, 0, 0, 88.4618, 0),
(10, 71, 'Frame 13', 2277, 2229.37, -1107.58, 1052.03, 0, 0, 90.4174, 0),
(10, 72, 'Lamp 2', 2106, 2230.68, -1109.32, 1050.67, 0, 0, 91.021, 0),
(10, 76, 'Treadmill', 2627, 2232.97, -1104.81, 1049.88, 0, 0, 0.1436, 0),
(10, 77, 'Chair 1', 1671, 2230.81, -1108.13, 1050.33, 0, 0, -40.1779, 0),
(10, 78, 'Kitchen 27', 2139, 2229.45, -1107.37, 1049.9, 0, 0, 92.0234, 0),
(10, 81, 'Book', 2894, 2229.21, -1106.01, 1051.31, 0, 0, 89.8379, 0),
(10, 82, 'Book Pile 3', 2827, 2230.76, -1105.72, 1049.88, 0, 0, -2.9412, 0),
(10, 84, 'Washer', 1208, 2230.35, -1114.76, 1049.85, 0, 0, -0.9594, 0),
(10, 85, 'Bathroom 8', 2523, 2230.09, -1114.54, 1049.9, 0, 0, 179.089, 0),
(10, 86, 'Bathroom 7', 2522, 2226.29, -1110.52, 1049.9, 0, 0, 0.1427, 0),
(10, 87, 'Bathroom 13', 2528, 2226.88, -1114.5, 1049.87, 0, 0, 178.826, 0),
(10, 88, 'Chair 4', 1708, 2235.29, -1108.46, 1049.89, 0, 0, -89.417, 0),
(10, 89, 'Radiator', 1738, 2229.7, -1111.67, 1050.53, 0, 0, 1.5913, 0),
(10, 90, 'Basketball', 2114, 2232.26, -1104.15, 1050.04, 0, 0, 91.0913, 0),
(10, 91, 'Mat 2', 2632, 2231.13, -1106.88, 1049.83, 0, 0, -0.9719, 0),
(10, 92, 'Kitchen 16', 2426, 2229.2, -1107.39, 1050.97, 0, 0, 92.8186, 0),
(10, 94, 'Kitchen 10', 2147, 2235.29, -1106.93, 1049.87, 0, 0, 269.895, 0),
(10, 96, 'Mat 2', 2632, 2231.1, -1108.77, 1049.83, 0, 0, -0.6816, 0),
(10, 97, 'Mat 2', 2632, 2231.16, -1105, 1049.83, 0, 0, -0.9363, 0),
(10, 98, 'Mat 2', 2632, 2234.07, -1105.91, 1049.85, 0, 0, 89.122, 0);

-- --------------------------------------------------------

--
-- Table structure for table `garage`
--

CREATE TABLE `garage` (
  `garageID` int(8) NOT NULL,
  `garageX` float DEFAULT 0,
  `garageY` float DEFAULT 0,
  `garageZ` float DEFAULT 0,
  `garageA` float DEFAULT 0,
  `garageExterior` int(8) DEFAULT 0,
  `garageExteriorVW` int(8) DEFAULT 0,
  `garagePrice` int(6) NOT NULL DEFAULT 0,
  `garageFee` int(6) NOT NULL DEFAULT 0,
  `garageOwner` int(11) NOT NULL DEFAULT 0,
  `garageOwnerName` varchar(64) NOT NULL DEFAULT '0',
  `garageName` varchar(32) NOT NULL DEFAULT '0',
  `garageVault` int(12) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `garage`
--

INSERT INTO `garage` (`garageID`, `garageX`, `garageY`, `garageZ`, `garageA`, `garageExterior`, `garageExteriorVW`, `garagePrice`, `garageFee`, `garageOwner`, `garageOwnerName`, `garageName`, `garageVault`) VALUES
(53, 2434.15, -1227.66, 25.2808, 54.6298, 0, 0, 10, 5, 95, 'eggar', 'Garasi Club Malam', 0),
(54, 1513.58, -1657.65, 13.5391, 0.6271, 0, 0, 10, 5, 0, 'eggar', 'Garasi Penjara Polisi', 0),
(55, 1674.52, -1285.29, 14.2457, 352.636, 0, 0, 2, 5, 0, 'eggar', 'Garasi Kantor Polisi', 0),
(56, 1269.41, -2022.99, 59.1509, 4.6445, 0, 0, 10, 5, 65, 'eggar', 'Garasi Pemerintahan', 0),
(57, 1177.46, -1361.46, 14.3, 273.228, 0, 0, 3, 5, 20, 'eggar', 'Garasi Rumah SAkit', 0),
(58, 1551.51, -2248.83, 13.5468, 33.5088, 0, 0, 2, 5, 20, 'Emmorage_Elpatron', 'Garasi Bandara', 0),
(59, 2742.43, 720.736, 10.908, 91.708, 0, 0, 1, 5, 0, 'Pedagang', 'Garasi Pedagang', 0),
(60, 456.331, 965.917, 4.7414, 237.701, 0, 0, 1, 5, 1, 'Pengambilan Batu', 'Garasi Pengambilan Batu', 0),
(61, 1555.99, 27.5778, 24.1536, 248.583, 0, 0, 1, 5, 1, 'Pengambilan Ayam', 'Garasi Pengambilan Ayam', 0),
(62, 1906.57, 160.811, 37.1489, 99.9149, 0, 0, 1, 5, 1, 'Proses Ayam', 'Garasi Proses Ayam', 0),
(63, 1795.6, -1777.44, 13.5446, 94.1704, 0, 0, 1, 5, 1, 'eggar', 'Garasi Penjahit', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gateID` int(12) NOT NULL,
  `gateModel` int(12) DEFAULT 0,
  `gateSpeed` float DEFAULT 0,
  `gateTime` int(12) DEFAULT 0,
  `gateX` float DEFAULT 0,
  `gateY` float DEFAULT 0,
  `gateZ` float DEFAULT 0,
  `gateRX` float DEFAULT 0,
  `gateRY` float DEFAULT 0,
  `gateRZ` float DEFAULT 0,
  `gateInterior` int(12) DEFAULT 0,
  `gateWorld` int(12) DEFAULT 0,
  `gateMoveX` float DEFAULT 0,
  `gateMoveY` float DEFAULT 0,
  `gateMoveZ` float DEFAULT 0,
  `gateMoveRX` float DEFAULT 0,
  `gateMoveRY` float DEFAULT 0,
  `gateMoveRZ` float DEFAULT 0,
  `gateLinkID` int(12) DEFAULT 0,
  `gateFaction` int(12) DEFAULT 0,
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gates`
--

INSERT INTO `gates` (`gateID`, `gateModel`, `gateSpeed`, `gateTime`, `gateX`, `gateY`, `gateZ`, `gateRX`, `gateRY`, `gateRZ`, `gateInterior`, `gateWorld`, `gateMoveX`, `gateMoveY`, `gateMoveZ`, `gateMoveRX`, `gateMoveRY`, `gateMoveRZ`, `gateLinkID`, `gateFaction`, `gatePass`, `gateRadius`) VALUES
(1, 980, 3, 0, 249.697, 76.142, 1003.64, 0, 0, 275.368, 0, 0, 2728.06, 681.313, 0.9281, -1000, -1000, -1000, -1, -1, '', 5),
(2, 980, 3, 0, 249.759, 75.7906, 1003.64, 0, 0, 273.005, 0, 0, 1037.85, -1956.95, 8.3871, 0, 0, 269.234, -1, -1, '', 5),
(3, 980, 3, 0, 2746.04, 673.848, 7.0911, -4.6, 1.2, -87.4816, 0, 0, 2727.69, 681.672, 0.9281, -1000, -1000, -1000, -1, -1, '', 5),
(4, 980, 3, 0, 2735.83, 667.169, 6.1481, 0, 0, 94.6984, 0, 0, 2734.92, 669.683, 0.9381, -1000, -1000, -1000, -1, -1, '', 5),
(5, 980, 3, 0, 2732.66, 666.495, 6.9081, 0, 0, 276.095, 0, 0, 2732.66, 666.495, 0.9381, -1000, -1000, -1000, -1, -1, '', 5),
(6, 3089, 3, 0, 247.865, 76.6341, 1003.66, -0.1, 0.6, -86.7107, 6, 0, 247.772, 78.2612, 1003.69, -0.1, 0.6, -86.7107, -1, 2, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `gstations`
--

CREATE TABLE `gstations` (
  `id` int(11) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 10000,
  `posx` float DEFAULT 0,
  `posy` float DEFAULT 0,
  `posz` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `houseID` int(12) NOT NULL,
  `houseOwner` int(12) DEFAULT 0,
  `housePrice` int(12) DEFAULT 0,
  `houseAddress` varchar(32) DEFAULT NULL,
  `housePosX` float DEFAULT 0,
  `housePosY` float DEFAULT 0,
  `housePosZ` float DEFAULT 0,
  `housePosA` float DEFAULT 0,
  `houseIntX` float DEFAULT 0,
  `houseIntY` float DEFAULT 0,
  `houseIntZ` float DEFAULT 0,
  `houseIntA` float DEFAULT 0,
  `houseInterior` int(12) DEFAULT 0,
  `houseExterior` int(12) DEFAULT 0,
  `houseExteriorVW` int(12) DEFAULT 0,
  `houseLocked` int(4) DEFAULT 0,
  `houseWeapon1` int(12) DEFAULT 0,
  `houseAmmo1` int(12) DEFAULT 0,
  `houseWeapon2` int(12) DEFAULT 0,
  `houseAmmo2` int(12) DEFAULT 0,
  `houseWeapon3` int(12) DEFAULT 0,
  `houseAmmo3` int(12) DEFAULT 0,
  `houseWeapon4` int(12) DEFAULT 0,
  `houseAmmo4` int(12) DEFAULT 0,
  `houseWeapon5` int(12) DEFAULT 0,
  `houseAmmo5` int(12) DEFAULT 0,
  `houseWeapon6` int(12) DEFAULT 0,
  `houseAmmo6` int(12) DEFAULT 0,
  `houseWeapon7` int(12) DEFAULT 0,
  `houseAmmo7` int(12) DEFAULT 0,
  `houseWeapon8` int(12) DEFAULT 0,
  `houseAmmo8` int(12) DEFAULT 0,
  `houseWeapon9` int(12) DEFAULT 0,
  `houseAmmo9` int(12) DEFAULT 0,
  `houseWeapon10` int(12) DEFAULT 0,
  `houseAmmo10` int(12) DEFAULT 0,
  `houseMoney` int(12) DEFAULT 0,
  `houseOwnerName` varchar(32) NOT NULL DEFAULT '0',
  `houseDurability1` int(11) NOT NULL DEFAULT 0,
  `houseDurability2` int(11) NOT NULL DEFAULT 0,
  `houseDurability3` int(11) NOT NULL DEFAULT 0,
  `houseDurability4` int(11) NOT NULL DEFAULT 0,
  `houseDurability5` int(11) NOT NULL DEFAULT 0,
  `houseDurability6` int(11) NOT NULL DEFAULT 0,
  `houseDurability7` int(11) NOT NULL DEFAULT 0,
  `houseDurability8` int(11) NOT NULL DEFAULT 0,
  `houseDurability9` int(11) NOT NULL DEFAULT 0,
  `houseDurability10` int(11) NOT NULL DEFAULT 0,
  `houseSerial1` int(5) NOT NULL DEFAULT 0,
  `houseSerial2` int(5) NOT NULL DEFAULT 0,
  `houseSerial3` int(5) NOT NULL DEFAULT 0,
  `houseSerial4` int(5) NOT NULL DEFAULT 0,
  `houseSerial5` int(5) NOT NULL DEFAULT 0,
  `houseSerial6` int(5) NOT NULL DEFAULT 0,
  `houseSerial7` int(5) NOT NULL DEFAULT 0,
  `houseSerial8` int(5) NOT NULL DEFAULT 0,
  `houseSerial9` int(5) NOT NULL DEFAULT 0,
  `houseSerial10` int(5) NOT NULL DEFAULT 0,
  `housePark` int(3) NOT NULL DEFAULT 0,
  `houseParkX` float NOT NULL DEFAULT 0,
  `houseParkY` float NOT NULL DEFAULT 0,
  `houseParkZ` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`houseID`, `houseOwner`, `housePrice`, `houseAddress`, `housePosX`, `housePosY`, `housePosZ`, `housePosA`, `houseIntX`, `houseIntY`, `houseIntZ`, `houseIntA`, `houseInterior`, `houseExterior`, `houseExteriorVW`, `houseLocked`, `houseWeapon1`, `houseAmmo1`, `houseWeapon2`, `houseAmmo2`, `houseWeapon3`, `houseAmmo3`, `houseWeapon4`, `houseAmmo4`, `houseWeapon5`, `houseAmmo5`, `houseWeapon6`, `houseAmmo6`, `houseWeapon7`, `houseAmmo7`, `houseWeapon8`, `houseAmmo8`, `houseWeapon9`, `houseAmmo9`, `houseWeapon10`, `houseAmmo10`, `houseMoney`, `houseOwnerName`, `houseDurability1`, `houseDurability2`, `houseDurability3`, `houseDurability4`, `houseDurability5`, `houseDurability6`, `houseDurability7`, `houseDurability8`, `houseDurability9`, `houseDurability10`, `houseSerial1`, `houseSerial2`, `houseSerial3`, `houseSerial4`, `houseSerial5`, `houseSerial6`, `houseSerial7`, `houseSerial8`, `houseSerial9`, `houseSerial10`, `housePark`, `houseParkX`, `houseParkY`, `houseParkZ`) VALUES
(24, 98, 10, NULL, 315.521, -1769.43, 4.6182, 355.535, 2317.82, -1026.71, 1050.22, 50, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aufa_Dev', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 12, 1, NULL, 1298.48, -797.987, 84.1406, 1.4479, 1260.65, -785.456, 1091.91, 85.8803, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Adler_Kruger', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1248.95, -801.36, 84.1406);

-- --------------------------------------------------------

--
-- Table structure for table `housestorage`
--

CREATE TABLE `housestorage` (
  `ID` int(12) DEFAULT 0,
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT 0,
  `itemQuantity` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ID` int(12) DEFAULT 0,
  `invID` int(12) NOT NULL,
  `invItem` varchar(32) DEFAULT NULL,
  `invModel` int(12) DEFAULT 0,
  `invQuantity` int(12) DEFAULT 0,
  `invTotal` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ID`, `invID`, `invItem`, `invModel`, `invQuantity`, `invTotal`) VALUES
(2, 3, 'Snack', 19561, 10, 0),
(2, 4, 'Air Mineral', 2958, 10, 0),
(3, 7, 'Snack', 19561, 10, 0),
(3, 8, 'Air Mineral', 2958, 10, 0),
(7, 13, 'Snack', 19561, 10, 0),
(7, 14, 'Air Mineral', 2958, 10, 0),
(8, 15, 'Snack', 19561, 10, 0),
(8, 16, 'Air Mineral', 2958, 10, 0),
(9, 17, 'Snack', 19561, 10, 0),
(9, 18, 'Air Mineral', 2958, 10, 0),
(10, 19, 'Snack', 19561, 9, 0),
(10, 20, 'Air Mineral', 2958, 10, 0),
(12, 23, 'Snack', 19561, 10, 0),
(12, 24, 'Air Mineral', 2958, 10, 0),
(12, 27, 'Radio', 19942, 1, 0),
(13, 28, 'Snack', 19561, 10, 0),
(13, 29, 'Air Mineral', 2958, 10, 0),
(14, 38, 'KTP', 1581, 1, 0),
(16, 39, 'Snack', 19561, 10, 0),
(16, 40, 'Air Mineral', 2958, 10, 0),
(14, 43, 'Handphone', 18867, 1, 0),
(14, 45, 'Botol Bekas', 2683, 21, 23216311492),
(14, 46, 'Padi', 806, 14, 66357244736),
(14, 48, 'Garam Kristal', 19177, 6, 7257823643),
(14, 49, 'Tebu', 651, 3, 3110495847),
(14, 51, 'Sampah', 2840, 64, 119537664000),
(20, 53, 'Snack', 19561, 10, 0),
(20, 54, 'Air Mineral', 2958, 10, 0),
(21, 55, 'Snack', 19561, 10, 0),
(21, 56, 'Air Mineral', 2958, 10, 0),
(15, 61, 'Snack', 19561, 25, 25367150592),
(15, 62, 'Air Mineral', 2958, 13, 12683575296),
(22, 67, 'BackPack', 2919, 1, 0),
(4, 71, 'Handphone', 18867, 1, 0),
(4, 72, 'Radio', 19942, 1, 0),
(24, 77, 'BackPack', 2919, 1, 0),
(4, 78, 'KTP', 1581, 1, 0),
(25, 82, 'Handphone', 18867, 1, 0),
(25, 83, 'Snack', 19561, 10, 0),
(25, 84, 'Air Mineral', 2958, 10, 0),
(26, 88, 'Handphone', 18867, 1, 0),
(26, 95, 'Radio', 19942, 1, 0),
(27, 101, 'Handphone', 18867, 1, 0),
(26, 105, 'Sampah', 2840, 53, 55574528000),
(27, 106, 'Sampah', 2840, 43, 44040192000),
(26, 108, 'KTP', 1581, 1, 0),
(26, 110, 'Kayu', 19793, 11, 5284823040),
(26, 112, 'Kayu Potongan', 831, 20, 4194304000),
(27, 115, 'KTP', 1581, 1, 0),
(5, 116, 'Sampah', 2840, 20, 19922944000),
(12, 117, 'Handphone', 18867, 1, 0),
(5, 118, 'Handphone', 18867, 1, 0),
(28, 121, 'Handphone', 18867, 1, 0),
(28, 122, 'Snack', 19561, 10, 0),
(28, 123, 'Air Mineral', 2958, 10, 0),
(11, 128, 'KTP', 1581, 1, 0),
(11, 129, 'Sampah', 2840, 23, 24117248000),
(11, 130, 'Handphone', 18867, 1, 0),
(26, 131, 'Air Mineral', 2958, 16, 32765902848),
(26, 132, 'Snack', 19561, 32, 50734301184),
(30, 136, 'BackPack', 2919, 1, 0),
(31, 142, 'BackPack', 2919, 1, 0),
(23, 143, 'Snack', 19561, 5, 4227858432),
(23, 144, 'Air Mineral', 2958, 5, 4227858432),
(34, 150, 'BackPack', 2919, 1, 0),
(35, 153, 'Handphone', 18867, 1, 0),
(35, 154, 'Snack', 19561, 10, 0),
(35, 155, 'Air Mineral', 2958, 10, 0),
(36, 157, 'Botol Bekas', 2683, 4, 1055286886),
(36, 158, 'Karung Goni', 2060, 1, 0),
(2, 159, 'Handphone', 18867, 1, 0),
(39, 168, 'Handphone', 18867, 1, 0),
(39, 169, 'Snack', 19561, 10, 0),
(39, 170, 'Air Mineral', 2958, 10, 0),
(42, 176, 'BackPack', 2919, 1, 0),
(43, 184, 'Handphone', 18867, 1, 0),
(43, 185, 'Snack', 19561, 10, 0),
(43, 186, 'Air Mineral', 2958, 10, 0),
(44, 187, 'BackPack', 2919, 1, 0),
(45, 188, 'BackPack', 2919, 1, 0),
(27, 197, 'Batu', 3929, 2, 6341787648),
(48, 201, 'Handphone', 18867, 1, 0),
(48, 202, 'Snack', 19561, 10, 0),
(48, 203, 'Air Mineral', 2958, 10, 0),
(39, 204, 'KTP', 1581, 1, 0),
(49, 209, 'Handphone', 18867, 1, 0),
(44, 212, 'KTP', 1581, 1, 0),
(14, 225, 'Radio', 19942, 1, 0),
(27, 226, 'Batu Cucian', 2936, 5, 0),
(51, 240, 'Handphone', 18867, 1, 0),
(51, 241, 'Snack', 19561, 10, 0),
(51, 242, 'Air Mineral', 2958, 10, 0),
(51, 243, 'Radio', 19942, 1, 0),
(53, 244, 'BackPack', 2919, 1, 0),
(52, 245, 'Radio', 19942, 1, 0),
(52, 246, 'Handphone', 18867, 2, 1065353216),
(50, 247, 'Handphone', 18867, 1, 0),
(50, 248, 'Snack', 19561, 10, 0),
(50, 249, 'Air Mineral', 2958, 10, 0),
(52, 250, 'Snack', 19561, 10, 0),
(52, 251, 'Air Mineral', 2958, 10, 0),
(54, 253, 'Handphone', 18867, 1, 0),
(54, 254, 'Snack', 19561, 10, 0),
(54, 255, 'Air Mineral', 2958, 10, 0),
(55, 257, 'Handphone', 18867, 1, 0),
(55, 258, 'Snack', 19561, 10, 0),
(55, 259, 'Air Mineral', 2958, 10, 0),
(56, 263, 'BackPack', 2919, 1, 0),
(57, 268, 'Handphone', 18867, 1, 0),
(57, 269, 'Snack', 19561, 10, 0),
(57, 270, 'Air Mineral', 2958, 10, 0),
(58, 272, 'Handphone', 18867, 1, 0),
(58, 273, 'Snack', 19561, 2, 0),
(59, 275, 'BackPack', 2919, 1, 0),
(48, 276, 'KTP', 1581, 1, 0),
(58, 277, 'KTP', 1581, 1, 0),
(58, 279, 'Ayam Hidup', 16776, 5, 4261412864),
(58, 281, 'Kayu', 19793, 9, 2113929216),
(61, 283, 'BackPack', 2919, 1, 0),
(60, 284, 'Handphone', 18867, 1, 0),
(60, 285, 'Snack', 19561, 10, 0),
(60, 286, 'Air Mineral', 2958, 10, 0),
(46, 290, 'Handphone', 18867, 1, 0),
(46, 298, 'KTP', 1581, 1, 0),
(10, 301, 'Sampah', 2840, 1, 0),
(63, 302, 'Handphone', 18867, 1, 0),
(63, 303, 'Snack', 19561, 10, 0),
(63, 304, 'Air Mineral', 2958, 10, 0),
(64, 306, 'Handphone', 18867, 1, 0),
(10, 309, 'KTP', 1581, 1, 0),
(62, 310, 'Handphone', 18867, 1, 0),
(62, 311, 'Snack', 19561, 10, 0),
(62, 312, 'Air Mineral', 2958, 10, 0),
(4, 321, 'Snack', 19561, 10, 24310185984),
(64, 323, 'KTP', 1581, 1, 0),
(64, 324, 'Sampah', 2840, 30, 30408704000),
(65, 325, 'BackPack', 2919, 1, 0),
(66, 326, 'BackPack', 2919, 1, 0),
(50, 335, 'KTP', 1581, 1, 0),
(27, 339, 'Whiskey', 2958, 47, 48080145622),
(27, 340, 'Vodka', 2958, 5, 4180882228),
(27, 341, 'Kevlar', 1242, 1, 0),
(68, 351, 'Handphone', 18867, 1, 0),
(68, 352, 'Snack', 19561, 10, 0),
(68, 353, 'Air Mineral', 2958, 10, 0),
(67, 368, 'Handphone', 18867, 1, 0),
(67, 369, 'Radio', 19942, 1, 0),
(67, 372, 'KTP', 1581, 1, 0),
(67, 373, 'Botol Bekas', 2683, 1, 0),
(67, 374, 'Karung Goni', 2060, 1, 0),
(67, 375, 'Padi', 806, 2, 1036831949),
(67, 377, 'Ayam Hidup', 16776, 6, 5326766080),
(14, 382, 'Cabai', 870, 3, 4147327796),
(14, 392, 'Karung Goni', 2060, 3, 10552868860),
(70, 394, 'Handphone', 18867, 1, 0),
(70, 395, 'Snack', 19561, 10, 0),
(70, 396, 'Air Mineral', 2958, 10, 0),
(71, 401, 'Handphone', 18867, 1, 0),
(71, 402, 'Snack', 19561, 10, 0),
(71, 403, 'Air Mineral', 2958, 10, 0),
(71, 404, 'KTP', 1581, 1, 0),
(38, 407, 'Handphone', 18867, 1, 0),
(18, 408, 'Snack', 19561, 11, 30651973632),
(38, 410, 'KTP', 1581, 1, 0),
(67, 415, 'Sampah', 2840, 54, 55574528000),
(49, 416, 'KTP', 1581, 1, 0),
(67, 417, 'Batu', 3929, 10, 9512681472),
(49, 418, 'Batu', 3929, 10, 9512681472),
(72, 426, 'Handphone', 18867, 1, 0),
(72, 427, 'Snack', 19561, 10, 0),
(72, 428, 'Air Mineral', 2958, 10, 0),
(73, 429, 'BackPack', 2919, 1, 0),
(74, 432, 'Handphone', 18867, 1, 0),
(69, 435, 'Snack', 19561, 10, 0),
(69, 436, 'Air Mineral', 2958, 10, 0),
(69, 437, 'Handphone', 18867, 1, 0),
(74, 439, 'KTP', 1581, 1, 0),
(75, 441, 'Handphone', 18867, 1, 0),
(75, 442, 'Snack', 19561, 10, 0),
(75, 443, 'Air Mineral', 2958, 10, 0),
(76, 444, 'BackPack', 2919, 1, 0),
(77, 446, 'Handphone', 18867, 1, 0),
(77, 447, 'Radio', 19942, 1, 0),
(46, 450, 'Sampah', 2840, 19, 18874368000),
(46, 451, 'Air Mineral', 2958, 7, 6341787648),
(46, 452, 'Snack', 19561, 7, 6341787648),
(14, 465, 'Wine', 19561, 2, 1045220557),
(14, 466, 'Whiskey', 2958, 3, 2090441114),
(14, 467, 'Snack', 19561, 5, 4227858432),
(14, 469, 'Air Mineral', 2958, -1, 4227858432),
(78, 470, 'BackPack', 2919, 1, 0),
(79, 474, 'BackPack', 2919, 1, 0),
(79, 475, 'Desert Eagle', 348, 1, 0),
(81, 478, 'Handphone', 18867, 1, 0),
(49, 483, 'Medkit', 1580, 1, 0),
(81, 490, 'Sampah', 2840, 77, 80740352000),
(49, 491, 'Sampah', 2840, 20, 19922944000),
(32, 493, 'Radio', 19942, 1, 0),
(67, 494, 'Snack', 19561, 1, 12683575296),
(82, 497, 'BackPack', 2919, 1, 0),
(81, 500, 'Radio', 19942, 1, 0),
(83, 504, 'BackPack', 2919, 1, 0),
(85, 506, 'BackPack', 2919, 1, 0),
(46, 507, 'Radio', 19942, 1, 0),
(86, 508, 'BackPack', 2919, 1, 0),
(87, 509, 'BackPack', 2919, 1, 0),
(88, 513, 'Handphone', 18867, 1, 0),
(88, 514, 'Snack', 19561, 11, 1056964608),
(88, 515, 'Air Mineral', 2958, 10, 1056964608),
(89, 529, 'BackPack', 2919, 1, 0),
(88, 531, 'Sampah', 2840, 1, 0),
(90, 532, 'Handphone', 18867, 1, 0),
(90, 533, 'Snack', 19561, 10, 0),
(90, 534, 'Air Mineral', 2958, 10, 0),
(91, 535, 'BackPack', 2919, 1, 0),
(81, 536, 'KTP', 1581, 1, 0),
(81, 540, 'Botol Bekas', 2683, 2, 1055286886),
(81, 542, 'Padi', 806, 2, 4147327796),
(81, 543, 'Beras', 19573, 1, 0),
(81, 545, 'Karung Goni', 2060, 2, 1055286886),
(92, 546, 'BackPack', 2919, 1, 0),
(49, 551, 'Snack', 19561, 18, 22196256768),
(49, 552, 'Air Mineral', 2958, 11, 20082327552),
(95, 555, 'Handphone', 18867, 1, 0),
(95, 556, 'Snack', 19561, 10, 0),
(95, 557, 'Air Mineral', 2958, 10, 0),
(32, 561, 'Sampah', 2840, 19, 18874368000),
(58, 564, 'Sampah', 2840, 18, 17825792000),
(96, 566, 'Handphone', 18867, 1, 0),
(96, 567, 'Snack', 19561, 10, 0),
(96, 568, 'Air Mineral', 2958, 10, 0),
(32, 570, 'Snack', 19561, 13, 23253221376),
(32, 571, 'Air Mineral', 2958, 10, 20082327552),
(97, 572, 'Snack', 19561, 10, 0),
(97, 573, 'Air Mineral', 2958, 10, 0),
(97, 574, 'Handphone', 18867, 1, 0),
(32, 575, 'Handphone', 18867, 1, 0),
(98, 577, 'Handphone', 18867, 1, 0),
(98, 578, 'Snack', 19561, 10, 0),
(98, 579, 'Air Mineral', 2958, 10, 0),
(101, 596, 'Handphone', 18867, 1, 0),
(101, 597, 'Snack', 19561, 10, 0),
(101, 598, 'Air Mineral', 2958, 10, 0),
(103, 605, 'Handphone', 18867, 1, 0),
(104, 609, 'Handphone', 18867, 1, 0),
(104, 610, 'Snack', 19561, 10, 0),
(104, 611, 'Air Mineral', 2958, 10, 0),
(104, 612, 'KTP', 1581, 1, 0),
(103, 613, 'KTP', 1581, 1, 0),
(107, 619, 'Handphone', 18867, 1, 0),
(107, 620, 'Snack', 19561, 10, 0),
(107, 621, 'Air Mineral', 2958, 10, 0),
(105, 624, 'Handphone', 18867, 1, 0),
(105, 625, 'Snack', 19561, 8, 0),
(105, 626, 'Air Mineral', 2958, 8, 0),
(105, 627, 'KTP', 1581, 1, 0),
(105, 628, 'Sampah', 2840, 4, 3145728000),
(106, 630, 'Handphone', 18867, 1, 0),
(106, 631, 'Snack', 19561, 10, 0),
(106, 632, 'Air Mineral', 2958, 10, 0),
(108, 634, 'Handphone', 18867, 1, 0),
(108, 635, 'Snack', 19561, 10, 0),
(108, 636, 'Air Mineral', 2958, 10, 0),
(108, 637, 'KTP', 1581, 1, 0),
(109, 640, 'Handphone', 18867, 1, 0),
(109, 641, 'Snack', 19561, 10, 0),
(109, 642, 'Air Mineral', 2958, 10, 0),
(110, 646, 'Handphone', 18867, 1, 0),
(110, 647, 'Snack', 19561, 10, 0),
(110, 648, 'Air Mineral', 2958, 10, 0),
(110, 649, 'KTP', 1581, 1, 0),
(110, 652, 'Karung Goni', 2060, 12, 14774016404),
(110, 653, 'Padi', 806, 3, 8294655592),
(108, 655, 'Padi', 806, 5, 12441983388),
(110, 656, 'Beras', 19573, 3, 2073663898),
(108, 657, 'Beras', 19573, 3, 2073663898),
(111, 660, 'Handphone', 18867, 1, 0),
(111, 661, 'Snack', 19561, 10, 0),
(111, 662, 'Air Mineral', 2958, 10, 0),
(112, 664, 'Handphone', 18867, 1, 0),
(112, 665, 'Snack', 19561, 10, 0),
(112, 666, 'Air Mineral', 2958, 10, 0),
(112, 667, 'Radio', 19942, 1, 0),
(99, 668, 'Padi', 806, 2, 7257823643),
(99, 669, 'Cabai', 870, 1, 8294655592),
(99, 670, 'Karung Goni', 2060, 1, 2110573772),
(99, 672, 'Beras', 19573, 2, 1036831949),
(99, 673, 'Sambal', 11722, 3, 2073663898),
(114, 674, 'BackPack', 2919, 1, 0),
(115, 676, 'Handphone', 18867, 1, 0),
(115, 677, 'Snack', 19561, 10, 0),
(115, 678, 'Air Mineral', 2958, 10, 0),
(115, 679, 'KTP', 1581, 1, 0),
(18, 680, 'Air Mineral', 2958, 1, 9512681472),
(116, 683, 'BackPack', 2919, 1, 0),
(32, 686, 'Whiskey', 2958, 2, 1045220557),
(100, 687, 'Kevlar', 1242, 3, 2147483648),
(18, 688, 'Sampah', 2840, 13, 12582912000),
(116, 691, 'Handphone', 18867, 1, 0),
(100, 692, 'Handphone', 18867, 1, 0),
(100, 693, 'Snack', 19561, 6, 0),
(100, 694, 'Air Mineral', 2958, 4, 0),
(100, 695, 'Sampah', 2840, 10, 9437184000),
(4, 697, 'Ayam Hidup', 16776, 3, 0),
(32, 699, 'Kevlar', 1242, 1, 0),
(4, 705, 'Sampah', 2840, 21, 20971520000),
(4, 706, 'Gula', 2663, 10, 1036831949),
(4, 712, 'Nasi Bungkus', 2663, 5, 0),
(117, 714, 'Handphone', 18867, 1, 0),
(117, 715, 'Snack', 19561, 10, 0),
(117, 716, 'Air Mineral', 2958, 10, 0),
(118, 717, 'BackPack', 2919, 1, 0),
(119, 718, 'BackPack', 2919, 1, 0),
(4, 723, 'Air Mineral', 2958, 3, 8455716864),
(1, 725, 'Handphone', 18867, 1, 0),
(1, 726, 'Snack', 19561, 10, 0),
(1, 727, 'Air Mineral', 2958, 10, 0),
(1, 728, 'Nasi Bungkus', 2663, 1, 0),
(1, 729, 'Sampah', 2840, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `itemstorage`
--

CREATE TABLE `itemstorage` (
  `ID` int(11) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Model` int(8) NOT NULL DEFAULT 0,
  `Quantity` int(8) NOT NULL DEFAULT 0,
  `StorageID` int(8) NOT NULL DEFAULT -1,
  `ExtraID` int(8) NOT NULL DEFAULT -1,
  `Type` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itemstorage`
--

INSERT INTO `itemstorage` (`ID`, `Name`, `Model`, `Quantity`, `StorageID`, `ExtraID`, `Type`) VALUES
(3, 'Beras', 19573, 21, 11, 12, 2),
(4, 'Garam', 19568, 1, 11, 12, 2),
(5, 'Gula', 2663, 1, 11, 12, 2),
(6, 'Sambal', 11722, 1, 11, 12, 2),
(8, 'Medkit', 1580, 1, 10, 2, 2),
(9, 'Ayam Kemas', 2768, 5, 10, 2, 2),
(10, 'Sampah', 2840, 4, 10, 2, 2),
(11, 'Ayam Kemas', 2768, 5, 11, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `ContactNumber` int(32) NOT NULL DEFAULT 0,
  `ConMessage` varchar(32) NOT NULL DEFAULT '-',
  `ContactOwn` varchar(32) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playersalary`
--

CREATE TABLE `playersalary` (
  `id` int(18) NOT NULL,
  `owner` int(12) NOT NULL DEFAULT -1,
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount` int(12) NOT NULL DEFAULT 0,
  `date` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playerucp`
--

CREATE TABLE `playerucp` (
  `pID` int(11) NOT NULL,
  `UCP` varchar(255) DEFAULT '0',
  `Password` varchar(255) DEFAULT '',
  `code` mediumint(9) NOT NULL DEFAULT 0,
  `DiscordID` bigint(20) NOT NULL,
  `status` text NOT NULL DEFAULT '0',
  `regdate` varchar(50) NOT NULL DEFAULT 'None',
  `ip` text DEFAULT NULL,
  `nohp` varchar(15) NOT NULL DEFAULT '0',
  `hide` varchar(100) NOT NULL DEFAULT 'true',
  `Banned` int(11) NOT NULL DEFAULT 0,
  `BannedBy` varchar(24) NOT NULL DEFAULT 'Admin',
  `BannedReason` varchar(32) NOT NULL DEFAULT '0',
  `BannedTime` int(11) NOT NULL DEFAULT 0,
  `Admin` int(11) NOT NULL DEFAULT 0,
  `Registered` int(11) NOT NULL DEFAULT 0,
  `Active` int(11) NOT NULL DEFAULT 0,
  `Whatsapp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playerucp`
--

INSERT INTO `playerucp` (`pID`, `UCP`, `Password`, `code`, `DiscordID`, `status`, `regdate`, `ip`, `nohp`, `hide`, `Banned`, `BannedBy`, `BannedReason`, `BannedTime`, `Admin`, `Registered`, `Active`, `Whatsapp`) VALUES
(1, 'Lival', '$2y$12$dA8DHyxnyhs.9JhE11C.j.MusgB24n.asujHaxvDTW5Y0pHFQ.566', 1, 4214124, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 11, 1716057772, 1, NULL),
(2, 'eggar', '$2y$12$uH4jQZnCH2V5gMGB8uEatuk23y.C6ZUwkHkBWwgjYfEh3of5iK/3G', 51224, 825274135340384308, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 999999, 1716056588, 1, NULL),
(3, 'Sukatani', '$2y$12$2D.hKMkPz3cRun8HamnycOQ57RXdzVEErDdB6eT7dBk3akBAv9Qr6', 31567, 1231365777589014598, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716061105, 1, NULL),
(4, 'Sagaraa', '', 10068, 1087999487370342470, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(5, 'Dyvone', '', 97629, 1161579492377108510, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(6, 'Austin', '$2y$12$9Oz274fH/dz7SW5bMmpTPOHh43d007OAfcmFS9angUdtn9ZOqWxnK', 67492, 1059042937297698857, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 4, 1716090690, 1, NULL),
(7, 'IniLexyyy', '$2y$12$M5ZzWRK.V6RpR4Zonv69Peqb7lSq/6NP9lmxFUnzvWQE4o4PPkDTK', 14343, 1043052615015079946, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 3, 1716092857, 1, NULL),
(8, 'Retzka', '$2y$12$hReCvD6qHH42QO7TO3yVJeApMkE7WGvjI9AJXAEILNto3c87MSPTS', 521, 1241605623368384535, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716094138, 1, NULL),
(9, 'Stealer', '$2y$12$p9fjBdnQ/a91.8b6I1gWyOwZtmQ.Xd3naj/wlSB3aivugKxYYt1CC', 46791, 1013304976820408421, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716117806, 1, NULL),
(10, 'Xoxo', '', 2112, 1045978397555294258, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(11, 'Adnannnn', '$2y$12$auLDPCDNzFV97WyTB0fz4ex2SJlOGlbNZ17JrWoGH8SUlN2H49Rpa', 2821, 861442163538788365, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716169933, 1, NULL),
(12, 'Cammora', '$2y$12$Gx5zaRCc0ticH.lcAxQN1.WnxswRHAMX9aJBHvdedOIWsxgiauSfi', 10580, 1034062159598059591, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 8, 1716899391, 1, NULL),
(13, 'LisYa', '', 82048, 1181134167459770380, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(14, 'ZeonWarka', '$2y$12$UCCoQElG5jOXojxaBpfuYuDSrprccjleZmJdza4ha.estPec1ZTfe', 99801, 1226930572815896576, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716206967, 1, NULL),
(15, 'Senn', '$2y$12$uFy7zfFThZ7Wg5lBO.4IseqUSOTZHRLGS9UMp4dRTvWHusU3xE6s6', 86533, 313927895368073229, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 1316134911, 1716209145, 1, NULL),
(16, 'RamaSatria', '$2y$12$zYyemCdKHTKYpRvw7SVNMukefO1aQtD.WP/eA/WcKeK.egKkiA13y', 93183, 1048489281993330758, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 4, 1716211686, 1, NULL),
(17, 'Glis', '$2y$12$73Rv1ud6aFc.eLbcC6ENFuu23nHG4LcQBuWO6Xk.Wz4TsRIrfY6A.', 49610, 1143187727475540089, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716211222, 1, NULL),
(18, 'vezima', '$2y$12$7544maom60zDNn4FBfNqIOEjuCIiiPutbs2OomjTKJgS5Kl1zhWiW', 47103, 1240962778232262667, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716211850, 1, NULL),
(19, 'achmde', '$2y$12$KIXIFUeTKLW19iK0dwZYUuIysUnFv03TfE7jXP.tRjP.B6cHPKcRC', 50550, 1057314875296190574, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716212503, 1, NULL),
(20, 'Ziza', '$2y$12$lyZURzpD1ZB4YuNxQUjE7ONeuVk5irElbm3nsNbkZ2OGL8N0tcQ72', 67989, 1077173402332311693, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 1, 1716213129, 1, NULL),
(21, 'KamilRorr', '$2y$12$AL2auh1JPPe2ieWnTf/Ou.WOCJV3h5kNIS4rKWDaBBLUI2iS7SXT6', 52948, 1235096890610286613, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716227376, 1, NULL),
(22, 'Hiroyuki', '$2y$12$WFN7JpxfRfQKK/N6Wd.m..E9gFIW6FziZ4Kd.fK.rBXQvBcbYAZBS', 35138, 1141624016105394236, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716229647, 1, NULL),
(23, 'BAKPAU', '', 51805, 1161301374429057186, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(24, 'Akimbo', '', 47074, 1161301374429057186, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(25, 'tyze', '', 27371, 883883310252707891, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(26, 'Dazarr', '$2y$12$XeW5HBWTZZPKiVvuvcRpPeQJlh5514qoFwdtIJjnRBGDgJ.syKZOS', 17264, 929828156838387812, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716442123, 1, NULL),
(27, 'Dika', '$2y$12$MuL1ZYLHL7r3XILnui9bJe.oJK8PnNJcwGdrirwzWGf3q3cQ7G4SW', 61315, 1240499825577820255, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716445699, 1, NULL),
(28, 'XDavid', '$2y$12$hnqcRPe7ilyo.eL6YosHW.EBSQE42RD05UTllhDDM0QtKJaUmfxHi', 55333, 1228714577319952424, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716812459, 1, NULL),
(29, 'KenzoCorleon', '$2y$12$/zC1/IQHJgxgE.Ay6NAUEeW085c/ab3JNSqZ4/cHqC3eV7pk6xXPi', 2348, 1207886498863521813, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716477088, 1, NULL),
(30, 'Syairi', '', 51097, 1241596411523629098, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(31, 'teten', '$2y$12$FiPg2xlXe7Irv2/6aeOIbOyyr5ue8vuUkVnrKeZHMc5jyQNW7R9Pe', 10176, 1031549999097585724, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716541645, 1, NULL),
(32, 'ROYRJN', '$2y$12$pnTTkCdKQaGDxpqzJsvE4OBxaqaSWLrbMARM/VgGKupghwI90mLey', 52627, 1242983541306949673, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716871675, 1, NULL),
(33, 'MikeWalker', '$2y$12$8ceAm6.yOa7m4VKH52yxVetOvyESeheQbp6XmTl7LaYHRO2Z1itUW', 29455, 702035178822041620, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716534471, 1, NULL),
(34, 'KrazyBrazy', '$2y$12$Oluoy5wuITdNuZZjuHsCpuc9h2DdYcsdspH1/yt2GXI3AYFxsApHy', 60008, 306821217363689473, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 9, 1716535649, 1, NULL),
(35, 'AryoJunior', '$2y$12$wr26z8HdrPXmxMywNrIKtej12AgadF95ZAuqbWutFkynNeMTcZnke', 26007, 1208569470331920385, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716547607, 1, NULL),
(36, 'Clavin', '', 38879, 1087304886514884659, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(37, 'ZenyTakuya', '', 35891, 1012617781457473566, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(38, 'Vann', '$2y$12$AhZJI7ytxS0LQYL3IQowK.P7qgcgq.nDhQNb4WAkywl8kiXXWHe5q', 12830, 997661864777490462, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716564967, 1, NULL),
(39, 'lyzenaozora', '', 32897, 1236918967801745409, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(40, 'PetotSembiring', '', 23351, 849653885077684275, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(41, 'kevv', '$2y$12$u0UF7dOcC4ChDHohaNwXNuXF3f8jmH/YCRHvxFuzTBv724GYKGIyS', 93918, 968678082200342539, '0', 'None', NULL, '0', 'true', 0, 'eggar', 'Tes', 1717161337, 5, 1716637113, 1, NULL),
(42, 'Tapuy', '', 57710, 949954956511821824, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(43, 'Umar', '$2y$12$xnOMTV1v8EDnPad/6TQEc.w7Ytpk8qufbOqWlEwglTp4QOKVK8H92', 22911, 1042447838870786110, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716647799, 1, NULL),
(44, 'Lutffy', '$2y$12$qE234SYSqTKA.68Rgy.EUu1QpjbaPoLb0GawEkbra4Xmnry4hhBjW', 85977, 1101719702830588034, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716659614, 1, NULL),
(45, 'Minguin', '$2y$12$qNOQR788d/4V0NS03Nvek.i9dBO1dwi8tBXJM/bHFUqqNeaeV7LBS', 79225, 1234427248937930774, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716696827, 1, NULL),
(46, 'Salman', '$2y$12$huDUBrrNenKHdVmuxI1Dzuja4VuBSjy4MsV59KSAUYMmnmDGxAxcW', 38493, 1105028700090667058, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716702146, 1, NULL),
(47, 'XaryCarian', '$2y$12$TM4GfUcOA/QwhHGXRm3cquBlhVU5MWuQ0oui96h8gyf5cCasaxoGy', 44058, 1228274256169668639, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716781513, 1, NULL),
(48, 'Jhordan', '$2y$12$4PycuvHKfR6VMxhGK6RMDO/7uH4Wh4yyMDUiVRqW8FnnLADNzohIK', 47348, 909770459178999828, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716790752, 1, NULL),
(49, 'levinz', '', 91489, 1055513648308699288, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(50, 'rapaa', '', 41945, 1094497351395180554, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(51, 'Damy', '$2y$12$B2pttvRQK0Umg3qYYTas.uhoshAB5N8MGKSzYtIJfva.QW0.l4vgC', 92690, 1104070789537480746, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716809230, 1, NULL),
(52, 'dedepro', '', 9450, 1237322156514480180, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(53, 'astronot', '$2y$12$tZfnYfz3cxVq7NvmETEtZO25Hz6K2moF6EIoqgTrQYYVjT2W9.t6e', 48964, 1208558949880827996, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716814833, 1, NULL),
(54, 'Leon', '$2y$12$abwLjitp6WwvP4kF.OGt/uGDDKfgxZwvVXJsPp39aeu/sskRT6Ctm', 81730, 1006847202980810807, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716816307, 1, NULL),
(55, 'Luzivert', '$2y$12$88a5mpW8tnoTAkcCGEzsbedSmv6SX41035PsAv0wm1X2drUvL/hW2', 76462, 1011178515707723836, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716823651, 1, NULL),
(56, 'Dudung', '$2y$12$0NCgF/EeH6tFfDHgZ7jS0uO1alsEO7fca7.zYYB9QlmjkJGQGjP7G', 88950, 436924715504762920, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716828738, 1, NULL),
(57, 'Rexsta', '$2y$12$6iyvojymnW1LBRXtReep.OJoxcAlsqVIRY9AgOO.kdgjB1uDperXe', 18600, 607163573495660546, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716828887, 1, NULL),
(58, 'Reinn', '$2y$12$wSvBZkwwzZZoaJ7U1kNbXeaZCwf8uiahz8pEWTKgPz746nP.F54Ue', 56155, 740489550228488193, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716829134, 1, NULL),
(59, 'zekio', '$2y$12$wlPvIHcBIgxr0.7RN4iz8emHARaJCo3FXoTNb0AckwzeOgfZOmY52', 98546, 942471811931713567, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716829595, 1, NULL),
(60, 'Dzaxt', '$2y$12$4m2sC./D/e1e9987ZtGx1uPqsr2B1fXXqou1ZTOa4BMDrtonJCBHG', 81353, 817998255103279105, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716854545, 1, NULL),
(61, 'Nekoma', '$2y$12$V8usLJt6lptGN8.lDdyMQOyESKChnPHetcsK11YIy6YiRDOXmARwO', 49795, 1100374276894375936, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716881120, 1, NULL),
(62, 'Miabb', '', 54983, 871362943877525564, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(63, 'Clint', '$2y$12$9YRbZ8htgGm6U/5xyH8xsO310df7MP6DtRPVCejA6PSe1UWvUL3Ei', 41319, 1212613276731572234, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716884205, 1, NULL),
(64, 'depen', '$2y$12$mD0tPu.cG2Y8Jl4bR.13uuFACMq8aCY3sPn78vT0PqNmFJPLy1Fpy', 38610, 1123117303052128296, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716884785, 1, NULL),
(65, 'Bramanty', '$2y$12$RrfD2FqcIFHM2bDDOIarA./vuXnal5tikh6Q.Pi35ikb5O104VuUe', 26419, 1210276535664246814, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716884961, 1, NULL),
(66, 'Kelpinzz', '$2y$12$ilpZ3rsznz7Da9gzpNVXd.z6ulVCYA/MnjJTtZvI5The2P1Qw5OxC', 83555, 957291996983210054, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716905827, 1, NULL),
(67, 'Revanlons', '$2y$12$4bfOoRbvuKuNL1la0WTRReWJYojsywJr/fJu6g2MFxsmhiVL.XZoy', 35514, 1160205860329508864, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716889073, 1, NULL),
(68, 'ayammmm', '$2y$12$rVNcmIEimVMl1x6lK.JEL.LMEIcj4dIcLrKy6QELdj93JhShHm58C', 13459, 1114088869806231552, '0', 'None', NULL, '0', 'true', 1, 'eggar', 'CHeATER', 1716889398, 0, 1716889182, 1, NULL),
(69, 'Elgib', '$2y$12$OpS1NKdAkbY7R0UqIjMAd.UfZyQd.ot9SUMAAz5no49yJhQa0Mw7K', 13247, 1133528639691046972, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716898631, 1, NULL),
(70, 'Xyanzu', '$2y$12$6SwXfGn2V9BQkYLKFQbjruIaXgdEep7pFv86d81GXs4CMjR5I/4vW', 95796, 327381873833803776, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716898980, 1, NULL),
(71, 'Zanoo', '$2y$12$QgZZRXRtoDRRFQkpfiHDfue3I/2t813e9FUFOCrJBrScu.UEodszi', 2590, 1177128234987552798, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716899954, 1, NULL),
(72, 'Nald', '$2y$12$alhuyLkcAY855/ANpXuLuOzOD31gAmwqBRlLbDonFqiDJOz.LXkxi', 90726, 1067058492118159460, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716908294, 1, NULL),
(73, 'Jawir', '', 46572, 1022896232261226667, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(74, 'KRATOZ', '', 60894, 987337423895818281, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(75, 'Jojomevls', '', 7943, 1230524021368426537, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(76, 'Janzz', '', 48861, 870106917924638720, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(77, 'stepmom', '$2y$12$S4TVto.AxcZiOdK43ZIA2.lnk.toZVe9EVH.71XAFpt2EAe3Pqg46', 92690, 1032987916223393882, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1716994852, 1, NULL),
(78, 'SatriaAdya', '', 51925, 1035171707192889425, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(79, 'BryanZaragoza', '', 71792, 1229394470483787837, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(80, 'Xynnn', '$2y$12$oKqhbeT97K9Qbh0st6RuI.DqM/46HD8RznUrNZK2/d322YPNi2/UO', 85620, 1188483689252929629, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717060982, 1, NULL),
(81, 'Dikamk', '$2y$12$bh2LE9Nu7j/PqMAMlsduX.m7Og8dsuvwPxLLto4UOeK1QIRmkMliO', 45049, 1151909241028882433, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717069630, 1, NULL),
(82, 'VillSannn', '$2y$12$9FC56gcz42EE4rFUa0zNpuPMRy26x6P2TPmoFV6MwAnTLhawF8hCO', 13267, 1233967777187102742, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717136350, 1, NULL),
(83, 'Khay', '$2y$12$tmaLZNiOhwpuVFphi5w9Gea62gjJu8X3h2ZWbrTD0RlfEmmoByRIG', 75155, 1244168002497155093, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717153266, 1, NULL),
(84, 'JosepAtsuko', '$2y$12$kAJoKLbbCgjRY66h9A/9tOir6ealJpWu9ZdGxlfN7uuRULIra5/Fi', 39162, 1246084077552144414, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717161186, 1, NULL),
(85, 'Baimz', '$2y$12$giEbEunf74HyNXYNrZpCYOQwSK4mgXCSfFSJIWOryOi/xbfr1UONC', 6136, 1221268808254361630, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717200659, 1, NULL),
(86, 'Jeki', '$2y$12$1Rfpcjc4sZ7/C686RV8q3uqkXOhHSop6B9jGxDhw7YhCaQGvV2EPm', 80499, 1239427114143318107, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717212511, 1, NULL),
(87, 'Bryan', '$2y$12$310dz0W/UD4wytsjcv3gvOTzo1zeiZY75mVhzDbiIBoifIFzV2zAO', 21991, 1232175992936730650, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717507677, 1, NULL),
(88, 'heyaji', '$2y$12$Q1nZwir89fPfqsfC3wEHc.PyBlCQn17zRQlolbyBi7cFmp5LPjsqa', 59329, 1170552920006197341, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717418901, 1, NULL),
(89, 'ShinS', '', 15498, 1044942550710112376, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(90, 'Sekize', '', 77441, 963418222982479942, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(91, 'Shiba', '$2y$12$wPJ.UtHBF3rzh/uCP4zL/.E/qwo1C5NJS3Pl5PPj9Rnrh14tl.j12', 17679, 939142352042356746, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717392395, 1, NULL),
(92, 'bharon', '$2y$12$DifRviS73NzVmmK7B/W0SOumm6lBcqe/9Zkfr7CDeXRzmfbpk14C2', 97066, 1221607933083910145, '0', 'None', NULL, '0', 'true', 1, 'eggar', 'cheater', 1717419290, 0, 1717418425, 1, NULL),
(93, 'Zizi', '', 72788, 1188053507455066153, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(94, 'xSann', '$2y$12$x9OAblFGCp7Lz2WpBOBKb.xf5Yr2H3BQogW8cox6dWmGU3s49bPsi', 25341, 1062660664084136028, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717425484, 1, NULL),
(95, 'AxchelDevanox', '', 53203, 1246627586667188247, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(96, 'faiidejong', '$2y$12$.34Gd6qgZCuJw1hF95BT3e/GeMH024uXh1jOerkujPC94O9KrZyrG', 22095, 1244399055568769045, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717438058, 1, NULL),
(97, 'Donxuiqote', '$2y$12$umf3kaTvQQtPu3AacCKerOuh2o9RCIycs5Gwzrdj.UNQCZ7KptFM2', 76003, 1211246328483418133, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717444944, 1, NULL),
(98, 'exynos', '$2y$12$cud9VI1bApOvFjBsSMFaKODPYLAtQBK77ys/dTfN8IKydhFH.ny2a', 32470, 485015852970934282, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717468386, 1, NULL),
(99, 'XZCHAN', '', 63868, 849271425684733962, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(100, 'Podskiew', '$2y$12$t2BmS.fZheKcZm2aIAuSK.MMzGjLwnbdM4ha9mxjKiPIs2UdbTyw2', 55843, 810654339794337842, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717503039, 1, NULL),
(101, 'Boundan', '$2y$12$DDt/Sm3zl8a2Lg6fdPMgeecMIFipCbcmk7/4DlPQEImOeVYxjQ6ke', 16492, 1062035735311552643, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717599000, 1, NULL),
(102, 'Ryzxx', '$2y$12$5XowbV2wE5oYxJLRSJf/u.2kclCY56Fgxj0IrrBOiyddja6/bCvcS', 7365, 1034681828772163586, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717505695, 1, NULL),
(103, 'Kubil', '$2y$12$zydRI.6K8HO/4z0XJaujM.JkOqiCHJpfa1APC5iPTpPXb1AOb0kAq', 43950, 1213558048908644413, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717506043, 1, NULL),
(104, 'Regy', '$2y$12$dtUOOjJL5B9tks9dGUTISuTkGGgqRQhwqAf7Iv9TlEVMCWQX5Rp2.', 31687, 1189913470427205643, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717507151, 1, NULL),
(105, 'Gyzee', '$2y$12$ItDssXTUu6WcnElCjl6Mi.0P/o0gcU6yr6ygThdWNdCqKeXRnJexu', 83700, 1128825603307606186, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717513225, 1, NULL),
(106, 'dujaa', '$2y$12$DygUBifbEkLmlzmMYqW/POKlW6wk0smKaQIqP0gsijnbM3CiDrZEO', 79768, 794933807806808064, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717522581, 1, NULL),
(107, 'Jamalz', '$2y$12$FsRsveJ0Z1TrTwPXjjhUw.n9lDHjmgYajXd6xbNH66xnnP7x3fGzC', 95832, 1003665198621663232, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717541238, 1, NULL),
(108, 'Figo', '', 3823, 1247428964578885674, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(109, 'cipott', '', 15123, 1090973464959131729, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(110, 'Diard', '$2y$12$SR00UR4HMy9j4tsYJpUSU.dZKN92T4hIHnve.9dAjXHe.X0tGBF3u', 77869, 1123234982165500054, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717644889, 1, NULL),
(111, 'Ryzz', '$2y$12$teQwosLKA25MhfTa0h43V.cYWkdH5asStgAZqmRBWjPQOvz//k.Z6', 53307, 676245432569036820, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717595009, 1, NULL),
(112, 'Arsan', '', 59418, 1234114801412739133, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(113, 'Xauzy', '$2y$12$PvPhBWGQHqlewtJsDc94i.74xx6.iBEFjg/imDNDmzNbXmwk6aCk6', 25652, 1052616952302014555, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717596155, 1, NULL),
(114, 'KAGExYourzii', '$2y$12$VKRKkWRuoJLgm.CySvsuaO6M/hFZCakAB1LEeAZmxM0kRI7wzj8JC', 21879, 1196358585437921301, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717598272, 1, NULL),
(115, 'Zanxy', '$2y$12$BAcaCVFMHNQW.lKrjKey9.UXbBoGP6JDbdPPRvF9CavQgU.qzEWS.', 82138, 1205783877361074178, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717598786, 1, NULL),
(116, 'BopengHandsome', '', 36131, 1247859705171279883, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717599458, 0, NULL),
(117, 'AtingRidho', '', 84940, 850318298687471668, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(118, 'Renaa', '', 21270, 1243109695326261303, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(119, 'Masboyy', '$2y$12$y1SYm7eu4e4qvMsnSD9lNOqk4HACEjNdRKmIg2A4NhrlB3Ikf.gxS', 90255, 1230798355093917726, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717619180, 1, NULL),
(120, 'Akeno', '$2y$12$crYLBrPekLutbZw8.0JWCuFkPOS6LB/.a2Y37DTIgyRmY0iuZUUxO', 88208, 1141179773339566161, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717620500, 1, NULL),
(121, 'Reyzz', '$2y$12$Mt2Dc37DsEN10zO4z0HAPOZyuN8Ypp/QfnW0j2NY.Kg4EorPZPWni', 415, 1222941324035227701, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717633121, 1, NULL),
(122, 'Dandru', '$2y$12$C2ZH/aB6MWg27PPaesArDuNF2aKGqIuXNqhfKOGSZFcgkeIvFUoI.', 71459, 1010121055093923931, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717636178, 1, NULL),
(123, 'Calzexzy', '$2y$12$YDkXTogQAwDPjdyYLouBU.Y3fl8lo9rycY5lqDIZGFQDMqD7KeuRe', 65776, 1233637651853213698, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717636786, 1, NULL),
(124, 'Rucha', '$2y$12$XeRSw2LwMTzeeUkAnQqjU.Tnf2LnfIswyWs5UiCJc7AYAY0TyXViO', 71125, 1232195612544466946, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717637040, 1, NULL),
(125, 'Xavier', '', 89455, 879933765156212786, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(126, 'Anggaxyz', '$2y$12$R..ACR6Z3hVKegDFUt00A.aN9viNrD0rXggVuiWPFpMypfNIT/pLC', 10858, 1206475154855694350, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717639677, 1, NULL),
(127, 'ElninoFallo', '', 27929, 1232968198610092085, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(128, 'fefet', '$2y$12$ValWW6KKnMFGZXAyYqB8DedsYvL0dWf0tfmzvLGaCvmDa8R1bLhwm', 21748, 1033213831180210236, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717643169, 1, NULL),
(129, 'leokontol', '', 40929, 1216644097243217935, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(130, 'kadex', '$2y$12$KGfukR0k/go9GVHfmLcM3elxP5D99ZeNAUfYPCrXovUKSzsIeAmyi', 89695, 1001846644742037524, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717644112, 1, NULL),
(131, 'Defay', '', 74686, 1211231961029287957, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(132, 'DIMAS', '$2y$12$Q0FAEyfBjUkvQ6V6JXhxD.CVU5W7Q17hmwat.YvVZ0cCCz5Q/g2cG', 25257, 1168203140168953947, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717649535, 1, NULL),
(133, 'YanzZ', '', 60263, 1246419684442767360, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(134, 'manik', '', 27123, 1193544083973611533, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(135, 'fred', '', 8684, 806146942290755594, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(136, 'Bangna', '', 99803, 1189130011396014182, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(137, 'Bangnaa', '$2y$12$82XFnZrEcaR0jEau/HtD1.A2DCEP2DGCd1Gn15jGa5SQYfi6ETC0G', 4739, 1189130011396014182, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717654385, 1, NULL),
(138, 'Dimaz', '$2y$12$XGuIuEh/.U7An9Yix3Maq.AuT9NJl4V7kBsrZ1QMH3gG1GVXzxMf.', 44582, 1044930010114437140, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717663965, 1, NULL),
(139, 'Reolette', '$2y$12$L0/KjCvHfDZwDMw0L4RQDeYYKHE/Mnujkv2zJhkTMU34590kE5HUO', 96525, 1235830337699840070, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717665545, 1, NULL),
(140, 'Hirotoshi', '$2y$12$GMOmxyrnCC9t78cVZLyMX.q42j3rwjX4pvlWJor4mJWJHzg5lPbAG', 41345, 1164211465394323479, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717666917, 1, NULL),
(141, 'RenzyXD', '', 40958, 938793189282816031, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(142, 'Leonax', '$2y$12$FBKZxf.b0bxjMDQePdaGju4RN4pBKJ5uxDXaJ80linoXxAkrzb7xi', 91134, 1009288802407305327, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717678996, 1, NULL),
(143, 'Kyzoo', '$2y$12$ZizzBI2bs/4SxHsUKA495uytNar/IVke1.BI0MZCAYEhAIhTJ5/Y.', 43774, 919060424257859604, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 9, 1717685527, 1, NULL),
(144, 'abuyxc', '$2y$12$Vi39bxTB3F5T4tLK8f/wsuRx2pcJ6CPEghyMUrmcsAfSXTuKM0k4W', 44513, 1239480368328081412, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717705117, 1, NULL),
(145, 'ridani', '', 62009, 1207524657222123531, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(146, 'Rickojk', '$2y$12$pr4llCoZyvTu/wGP6xR.TOnmLYIfbXxLY3SsWTAVg7v/hl1BCkjCq', 68386, 1224981612601806849, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 1717730853, 1, NULL),
(147, 'BrianPaduka', '', 99886, 1245969584473899068, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(148, 'Thirissz', '', 49222, 786804585050013716, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(149, 'Billy', '', 76174, 1003264984765177887, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(150, 'AhsanZXZ', '', 52072, 1095140493198884996, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(151, 'Thans', '', 98125, 1233419679351963720, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(152, 'Ellzi', '', 38540, 1238016109001707540, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(153, 'Wisnu', '', 75184, 700607227030929418, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(154, 'shota', '', 91026, 1013697003693285457, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(155, 'Jhon', '', 2649, 1247352127265837190, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(156, 'otoyyy', '', 9881, 1063750964366024734, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(157, 'Rifki', '', 31076, 1244265457175892136, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(158, 'Kenzie', '', 11328, 1168543054307790962, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(159, 'Pinjol', '', 24782, 1224373975346577540, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(160, 'Klizz', '', 6073, 1235459411208830986, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(161, 'Alpinn', '', 78048, 1115061807464329217, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(162, 'Aresss', '', 59843, 1062272671854895135, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(163, 'Lapet', '', 78504, 1068471733453070407, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(164, 'KeiXoerz', '', 86997, 1137260325830402079, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(165, 'Jack', '', 35541, 1113309550091706399, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(166, 'Andrew', '', 78119, 1212757001612828714, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(167, 'FangzToretto', '', 54476, 1247433674345943066, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(168, 'Danial', '', 89631, 1247916095151542357, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(169, 'Kurimjr', '', 56301, 1183349048703463486, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(170, 'GaniBoby', '', 57873, 1243545301202112618, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(171, 'Enggi', '', 97091, 1207956905461415946, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(172, 'loberto', '', 6088, 1249937811050725443, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(173, 'Aipzyy', '', 35554, 1216061387411951657, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(174, 'ZANZXxXX', '', 53807, 1242098870180253717, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(175, 'Jonoxx', '', 49474, 1166307253557673984, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(176, 'Kraaja', '', 71646, 1101401716303343636, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(177, 'dandi', '', 10492, 1119365768258265149, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(178, 'Fadluboys', '', 88636, 1232617315129102391, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(179, 'fakih', '', 70881, 1250095659110105133, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(180, 'Chairil', '', 66374, 1248848122742833225, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(181, 'Willsycx', '', 34196, 1242397388983898154, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(182, 'Allain', '', 9920, 489715632779165697, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(183, 'Jezx', '', 70651, 1250377971957633078, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(184, 'Jullyan', '', 27101, 976373570001309707, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(185, 'Anasnanas', '', 16584, 1229684592831889429, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(186, 'Lescott', '', 88818, 1213397368267870268, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(187, 'AxellAlezonyth', '', 16339, 1205744775882473473, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(188, 'GadzyGozilla', '', 34698, 1216396987474116618, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(189, 'Araaa', '', 8424, 1248787236867276905, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(190, 'slebewwww', '', 10284, 1235243198767697932, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(191, 'GorilaHutan', '', 43344, 1251942936506007733, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(192, 'xzuky', '', 48138, 1155900673221726288, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(193, 'LEDGAR', '', 37721, 1252264829406806068, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(194, 'Wiliamz', '', 20206, 1232569691495600211, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(195, 'vigooklama', '', 94930, 1250435882939449439, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(196, 'Zhanz', '', 84795, 1250815870780051512, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL),
(197, 'Enzoo', '', 22151, 1252820702810214441, '0', 'None', NULL, '0', 'true', 0, 'Admin', '0', 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `ID` int(12) NOT NULL,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `SpawnX` float NOT NULL DEFAULT 0,
  `SpawnY` float NOT NULL DEFAULT 0,
  `SpawnZ` float NOT NULL DEFAULT 0,
  `SpawnA` float NOT NULL DEFAULT 0,
  `Vehicle1` int(6) NOT NULL DEFAULT 0,
  `Vehicle2` int(6) NOT NULL DEFAULT 0,
  `Price1` int(6) NOT NULL DEFAULT 0,
  `Price2` int(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`ID`, `PosX`, `PosY`, `PosZ`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnA`, `Vehicle1`, `Vehicle2`, `Price1`, `Price2`) VALUES
(1, 1682.78, -2308.25, 13.5402, 1678.39, -2305.79, 13.1043, 182.251, 481, 510, 481, 510);

-- --------------------------------------------------------

--
-- Table structure for table `samacc`
--

CREATE TABLE `samacc` (
  `ID` int(12) NOT NULL,
  `Username` varchar(24) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Created` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL DEFAULT 0,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0,
  `posa` float NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0,
  `world` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `posx`, `posy`, `posz`, `posa`, `interior`, `world`) VALUES
(0, 1739.92, -2534.41, 13.5978, 348.277, 0, 0),
(1, 1312.73, -892.112, 39.6382, 1.99998, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_clothing`
--

CREATE TABLE `shop_clothing` (
  `id` int(11) NOT NULL DEFAULT 0,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0,
  `posa` float NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0,
  `world` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_clothing`
--

INSERT INTO `shop_clothing` (`id`, `posx`, `posy`, `posz`, `posa`, `interior`, `world`) VALUES
(0, 1741.42, -2494.78, 13.6069, 272.649, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(12) NOT NULL,
  `speedRange` float DEFAULT 0,
  `speedLimit` float DEFAULT 0,
  `speedX` float DEFAULT 0,
  `speedY` float DEFAULT 0,
  `speedZ` float DEFAULT 0,
  `speedAngle` float DEFAULT 0,
  `speedvehicle` int(8) NOT NULL DEFAULT 0,
  `speedplate` varchar(32) NOT NULL,
  `speedTime` int(8) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `ID` int(8) NOT NULL,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `Type` int(3) NOT NULL DEFAULT 0,
  `World` int(8) NOT NULL DEFAULT 0,
  `Interior` int(5) NOT NULL DEFAULT 0,
  `ExtraID` int(8) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`ID`, `PosX`, `PosY`, `PosZ`, `Type`, `World`, `Interior`, `ExtraID`) VALUES
(10, 1643.78, -1275.08, 16.4779, 2, 0, 0, 2),
(11, 2736.57, 659.092, 10.9381, 2, 0, 0, 12),
(12, -2247.15, 540.767, -6.58232, 2, 0, 0, 3),
(13, 2313.97, -1013.94, 1054.72, 3, 5000, 9, 0),
(14, 2313.8, -1013.94, 1054.72, 3, 5025, 9, 25);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `ID` int(12) NOT NULL,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `RotX` float NOT NULL DEFAULT 0,
  `RotY` float NOT NULL DEFAULT 0,
  `RotZ` float NOT NULL DEFAULT 0,
  `Font` varchar(24) NOT NULL DEFAULT 'Arial',
  `Text` varchar(64) NOT NULL DEFAULT 'None',
  `Size` int(3) NOT NULL DEFAULT 24,
  `Interior` int(4) NOT NULL DEFAULT -1,
  `World` int(4) NOT NULL DEFAULT -1,
  `Bold` int(2) NOT NULL DEFAULT 0,
  `Owner` int(6) NOT NULL DEFAULT -1,
  `Color` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ID` int(12) DEFAULT 0,
  `ticketID` int(12) NOT NULL,
  `ticketFee` int(12) DEFAULT 0,
  `ticketBy` varchar(24) DEFAULT NULL,
  `ticketDate` varchar(36) DEFAULT NULL,
  `ticketReason` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toys`
--

CREATE TABLE `toys` (
  `Id` int(10) NOT NULL,
  `Owner` varchar(40) NOT NULL DEFAULT '',
  `Slot0_Model` int(8) NOT NULL DEFAULT 0,
  `Slot0_Bone` int(8) NOT NULL DEFAULT 0,
  `Slot0_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_Model` int(8) NOT NULL DEFAULT 0,
  `Slot1_Bone` int(8) NOT NULL DEFAULT 0,
  `Slot1_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot1_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_Model` int(8) NOT NULL DEFAULT 0,
  `Slot2_Bone` int(8) NOT NULL DEFAULT 0,
  `Slot2_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot2_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_Model` int(8) NOT NULL DEFAULT 0,
  `Slot3_Bone` int(8) NOT NULL DEFAULT 0,
  `Slot3_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot3_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_Model` int(8) NOT NULL DEFAULT 0,
  `Slot4_Bone` int(8) NOT NULL DEFAULT 0,
  `Slot4_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot4_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_Model` int(8) NOT NULL DEFAULT 0,
  `Slot5_Bone` int(8) NOT NULL DEFAULT 0,
  `Slot5_XPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_YPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_ZPos` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_XRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_YRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_ZRot` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_XScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_YScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot5_ZScale` float(20,3) NOT NULL DEFAULT 0.000,
  `Slot0_Toggle` int(3) NOT NULL DEFAULT 0,
  `Slot1_Toggle` int(3) NOT NULL DEFAULT 0,
  `Slot2_Toggle` int(3) NOT NULL DEFAULT 0,
  `Slot3_Toggle` int(3) NOT NULL DEFAULT 0,
  `Slot4_Toggle` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `toys`
--

INSERT INTO `toys` (`Id`, `Owner`, `Slot0_Model`, `Slot0_Bone`, `Slot0_XPos`, `Slot0_YPos`, `Slot0_ZPos`, `Slot0_XRot`, `Slot0_YRot`, `Slot0_ZRot`, `Slot0_XScale`, `Slot0_YScale`, `Slot0_ZScale`, `Slot1_Model`, `Slot1_Bone`, `Slot1_XPos`, `Slot1_YPos`, `Slot1_ZPos`, `Slot1_XRot`, `Slot1_YRot`, `Slot1_ZRot`, `Slot1_XScale`, `Slot1_YScale`, `Slot1_ZScale`, `Slot2_Model`, `Slot2_Bone`, `Slot2_XPos`, `Slot2_YPos`, `Slot2_ZPos`, `Slot2_XRot`, `Slot2_YRot`, `Slot2_ZRot`, `Slot2_XScale`, `Slot2_YScale`, `Slot2_ZScale`, `Slot3_Model`, `Slot3_Bone`, `Slot3_XPos`, `Slot3_YPos`, `Slot3_ZPos`, `Slot3_XRot`, `Slot3_YRot`, `Slot3_ZRot`, `Slot3_XScale`, `Slot3_YScale`, `Slot3_ZScale`, `Slot4_Model`, `Slot4_Bone`, `Slot4_XPos`, `Slot4_YPos`, `Slot4_ZPos`, `Slot4_XRot`, `Slot4_YRot`, `Slot4_ZRot`, `Slot4_XScale`, `Slot4_YScale`, `Slot4_ZScale`, `Slot5_Model`, `Slot5_Bone`, `Slot5_XPos`, `Slot5_YPos`, `Slot5_ZPos`, `Slot5_XRot`, `Slot5_YRot`, `Slot5_ZRot`, `Slot5_XScale`, `Slot5_YScale`, `Slot5_ZScale`, `Slot0_Toggle`, `Slot1_Toggle`, `Slot2_Toggle`, `Slot3_Toggle`, `Slot4_Toggle`) VALUES
(1, 'Eggar_Austerline', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(2, 'Renn_Dawsoon', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(3, 'Austin_Grey', 18639, 1, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 3044, 1, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(4, 'Jiman_Fantera', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(5, 'Asep_Rakabuming', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(6, 'Zeon_Warka', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(7, 'Madson_Hoover', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(8, 'Adler_Kruger', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(9, 'Rama_Satria', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(10, 'Cahaya_Grey', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(11, 'Luis_Salvador', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(12, 'Nmanu_Furqon', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(13, 'Kamil_Ganteng', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(14, 'Lival_Johnson', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(15, 'Dika_Syahputra', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(16, 'Doni_Benjamin', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(17, 'Mike_Walker', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(18, 'Brian_Skinny', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(19, 'Vanno_Escobar', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(20, 'Calvin_Adelio', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(21, 'Aryo_Kamek', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(22, 'Kevin_Theodore', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(23, 'Jono_Darmono', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(24, 'Bisma_Wiratama', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(25, 'Kyle_Smith', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(26, 'Johan_Larry', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(27, 'Salman_Yanto', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(28, 'Boy_William', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(29, 'Damian_Velarquez', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(30, 'Taylor_Swift', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(31, 'FIHMA_GGS', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(32, 'Jhordan_Vamosa', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(33, 'Al_Capone', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(34, 'Rexy_Chambers', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(35, 'Jhon_Sengkuni', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(36, 'Dungkey_Chambers', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(37, 'Floyd_Vaughn', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(38, 'FARIQ_SUMBATAU', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(39, 'Nekoma_San', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(40, 'Carley_Kimberly', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(41, 'Fadhil_Decamora', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(42, 'Kai_Oconnor', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(43, 'Bramanty_Kiano', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(44, 'Revan_Dacamora', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(45, 'Budi_Herianto', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(46, 'Senoo_Heyresz', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(47, 'Kai_Cenat', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(48, 'Zano_Morris', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(49, 'Jacob_Daniel', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(50, 'Vinz_Zemora', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(51, 'Nald_Smith', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(52, 'Uje_Vov', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(53, 'Richard_Vons', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(54, 'Joy_Granetcio', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(55, 'Khay_Andersn', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(56, 'Rizal_Atzuko', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(57, 'Prapto_Adhinatha', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(58, 'Josep_Ocanner', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(59, 'Zergan_Reuzaburow', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(60, 'Johan_Agus', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(61, 'Ethan_Dalton', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(62, 'Narzi_Belwyn', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(63, 'Fazri_Alfatir', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(64, 'Gerry_Launcher', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(65, 'Raiz_Fairuz', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(66, 'Regy_Suregar', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(67, 'Regy_Kamiel', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(68, 'Seven_Alendra', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(69, 'Muhammad_Auraiza', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(70, 'Shiba_Robinson', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(71, 'Bryan_Mattrix', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(72, 'Elgib_Krio', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(73, 'Uziii_Luzivert', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(74, 'Zanxy_Onnconer', 18961, 2, 0.165, 0.039, 0.000, -10.000, -270.000, 279.000, 1.000, 1.000, 1.000, 3026, 1, -0.100, -0.100, 0.000, 0.000, 0.000, 0.000, 1.000, 1.000, 1.000, 18919, 2, 0.071, 0.039, 0.000, 280.000, 10.000, -100.000, 1.000, 1.000, 1.000, 2045, 1, 0.200, -0.200, -0.100, -30.000, 10.000, -70.000, 1.000, 1.000, 1.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(75, 'Traymiento_Bienvenueza', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(76, 'Reyz_Laksamana', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(77, 'Dandru_Kodir', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(78, 'Paul_Wakanda', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(79, 'Memet_Kopak', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(80, 'Cecep_Hendrawan', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(81, 'Alexander_Petterson', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(82, 'Ucup_Baba', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(83, 'Vincent_Grey', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(84, 'Leon_Hindia', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(85, 'Kyzoo_Thosiro', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(86, 'Akeno_Smith', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0),
(87, 'Xary_Carian', 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE `trash` (
  `id` int(11) NOT NULL DEFAULT 0,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0,
  `posa` float NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0,
  `world` int(11) NOT NULL DEFAULT 0,
  `sampah` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trash`
--

INSERT INTO `trash` (`id`, `posx`, `posy`, `posz`, `posa`, `interior`, `world`, `sampah`) VALUES
(0, 2416.63, -1220.5, 25.3253, 179.058, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tree`
--

CREATE TABLE `tree` (
  `ID` int(12) NOT NULL,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `PosRX` float NOT NULL DEFAULT 0,
  `PosRY` float NOT NULL DEFAULT 0,
  `PosRZ` float NOT NULL DEFAULT 0,
  `Time` int(8) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tree`
--

INSERT INTO `tree` (`ID`, `PosX`, `PosY`, `PosZ`, `PosRX`, `PosRY`, `PosRZ`, `Time`) VALUES
(3, -540.571, -206.313, 77.4663, 0, 0, 171.936, 0),
(4, -565.081, -203.646, 77.7016, 0, 0, 9.40009, 0),
(5, -581.228, -195.234, 78.1952, 0, 0, 233.798, 0),
(6, -388.536, -2584.67, 139.441, 0, 0, 151.888, 0),
(7, -416.407, -2679.04, 160.095, 0, 0, 94.404, 0),
(8, -649.892, -662.138, 40.5864, 0, 0, 94.404, 0),
(9, -529.424, -623.959, 12.7471, 0, 0, 94.404, 0),
(10, -506.712, -1000.8, 24.0474, 0, 0, 94.404, 0),
(11, -526.233, -977.15, 23.5198, 0, 0, 94.404, 0),
(12, -908.493, -505.999, 25.0078, 0, 0, 94.404, 0),
(13, -170.227, -1268.73, 2.18265, 0, 0, 94.404, 0),
(14, 2547.99, -489.042, 84.3173, 0, 0, 94.404, 0),
(15, 2480.92, -526.42, 95.7773, 0, 0, 94.404, 0),
(16, 2381.15, -746.084, 124.737, 0, 0, 94.404, 0),
(17, -116.492, -1111.78, 2.22177, 0, 0, 0, 0),
(22, 1284.8, -2026.75, 57.3916, 0, 0, 270.362, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehID` int(12) NOT NULL,
  `vehModel` int(6) NOT NULL DEFAULT 0,
  `vehOwner` int(12) NOT NULL DEFAULT 0,
  `vehX` float NOT NULL DEFAULT 0,
  `vehY` float NOT NULL DEFAULT 0,
  `vehZ` float NOT NULL DEFAULT 0,
  `vehA` float NOT NULL DEFAULT 0,
  `vehColor1` int(6) NOT NULL DEFAULT 0,
  `vehColor2` int(6) NOT NULL DEFAULT 0,
  `vehWorld` int(8) NOT NULL DEFAULT 0,
  `vehInterior` int(8) NOT NULL DEFAULT 0,
  `vehFuel` int(8) NOT NULL DEFAULT 0,
  `vehDamage1` int(8) NOT NULL DEFAULT 0,
  `vehDamage2` int(8) NOT NULL DEFAULT 0,
  `vehDamage3` int(8) NOT NULL DEFAULT 0,
  `vehDamage4` int(8) NOT NULL DEFAULT 0,
  `vehHealth` int(11) NOT NULL DEFAULT 1000,
  `vehInsurance` int(8) NOT NULL DEFAULT 0,
  `vehInsuTime` int(12) NOT NULL DEFAULT 0,
  `vehLocked` int(3) NOT NULL DEFAULT 0,
  `vehPlate` varchar(16) NOT NULL DEFAULT '-',
  `vehRental` int(4) NOT NULL DEFAULT -1,
  `vehRentalTime` int(8) NOT NULL DEFAULT 0,
  `vehInsuranced` int(3) NOT NULL DEFAULT 0,
  `vehHouse` int(6) NOT NULL DEFAULT -1,
  `vehWood` int(6) NOT NULL DEFAULT 0,
  `toyid0` int(4) NOT NULL DEFAULT 0,
  `toyid1` int(4) NOT NULL DEFAULT 0,
  `toyid2` int(4) NOT NULL DEFAULT 0,
  `toyid3` int(4) NOT NULL DEFAULT 0,
  `toyid4` int(4) NOT NULL DEFAULT 0,
  `toyposx0` float NOT NULL DEFAULT 0,
  `toyposx1` float NOT NULL DEFAULT 0,
  `toyposx2` float NOT NULL DEFAULT 0,
  `toyposx3` float NOT NULL DEFAULT 0,
  `toyposx4` float NOT NULL DEFAULT 0,
  `toyposy0` float NOT NULL DEFAULT 0,
  `toyposy1` float NOT NULL DEFAULT 0,
  `toyposy2` float NOT NULL DEFAULT 0,
  `toyposy3` float NOT NULL DEFAULT 0,
  `toyposy4` float NOT NULL DEFAULT 0,
  `toyposz0` float NOT NULL DEFAULT 0,
  `toyposz1` float NOT NULL DEFAULT 0,
  `toyposz2` float NOT NULL DEFAULT 0,
  `toyposz3` float NOT NULL DEFAULT 0,
  `toyposz4` float NOT NULL DEFAULT 0,
  `toyrotx0` float NOT NULL DEFAULT 0,
  `toyrotx1` float NOT NULL DEFAULT 0,
  `toyrotx2` float NOT NULL DEFAULT 0,
  `toyrotx3` float NOT NULL DEFAULT 0,
  `toyrotx4` float NOT NULL DEFAULT 0,
  `toyroty0` float NOT NULL DEFAULT 0,
  `toyroty1` float NOT NULL DEFAULT 0,
  `toyroty2` float NOT NULL DEFAULT 0,
  `toyroty3` float NOT NULL DEFAULT 0,
  `toyroty4` float NOT NULL DEFAULT 0,
  `toyrotz0` float NOT NULL DEFAULT 0,
  `toyrotz1` float NOT NULL DEFAULT 0,
  `toyrotz2` float NOT NULL DEFAULT 0,
  `toyrotz3` float NOT NULL DEFAULT 0,
  `toyrotz4` float NOT NULL DEFAULT 0,
  `mod0` int(6) NOT NULL DEFAULT 0,
  `mod1` int(6) NOT NULL DEFAULT 0,
  `mod2` int(6) NOT NULL DEFAULT 0,
  `mod3` int(6) NOT NULL DEFAULT 0,
  `mod4` int(6) NOT NULL DEFAULT 0,
  `mod5` int(6) NOT NULL DEFAULT 0,
  `mod6` int(6) NOT NULL DEFAULT 0,
  `mod7` int(6) NOT NULL DEFAULT 0,
  `mod8` int(6) NOT NULL DEFAULT 0,
  `mod9` int(6) NOT NULL DEFAULT 0,
  `mod10` int(6) NOT NULL DEFAULT 0,
  `mod11` int(6) NOT NULL DEFAULT 0,
  `mod12` int(6) NOT NULL DEFAULT 0,
  `mod13` int(6) NOT NULL DEFAULT 0,
  `mod14` int(6) NOT NULL DEFAULT 0,
  `mod15` int(6) NOT NULL DEFAULT 0,
  `mod16` int(6) NOT NULL DEFAULT 0,
  `vehPaintjob` int(3) NOT NULL DEFAULT -1,
  `vehNeon` int(11) DEFAULT 0,
  `vehNeonStatus` int(11) NOT NULL DEFAULT 0,
  `vehGaraged` int(11) NOT NULL DEFAULT 0,
  `impounded` int(11) NOT NULL DEFAULT 0,
  `impoundprice` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehID`, `vehModel`, `vehOwner`, `vehX`, `vehY`, `vehZ`, `vehA`, `vehColor1`, `vehColor2`, `vehWorld`, `vehInterior`, `vehFuel`, `vehDamage1`, `vehDamage2`, `vehDamage3`, `vehDamage4`, `vehHealth`, `vehInsurance`, `vehInsuTime`, `vehLocked`, `vehPlate`, `vehRental`, `vehRentalTime`, `vehInsuranced`, `vehHouse`, `vehWood`, `toyid0`, `toyid1`, `toyid2`, `toyid3`, `toyid4`, `toyposx0`, `toyposx1`, `toyposx2`, `toyposx3`, `toyposx4`, `toyposy0`, `toyposy1`, `toyposy2`, `toyposy3`, `toyposy4`, `toyposz0`, `toyposz1`, `toyposz2`, `toyposz3`, `toyposz4`, `toyrotx0`, `toyrotx1`, `toyrotx2`, `toyrotx3`, `toyrotx4`, `toyroty0`, `toyroty1`, `toyroty2`, `toyroty3`, `toyroty4`, `toyrotz0`, `toyrotz1`, `toyrotz2`, `toyrotz3`, `toyrotz4`, `mod0`, `mod1`, `mod2`, `mod3`, `mod4`, `mod5`, `mod6`, `mod7`, `mod8`, `mod9`, `mod10`, `mod11`, `mod12`, `mod13`, `mod14`, `mod15`, `mod16`, `vehPaintjob`, `vehNeon`, `vehNeonStatus`, `vehGaraged`, `impounded`, `impoundprice`) VALUES
(1, 560, 1, 1062.13, -1435.62, 15.4749, 0.000026, -1, -1, 0, 0, 0, 0, 0, 0, 0, 350, 3, 0, 0, '-', -1, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 2, 0, 0),
(2, 468, 5, 1551.19, -2249.04, 13.3146, 356.168, 1, 1, 0, 0, 82, 0, 0, 0, 0, 876, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 5, 0, 0),
(4, 560, 1, 1062.13, -1435.62, 15.4749, 0.000026, 1, 1, 0, 0, 0, 0, 0, 0, 0, 350, 3, 0, 0, '-', -1, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 5, 0, 0),
(5, 468, 4, 1663.21, -2019.87, 25.0176, 343.807, 1, 1, 0, 0, 31, 0, 0, 0, 0, 976, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(6, 411, 12, 1254.99, -804.717, 84.154, 179.292, 6, 6, 0, 0, 99, 0, 0, 0, 0, 1000, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(7, 579, 1, 1062.13, -1435.62, 15.4749, 0.000026, 1, 1, 0, 0, 0, 0, 0, 0, 0, 350, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(8, 481, 15, 2092.71, -1550.83, 13.5965, 42.0395, 36, 120, 0, 0, 100, 0, 0, 0, 0, 967, 0, 0, 0, 'RENTAL', 0, 10800, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(9, 481, 14, 1684.37, -2327.33, 13.4158, 92.9112, 0, 1, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 5, 0, 0),
(10, 468, 15, 2017.58, -1756.14, 13.9598, 145.554, 1, 1, 0, 0, 100, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(11, 560, 14, 1674.43, -1284.89, 14.1839, 62.0732, 1, 1, 0, 0, 52, 18874386, 514, 5, 0, 639, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 2, 0, 0),
(12, 468, 16, 1708.29, -2315.79, 13.1517, 22.9155, 1, 1, 0, 0, 100, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(13, 533, 18, 1030.57, -1941.82, 14.3477, 355.393, 1, 1, 0, 0, 57, 34603008, 1024, 0, 0, 449, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 4, 0, 0),
(14, 400, 4, 1327.08, 1859.94, 12.7895, 359.798, 1, 1, 0, 0, 62, 1048576, 0, 0, 0, 838, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(15, 581, 4, 1553.79, 27.0629, 26.9232, 183.438, 1, 1, 0, 0, 82, 0, 0, 0, 0, 832, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(16, 500, 4, 1327.08, 1859.94, 12.7895, 359.798, 1, 1, 0, 0, 62, 1048576, 0, 0, 0, 838, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0),
(17, 468, 4, 1553.79, 27.0629, 26.9232, 183.438, 2, 2, 0, 0, 82, 0, 0, 0, 0, 832, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 4, 0, 0),
(18, 468, 11, 469.284, 965.334, 5.17822, 277.136, 2, 2, 0, 0, 89, 0, 0, 0, 0, 993, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(19, 468, 23, 506.431, -1346.57, 15.9677, 20.4441, 2, 2, 0, 0, 100, 0, 0, 0, 0, 974, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0),
(20, 510, 5, 1243.9, -805.093, 84.8752, 3.48057, 20, 74, 0, 0, 76, 1048576, 33554432, 0, 0, 998, 0, 0, 0, 'RENTAL', 0, 14400, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(21, 468, 5, 1551.87, -2249.08, 13.3144, 347.037, 2, 2, 0, 0, 51, 0, 0, 0, 0, 709, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 5, 0, 0),
(22, 507, 11, 875.934, -1660.61, 14.2404, 159.072, 1, 1, 0, 0, 85, 0, 0, 0, 0, 879, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(23, 420, 28, 1027.18, -1460.46, 13.5298, 270.538, 92, 108, 0, 0, 100, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(24, 470, 12, 1560.94, -2261.06, 13.61, 274.473, -1, -1, 0, 0, 89, 0, 0, 0, 0, 1000, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(25, 468, 27, 1682.23, -2257.19, -3.10609, 85.0401, 2, 2, 0, 0, 100, 0, 0, 0, 0, 1000, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(26, 481, 26, 1661.71, -1236.73, 14.4269, 75.1314, 31, 67, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(27, 560, 30, 1577.62, -2255.25, -2.55871, 0.000005, 1, 1, 0, 0, 98, 1048577, 0, 1, 0, 956, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(28, 481, 23, 506.431, -1346.57, 15.9677, 20.4441, 104, 60, 0, 0, 100, 0, 0, 0, 0, 974, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(29, 560, 23, 1033.59, -1422.1, 13.7688, 4.11355, 1, 1, 0, 0, 97, 0, 0, 0, 0, 1000, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(30, 456, 18, 1030.57, -1941.82, 14.3477, 355.393, 90, 44, 0, 0, 57, 34603008, 1024, 0, 0, 449, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(31, 463, 18, 1560.2, -2312.33, 14.8077, 275.648, 1, 1, 0, 0, 70, 0, 256, 0, 0, 594, 3, 0, 0, '-', -1, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(32, 409, 12, 1559.81, -2315.53, 13.5631, 89.5806, 4, 4, 0, 0, 93, 0, 0, 0, 0, 1000, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(33, 481, 38, 1545.55, 35.1712, 24.0551, 29.9315, 99, 17, 0, 0, 100, 0, 0, 0, 0, 999, 0, 0, 0, 'RENTAL', 0, 14400, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(34, 481, 39, 1269.51, -2022.56, 58.8622, 322.866, 105, 8, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 14400, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0),
(35, 481, 40, 1588.6, -2237.48, 13.2777, 275.355, 123, 39, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 10800, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(37, 480, 45, 1682.7, -2325.13, 13.2111, 323.238, 5, 5, 0, 0, 100, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(38, 468, 30, 1130.39, -2032.13, 69.057, 93.1628, 2, 2, 0, 0, 96, 0, 0, 0, 0, 999, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(39, 456, 46, 1654.57, 663.777, 11.7886, 265.698, 40, 21, 0, 0, 11, 0, 0, 0, 0, 745, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(40, 401, 41, 1650.28, 663.639, 11.2895, 273.648, 1, 1, 0, 0, 10, 0, 0, 0, 0, 745, 3, 0, 0, '-', -1, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(41, 468, 38, 2704.47, 709.987, 10.8495, 272.862, 2, 2, 0, 0, 83, 0, 0, 0, 0, 960, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(42, 468, 41, 1650.28, 663.639, 11.2895, 273.648, 2, 2, 0, 0, 10, 0, 0, 0, 0, 745, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(43, 456, 41, 1547.57, -2160.8, 14.1227, 244.576, 18, 87, 0, 0, 95, 0, 0, 0, 0, 350, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(44, 499, 50, 1264.23, -2029.61, 59.6898, 266.978, 92, 94, 0, 0, 96, 0, 2, 0, 0, 997, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(45, 481, 48, 1678.39, -2305.79, 13.2043, 182.251, 23, 65, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(47, 481, 57, 1678.39, -2305.79, 13.2043, 182.251, 50, 27, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(48, 510, 58, 1268.95, -2024.27, 58.8702, 331.31, 69, 8, 0, 0, 100, 0, 0, 0, 0, 950, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0),
(49, 468, 59, 1042.32, -1424.2, 13.6206, 25.2018, 2, 2, 0, 0, 97, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(50, 500, 58, 1133.05, -2038.4, 69.2984, 180, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0),
(51, 481, 30, 1547.73, -2247.38, 13.6545, 5.85376, 124, 72, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(52, 507, 43, 1027.71, -1450.81, 13.4008, 180.981, 1, 1, 0, 0, 100, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(53, 560, 60, 1632.64, -2329.39, 13.9521, 98.1413, 1, 1, 0, 0, 84, 0, 0, 0, 0, 350, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(54, 468, 10, 1240.11, -2010.44, 59.9086, 173.46, 2, 2, 0, 0, 93, 0, 0, 0, 0, 6006, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(55, 468, 32, 1674.71, -1286.62, 14.1158, 6.42498, 2, 2, 0, 0, 48, 18874368, 514, 0, 0, 745, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 2, 0, 0),
(56, 468, 16, 1033.92, -1440.77, 13.4552, 269.292, 2, 2, 0, 0, 0, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(57, 481, 67, -1947.19, -2431.34, 30.7634, 78.7641, 80, 77, 0, 0, 57, 0, 0, 0, 0, 832, 0, 0, 1, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 2, 0, 0),
(58, 405, 67, -1947.19, -2431.34, 30.7634, 78.7641, 1, 1, 0, 0, 57, 0, 0, 0, 0, 832, 3, 0, 0, '-', -1, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(59, 567, 67, -1947.19, -2431.34, 30.7634, 78.7641, 1, 1, 0, 0, 57, 0, 0, 0, 0, 832, 3, 0, 0, '-', -1, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(60, 463, 67, -1947.19, -2431.34, 30.7634, 78.7641, 1, 1, 0, 0, 57, 0, 0, 0, 0, 832, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(61, 468, 50, 879.728, -1658.54, 13.4157, 2.59495, 2, 2, 0, 0, 95, 0, 0, 0, 0, 974, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(62, 521, 32, 2720.76, 676.109, 11.0005, 261.247, 1, 1, 0, 0, 55, 18874368, 514, 0, 0, 805, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(63, 521, 27, 631.821, -1699.97, 14.566, 357.199, 1, 1, 0, 0, 98, 0, 0, 0, 0, 987, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(64, 468, 49, 1692.17, -1299.79, 13.1811, 63.5036, 2, 2, 0, 0, 95, 0, 0, 0, 0, 343, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0),
(65, 461, 67, 1675.5, -1280.94, 14.8969, 354.479, 1, 1, 0, 0, 68, 0, 0, 0, 0, 789, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 2, 0, 0),
(66, 510, 69, 922.401, -1585, 13.3492, 208.922, 45, 103, 0, 0, 100, 0, 0, 0, 0, 995, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(68, 481, 71, 1131.14, -2034.53, 68.6174, 94.8926, 104, 1, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 14400, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(69, 510, 46, 436.525, 967.094, 31.8802, 272.867, 95, 34, 0, 0, 100, 0, 0, 0, 0, 972, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(71, 481, 64, 1685.53, -862.412, 59.776, 350.898, 5, 63, 0, 0, 100, 0, 0, 0, 0, 991, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(72, 400, 64, 2721.02, 685.544, 11.4047, 82.9733, 1, 1, 0, 0, 78, 1048576, 2, 0, 0, 6003, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(73, 468, 67, 2704.33, 716.931, 11.6126, 270.18, 1, 1, 0, 0, 62, 1048576, 0, 0, 0, 838, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(74, 521, 32, 1663.21, -2019.87, 24.9176, 343.807, 1, 1, 0, 0, 31, 0, 0, 0, 0, 976, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 2, 0, 0),
(75, 468, 36, 1682.9, -2258.43, 13.4428, 310.353, 2, 2, 0, 0, 100, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(76, 481, 74, 1137.56, -2038.82, 68.8111, 85.7256, 45, 108, 0, 0, 100, 0, 0, 0, 0, 982, 0, 0, 0, 'RENTAL', 0, 14400, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(77, 481, 1, 1062.13, -1435.62, 15.4749, 0.000026, 101, 81, 0, 0, 0, 0, 0, 0, 0, 350, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 2, 0, 0),
(78, 451, 49, 1675.05, -1286.52, 13.9876, 51.0906, 1, 1, 0, 0, 92, 0, 0, 0, 0, 638, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 2, 0, 0),
(79, 481, 81, 1026.83, -1418.45, 12.986, 88.2405, 95, 96, 0, 0, 46, 0, 0, 0, 0, 999, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(80, 468, 81, 1467.44, -1043.49, 23.6034, 11.1803, 1, 1, 0, 0, 100, 0, 0, 0, 0, 998, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(81, 481, 49, 1692.17, -1299.79, 13.1811, 63.5036, 96, 119, 0, 0, 95, 0, 0, 0, 0, 343, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(82, 468, 81, 1028.84, -1450.84, 13.0384, 183.603, 1, 1, 0, 0, 100, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(83, 510, 86, 1678.39, -2305.79, 13.2043, 182.251, 85, 91, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(84, 510, 88, 1552.23, -2154.62, 13.2507, 174.027, 88, 30, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 1, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(85, 468, 88, 1681.96, -2260.24, 13.6265, 281.412, 2, 2, 0, 0, 100, 0, 0, 0, 0, 1000, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(86, 510, 92, 1645.3, -2327.4, 13.2523, 195.586, 104, 24, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(87, 481, 97, 1673.62, -1276.66, 14.9109, 176.065, 2, 5, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(88, 468, 97, 1551.26, -2249.6, 13.3161, 16.1633, 2, 2, 0, 0, 99, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 5, 0, 0),
(89, 468, 100, 1679.55, -1282.92, 15.1926, 297.151, 2, 2, 0, 0, 93, 0, 0, 0, 0, 934, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 2, 0, 0),
(90, 436, 99, -45.2223, 113.615, 4.13417, 157.755, 1, 1, 0, 0, 92, 2097186, 0, 5, 0, 854, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(91, 481, 102, 1136.15, -2041.76, 68.7202, 9.12148, 16, 62, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 7200, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(92, 468, 104, 1269.58, -2023.34, 59.1145, 351.724, 1, 1, 0, 0, 95, 0, 0, 0, 0, 978, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0),
(93, 468, 105, -1400.4, -211.88, 1051.01, 167.44, 2, 2, 0, 0, 96, 2097184, 4, 4, 0, 764, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 3, 0, 0),
(94, 468, 103, -59.0917, 76.196, 2.87977, 58.5418, 1, 1, 0, 0, 82, 0, 0, 0, 0, 916, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(97, 461, 104, 1512.68, -1657.8, 13.2897, 52.2561, 1, 1, 0, 0, 99, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 1, 0, 0),
(98, 468, 106, 1688.55, -2246.77, 13.3178, 284.855, 2, 2, 0, 0, 97, 0, 0, 0, 0, 1000, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(99, 468, 108, 1551.53, -2249.01, 13.316, 10.4229, 2, 2, 0, 0, 86, 0, 0, 0, 0, 981, 3, 0, 1, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 5, 0, 0),
(100, 468, 109, 1680.89, -2245.45, 13.3201, 43.7832, 2, 2, 0, 0, 99, 0, 0, 0, 0, 1000, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(101, 510, 110, -46.0659, 62.9678, 2.8208, 76.5049, 32, 63, 0, 0, 100, 0, 0, 0, 0, 930, 0, 0, 1, 'RENTAL', 0, 14400, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(102, 481, 108, -47.4974, 60.8733, 2.72222, 359.671, 24, 66, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(103, 461, 99, 1177.41, -1361.25, 14.0758, 73.8728, 1, 1, 0, 0, 90, 0, 0, 0, 0, 765, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 4, 0, 0),
(104, 461, 99, 211.692, -1091.3, 62.2427, 149.075, 1, 1, 0, 0, 92, 0, 0, 0, 0, 836, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(105, 481, 114, 1683.38, -2258.02, 12.9541, 310.017, 110, 80, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(106, 468, 114, 1303.99, -1950.84, 28.7938, 257.171, 2, 2, 0, 0, 94, 0, 0, 0, 0, 996, 3, 0, 0, '-', -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(107, 481, 118, 1173.61, -1322.38, 14.7834, 51.1311, 104, 25, 0, 0, 100, 0, 0, 0, 0, 983, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0),
(108, 481, 37, 1678.39, -2305.79, 13.3043, 182.251, 69, 106, 0, 0, 100, 0, 0, 0, 0, 1000, 0, 0, 0, 'RENTAL', 0, 3600, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `warnings`
--

CREATE TABLE `warnings` (
  `ID` int(12) NOT NULL,
  `Owner` int(6) NOT NULL DEFAULT 0,
  `Type` int(3) NOT NULL DEFAULT 0,
  `Admin` varchar(24) NOT NULL DEFAULT 'Staff',
  `Reason` varchar(32) NOT NULL DEFAULT 'Unknown',
  `Date` varchar(40) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `warnings`
--

INSERT INTO `warnings` (`ID`, `Owner`, `Type`, `Admin`, `Reason`, `Date`) VALUES
(1, 18, 2, 'Austin', 'bug', '2024-05-25 16:22:30'),
(2, 27, 2, 'KrazyBrazy', 'ss', '2024-05-27 18:54:28'),
(3, 12, 2, 'eggar', 'PAKE PERMEN', '2024-05-27 19:08:27'),
(4, 27, 2, 'KrazyBrazy', '.', '2024-05-27 19:15:21'),
(5, 4, 1, 'Austin', '1', '2024-05-28 11:39:19'),
(6, 4, 2, 'Austin', 'bug', '2024-05-28 14:44:18'),
(7, 56, 2, 'Austin', 'bug', '2024-05-28 14:44:31'),
(8, 60, 2, 'eggar', 'BAHASA KASAR', '2024-05-28 17:18:11'),
(9, 1, 2, 'eggar', 'tes', '2024-05-28 18:36:27'),
(10, 63, 2, 'eggar', 'bug', '2024-05-28 19:30:58'),
(11, 4, 2, 'Austin', '. ', '2024-05-28 20:30:41'),
(12, 1, 2, 'eggar', 'tes', '2024-05-28 23:28:21'),
(13, 27, 2, 'KrazyBrazy', '.', '2024-05-29 17:45:20'),
(14, 27, 2, 'KrazyBrazy', '.', '2024-05-29 17:46:31'),
(15, 1, 2, 'eggar', 'bug', '2024-05-29 17:50:25'),
(16, 27, 2, 'KrazyBrazy', '.', '2024-05-29 18:21:12'),
(17, 27, 2, 'KrazyBrazy', '.', '2024-05-29 18:21:44'),
(18, 1, 2, 'eggar', 'tes', '2024-05-29 21:45:05'),
(19, 36, 2, 'eggar', 'bug', '2024-05-31 14:46:28'),
(20, 1, 2, 'eggar', 'tes', '2024-05-31 15:37:36'),
(21, 1, 2, 'eggar', 'tes', '2024-05-31 20:15:15'),
(22, 1, 2, 'eggar', 'tes', '2024-05-31 23:07:06'),
(23, 1, 2, 'eggar', 'tes', '2024-06-04 19:39:30'),
(24, 58, 2, 'eggar', 'bug', '2024-06-05 20:27:29'),
(25, 1, 2, 'eggar', 'bug', '2024-06-05 22:45:49'),
(26, 104, 2, 'eggar', 'bug', '2024-06-06 08:31:11'),
(27, 1, 2, 'eggar', 'bug', '2024-06-06 08:41:09'),
(28, 1, 2, 'eggar', 'bug', '2024-06-06 19:35:22'),
(29, 1, 2, 'eggar', 'bug', '2024-06-06 19:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `weaponsettings`
--

CREATE TABLE `weaponsettings` (
  `Owner` int(11) NOT NULL,
  `WeaponID` tinyint(4) NOT NULL,
  `PosX` float DEFAULT -0.116,
  `PosY` float DEFAULT 0.189,
  `PosZ` float DEFAULT 0.088,
  `RotX` float DEFAULT 0,
  `RotY` float DEFAULT 44.5,
  `RotZ` float DEFAULT 0,
  `Bone` tinyint(4) NOT NULL DEFAULT 1,
  `Hidden` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `weaponsettings`
--

INSERT INTO `weaponsettings` (`Owner`, `WeaponID`, `PosX`, `PosY`, `PosZ`, `RotX`, `RotY`, `RotZ`, `Bone`, `Hidden`) VALUES
(12, 24, -0.116, 0.189, 0.088, 0, 44.5, 0, 1, 1),
(1, 29, -0.119, -0.118, 0.06, 0, 44.5, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `weed`
--

CREATE TABLE `weed` (
  `ID` int(12) NOT NULL,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `Grow` int(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `911calls`
--
ALTER TABLE `911calls`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `arrest`
--
ALTER TABLE `arrest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`atmID`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`bizID`);

--
-- Indexes for table `carstorage`
--
ALTER TABLE `carstorage`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`pID`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `crates`
--
ALTER TABLE `crates`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `doors`
--
ALTER TABLE `doors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dropped`
--
ALTER TABLE `dropped`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`factionID`);

--
-- Indexes for table `factionvehicle`
--
ALTER TABLE `factionvehicle`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `flat`
--
ALTER TABLE `flat`
  ADD PRIMARY KEY (`flatID`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`furnitureID`);

--
-- Indexes for table `garage`
--
ALTER TABLE `garage`
  ADD PRIMARY KEY (`garageID`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- Indexes for table `gstations`
--
ALTER TABLE `gstations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`houseID`);

--
-- Indexes for table `housestorage`
--
ALTER TABLE `housestorage`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`invID`);

--
-- Indexes for table `itemstorage`
--
ALTER TABLE `itemstorage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ContactNumber`,`ConMessage`,`ContactOwn`);

--
-- Indexes for table `playersalary`
--
ALTER TABLE `playersalary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerucp`
--
ALTER TABLE `playerucp`
  ADD PRIMARY KEY (`pID`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `samacc`
--
ALTER TABLE `samacc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`,`posx`,`posy`,`posz`,`posa`,`interior`,`world`);

--
-- Indexes for table `shop_clothing`
--
ALTER TABLE `shop_clothing`
  ADD PRIMARY KEY (`id`,`posx`,`posy`,`posz`,`posa`,`interior`,`world`);

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticketID`);

--
-- Indexes for table `toys`
--
ALTER TABLE `toys`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `id` (`Owner`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
  ADD PRIMARY KEY (`id`,`posx`,`posy`,`posz`,`posa`,`interior`,`world`,`sampah`);

--
-- Indexes for table `tree`
--
ALTER TABLE `tree`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehID`);

--
-- Indexes for table `warnings`
--
ALTER TABLE `warnings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `weaponsettings`
--
ALTER TABLE `weaponsettings`
  ADD PRIMARY KEY (`Owner`,`WeaponID`),
  ADD UNIQUE KEY `Owner` (`Owner`,`WeaponID`);

--
-- Indexes for table `weed`
--
ALTER TABLE `weed`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `911calls`
--
ALTER TABLE `911calls`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `arrest`
--
ALTER TABLE `arrest`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
  MODIFY `atmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `bizID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `carstorage`
--
ALTER TABLE `carstorage`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crates`
--
ALTER TABLE `crates`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dealer`
--
ALTER TABLE `dealer`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dropped`
--
ALTER TABLE `dropped`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT for table `factions`
--
ALTER TABLE `factions`
  MODIFY `factionID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `factionvehicle`
--
ALTER TABLE `factionvehicle`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flat`
--
ALTER TABLE `flat`
  MODIFY `flatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `furnitureID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `garage`
--
ALTER TABLE `garage`
  MODIFY `garageID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `houseID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `housestorage`
--
ALTER TABLE `housestorage`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `invID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=732;

--
-- AUTO_INCREMENT for table `itemstorage`
--
ALTER TABLE `itemstorage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `playersalary`
--
ALTER TABLE `playersalary`
  MODIFY `id` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playerucp`
--
ALTER TABLE `playerucp`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `samacc`
--
ALTER TABLE `samacc`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticketID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toys`
--
ALTER TABLE `toys`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tree`
--
ALTER TABLE `tree`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `warnings`
--
ALTER TABLE `warnings`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `weed`
--
ALTER TABLE `weed`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
