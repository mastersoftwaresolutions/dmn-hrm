-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 17, 2015 at 04:50 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `section` varchar(500) NOT NULL,
  `section_record` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `section`, `section_record`) VALUES
(1, 'network', '{"net_Responsible_Person":104,"Added_static":0,"Gmail_Id":0,"Created_Skype":0,"Redmine":0,"Bitbucket":0,"Git":0,"Dropbox":0,"Local_Database":0,"Local_ftp":0}'),
(2, 'hr', '{"hr_responsible_person":101,"updated_employee":0,"Added_to_Address_Book":0,"Added_to_Biometric":0,"MSS_Team_Folder":0}'),
(3, 'documentation', '{"doc_Responsible_Person":102,"Offer_Letter":0,"Qualification":0,"ID_Proof":0,"Experience":0,"Address_Proof":0,"Medical":0,"Date_of_Birth":0,"Bank":0,"Training_Certificate":0,"Joining":0,"Salary_Slips":0,"Code_of_Conduct":0,"Passport_size":0,"Employee_Agreement":0,"Acknowledgement":0}'),
(4, 'rbd', '{"rbd_Responsible_Person":103,"Create_Biddle":0,"Cover_Letter":0,"Google":0}');

-- --------------------------------------------------------

--
-- Table structure for table `documentation`
--

CREATE TABLE IF NOT EXISTS `documentation` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `employee_id` int(100) NOT NULL,
  `employee_name` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `pending_section` varchar(500) NOT NULL,
  `hr` varchar(500) NOT NULL,
  `hr_document` varchar(500) NOT NULL,
  `rbd` varchar(500) NOT NULL,
  `network` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `documentation`
--

