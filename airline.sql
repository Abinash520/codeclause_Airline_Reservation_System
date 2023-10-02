-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 09:23 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Username` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(18) NOT NULL,
  `Sec_Q` varchar(50) NOT NULL,
  `Answer` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `Name`, `Password`, `Sec_Q`, `Answer`) VALUES
('abhay_singh', 'abhay Singh', '@abhaysi1711', 'what is your nick name?', 'abhay');

-- --------------------------------------------------------

--
-- Table structure for table `book_ticket`
--

CREATE TABLE `book_ticket` (
  `Ticket_No` varchar(50) NOT NULL,
  `Flight_Id` varchar(50) NOT NULL,
  `Flight_Name` varchar(50) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Arrival_Time` time NOT NULL,
  `Departure_Time` time NOT NULL,
  `Total_Price` int(10) NOT NULL,
  `Seats` int(10) NOT NULL,
  `C_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cancel_ticket`
--

CREATE TABLE `cancel_ticket` (
  `Ticket_No` varchar(50) NOT NULL,
  `Flight_Name` varchar(50) NOT NULL,
  `Flight_Id` varchar(50) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Booking_date` date NOT NULL,
  `Arrival_Time` time NOT NULL,
  `Departure_Time` time NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Seats` int(10) NOT NULL,
  `C_Name` varchar(100) NOT NULL,
  `Return_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancel_ticket`
--

INSERT INTO `cancel_ticket` (`Ticket_No`, `Flight_Name`, `Flight_Id`, `Source`, `Destination`, `Booking_date`, `Arrival_Time`, `Departure_Time`, `Price`, `Seats`, `C_Name`, `Return_Date`) VALUES
('716', 'AllToMumbai', '12015', 'Allhabad', 'Mumbai', '2023-07-06', '18:24:03', '09:18:03', '9000', 1, 'Abhay Singh', '2023-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `Flight_Id` varchar(20) NOT NULL,
  `Flight_Name` varchar(50) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `Arrival_Time` time NOT NULL,
  `Departure_Time` time NOT NULL,
  `Flight_Price` int(50) NOT NULL,
  `Owner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`Flight_Id`, `Flight_Name`, `Source`, `Destination`, `date`, `Arrival_Time`, `Departure_Time`, `Flight_Price`, `Owner`) VALUES
('12015', 'AllToMumbai', 'Allhabad', 'Mumbai', '2023-07-06', '18:24:03', '09:18:03', 9000, 'TATA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