INSERT INTO `documentation` (`id`, `employee_id`, `employee_name`, `status`, `pending_section`, `hr`, `hr_document`, `rbd`, `network`) VALUES
(24, 101, 'Daman', 'Pending', '       Documentation        Rbd         Network', '{"reponsibleperson":"103","updated_employee":1,"Added_to_Address_Book":1,"Added_to_Biometric":1,"MSS_Team_Folder":1}', '{"docresponsible":"103","Offer_Letter":0,"Qualification":0,"ID_Proof":0,"Experience":0,"Address_Proof":0,"Medical":1,"Date_of_Birth":0,"Bank":0,"Training_Certificate":0,"Joining":0,"Salary_Slips":0,"Code_of_Conduct":1,"Passport_size":0,"Employee_Agreement":0,"Acknowledgement":0}', '{"rrbdresponsible":"103","Create_Biddle":0,"Cover_Letter":1,"Google":0}', '{"netresponsible":"105","Added_static":0,"Gmail_Id":0,"Created_Skype":0,"Redmine":1,"Bitbucket":0,"Git":0,"Dropbox":0,"Local_Database":0,"Local_ftp":0}'),
(25, 103, 'Manisha', 'Pending', 'DocRbdNet', '{"reponsibleperson":"103","updated_employee":1,"Added_to_Address_Book":1,"Added_to_Biometric":1,"MSS_Team_Folder":1}', '{"docresponsible":102,"Offer_Letter":0,"Qualification":0,"ID_Proof":0,"Experience":0,"Address_Proof":0,"Medical":0,"Date_of_Birth":0,"Bank":0,"Training_Certificate":0,"Joining":0,"Salary_Slips":0,"Code_of_Conduct":0,"Passport_size":0,"Employee_Agreement":0,"Acknowledgement":0}', '{"rrbdresponsible":103,"Create_Biddle":0,"Cover_Letter":0,"Google":0}', '{"netresponsible":104,"Added_static":0,"Gmail_Id":0,"Created_Skype":0,"Redmine":0,"Bitbucket":0,"Git":0,"Dropbox":0,"Local_Database":0,"Local_ftp":0}'),
(26, 102, 'Megha', 'Pending', '       Documentation        Rbd         Network', '{"reponsibleperson":"103","updated_employee":1,"Added_to_Address_Book":1,"Added_to_Biometric":1,"MSS_Team_Folder":1}', '{"docresponsible":102,"Offer_Letter":0,"Qualification":0,"ID_Proof":0,"Experience":0,"Address_Proof":0,"Medical":0,"Date_of_Birth":0,"Bank":0,"Training_Certificate":0,"Joining":0,"Salary_Slips":0,"Code_of_Conduct":0,"Passport_size":0,"Employee_Agreement":0,"Acknowledgement":0}', '{"rrbdresponsible":103,"Create_Biddle":1,"Cover_Letter":0,"Google":0}', '{"netresponsible":104,"Added_static":1,"Gmail_Id":0,"Created_Skype":0,"Redmine":0,"Bitbucket":0,"Git":0,"Dropbox":0,"Local_Database":0,"Local_ftp":0}'),
(27, 104, 'Shweta', 'Completed', 'Completed', '{"reponsibleperson":"105","updated_employee":1,"Added_to_Address_Book":1,"Added_to_Biometric":1,"MSS_Team_Folder":1}', '{"docresponsible":102,"Offer_Letter":1,"Qualification":1,"ID_Proof":1,"Experience":1,"Address_Proof":1,"Medical":1,"Date_of_Birth":1,"Bank":1,"Training_Certificate":true,"Joining":true,"Salary_Slips":1,"Code_of_Conduct":1,"Passport_size":1,"Employee_Agreement":1,"Acknowledgement":1}', '{"rrbdresponsible":"105","Create_Biddle":1,"Cover_Letter":1,"Google":1}', '{"netresponsible":104,"Added_static":1,"Gmail_Id":1,"Created_Skype":1,"Redmine":1,"Bitbucket":1,"Git":1,"Dropbox":1,"Local_Database":1,"Local_ftp":1}'),
(28, 107, 'yogendra', 'Pending', 'Hr       Documentation        Rbd         Network', '{"reponsibleperson":"105","updated_employee":1,"Added_to_Address_Book":0,"Added_to_Biometric":1,"MSS_Team_Folder":0}', '{"docresponsible":102,"Offer_Letter":0,"Qualification":0,"ID_Proof":0,"Experience":0,"Address_Proof":0,"Medical":0,"Date_of_Birth":0,"Bank":0,"Training_Certificate":0,"Joining":0,"Salary_Slips":0,"Code_of_Conduct":0,"Passport_size":0,"Employee_Agreement":0,"Acknowledgement":0}', '{"rrbdresponsible":103,"Create_Biddle":0,"Cover_Letter":0,"Google":0}', '{"netresponsible":104,"Added_static":0,"Gmail_Id":0,"Created_Skype":0,"Redmine":0,"Bitbucket":0,"Git":0,"Dropbox":0,"Local_Database":0,"Local_ftp":0}'),
(29, 108, 'vikrant', 'Pending', 'Hr       Documentation         Network', '{"reponsibleperson":101,"updated_employee":0,"Added_to_Address_Book":0,"Added_to_Biometric":0,"MSS_Team_Folder":0}', '{"docresponsible":102,"Offer_Letter":0,"Qualification":0,"ID_Proof":0,"Experience":0,"Address_Proof":0,"Medical":0,"Date_of_Birth":0,"Bank":0,"Training_Certificate":0,"Joining":0,"Salary_Slips":0,"Code_of_Conduct":0,"Passport_size":0,"Employee_Agreement":0,"Acknowledgement":0}', '{"rrbdresponsible":"102","Create_Biddle":1,"Cover_Letter":1,"Google":1}', '{"netresponsible":104,"Added_static":0,"Gmail_Id":0,"Created_Skype":0,"Redmine":0,"Bitbucket":0,"Git":0,"Dropbox":0,"Local_Database":0,"Local_ftp":0}');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(500) NOT NULL,
  `employee_id` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_name`, `employee_id`) VALUES
(1, 'Daman', 101),
(2, 'Megha', 102),
(3, 'Manisha', 103),
(4, 'Shweta', 104),
(5, 'Komal', 105),
(6, 'deepak', 106),
(7, 'yogendra', 107),
(8, 'vikrant', 108),
(9, 'mohd ali', 109);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
