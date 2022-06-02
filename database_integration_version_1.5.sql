/*
Navicat MySQL Data Transfer

Source Server         : deepak
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : database_integration_version_1.5

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-04-10 22:51:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for academic_year
-- ----------------------------
DROP TABLE IF EXISTS `academic_year`;
CREATE TABLE `academic_year` (
  `Academic_Year` varchar(15) NOT NULL,
  `Academic_Year_ID` varchar(8) NOT NULL,
  PRIMARY KEY (`Academic_Year_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of academic_year
-- ----------------------------
INSERT INTO `academic_year` VALUES ('2012-2013', '01');
INSERT INTO `academic_year` VALUES ('2013-2014', '02');
INSERT INTO `academic_year` VALUES ('2014-2015', '03');
INSERT INTO `academic_year` VALUES ('2015-2016', '04');
INSERT INTO `academic_year` VALUES ('2016-2017', '05');
INSERT INTO `academic_year` VALUES ('2017-2018', '06');

-- ----------------------------
-- Table structure for access
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access` (
  `Access_ID` varchar(10) NOT NULL,
  `Access_Level_ID` varchar(10) NOT NULL,
  `P_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`Access_ID`),
  FULLTEXT KEY `Foreign Key` (`Access_Level_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of access
-- ----------------------------

-- ----------------------------
-- Table structure for access_level_admin
-- ----------------------------
DROP TABLE IF EXISTS `access_level_admin`;
CREATE TABLE `access_level_admin` (
  `Access_Level_ID` varchar(10) NOT NULL,
  `Type` varchar(15) NOT NULL,
  `User_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of access_level_admin
-- ----------------------------
INSERT INTO `access_level_admin` VALUES ('ac_01', 'ferry', '');
INSERT INTO `access_level_admin` VALUES ('ac_02', 'hostel', '');
INSERT INTO `access_level_admin` VALUES ('ac_03', 'Rector', 'MOST_101');
INSERT INTO `access_level_admin` VALUES ('ac_04', 'MDean', 'MOST_102');
INSERT INTO `access_level_admin` VALUES ('ac_05', 'Dean', '');
INSERT INTO `access_level_admin` VALUES ('ac_06', 'teacher', 'MOST_144');

-- ----------------------------
-- Table structure for activity_calendar
-- ----------------------------
DROP TABLE IF EXISTS `activity_calendar`;
CREATE TABLE `activity_calendar` (
  `Number` int(3) NOT NULL,
  `Start_Date` varchar(10) NOT NULL,
  `End_Date` varchar(10) NOT NULL,
  `Contents` text NOT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of activity_calendar
-- ----------------------------
INSERT INTO `activity_calendar` VALUES ('1', '15.11.2016', '9.12.2016', 'Registration Date');
INSERT INTO `activity_calendar` VALUES ('2', '1.12.2016', '-', 'First day of class');
INSERT INTO `activity_calendar` VALUES ('3', '11.3.2017', '19.3.2017', 'Private Study for 1st term');
INSERT INTO `activity_calendar` VALUES ('4', '20.3.2017', '29.3.2017', 'Mid term exam');
INSERT INTO `activity_calendar` VALUES ('5', '30.3.2017', '8.4.2017', 'Lab test for 1st term');
INSERT INTO `activity_calendar` VALUES ('6', '9.4.2017', '7.5.2017', 'Spring Holiday');
INSERT INTO `activity_calendar` VALUES ('7', '8.5.2017', '-', 'First Day of 2nd term');
INSERT INTO `activity_calendar` VALUES ('8', '28.8.2017', '3.9.2017', 'Private Study for 2nd term');
INSERT INTO `activity_calendar` VALUES ('9', '4.9.2017', '12.9.2017', 'Final exam');
INSERT INTO `activity_calendar` VALUES ('10', '13.9.2017', '26.9.2017', 'Lab test for 2nd term');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_Name` varchar(30) NOT NULL,
  `admin_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('Daw Mya Khin', 'ad123');
INSERT INTO `admin` VALUES ('Cu(mdy)Library', 'ad654');

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `Month` int(11) DEFAULT NULL,
  `Code` int(11) DEFAULT NULL,
  `Student_ID` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Attendance_Times` int(11) DEFAULT '0',
  `Attendance_Percentage` int(11) NOT NULL DEFAULT '0',
  `Remark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=163;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES ('7', '5005', '7621', 'Wai Lin Zaw', '528', '63', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5006', '7623', 'Win Pa Pa Thein', '728', '87', null);
INSERT INTO `attendance` VALUES ('7', '5007', '7627', 'May Su Mon', '728', '87', null);
INSERT INTO `attendance` VALUES ('7', '5002', '7630', 'Nang Aye Pane', '539', '64', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5003', '7634', 'Nilar Win Naing', '728', '87', null);
INSERT INTO `attendance` VALUES ('7', '5004', '7636', 'Thant Zin Oo', '728', '87', null);
INSERT INTO `attendance` VALUES ('7', '5008', '7637', 'Wai Maung Maung', '739', '88', null);
INSERT INTO `attendance` VALUES ('7', '5009', '7638', 'Khaing Myo Thein', '539', '64', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5011', '7645', 'Min Htet Aung', '540', '65', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5012', '7646', 'Naing Lin Aung', '728', '87', null);
INSERT INTO `attendance` VALUES ('7', '5013', '7647', 'Kaung Set Phay Khin', '728', '87', null);
INSERT INTO `attendance` VALUES ('7', '5014', '7648', 'Myat Myat Phyo', '728', '87', null);
INSERT INTO `attendance` VALUES ('7', '5015', '7650', 'Thu Zar Aung', '728', '87', null);
INSERT INTO `attendance` VALUES ('7', '5016', '7652', 'Khin Sandar Thein', '529', '63', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5010', '7660', 'Aye Thandar Aung', '539', '64', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5017', '7662', 'Aung Paing Thein', '530', '63', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5018', '7666', 'Tun Tun Oo', '728', '87', null);
INSERT INTO `attendance` VALUES ('7', '5019', '7669', 'San San Wai', '728', '87', null);
INSERT INTO `attendance` VALUES ('7', '5020', '7671', 'Tay Zar Hlaing Htay', '528', '63', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5021', '7672', 'Soe Yu Nwe', '528', '63', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5022', '7673', 'Hnin Hnin Aye', '528', '63', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5023', '7674', 'Thet Myat Noe Aung', '528', '63', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5024', '7676', 'Hnin Lae Wai', '528', '63', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5025', '7677', 'Pan Nu Zan', '537', '64', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5026', '7678', 'Htin Win Kyaw', '535', '64', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5027', '7681', 'Hnin Hnin Htwe', '534', '64', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5028', '7683', 'Thi Han', '737', '88', null);
INSERT INTO `attendance` VALUES ('7', '5029', '7686', 'Min Ye Myat', '728', '87', null);
INSERT INTO `attendance` VALUES ('7', '5030', '7689', 'Nandar Hlaing', '739', '88', null);
INSERT INTO `attendance` VALUES ('7', '5031', '7690', 'Khin San Wai', '740', '89', null);
INSERT INTO `attendance` VALUES ('7', '5032', '7692', 'Htet Aung Zaw', '741', '89', null);
INSERT INTO `attendance` VALUES ('7', '5033', '7693', 'Ei Thandar Kyaw', '742', '89', null);
INSERT INTO `attendance` VALUES ('7', '5034', '7695', 'Thae Ma Ma', '743', '89', null);
INSERT INTO `attendance` VALUES ('7', '5035', '7697', 'Thant Zin Aung', '744', '89', null);
INSERT INTO `attendance` VALUES ('7', '5036', '7698', 'Thin Zar Aung Myint ', '529', '63', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5037', '7700', 'Cherry Hnin', '530', '63', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5038', '7701', 'Pan Ei San', '515', '62', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5039', '7702', 'Cho Zin Hmway', '516', '62', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5040', '7704', 'Kay Zin Thant', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5041', '7706', 'Ya Min Theint Theint', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5042', '7716', 'Kyaw Zay Ya', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5043', '7719', 'Sai Thein Win', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5044', '7722', 'Ei Ei Nyein', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5045', '7724', 'Thet Paing Soe', '512', '61', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5046', '7726', 'Su Myat Htwe', '512', '61', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5047', '7730', 'Thin Zar Htet Aung', '512', '61', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5048', '7732', 'Zin Min Htun', '512', '61', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5049', '7743', 'ParaKat', '512', '61', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5050', '7767', 'Zin Thin Wah', '521', '62', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5051', '7771', 'Aye Myat Mon', '720', '86', null);
INSERT INTO `attendance` VALUES ('7', '5052', '7776', 'Kyaw Zin Win', '717', '86', null);
INSERT INTO `attendance` VALUES ('7', '5053', '7777', 'Thazin Myo', '715', '86', null);
INSERT INTO `attendance` VALUES ('7', '5054', '7778', 'Htet Htet Myint Aung', '716', '86', null);
INSERT INTO `attendance` VALUES ('7', '5055', '7785', 'Hnin Wai Wai', '512', '61', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5056', '7788', 'Nan May Phu Lwin', '512', '61', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5057', '7795', 'Myat Myat Moe', '512', '61', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5058', '7796', 'Ei Thandar Kyaw', '512', '61', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5059', '7797', 'Aye Chan Paing', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5060', '7803', 'Min Thurein Oo', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5061', '7808', 'Kyawt Kay Khaing', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5062', '7817', 'Thwe Thwe Khaing', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5063', '7818', 'Naing Aung Lu', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5064', '7821', 'Theint Thada Zaw', '516', '62', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5065', '7827', 'Soe Pyae Aung', '517', '62', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5066', '7831', 'Sapal Oo', '519', '62', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5067', '7839', 'Than Htun Aung', '520', '62', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5068', '7844', 'Ngu Wah Phu Thit', '521', '62', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5069', '7846', 'Nang Lin Hong', '532', '64', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5070', '7848', 'Ei Shwe Sin ', '542', '65', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5071', '7851', 'Shwe Pyi Soe Aung', '811', '97', null);
INSERT INTO `attendance` VALUES ('7', '5072', '7852', 'Cherry Han', '812', '97', null);
INSERT INTO `attendance` VALUES ('7', '5073', '7859', 'Myo Min Thant', '813', '97', null);
INSERT INTO `attendance` VALUES ('7', '5074', '7860', 'Thi Thi Hlaing', '819', '98', null);
INSERT INTO `attendance` VALUES ('7', '5075', '7862', 'Soe Lin Aung', '821', '98', null);
INSERT INTO `attendance` VALUES ('7', '5076', '7867', 'Geepbaha Doo', '844', '101', null);
INSERT INTO `attendance` VALUES ('7', '5077', '7871', 'Thiri Zun', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5078', '7875', 'Wai Wai Phyo', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5079', '7885', 'Nyi Kyaw Aye', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5080', '7894', 'Khant Htet Naing', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5081', '7895', 'Phyo Kay Khaing', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5082', '7896', 'Kumara', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5083', '7900', 'Khin Mar Win', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5087', '7902', 'Phyo Min Thant', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5088', '7906', 'Win Shan Phyo', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5084', '7910', 'Shun Lae Wai', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5085', '7911', 'Win Moh Moh San', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5086', '7916', 'Nan Win Nu', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5089', '7921', 'Nang Swe Win Mon', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5090', '7925', 'Mohan La', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5091', '7926', 'Khaing Zin Thin Myint', '712', '85', null);
INSERT INTO `attendance` VALUES ('7', '5092', '7927', 'Aye Chan Wai', '616', '74', 'You are not full');
INSERT INTO `attendance` VALUES ('7', '5093', '7928', 'Nan Shwe May Kyaw Aung', '638', '76', null);
INSERT INTO `attendance` VALUES ('7', '5094', '7932', 'Myo Min', '659', '79', null);
INSERT INTO `attendance` VALUES ('7', '5095', '7936', 'Zizar Myo Chit', '690', '83', null);
INSERT INTO `attendance` VALUES ('7', '5096', '7938', 'Lai Lai Soe', '707', '85', null);
INSERT INTO `attendance` VALUES ('7', '5097', '7939', 'Zin Thu Thu Myint', '812', '97', null);
INSERT INTO `attendance` VALUES ('7', '5098', '7940', 'Chan Myae Maung', '812', '97', null);
INSERT INTO `attendance` VALUES ('7', '5099', '7942', 'Lai Lai Phyo', '812', '97', null);
INSERT INTO `attendance` VALUES ('7', '5100', '7944', 'Phyo Kyaw Kyaw', '812', '97', null);
INSERT INTO `attendance` VALUES ('7', '4500', '3456', 'MGMG', '8', '1', 'You are not full');
INSERT INTO `attendance` VALUES (null, '12', '12', '12', '0', '0', 'You are not full');
INSERT INTO `attendance` VALUES (null, '12', '12', '12', '0', '0', 'You are not full');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `Sub_ID` int(8) NOT NULL AUTO_INCREMENT,
  `Serial_No` varchar(8) NOT NULL,
  `SubName` varchar(50) NOT NULL,
  `BookName` varchar(90) NOT NULL,
  `AuthorName` varchar(60) NOT NULL,
  `Publisher` varchar(30) NOT NULL,
  `PublicationDate` varchar(30) NOT NULL,
  `Edition` varchar(30) NOT NULL,
  `Term_ID` varchar(8) NOT NULL,
  `Major_ID` varchar(5) NOT NULL,
  `Department_ID` varchar(8) NOT NULL,
  `Profile` varchar(30) NOT NULL,
  `Price` int(8) NOT NULL,
  PRIMARY KEY (`Sub_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '1', 'Myanmar', 'ကဗ်ာ', '-', '-', '-', '-', '1', '1', 'D005', '', '1000');
INSERT INTO `book` VALUES ('2', '1', 'Myanmar', 'စကားေျပ', '-', '- ', '-', '-', '1', '1', 'D005', '', '1000');
INSERT INTO `book` VALUES ('3', '1', 'Myanmar', 'ဇာတိမာန္', '-', '-', '-', '-', '1', '1', 'D005', '', '1000');
INSERT INTO `book` VALUES ('4', '2', 'English', 'IELTS', 'Macmillan', 'Cambridge University Press', '2008', '4th Edition', '1', '1', 'D009', '', '1500');
INSERT INTO `book` VALUES ('5', '2', 'English', 'InfoTech', 'Santigo Remacha Esteras', 'Cambridge University Press', '2008', '4th Edition', '1', '1', 'D009', 'img/courses/1.jpg', '1000');
INSERT INTO `book` VALUES ('6', '3', 'Physics', 'College Physics', 'AlanGiamnbattista,BettyMcCarthy&RobertC.Richardson', 'McGraw-Hill', '2004', 'International Edition', '1', '1', 'D011', '', '3000');
INSERT INTO `book` VALUES ('7', '4', 'Introduction to Computer Systems', 'Computer Fundamentals	', 'P.K. Sinha		', 'BPB Publication', 'November 30,2004', '6th Edition', '1', '1', 'D006', '', '2000');
INSERT INTO `book` VALUES ('8', '5', 'Mathematics of Computing I', 'Mathematics of Computing I', 'George B.Thomas', 'Pearson Education,Inc...', '2010', '12th Edition', '1', '1', 'D008', '', '2000');
INSERT INTO `book` VALUES ('9', '6', 'Computer Application Technique I', 'Web Development and Design Foundations with HTML5', 'Terry felke-Morris', 'Pearson Education,Inc...', '2013', '6th Edition', '1', '1', 'D003', '', '2000');
INSERT INTO `book` VALUES ('10', '7', 'Programming Logic', 'Programming logic and Design,Comprehensive', 'Joyce Farrel		', 'Cengage Learning', 'February 8,2010	', '6th Edition', '1', '1', 'D006', 'img/courses/7.jpg', '3000');
INSERT INTO `book` VALUES ('11', '4', 'Digital Fundamental I', 'Digital Fundamentals', 'ThomasL.Floyd', 'Pearson Education,Inc...', '2009', '10th Edition', '2', '1', 'D007', '', '3500');
INSERT INTO `book` VALUES ('12', '6', 'Data Structure', 'Theory and Problems of Data Structures', 'Seymoui Lipschutz', 'McGraw-Hill', 'December1,1986', 'International Edition', '2', '1', 'D', 'img/courses/42.jpg', '2000');
INSERT INTO `book` VALUES ('13', '7', 'Computer Programming Technique', 'Object-Oriented Programming in C++	', 'Robert Lafore			', 'Sams Publishing	', 'December29,2001', '4th', '2', '1', 'D006', 'img/courses/6.jpg', '3000');
INSERT INTO `book` VALUES ('14', '8', 'English', 'Objective IELTS', 'Michael Black&Wendy Sharp', 'Cambridge University Press', '2006', 'Student’s Guide ed.Edition', '1', '1', 'D009', 'img/courses/23.jpg', '2000');
INSERT INTO `book` VALUES ('15', '9', 'Java Programming', 'Learn to Program Java', 'Danny C.C.POO&Chee Seong TAN', 'Prentice Hall', '2005', '2nd Edition', '1', '1', 'D006', '', '2000');
INSERT INTO `book` VALUES ('16', '10', 'Mathematics of Computing II', 'Thomas\' Calculus,Discrete Mathematics &Its Applications,Advanced Engineering Mathematics', 'KennethH.Rosen', 'McGraw-Hill', '-', '7th Edition', '1', '1', 'D008', '', '2000');
INSERT INTO `book` VALUES ('17', '11', 'Digital Fundamental', 'Digital Fundamental', 'ThomasL.Floyd', 'Pearson Education,Inc...', '2009', '10th Edition', '1', '1', 'D007', '', '3500');
INSERT INTO `book` VALUES ('18', '12', 'Database Management System', 'Database  System', 'C.J.Date', 'Addison Wesley', 'January1,2000', '7th Edition', '1', '1', 'D010', 'img/courses/11.jpg', '3500');
INSERT INTO `book` VALUES ('19', '13', 'Accounting', 'Business Management', '', '', '', '', '1', '2', 'D003', '', '1500');
INSERT INTO `book` VALUES ('20', '13', 'JavaScript', 'Poofessional JavaScript for Web Developer', 'NicholasC.Zakas', 'John Wiley& Sons,Inc...', '2012', '3rd Edition', '1', '2', 'D003', 'img/courses/33.jpg', '3000');
INSERT INTO `book` VALUES ('21', '14', 'Software Engineering', 'Software Engineering', 'Sommerville', 'Addison Wesley', '2007', '8th Edition', '1', '2', 'D010', 'img/courses/2.jpg', '3000');
INSERT INTO `book` VALUES ('22', '14', 'System Analysis & Design', ' Essentials of System Analysis & Design', 'JosephS.Valacich,JoeyF.George&JeffieyA.Hoffer', 'Pearson Education,Inc...', 'January1,2012', '5th Edition', '1', '2', 'D010', 'img/courses/8.jpg', '2500');
INSERT INTO `book` VALUES ('23', '9', 'Java Programming', 'Java Black Book', 'Steven Hoizner', 'Brijbasi Art Press L.td', '2007', 'JDK 5th Edition', '2', '1', 'D006', '', '2500');
INSERT INTO `book` VALUES ('24', '11', 'Data Structure in Java', 'Data Structures & Algorithms in Java', 'Robert Lafore', 'Sams Publishing', '2003', '2nd Edition', '2', '1', 'D006', 'img/courses/3.jpg', '3000');
INSERT INTO `book` VALUES ('25', '12', 'Object-Oriented System Development', 'Object-Oriented System Development', 'Caronl Britton&Jill Daoke', 'McGraw-Hill', '2001', 'International Edition', '2', '1', 'D010', 'img/courses/41.jpg', '2000');
INSERT INTO `book` VALUES ('26', '13', 'Human-Computer Interaction', 'Human-Computer Interaction', 'AlanDix,Janet Finlay,GregoryD.Abowd&Russell Beale', 'Pearson Education,Inc...', '2004', '3rd Edition', '2', '2', 'D003', 'img/courses/37.jpg', '3000');
INSERT INTO `book` VALUES ('27', '13', 'Computer Application Technique II', 'Professional JavaScripts for Web Developers', 'NicholasC.Zakas', 'John Wiley & Sons,Inc...', '2012', '3rd Edition', '1', '3', 'D003', 'img/courses/book4.jpg', '3000');
INSERT INTO `book` VALUES ('28', '14', 'Electrical Circuit I', 'Engineering Circuit Analysis', 'Wliiam H. Hayt,Jack Kemmerly and Steven Durbin	 	', 'McGraw –Hill', 'August 24 ,2011	', '8th Edition', '1', '3', 'D007', 'img/courses/book2.jpg', '2000');
INSERT INTO `book` VALUES ('29', '11', 'Advanced Data Structure', 'Data Structures & Algorithms in JAVA', 'Robert Lafore			', 'Sams Publihing', '2003', '2nd Edition', '2', '1', 'D006', '', '2500');
INSERT INTO `book` VALUES ('30', '12', 'System Analysis  & Design', 'Essentials of System Analysis  & Design', 'JosephS.Valacich,JoeyF.George&JeffreyA.Hoffer', 'Prentice Hall', 'January1,2012', '5th Edition', '2', '1', 'D010', 'img/courses/8.jpg', '2500');
INSERT INTO `book` VALUES ('31', '13', 'Digital System Design I', 'Digital Fundamental', 'ThomasL.Floyd', 'Pearson Education,Inc...', '2009', '10th Edition', '2', '3', 'D007', 'img/courses/50.jpg', '3500');
INSERT INTO `book` VALUES ('32', '15', 'English', 'IELTS 7', 'Cambridge ESOL			', 'Cambridge University Press', 'June 30,2009', 'Student Edition', '1', '2', 'D009', 'img/courses/49.jpg', '2000');
INSERT INTO `book` VALUES ('33', '16', 'Computer Organization', 'Structured Computer Organization', 'AndrewS.Tanenbaum & Todd Austin', 'Pearson Education,Inc...', 'August4,2012', '6th Edition', '1', '1', 'D006', 'img/courses/book7.jpg', '3000');
INSERT INTO `book` VALUES ('34', '17', 'Mathematics of Computing III', 'Advanced Engineering Mathematics', 'E.Kreyszig', 'Wiley', 'August 16,2011', '10th Edition', '1', '1', 'D008', '', '2000');
INSERT INTO `book` VALUES ('35', '18', 'Data Communication I', 'Data and Computer Communication', 'William Stallings', 'Pearson Education,Inc...', '2011', '9th Edition', '1', '1', 'D007', '', '3000');
INSERT INTO `book` VALUES ('36', '19', 'Software Engineering', 'Software Engineering', 'Sommerville', 'Addison Wesley', '2007', '8th Edition', '1', '2', 'D010', '', '3000');
INSERT INTO `book` VALUES ('37', '20', 'Computer Application Technique III', 'C#5.0 Programmer’s Business Application Areas', 'Rod Stephens', 'Wrox', 'Apirl 28,2014', '1st Edition', '1', '2', 'D006', 'img/courses/19.jpg', '2500');
INSERT INTO `book` VALUES ('38', '21', 'Advanced Java Programming', 'Java Server Programming(J2ee)  Black Book', 'Steven Holzner et al.', 'Dream Tech Press	', '2007', 'JDK 5th Edition', '1', '1', 'D006', 'img/courses/31.jpg', '2500');
INSERT INTO `book` VALUES ('39', '16', 'Operating System', 'Operation Systems Interface & Design Principles', 'William Stallings', 'Pearson Eduction,Inc...', '2005', '5th Edition', '2', '1', 'D006', 'img/courses/16.jpg', '3000');
INSERT INTO `book` VALUES ('40', '18', 'Computer Networking', 'Computer Networking', 'JamesF.Kurose& KeithW.Ross', 'Pearson Education,Inc...', '2008', '4th Edition', '2', '1', 'D007', '', '3000');
INSERT INTO `book` VALUES ('41', '19', 'Database Management System', 'Database Management System', 'C.J.Date', 'Addison Wesley', 'January1,2000', '7th Edition', '2', '2', 'D010', '', '3500');
INSERT INTO `book` VALUES ('42', '19', 'Electronics I', 'Electronic Devices', 'ThomasL.Floyd', 'Prentice Hall', '2012', '9th Edition', '1', '3', 'D007', '', '2500');
INSERT INTO `book` VALUES ('43', '20', 'Linear Control System I', 'Modern Control System ', 'RichardC.Dorf & RobertH.Bishop', 'Pearson Education,Inc...', '2011', '12th Edition', '1', '3', 'D007', 'img/courses/53.jpg', '2500');
INSERT INTO `book` VALUES ('44', '21', 'Electrical Circuit II', 'Engineering Circuit Analysis', 'WilliamH.Hayt,Jr Jack & E.Kemmerly', 'McGraw-Hill', '2012', '8th Edition', '1', '3', 'D007', '', '2500');
INSERT INTO `book` VALUES ('45', '20', 'Digital System Design II', 'Computer Architecture & Organization', 'JohnP.Hayes', 'McGraw-Hill', 'December1,1997', '3rd Edition', '2', '3', 'D006', 'img/courses/12.jpg', '3000');
INSERT INTO `book` VALUES ('46', '21', 'Assembly Language', 'Microprocesses Architecture,Programming & Application with the 8085', 'RameshM.Gaonkar', 'Penram', 'February 1,2013', '6th Edition', '2', '3', 'D007', '', '2500');
INSERT INTO `book` VALUES ('47', '22', 'English', 'IELTS 8', 'Cambridge Esol', 'Cambridge University Press', 'May16,2011', '-', '1', '2', 'D009', '', '2000');
INSERT INTO `book` VALUES ('48', '23', 'Operation Research', 'Introduction to Operations Research', 'FrederickS.Hillier & Liverman', 'Asoke K.Ghosh', 'January 2000', '7th Edition', '1', '2', 'D008', '', '2000');
INSERT INTO `book` VALUES ('49', '24', 'Mathematics of Computing IV', 'Discrete Mathematics and Its Application', 'KennethH.Rosen', 'McGraw-Hill', 'June14,2011', '7th Edition', '1', '1', 'D008', '', '2000');
INSERT INTO `book` VALUES ('50', '25', 'Analysis of Algorithm', ' The Design & Analysis of Computer Algorithms', 'Aho, Hopcroft & Ullman', 'Pearson Education,Inc...', 'January1,2002', 'Low Price Edition', '1', '2', 'D006', '', '2500');
INSERT INTO `book` VALUES ('51', '26', 'Database Management System', 'Database Management System', 'C.J.Date', 'Addison Wesley', 'January1,2000', '7th Edition', '1', '2', 'D010', '', '3500');
INSERT INTO `book` VALUES ('52', '27', 'Software Engineering', 'Software Engineering', 'Sommerville', 'Addison Wesley', '2007', '8th Edition', '1', '2', 'D010', '', '3000');
INSERT INTO `book` VALUES ('53', '28', 'Artificial Intelligence', 'Artificial Intelligence A Modern Approach', 'StuartJ.Russel&Peter Norving', 'Prentice-Hall', '2003', '2nd Edition', '1', '2', 'D006', 'img/courses/22.jpg', '2000');
INSERT INTO `book` VALUES ('54', '23', ' E-Commerce', 'E-Business & E-Commerce Management', 'Dave Chaffey', 'Prentice Hall', '2002', '5th Edition', '2', '2', 'D003', 'img/courses/30.jpg', '2000');
INSERT INTO `book` VALUES ('55', '25', 'Operating System', 'Operating System', 'Abraham Silberschatz, PeterB.Gamvin & Greg Gagne', 'Wiley', 'June 26,2001', '6th Edition', '2', '2', 'D006', '', '2000');
INSERT INTO `book` VALUES ('56', '26', 'Management Information System', 'Fundamentals of Information System', 'Vladimir Zwass', 'McGraw-Hill', '1998', 'International Edition', '2', '2', 'D010', '', '3000');
INSERT INTO `book` VALUES ('57', '27', 'Unified Modelling Language', 'Practical Object-Oriented Design With UML', 'Mark Priestley', 'McGraw-Hill', '2004', '2nd Edition', '2', '2', 'D010', '', '2500');
INSERT INTO `book` VALUES ('58', '28', 'Computer Graphics', 'Computer Graphics C VERSION', 'Donald Hearn&M.Pauline Baker', 'Prentice Hall', '1997', '2nd Edition', '2', '2', 'D006', 'img/courses/38.jpg', '2000');
INSERT INTO `book` VALUES ('59', '23', 'Artificial Intelligence', 'Artificial Intelligence A Modern Approach', 'StuartJ.Russel&Peter Norving', 'Prentice Hall', '2003', '2nd Edition', '1', '3', 'D006', 'img/courses/22.jpg', '2000');
INSERT INTO `book` VALUES ('60', '25', 'Electronics II', 'Electronic Device Electron Flow Version', 'ThomasL.Floyd', ' Prentice Hall', '2012', '9th Edition', '1', '3', 'D007', '', '2000');
INSERT INTO `book` VALUES ('61', '26', 'Computer Architecture', 'Computer Architecture & Organization', 'JohnP.Hayes', 'McGraw-Hill', 'December1,1997', '3rd Edition', '1', '3', 'D006', '', '3000');
INSERT INTO `book` VALUES ('62', '27', ' Control System II', ' Modern Control System', 'RichardC.Dorf & RobertH.Bishop', 'Prentice Hall', '2011', '12th Edition', '1', '3', 'D006', '', '2500');
INSERT INTO `book` VALUES ('63', '28', 'Data and Computer Communication II', 'Data and Computer Communications ', 'William Stallings', 'Pearson Education,Inc...', '2011', '9th Edition', '1', '3', 'D007', '', '3000');
INSERT INTO `book` VALUES ('64', '23', 'Database Management System', 'Database System', 'C.J.Date', 'Addison Wesley', 'January1,2000', '7th Edition', '2', '3', 'D010', '', '3500');
INSERT INTO `book` VALUES ('65', '25', 'Introduction to Embedded System', 'Introduction to Embedded System', 'RichardC.Dorf ', 'McGraw-Hill', '2009', '-', '2', '3', 'D007', '', '3000');
INSERT INTO `book` VALUES ('66', '27', 'Cryptography', 'Cryptography and Networking Security', 'BehrouzA.Forouzan', 'McGraw-Hill', 'January1,1861', 'International Edition', '2', '3', 'D007', 'img/courses/26.jpg', '3000');
INSERT INTO `book` VALUES ('67', '28', 'Introduction to Computer Security', 'Computer Security Fundamentals', 'Chuck Eastton', 'Prentice Hall', 'December 2011', '2nd Edition', '2', '3', 'D007', '', '2500');
INSERT INTO `book` VALUES ('68', '29', 'English', 'IELTS 9', 'Cambridge Esol', 'Cambridge University Press', 'July 8,2013', 'Practice Tests Edition', '1', '2', 'D009', '', '2000');
INSERT INTO `book` VALUES ('69', '30', 'Mathematics of Computing(OR)', 'Introduction to Operations Research', 'FrederickS.Hillier & Liverman', 'Fhillier@Leland Stanford.edu', 'January 2000', '7th Edition', '1', '1', 'D008', '', '2000');
INSERT INTO `book` VALUES ('70', '31', 'Distributed Computing System', 'Distributed Computing System', 'George Colouris,Jean Dollimore,Tim Kindberg&Gordon Blair', 'Addison Wesley', 'May7,2011', '5th Edition', '1', '1', 'D006', '', '3000');
INSERT INTO `book` VALUES ('72', '33', 'Computing Applied Algorithm', 'The Design & Analysis of Computer Algorithm', 'Aho, Hopcroft & Ullman', 'Pearson Education,Inc...', 'January1,2002', 'Low Price Edition', '1', '2', 'D006', '', '2500');
INSERT INTO `book` VALUES ('73', '33', 'Artificial Intelligence', 'Artificial Intelligence', 'StuartJ.Russel & Peter Norving', 'Prentice Hall', '2003', '2nd Edition', '1', '2', 'D006', '', '2000');
INSERT INTO `book` VALUES ('74', '33', 'Computer Graphics', 'Computer Graphics', 'Donald Hearn & M.Pauline Baker', 'Prentice Hall', '1997', '2nd Edition', '1', '2', 'D006', '', '2000');
INSERT INTO `book` VALUES ('75', '34', 'Datamining', 'Datamining', '', '', '', '', '1', '2', 'D010', '', '3000');
INSERT INTO `book` VALUES ('76', '34', 'WebEngineering', 'WebEngineering: A Practitioner\'s Approach', 'RogerS.Pressman & David Lowe', 'McGraw-Hill', '2009', '-', '1', '2', 'D010', '', '3000');
INSERT INTO `book` VALUES ('77', '32', 'Computer Organization & Design', 'Computer Organization & Design', 'D.A.Patterson & J.L.Hennessy', 'Morgan Kaufmann', 'Novemember 10,2008', '4th Edition', '1', '3', 'D006', '', '3000');
INSERT INTO `book` VALUES ('78', '33', 'Embedded Security', 'Introduction to Embedded Systems Making Embedded Systems', 'ShibK.V + Elecia White', 'McGraw-Hill+O’Reilly Media', 'June 15,2009+November 12,2011', '1st Edition', '1', '3', 'D007', '', '2500');
INSERT INTO `book` VALUES ('79', '33', 'Networking Security', 'Cryptography and Networking Security', 'BehriuzA.Forouzan', 'McGraw –Hill', 'February 28,2007', 'International Edition', '1', '3', 'D007', '', '3000');
INSERT INTO `book` VALUES ('80', '34', 'Digital Signal Processing', 'Signal and Systems', 'A.V.Oppenheim, A.S.Willky & S.H.Nawab', 'Pearson Education,Inc…', 'August16,1996', '2nd Edition', '1', '3', 'D007', '', '2500');
INSERT INTO `book` VALUES ('81', '34', 'Dignal Signal Image', 'Digital Image Processing', 'RafaelC.Gonzalez & Richard E.Woods', 'Pearson Education,Inc…', '2004', '2nd Edition', '1', '3', 'D007', '', '2500');
INSERT INTO `book` VALUES ('82', '31', 'TCP/IP				', 'Internetworking with TCP/IP', 'Douglas E.Comer	', 'Pearson Education,Inc...', '2006', '5th ', '2', '1', 'D007', '', '3000');
INSERT INTO `book` VALUES ('83', '1', 'Myanmar', 'ကဗ်ာ', '-', '-', '-', '-', '2', '1', 'D005', '', '1000');
INSERT INTO `book` VALUES ('84', '1', 'Myanmar', 'စကားေျပ', '-', '- ', '-', '-', '2', '1', 'D005', '', '1000');
INSERT INTO `book` VALUES ('85', '1', 'Myanmar', 'ဇာတိမာန္', '-', '-', '-', '-', '2', '1', 'D005', '', '1000');
INSERT INTO `book` VALUES ('86', '2', 'English', 'IELTS', 'Macmillan', 'Cambridge University Press', '2008', '4th Edition', '2', '1', 'D009', '', '1500');
INSERT INTO `book` VALUES ('87', '2', 'English', 'InfoTech', 'Santigo Remacha Esteras', 'Cambridge University Press', '2008', '4th Edition', '2', '1', 'D009', '', '1000');
INSERT INTO `book` VALUES ('88', '3', 'Physics', 'College Physics', 'AlanGiamnbattista,BettyMcCarthy&RobertC.Richardson', 'McGraw-Hill', '2004', 'International Edition', '2', '1', 'D011', '', '3000');
INSERT INTO `book` VALUES ('89', '8', 'English', 'Objective IELTS', 'Michael Black&Wendy Sharp', 'Cambridge University Press', '2006', '', '2', '2', 'D009', '', '2000');
INSERT INTO `book` VALUES ('90', '10', 'Mathematics of Computing II', 'Thomas\' Calculus,Discrete Mathematics &Its Applications,Advanced Engineering Mathematics', 'KennethH.Rosen', 'McGraw-Hill', '-', '7th Edition', '2', '1', 'D008', '', '2000');
INSERT INTO `book` VALUES ('91', '13', 'JavaScript', 'Poofessional JavaScript for Web Developer', 'NicholasC.Zakas', 'John Wiley& Sons,Inc...', '2012', '3rd Edition', '2', '2', 'D003', '', '3000');
INSERT INTO `book` VALUES ('92', '14', 'Software Engineering', 'Software Engineering', 'Sommerville', 'Addison Wesley', '2007', '8th Edition', '2', '2', 'D010', '', '3000');
INSERT INTO `book` VALUES ('93', '14', 'System Analysis & Design', ' Essentials of System Analysis & Design', 'JosephS.Valacich,JoeyF.George&JeffieyA.Hoffer', 'Pearson Education,Inc...', 'January1,2012', '5th Edition', '2', '2', 'D010', '', '2500');
INSERT INTO `book` VALUES ('94', '8', 'English', 'Objective IELTS', 'Michael Black&Wendy Sharp', 'Cambridge University Press', '2006', '', '1', '3', 'D009', '', '2000');
INSERT INTO `book` VALUES ('95', '9', 'Java Programming', 'Learn to Program Java', 'Danny C.C.POO&Chee Seong TAN', 'Prentice Hall', '2005', '2nd Edition', '1', '1', 'D006', '', '2500');
INSERT INTO `book` VALUES ('96', '10', 'Mathematics of Computing II', 'Thomas\' Calculus,Discrete Mathematics &Its Applications,Advanced Engineering Mathematics', 'KennethH.Rosen', 'McGraw-Hill', '-', '7th Edition', '1', '1', 'D008', '', '2000');
INSERT INTO `book` VALUES ('97', '11', 'Digital Fundamental', 'Digital Fundamental', 'ThomasL.Floyd', 'Pearson Education,Inc...', '2009', '10th Edition', '1', '1', 'D007', '', '3500');
INSERT INTO `book` VALUES ('98', '12', 'Database Management System', 'Database  System', 'C.J.Date', 'Addison Wesley', 'January1,2000', '7th Edition', '1', '1', 'D010', '', '3500');
INSERT INTO `book` VALUES ('99', '15', 'English', 'IELTS 7', 'Cambridge ESOL			', 'Cambridge University Press', 'June 30,2009', 'Student Edition', '2', '2', 'D009', '', '2000');
INSERT INTO `book` VALUES ('100', '17', 'Mathematics of Computing III', 'Advanced Engineering Mathematics', 'E.Kreyszig', 'Wiley', 'August 16,2011', '10th Edition', '2', '1', 'D008', 'img/courses/book8.jpg', '2000');
INSERT INTO `book` VALUES ('101', '20', 'Computer Application Technique III', 'C#5.0 Programmer’s Business Application Areas', 'Rod Stephens', 'Wrox', 'Apirl 28,2014', '1st Edition', '2', '2', 'D006', 'img/courses/19.jpg', '2500');
INSERT INTO `book` VALUES ('102', '21', 'Advanced Java Programming', 'Java Server Programming(J2ee)  Black Book', 'Steven Holzner et al.', 'Dream Tech Press	', '2007', 'JDK 5th Edition', '2', '1', 'D006', 'img/courses/31.jpg', '2500');
INSERT INTO `book` VALUES ('103', '14', 'Electrical Circuit I', 'Engineering Circuit Analysis', 'Wliiam H. Hayt,Jack Kemmerly and Steven Durbin	 	', 'McGraw –Hill', 'August 24 ,2011	', '8th Edition', '2', '3', 'D007', 'img/courses/book2.jpg', '2500');
INSERT INTO `book` VALUES ('104', '15', 'English', 'IELTS 7', 'Cambridge ESOL			', 'Cambridge University Press', 'June 30,2009', 'Student Edition', '1', '3', 'D009', '', '2000');
INSERT INTO `book` VALUES ('105', '16', 'Computer Organization', 'Structured Computer Organization', 'AndrewS.Tanenbaum & Todd Austin', 'Pearson Education,Inc...', 'August4,2012', '6th Edition', '1', '1', 'D006', 'img/courses/17.jpg', '3000');
INSERT INTO `book` VALUES ('106', '17', 'Mathematics of Computing III', 'Advanced Engineering Mathematics', 'E.Kreyszig', 'Wiley', 'August 16,2011', '10th Edition', '1', '1', 'D008', 'img/courses/book8.jpg', '2000');
INSERT INTO `book` VALUES ('107', '18', 'Data Communication I', 'Data and Computer Communication', 'William Stallings', 'Pearson Education,Inc...', '2011', '9th Edition', '1', '1', 'D007', 'img/courses/15.jpg', '3000');
INSERT INTO `book` VALUES ('108', '17', 'Mathematics of Computing III', 'Advanced Engineering Mathematics', 'E.Kreyszig', 'Wiley', 'August 16,2011', '10th Edition', '2', '1', 'D008', 'img/courses/book8.jpg', '2000');
INSERT INTO `book` VALUES ('109', '16', 'Operating System', 'Operation Systems Interface & Design Principles', 'William Stallings', 'Pearson Eduction,Inc...', '2005', '5th Edition', '2', '1', 'D006', 'img/courses/17.jpg', '3000');
INSERT INTO `book` VALUES ('110', '18', 'Computer Networking', 'Computer Networking', 'JamesF.Kurose& KeithW.Ross', 'Pearson Education,Inc...', '2008', '4th Edition', '2', '1', 'D007', 'img/courses/51.jpg', '3000');
INSERT INTO `book` VALUES ('111', '19', 'Electronics I', 'Electronic Devices', 'ThomasL.Floyd', 'Prentice Hall', '2012', '9th Edition', '2', '3', 'D007', 'img/courses/48.jpg', '2500');
INSERT INTO `book` VALUES ('112', '22', 'English', 'IELTS 8', 'Cambridge Esol', 'Cambridge University Press', 'May16,2011', '-', '2', '2', 'D009', '', '2000');
INSERT INTO `book` VALUES ('113', '24', 'Mathematics of Computing IV', 'Discrete Mathematics and Its Application', 'KennethH.Rosen', 'McGraw-Hill', 'June14,2011', '7th Edition', '2', '1', 'D008', 'img/courses/34.jpg', '2000');
INSERT INTO `book` VALUES ('114', '22', 'English', 'IELTS 8', 'Cambridge Esol', 'Cambridge University Press', 'May16,2011', '-', '1', '3', 'D009', '', '2000');
INSERT INTO `book` VALUES ('115', '24', 'Mathematics of Computing IV', 'Discrete Mathematics and Its Application', 'KennethH.Rosen', 'McGraw-Hill', 'June14,2011', '7th Edition', '1', '1', 'D008', 'img/courses/34.jpg', '2000');
INSERT INTO `book` VALUES ('116', '22', 'English', 'IELTS 8', 'Cambridge Esol', 'Cambridge University Press', 'May16,2011', '-', '2', '3', 'D009', '', '2000');
INSERT INTO `book` VALUES ('117', '24', 'Mathematics of Computing IV', 'Discrete Mathematics and Its Application', 'KennethH.Rosen', 'McGraw-Hill', 'June14,2011', '7th Edition', '2', '1', 'D008', '', '2000');
INSERT INTO `book` VALUES ('118', '26', 'Computer Architecture', 'Computer Architecture & Organization', 'JohnP.Hayes', 'McGraw-Hill', 'December1,1997', '3rd Edition', '2', '3', 'D006', 'img/courses/12.jpg', '3000');
INSERT INTO `book` VALUES ('119', '29', 'English', 'IELTS 9', 'Cambridge Esol', 'Cambridge University Press', 'July 8,2013', 'Practice Tests Edition', '1', '3', 'D009', 'img/courses/10.jpg', '2000');
INSERT INTO `book` VALUES ('120', '30', 'Mathematics of Computing(OR)', 'Introduction to Operations Research', 'FrederickS.Hillier & Liverman', 'Fhillier@Leland Stanford.edu', 'January 2000', '7th Edition', '1', '1', 'D008', 'img/courses/39.jpg', '2000');
INSERT INTO `book` VALUES ('121', '31', 'Distributed Computing System', 'Distributed Computing System', 'George Colouris,Jean Dollimore,Tim Kindberg&Gordon Blair', 'Addison Wesley', 'May7,2011', '5th Edition', '1', '1', 'D006', 'img/courses/35.jpg', '3000');
INSERT INTO `book` VALUES ('122', '29', 'English', 'IELTS 9', 'Cambridge Esol', 'Cambridge University Press', 'July 8,2013', 'Practice Tests Edition', '2', '2', 'D009', '', '2000');
INSERT INTO `book` VALUES ('123', '29', 'English', 'IELTS 9', 'Cambridge Esol', 'Cambridge University Press', 'July 8,2013', 'Practice Tests Edition', '2', '3', 'D009', '', '2000');
INSERT INTO `book` VALUES ('124', '9', 'Java Programming', 'Java Black Book', 'Steven Hoizner', 'Brijbasi Art Press L.td', '2007', 'JDK 5th Edition', '2', '1', 'D006', 'img/courses/52.jpg', '2500');
INSERT INTO `book` VALUES ('125', '10', 'Mathematics of Computing II', 'Thomas\' Calculus,Discrete Mathematics &Its Applications,Advanced Engineering Mathematics', 'KennethH.Rosen', 'McGraw-Hill', '-', '7th Edition', '2', '1', 'D008', '', '2000');
INSERT INTO `book` VALUES ('126', '31', 'TCP/IP				', 'Internetworking with TCP/IP', 'Douglas E.Comer	', 'Pearson Education,Inc...', '2006', '5th ', '2', '1', 'D007', 'img/courses/25.jpg', '3000');
INSERT INTO `book` VALUES ('127', '15', 'English', 'IELTS 7', 'Cambridge ESOL			', 'Cambridge University Press', 'June 30,2009', 'Student Edition', '2', '3', 'D009', '', '2000');
INSERT INTO `book` VALUES ('128', '5', 'Mathematics of Computing I', 'Mathematics of Computing I', 'George B.Thomas', 'Pearson Education,Inc...', '2010', '12th Edition', '2', '1', 'D008', '', '2000');
INSERT INTO `book` VALUES ('129', '8', 'English', 'Objective IELTS', 'Michael Black&Wendy Sharp', 'Cambridge University Press', '2006', 'Student’s Guide ed.Edition', '2', '2', 'D009', 'img/courses/23.jpg', '2000');
INSERT INTO `book` VALUES ('130', '32', 'Information Security ', 'Information Security and IT Risk Management', 'Manish Agrawal,Alex Campoe & Eric Pierce', 'Wiley', 'April 21, 2014', '1st Edition', '2', '2', 'D007', 'img/courses/36.jpg', '2500');
INSERT INTO `book` VALUES ('131', '32', 'Computer Organization & Design', 'Computer Organization & Design The Hardware/Software Interface', 'DavidA.Patterson & JohnL.Hennessy', 'Morgan Kaufmann', 'November 10,2008', '4th Edition', '2', '3', 'D007', 'img/courses/14.jpg', '0');
INSERT INTO `book` VALUES ('132', '111', '', '', '', '', '', '', '', '', '', '', '0');
INSERT INTO `book` VALUES ('133', '132', '', '', '', '', '', '', '', '', '', '', '0');

-- ----------------------------
-- Table structure for booking
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `BID` int(8) NOT NULL AUTO_INCREMENT,
  `Student_ID` varchar(8) DEFAULT NULL,
  `CarNo` varchar(10) DEFAULT NULL,
  `Time` date DEFAULT NULL,
  `PhoneNo` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`BID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of booking
-- ----------------------------
INSERT INTO `booking` VALUES ('1', '03', '3M7980', '2017-07-22', '03699');
INSERT INTO `booking` VALUES ('2', '09', '1G3349', '2017-07-23', '099999999');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `CarNo` varchar(10) NOT NULL,
  `TownID` varchar(8) DEFAULT NULL,
  `MaxCapacity` int(3) DEFAULT NULL,
  `Price` int(6) DEFAULT NULL,
  PRIMARY KEY (`CarNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1G3349', '4', '20', '35000');
INSERT INTO `car` VALUES ('1G6626', '1', '20', '35000');
INSERT INTO `car` VALUES ('1H2002', '1', '20', '35000');
INSERT INTO `car` VALUES ('1H9204', '2', '20', '15000');
INSERT INTO `car` VALUES ('1H9209', '2', '20', '15000');
INSERT INTO `car` VALUES ('1K3583', '5', '20', '35000');
INSERT INTO `car` VALUES ('3M7980', '1', '20', '35000');
INSERT INTO `car` VALUES ('4E6852', '1', '20', '35000');
INSERT INTO `car` VALUES ('6F7627', '1', '20', '35000');
INSERT INTO `car` VALUES ('6J1975', '1', '20', '35000');
INSERT INTO `car` VALUES ('6L6761', '2', '20', '15000');
INSERT INTO `car` VALUES ('7E1145', '1', '20', '35000');
INSERT INTO `car` VALUES ('7E5740', '2', '20', '15000');
INSERT INTO `car` VALUES ('7H8245', '1', '20', '35000');
INSERT INTO `car` VALUES ('7M3270', '1', '20', '35000');
INSERT INTO `car` VALUES ('8B4817', '2', '20', '15000');
INSERT INTO `car` VALUES ('8C2213', '1', '20', '35000');
INSERT INTO `car` VALUES ('8C4845', '1', '20', '35000');
INSERT INTO `car` VALUES ('8C5892', '1', '20', '35000');
INSERT INTO `car` VALUES ('8E2819', '1', '20', '35000');
INSERT INTO `car` VALUES ('8E6808', '1', '20', '35000');
INSERT INTO `car` VALUES ('8E6884', '1', '20', '35000');
INSERT INTO `car` VALUES ('8E8335', '2', '20', '15000');
INSERT INTO `car` VALUES ('8F4706', '3', '20', '25000');
INSERT INTO `car` VALUES ('8F4736', '1', '20', '35000');
INSERT INTO `car` VALUES ('8G2538', '1', '20', '35000');
INSERT INTO `car` VALUES ('8G3015', '1', '20', '35000');
INSERT INTO `car` VALUES ('8G3827', '1', '20', '35000');
INSERT INTO `car` VALUES ('8G4665', '5', '20', '35000');
INSERT INTO `car` VALUES ('8G5854', '1', '20', '35000');
INSERT INTO `car` VALUES ('8H3695', '3', '20', '25000');
INSERT INTO `car` VALUES ('8H7311', '1', '20', '35000');
INSERT INTO `car` VALUES ('8I1353', '1', '20', '35000');
INSERT INTO `car` VALUES ('8I5211', '1', '20', '35000');
INSERT INTO `car` VALUES ('8I5956', '1', '20', '35000');
INSERT INTO `car` VALUES ('8J8103', '1', '20', '35000');
INSERT INTO `car` VALUES ('8J9248', '2', '20', '15000');
INSERT INTO `car` VALUES ('8K1706', '1', '20', '35000');
INSERT INTO `car` VALUES ('8K4400', '5', '20', '35000');
INSERT INTO `car` VALUES ('8K5566', '1', '20', '35000');
INSERT INTO `car` VALUES ('8K6938', '2', '20', '15000');
INSERT INTO `car` VALUES ('8K7796', '2', '20', '15000');
INSERT INTO `car` VALUES ('8K8562', '2', '20', '15000');
INSERT INTO `car` VALUES ('8K9165', '1', '20', '35000');
INSERT INTO `car` VALUES ('8L7269', '1', '20', '35000');
INSERT INTO `car` VALUES ('8L7550', '2', '20', '15000');
INSERT INTO `car` VALUES ('8L9832', '5', '20', '35000');
INSERT INTO `car` VALUES ('8M2039', '5', '20', '35000');
INSERT INTO `car` VALUES ('8M2610', '2', '20', '15000');
INSERT INTO `car` VALUES ('8M4914', '1', '20', '35000');
INSERT INTO `car` VALUES ('8M7389', '1', '20', '35000');
INSERT INTO `car` VALUES ('9L6385', '1', '20', '35000');

-- ----------------------------
-- Table structure for cardetail
-- ----------------------------
DROP TABLE IF EXISTS `cardetail`;
CREATE TABLE `cardetail` (
  `DetailID` int(8) NOT NULL AUTO_INCREMENT,
  `CarNo` varchar(10) NOT NULL,
  `Student_ID` varchar(8) DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `Academic_Year_ID` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`DetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cardetail
-- ----------------------------
INSERT INTO `cardetail` VALUES ('2', '1H2002', '02', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('3', '1H2002', '03', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('4', '1H2002', '04', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('5', '1K3583', '05', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('6', '1K3583', '06', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('7', '1K3583', '07', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('8', '8K9165', '08', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('9', '8K9165', '09', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('10', '8K9165', '10', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('11', '8K9165', '11', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('12', '8H3695', '12', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('13', '8H3695', '13', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('14', '8H3695', '14', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('15', '8H3695', '15', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('16', '8H3695', '16', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('17', '8B4817', '17', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('18', '8B4817', '18', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('19', '8B4817', '19', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('20', '8B4817', '20', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('21', '3M7980', '21', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('22', '3M7980', '22', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('23', '3M7980', '23', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('24', '3M7980', '24', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('25', '7E1145', '25', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('26', '7E1145', '26', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('27', '7E1145', '27', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('28', '7E1145', '28', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('29', '8J9248', '29', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('30', '8J9248', '30', '07:00:00', '05');
INSERT INTO `cardetail` VALUES ('31', '1H2002', '1', null, null);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `Category_ID` int(5) NOT NULL,
  `Category_Name` varchar(15) NOT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'Classroom');
INSERT INTO `category` VALUES ('2', 'Lab_Room');

-- ----------------------------
-- Table structure for defencemember
-- ----------------------------
DROP TABLE IF EXISTS `defencemember`;
CREATE TABLE `defencemember` (
  `D_ID` varchar(225) NOT NULL,
  `Thesis_ID` varchar(225) NOT NULL,
  `First Defence Member Name` varchar(225) NOT NULL,
  `Second Defence Member Name` varchar(225) NOT NULL,
  `Third Defence Member Name` varchar(225) NOT NULL,
  `Fourth Defence Member Name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of defencemember
-- ----------------------------
INSERT INTO `defencemember` VALUES ('1', '01', 'U Kyaw Swar Soe', 'Daw Ohnmar', 'Dr.Aye Aye', 'Daw Si Si Mar Win');
INSERT INTO `defencemember` VALUES ('2', '02', 'U Kyaw Swar Soe', 'Dr.Saw Thandar Myint', 'Dr. Ma Ma', 'Daw Myo Ma Ma');
INSERT INTO `defencemember` VALUES ('3', '03', 'U Kyaw Swar Soe', 'Daw Myo Ma Ma', 'Dr.Htet Htet', 'Dr.Thidar OO');
INSERT INTO `defencemember` VALUES ('4', '04', 'U Kyaw Swar Soe', 'Daw Si Si Mar Win', 'Dr.May Oo', 'Dr.Theingi Htike');
INSERT INTO `defencemember` VALUES ('5', '05', 'U Kyaw Swar Soe', 'Daw Nyunt Nyunt Sein', 'Dr.Khin Su', 'Daw Hnin Yu Yu Win');
INSERT INTO `defencemember` VALUES ('6', '06', 'U Kyaw Swar Soe', 'Daw Myo Thandar Htun', 'Dr.Thin Thin Nu', 'Daw Ei Ei Mon');
INSERT INTO `defencemember` VALUES ('7', '07', 'U Kyaw Swar Soe', 'Dr.Theingi Htike', 'Dr.Sandar', 'Daw May Thiri Win');
INSERT INTO `defencemember` VALUES ('8', '08', 'U Kyaw Swar Soe', 'Daw Tin Mar Myint', 'Dr.Hnin Wai', 'Daw Tin Tin Soe');
INSERT INTO `defencemember` VALUES ('9', '09', 'U Kyaw Swar Soe', 'Daw Wine Moh Moh Htun', 'Dr.Thi Thi', 'Dr.Thandar Aung');
INSERT INTO `defencemember` VALUES ('10', '10', 'U Kyaw Swar Soe', 'Daw Thuzar Aung', 'Dr.Mya Thandar', 'Daw Khin Aye Mar');
INSERT INTO `defencemember` VALUES ('11', '11', 'U Kyaw Swar Soe', 'Daw Cho Zin Win ', 'Dr.Phyo Phyo Wai', 'Daw Aye Aye Soe');
INSERT INTO `defencemember` VALUES ('12', '12', 'U Kyaw Swar Soe', 'Daw Shwe Sin Phyo', 'Dr.Thin Mya', 'Daw Aye Aye Lwin');
INSERT INTO `defencemember` VALUES ('13', '13', 'U Kyaw Swar Soe', 'U Sann Linn Aung', 'Dr.Zay Ya Tu', 'Daw May Thet Aung');
INSERT INTO `defencemember` VALUES ('14', '14', 'U Kyaw Swar Soe', 'U Thein Htay Zaw', 'Dr.Aye Thin', 'Dr.Ei Ei Min');
INSERT INTO `defencemember` VALUES ('15', '15', 'U Kyaw Swar Soe', 'U Soe Moe Aung', 'Daw Ei Ei Khaing', 'Dr.Nu War');
INSERT INTO `defencemember` VALUES ('16', '16', 'U Kyaw Swar Soe', 'U Win Thu', 'Daw Thet Thet', 'Daw Cho Cho Myint');
INSERT INTO `defencemember` VALUES ('17', '17', 'U Kyaw Swar Soe', 'Daw Thwe Thwe Aung', 'Daw Khin Than', 'Dr.Sann Sann Tint');
INSERT INTO `defencemember` VALUES ('18', '18', 'U Kyaw Swar Soe', 'Daw Win Thandar Linn', 'Daw Mar Thin', 'Dr.Ei Ei Khin');
INSERT INTO `defencemember` VALUES ('19', '19', 'U Kyaw Swar Soe', 'Daw Thin Thin Yu', 'Dr.May Thu', 'Dr.Thwe Thwe Htun');
INSERT INTO `defencemember` VALUES ('20', '20', 'U Kyaw Swar Soe', 'Daw Khin Moe Lwin', 'Daw Hnin Hnin Oo', 'Dr.Thin Thin Naing');
INSERT INTO `defencemember` VALUES ('21', '21', 'U Kyaw Swar Soe', 'Daw Aye Aye', 'Daw Yu Yu', 'Daw Cho Cho Lwin');
INSERT INTO `defencemember` VALUES ('22', '22', 'U Kyaw Swar Soe', 'Daw Nyo Nyo Soe', 'Daw Mar Sein', 'Dr.Than Than Nwe');
INSERT INTO `defencemember` VALUES ('23', '23', 'U Kyaw Swar Soe', 'Dr.Aye Aye Chaw', 'Daw Aye Thaung', 'Daw Mar Mar Nwe');
INSERT INTO `defencemember` VALUES ('24', '24', 'U Kyaw Swar Soe', 'Dr.Thi Thi Soe', 'Daw Mya Mya', 'Dr.Wai Wai Zin');
INSERT INTO `defencemember` VALUES ('24', '24', 'U Kyaw Swar Soe', 'Dr.Thi Thi Soe', 'Dr.Mya Mya', 'Dr.Zarni Sann');
INSERT INTO `defencemember` VALUES ('25', '25', 'U Kyaw Swar Soe ', 'Dr.Thidar Oo', 'Daw Khin Mar Oo', 'Dr.Mya Thet Saw');
INSERT INTO `defencemember` VALUES ('26', '26', 'U Kyaw Swar Soe', 'Dr.Ei Ei Mon', 'Dr.Khin Kyi', 'Daw Win Min Soe');
INSERT INTO `defencemember` VALUES ('27', '27', 'U Kyaw Swar Soe', 'Daw Thwe', 'Daw Hnin Hnin Aye', 'Daw Kyi Kyi Mon');
INSERT INTO `defencemember` VALUES ('28', '28', 'U Kyaw Swar Soe', 'Daw Yin Min Htun', 'Daw Kyi Pyar', 'Daw Thein Thein');
INSERT INTO `defencemember` VALUES ('29', '29', 'U Kyaw Swar Soe', 'Dr.Tin Ei Kyaw', 'Daw Hnin Yu', 'Daw Thet  Thet Khaing');
INSERT INTO `defencemember` VALUES ('30', '30', 'U Kyaw Swar Soe', 'Dr.Nwe Nwe Hlaing', 'Daw Mar Mar Oo', 'Daw Khin Mu Aye');
INSERT INTO `defencemember` VALUES ('31', '31', 'U Kyaw Swar Soe', 'Daw Htwe Htwe Pyone', 'Daw Pyone Cho', 'Daw Moh Moh');
INSERT INTO `defencemember` VALUES ('32', '32', 'U Kyaw Swar Soe', 'Daw Hnin Yu Yu Win', 'Daw Shwe Yi', 'Daw Aye Aye Soe');
INSERT INTO `defencemember` VALUES ('33', '33', 'U Kyaw Swar Soe', 'Daw Zar Zar Hnin ', 'Dr.Thu Thu Nyein', 'Dr.Swe Swe Nyein');
INSERT INTO `defencemember` VALUES ('34', '34', 'U Kyaw Swar Soe', 'Daw Mar Mar Soe', 'Dr.Sein Sein Myint', 'Daw Khin Myo Myat');
INSERT INTO `defencemember` VALUES ('35', '35', 'U Kyaw Swar Soe', 'Daw Khin Myat Nwe Win', 'Dr.Shin Shin', 'Daw Cho Cho Lwin');
INSERT INTO `defencemember` VALUES ('36', '36', 'U Kyaw Swar Soe', 'Daw Khin Khin Oo', 'Dr.Ye Ye Myint', 'Daw Khaing Zarchi Htun');
INSERT INTO `defencemember` VALUES ('37', '37', 'U Kyaw Swar Soe', 'Daw Kyi Pyar Zaw', 'Dr.Nan Su', 'Daw Lae Lae Yie');
INSERT INTO `defencemember` VALUES ('38', '38', 'U Kyaw Swar Soe', 'Daw Tin Moe Khaing', 'Dr.Tin Mar Win', 'Daw Thuzar Hnin');
INSERT INTO `defencemember` VALUES ('39', '39', 'U Kyaw Swar Soe', 'Daw Tin Aye Lwin', 'Dr.Than Sit', 'Daw Toe Toe ');
INSERT INTO `defencemember` VALUES ('40', '40', 'U Kyaw Swar Soe', 'Daw Ei Ei Mon', 'Dr.Mar San', 'Daw Zin Mar Win');
INSERT INTO `defencemember` VALUES ('41', '41', 'U Kyaw Swar Soe', 'Daw Hnin Su Phyu', 'Dr.Than Than Su', 'Daw Ank Phyu Win');
INSERT INTO `defencemember` VALUES ('42', '42', 'U Kyaw Swar Soe', 'Daw Su Mon Linn', 'Dr.Tin Tin Tun', 'Daw Naw Kue Ma');
INSERT INTO `defencemember` VALUES ('43', '43', 'U Kyaw Swar Soe', 'Dr.Su Nandar Aung', 'Dr.Kaung Sett', 'Daw Aye Aye Maw');
INSERT INTO `defencemember` VALUES ('44', '44', 'U Kyaw Swar Soe', 'Daw Su Su Win', 'Dr.Than Htay', 'Dr.Nyein Nyein Myo');
INSERT INTO `defencemember` VALUES ('45', '45', 'U Kyaw Swar Soe', 'Daw Khaing Phyo Wai', 'Dr.Wint War', 'Dr.Mya Thidar Kyaw');
INSERT INTO `defencemember` VALUES ('46', '46', 'U Kyaw Swar Soe', 'Daw Htet Htet Linn', 'Dr.Thunder Thaw', 'Dr.Than Than Nwe');
INSERT INTO `defencemember` VALUES ('47', '47', 'U Kyaw Swar Soe', 'Daw Hnin Mya Aye', 'Dr.Thae Su Naing', 'Daw Khin Aye Mar');
INSERT INTO `defencemember` VALUES ('48', '48', 'U Kyaw Swar Soe', 'U Khaing Myint', 'Dr.Kabyar Cho\r\n', 'Daw Thet Thet Khaing');
INSERT INTO `defencemember` VALUES ('49', '49', 'U Kyaw Swar Soe', 'Daw May Phyu Htun', 'Dr.La Yaung', 'Daw Win Min Soe');
INSERT INTO `defencemember` VALUES ('50', '50', 'U Kyaw Swar Soe', 'Daw Myat Mon Oo', 'Dr.Nandar Oo Maw', 'Daw Kyawt Kyawt Htun');
INSERT INTO `defencemember` VALUES ('51', '51', 'U Kyaw Swar Soe', 'Daw Yie Yie Aung', 'Dr.May Pyone', 'Dr.Thae Naw Naw Kyaw');
INSERT INTO `defencemember` VALUES ('52', '52', 'U Kyaw Swar Soe', 'Daw Ei Ei Thu', 'Dr.May Cho', 'Daw Aye Aye Lwin');
INSERT INTO `defencemember` VALUES ('53', '53', 'U Kyaw Swar Soe', 'Daw Yu Mon Aye', 'Dr.Nandar Lin Htun', 'Dr.Thandar Aung');
INSERT INTO `defencemember` VALUES ('54', '54', 'U Kyaw Swar Soe', 'Daw Thiri Malar Swe', 'Dr.San San Win', 'Daw Kyi Kyi Mon');
INSERT INTO `defencemember` VALUES ('55', '55', 'U Kyaw Swar Soe', 'Daw Khin Su Wai', 'Dr.Moh Moh San', 'Daw Yamin Thawdar Aung');
INSERT INTO `defencemember` VALUES ('56', '56', 'U Kyaw Swar Soe', 'Dr.Sann Sann Tint', 'Dr.Thway Thit', 'Dr.Ei Ei Min');
INSERT INTO `defencemember` VALUES ('57', '57', 'U Kyaw Swar Soe', 'Dr.Mya Thet Saw', 'Dr.Thuzar Hnin', 'Dr.Mya Thidar Kyaw');
INSERT INTO `defencemember` VALUES ('58', '58', 'U Kyaw Swar Soe', 'Dr.Zarni San', 'Dr.Thant Thiri', 'Daw Mar Mar Nwe');
INSERT INTO `defencemember` VALUES ('59', '59', 'U Kyaw Swar Soe', 'Daw Shane Thawdar Oo', 'Dr.Thit Sar Ni', 'Daw Aye Aye Soe');
INSERT INTO `defencemember` VALUES ('60', '60', 'U Kyaw Swar Soe', 'Dr.Nu War', 'Dr.Ei Ei Nyein', 'Dr.Thae Naw Naw Kyaw');
INSERT INTO `defencemember` VALUES ('61', '61', 'U Kyaw Swar Soe', 'Dr.Thandar Htwe', 'Dr.Moe Ma Ma', 'Dr.Nein Nyein Myo');
INSERT INTO `defencemember` VALUES ('62', '62', 'U Kyaw Swar Soe', 'Dr.Wai Wai Zin', 'Dr.San Kyi', 'Daw Thein Thein');
INSERT INTO `defencemember` VALUES ('63', '63', 'U Kyaw Swar Soe', 'Dr.Ei Ei Khin', 'Dr.Khant Paing', 'Daw Cho Cho Lwin');
INSERT INTO `defencemember` VALUES ('64', '64', 'U Kyaw Swar Soe', 'Dr.Thwe Thwe Htun', 'Dr.Myat Su Ye', 'Dr.Thae Naw Naw Kyaw');
INSERT INTO `defencemember` VALUES ('65', '65', 'U Kyaw Swar Soe', 'Daw Myo Thidar Win', 'Dr.Linn Lat', 'Daw Mar Mar Nwe');
INSERT INTO `defencemember` VALUES ('66', '66', 'U Kyaw Swar Soe', 'Daw Khaing Myat Nwe', 'Dr.Cho Zin Thwe', 'Daw Cho Cho Myint');
INSERT INTO `defencemember` VALUES ('67', '67', 'U Kyaw Swar Soe', 'Daw Kaythi Wutt Hmone Khin', 'Dr.Thet Htar', 'Daw Thein Thein');
INSERT INTO `defencemember` VALUES ('68', '68', 'U Kyaw Swar Soe', 'Daw Htate Htate Kyaw', 'Dr.Nway Oo Lin', 'Daw Zin Mar Win');
INSERT INTO `defencemember` VALUES ('69', '69', 'U Kyaw Swar Soe', 'Daw May Thiri Win', 'Dr.Khin Yu Par', 'Daw Aye Aye Lwin');
INSERT INTO `defencemember` VALUES ('70', '70', 'U Kyaw Swar Soe', 'Daw Aye Aye Mar', 'Dr.May Moe', 'Daw Aye Aye Soe');
INSERT INTO `defencemember` VALUES ('71', '71', 'U Kyaw Swar Soe', ' U Win Htun', 'Dr.Soe Win', 'Dr.Than Than Nwe');
INSERT INTO `defencemember` VALUES ('72', '72', 'U Kyaw Swar Soe', 'Daw Lae Lae Htun', 'Dr.Khin San Aye', 'Daw Toe Toe');
INSERT INTO `defencemember` VALUES ('73', '73', 'U Kyaw Swar Soe', 'Daw Win Pa Pa San', 'Dr.Aye Thiri ', 'Dr.Thandar Aung');
INSERT INTO `defencemember` VALUES ('74', '74', 'U Kyaw Swar Soe', 'Daw Mayri Oo', 'Dr.Zin Moe Thu', 'Dr.Nyein Nyein Myo');
INSERT INTO `defencemember` VALUES ('75', '75', 'U Kyaw Swar Soe', 'Daw Thein Tshan Soe', 'Dr.Zar Chi Lin', 'Dr.Lwin Mar Thin');
INSERT INTO `defencemember` VALUES ('76', '76', 'U Kyaw Swar Soe', 'Daw Yie Yie Aung', 'Daw Tint Tint', 'Daw Mar Mar Nwe');
INSERT INTO `defencemember` VALUES ('77', '77', 'U Kyaw Swar Soe', 'Daw Hnin Pwint Myue Wai', 'Daw Thidar Nwe', 'Daw Thuzar Hnin');
INSERT INTO `defencemember` VALUES ('78', '78', 'U Kyaw Swar Soe', 'Dr.Thin Thin Naing', 'Daw Su Myat', 'Daw Aye Aye Soe');
INSERT INTO `defencemember` VALUES ('79', '79', 'U Kyaw Swar Soe', 'Daw Ank Phyu Win', 'Daw Phoo Myat', 'Dr.Ei Ei Min');
INSERT INTO `defencemember` VALUES ('80', '80', 'U Kyaw Swar Soe', 'Daw Khin Aye Mar', 'Daw Chaw Su', 'Daw Toe Toe');
INSERT INTO `defencemember` VALUES ('81', '81', 'U Kyaw Swar Soe', 'Daw Nilar Shwe', 'Daw Win San', 'Daw Yin Min Htwe');
INSERT INTO `defencemember` VALUES ('82', '82', 'U Kyaw Swar Soe', 'Daw May Thet Aung', 'Daw Myint Myint Khin', 'Daw Aye Aye Maw');
INSERT INTO `defencemember` VALUES ('83', '83', 'U Kyaw Swar Soe', 'Daw Nyein Chan Win', 'Dr.Thet Naing', 'Daw Khaing Zarchi Hrun');
INSERT INTO `defencemember` VALUES ('84', '84', 'U Kyaw Swar Soe', 'Daw Tin Tin Soe', 'Dr.Hnin Nu Mon', 'Dr.Swe Swe Nyein');
INSERT INTO `defencemember` VALUES ('85', '85', 'U Kyaw Swar Soe', 'Dr.Thae Naw Naw Kyaw', 'Dr.Myat Myat Phyo', 'Daw Sandar Aung');
INSERT INTO `defencemember` VALUES ('86', '86', 'U Kyaw Swar Soe', 'Daw Cho Cho Lwin', 'Dr.Mya Mya Win', 'Dr.Lwin Mar Thin');
INSERT INTO `defencemember` VALUES ('87', '87', 'U Kyaw Swar Soe', 'Daw Kyawt Kyawt Htun', 'Dr.Thin Myat Win', 'Daw Khin Myo Myat');
INSERT INTO `defencemember` VALUES ('88', '88', 'U Kyaw Swar Soe', 'U Nyein Min Oo', 'Dr.Htay Htay Hlaing', 'Daw Lae Lae Yie');
INSERT INTO `defencemember` VALUES ('89', '89', 'U Kyaw Swar Soe', 'Daw Moe Moe Myint', 'Daw Shwe Toe', 'Daw Khin Myo Myat');
INSERT INTO `defencemember` VALUES ('90', '90', 'U Kyaw Swar Soe', 'Daw Kay Zin Htun', 'Daw Shwe Yi Myint', 'Dr.Swe Swe Nyein');
INSERT INTO `defencemember` VALUES ('91', '91', 'U Kyaw Swar Soe', 'Daw Zue Zue Aung', 'Daw Yadanar', 'Daw Moh Moh');
INSERT INTO `defencemember` VALUES ('92', '92', 'U Kyaw Swar Soe', 'Daw Haymar Cho', 'Daw Ngu War', 'Daw Mar Mar Nwe');
INSERT INTO `defencemember` VALUES ('93', '93', 'U Kyaw Swar Soe', 'Daw Khaing Zin Thant', 'Daw Kay Zin', 'Daw Aye Aye Soe');
INSERT INTO `defencemember` VALUES ('94', '94', 'U Kyaw Swar Soe', 'Daw Moe Htay', 'Dr.Khin Wint War', 'Daw Yamin Thawdar Aung');
INSERT INTO `defencemember` VALUES ('95', '95', 'U Kyaw Swar Soe', 'Daw Sann Sann Hla', 'Dr.Pan Nu', 'Daw Aye Aye Soe');
INSERT INTO `defencemember` VALUES ('96', '96', 'U Kyaw Swar Soe', 'Daw Su Myat Sandar Win', 'Dr.Thin Thin Hlaing', 'Daw Aye Aye Soe');
INSERT INTO `defencemember` VALUES ('97', '97', 'U Kyaw Swar Soe', 'Dr.Thu Zar Hlaing', 'U Thaung Kyaw', 'Daw Mar Mar Nwe');
INSERT INTO `defencemember` VALUES ('98', '98', 'U Kyaw Swar Soe', 'Daw Win Min Soe', 'Daw Thandar Tun', 'Daw Naw Kue Mar');
INSERT INTO `defencemember` VALUES ('99', '99', 'U Kyaw Swar Soe', 'Daw Kyi Kyi Mon', 'Dr.Tin Oo', 'Daw Aye Aye Soe');
INSERT INTO `defencemember` VALUES ('100', '100', 'U Kyaw Swar Soe', 'Daw Chit Su Win', 'Dr.Tin Tin Moe', 'Dr.Swe Swe Nyein');
INSERT INTO `defencemember` VALUES ('101', '101', 'U Kyaw Swar Soe', 'Daw Wai Wai Myint', 'Dr.San Dar Aung', 'Dr.Ei Ei Min');
INSERT INTO `defencemember` VALUES ('102', '102', 'U Kyaw Swar Soe', 'Daw Toe Toe Wai Kyaw', 'Dr.Thandar Bo', 'Daw Khaing Zarchi Htun');
INSERT INTO `defencemember` VALUES ('103', '103', 'U Kyaw Swar Soe', 'Daw Ye Mon Thaw', 'Dr.Hnin Ei Lwin', 'Dr.Lwin Minar Thin');
INSERT INTO `defencemember` VALUES ('104', '104', 'U Kyaw Swar Soe', 'Daw Mayy Thet Aung', 'Daw Mon Mon Aung', 'Daw Yamin Thawdar Aung');
INSERT INTO `defencemember` VALUES ('105', '105', 'U Kyaw Swar Soe', 'Daw Thiri Soe Win', 'Dr.Thant Zin', 'Daw Zin Mar Win');
INSERT INTO `defencemember` VALUES ('106', '106', 'U Kyaw Swar Soe', 'Daw Linn Linn Htet', 'Dr.Zar Li Aung', 'Daw Khin Myo Myat');
INSERT INTO `defencemember` VALUES ('107', '107', 'U Kyaw Swar Soe', 'Dr.Thandar Aung', 'Daw Zar Zar Aung', 'Daw Yin Min Htwe');
INSERT INTO `defencemember` VALUES ('700', '009', 'cho cho', 'win win', 'kyae kyaw', 'U Kyaw');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `Department_ID` varchar(5) NOT NULL,
  `Department_Name` varchar(30) NOT NULL,
  `Dean_Name` varchar(30) NOT NULL,
  `Num_of_Teacher` int(2) NOT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('D001', 'Rector Office', 'U Kyaw Swar Soe', '1');
INSERT INTO `department` VALUES ('D002', 'Administration Affairs', 'Daw Ohmar', '1');
INSERT INTO `department` VALUES ('D003', 'Application', 'Dr. Saw Thandar Myint', '11');
INSERT INTO `department` VALUES ('D004', 'System Engineering', 'U Sann Linn Aung', '6');
INSERT INTO `department` VALUES ('D005', 'Myanmar', 'Daw Thin Thin Yu', '4');
INSERT INTO `department` VALUES ('D006', 'Software Technology', 'Dr. Aye Aye Chaw', '33');
INSERT INTO `department` VALUES ('D007', 'Hardware Technology', 'Dr. Sann Sann Tint', '22');
INSERT INTO `department` VALUES ('D008', 'Mathematics Computing', 'Dr. Thin Thin Naing', '19');
INSERT INTO `department` VALUES ('D009', 'English', 'U Thaung Kyaw', '10');
INSERT INTO `department` VALUES ('D010', 'Information Science', 'Dr. Thandar Aung', '28');
INSERT INTO `department` VALUES ('D011', 'Physics', 'Dr. Ei Ei Min', '6');

-- ----------------------------
-- Table structure for driver
-- ----------------------------
DROP TABLE IF EXISTS `driver`;
CREATE TABLE `driver` (
  `DriverID` int(11) NOT NULL AUTO_INCREMENT,
  `CarNo` varchar(10) DEFAULT NULL,
  `DriverName` varchar(30) DEFAULT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`DriverID`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of driver
-- ----------------------------
INSERT INTO `driver` VALUES ('21', '8E6884', 'U Tun Lin', '0933115454');
INSERT INTO `driver` VALUES ('22', '8H7311', 'KO Ko Win', '09776653995');
INSERT INTO `driver` VALUES ('23', '8K5566', 'U Soe Win Naing ', '09761400811');
INSERT INTO `driver` VALUES ('24', '8G5854', 'Ko Kyaw', '09256064007');
INSERT INTO `driver` VALUES ('25', '3M7980', 'U Kyaw San', '09402626944');
INSERT INTO `driver` VALUES ('26', '8E6808', 'U Win', '09770119228');
INSERT INTO `driver` VALUES ('27', '1H2002', 'Ko Ye', '09977872460');
INSERT INTO `driver` VALUES ('28', '8C2213', 'U Aung Myat Tun', '092043781');
INSERT INTO `driver` VALUES ('29', '8J8103', 'U Aung Soe', '09256168935');
INSERT INTO `driver` VALUES ('30', '8J9248', 'U Aung Khing Min', '09444004807');
INSERT INTO `driver` VALUES ('31', '8B4817', 'Ko win Naing Tun', '09789857866');
INSERT INTO `driver` VALUES ('32', '7E1145', 'U Aung Aung', '09259086346');
INSERT INTO `driver` VALUES ('33', '8K9165', 'U Tun Nge', '09761059407');
INSERT INTO `driver` VALUES ('34', '8L9832', 'U Thain Naing', '09797956003');
INSERT INTO `driver` VALUES ('35', '1K3583', 'U Thain Win Naing', '0943004028');
INSERT INTO `driver` VALUES ('36', '8E2819', 'KO That Naing', '09975252117');
INSERT INTO `driver` VALUES ('37', '8M4914', 'KO That Naing Oo', '09798576053');
INSERT INTO `driver` VALUES ('38', '9L6385', 'Ko Hain Htet Ko', '09777358569');
INSERT INTO `driver` VALUES ('39', '7H8245', 'U Zaw Zaw', '09797177095');
INSERT INTO `driver` VALUES ('40', '8F4736', 'U Soe Soe Tint', '09975870164');
INSERT INTO `driver` VALUES ('41', '8I5956', 'U Soe Thu Haing', '09798720476');
INSERT INTO `driver` VALUES ('42', '6L6761', 'U Than Win', '0930715723');
INSERT INTO `driver` VALUES ('43', '1H9209', 'U Khin Maung Zaw', '09971356202');
INSERT INTO `driver` VALUES ('44', '8L7550', 'Pyo Wai Kyaw', '09971127773');
INSERT INTO `driver` VALUES ('45', '8K8562', 'U KYaw Swa Thut', '092058208');
INSERT INTO `driver` VALUES ('46', '8M2039', 'Ko Myo ', '09972717228');
INSERT INTO `driver` VALUES ('47', '8K1706', 'U Myo Thu', '0943178327');
INSERT INTO `driver` VALUES ('48', '8M2610', 'Ko Thant Zin Oo ', '09779902240');
INSERT INTO `driver` VALUES ('49', '8C4845', 'Ko Paye Phyo Thurain', '0991032005');
INSERT INTO `driver` VALUES ('50', '8K7796', 'U Zaw Zaw Nyein', '09978842077');
INSERT INTO `driver` VALUES ('51', '1H9204', 'U Khin Maung Zaw', '09971356202');
INSERT INTO `driver` VALUES ('52', '8K6938', 'U Than Tun', '09402511639');
INSERT INTO `driver` VALUES ('53', '8I1353', 'U Khin Maung Htawe', '09972010046');
INSERT INTO `driver` VALUES ('54', '6J1975', 'Ko Kyaw Zin', '092033707');
INSERT INTO `driver` VALUES ('55', '8E8335', 'U Tin Aung Ko', '09777786486');
INSERT INTO `driver` VALUES ('56', '1G3349', 'U Tin Hlaing', '09791517174');
INSERT INTO `driver` VALUES ('57', '8G4665', 'U Maung Oo', '09791152274');
INSERT INTO `driver` VALUES ('58', '8K4400', 'U Maung Maung Htawe', '09400469569');
INSERT INTO `driver` VALUES ('59', '8G2538', 'U Kyaw Swar Win', '09402657361');
INSERT INTO `driver` VALUES ('60', '4E6852', 'U Tay Zar Lin', '09778335664');
INSERT INTO `driver` VALUES ('61', '8G3827', 'U Min Htay', '09402650489');
INSERT INTO `driver` VALUES ('62', '8C5892', 'U Zayar Phyo', '09259090699');
INSERT INTO `driver` VALUES ('63', '8M7389', 'U Htay Oo', '09974416800');
INSERT INTO `driver` VALUES ('64', '8G3015', 'U Than Htike Soe', '09790611738');
INSERT INTO `driver` VALUES ('65', '7E5740', 'U Hein Phyo San', '09455053461');
INSERT INTO `driver` VALUES ('66', '6F7627', 'U Pauk Gyi', '09789837257');
INSERT INTO `driver` VALUES ('67', '1G6626', 'U Maung Htwe ', '09259606626');
INSERT INTO `driver` VALUES ('68', '8I5211', 'Ko Kyaw Thu', '09951188995');
INSERT INTO `driver` VALUES ('69', '8L7269', 'U Kyaw San Lin', '09258001288');
INSERT INTO `driver` VALUES ('70', '8H3695', 'U Ba Daung', '09421491464');
INSERT INTO `driver` VALUES ('71', '8F4706', 'U Tun Min Latt', '09798513880');
INSERT INTO `driver` VALUES ('72', '7M3270', 'U Aung Kyaw Thu', '09969731592');

-- ----------------------------
-- Table structure for elastic_subject
-- ----------------------------
DROP TABLE IF EXISTS `elastic_subject`;
CREATE TABLE `elastic_subject` (
  `Elastic_Subject_ID` varchar(8) NOT NULL,
  `Elastic_Subject1` varchar(50) DEFAULT NULL,
  `Elastic_Subject2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Elastic_Subject_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of elastic_subject
-- ----------------------------
INSERT INTO `elastic_subject` VALUES ('1', 'AA', 'Web');
INSERT INTO `elastic_subject` VALUES ('2', 'AA', 'Mining');
INSERT INTO `elastic_subject` VALUES ('3', 'AI', 'Web');
INSERT INTO `elastic_subject` VALUES ('4', 'AI', 'Mining');
INSERT INTO `elastic_subject` VALUES ('5', 'CG', 'Web');
INSERT INTO `elastic_subject` VALUES ('6', 'CG', 'Mining');
INSERT INTO `elastic_subject` VALUES ('7', 'Embedded', 'Digital');
INSERT INTO `elastic_subject` VALUES ('8', 'Embedded', 'Image');
INSERT INTO `elastic_subject` VALUES ('9', 'Network', 'Digital');

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `Event_ID` varchar(10) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `Academic_Year` varchar(10) NOT NULL,
  `Type_ID` varchar(10) NOT NULL,
  `Photo` varchar(70) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Detail` text NOT NULL,
  PRIMARY KEY (`Event_ID`),
  FULLTEXT KEY `Foreign` (`Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES ('E1', '9:00 AM_10:30AM', '2016_2017', 'T_001', 'Football1.jpg/Football2.jpg/Football3.jpg/Football4.jpg', 'Computer University Mandalay Football', 'Two teams of usually 11 players; some variations that have fewer players are also popular. A clearly defined area in which to play the game. Scoring goals or points by moving the ball to an opposing team\'s end of the field and either into a goal area, or over a line.');
INSERT INTO `event` VALUES ('E10', '9:00 AM_12:00PM', '2016_2017', 'T_010', 'warso1.jpg/warso2.jpg/warso3.jpg/warso4.jpg', 'Computer University Mandalay Warso Full Moon Day', 'Burmese traditional festivals are based on the traditional Burmese calendar and dates are largely determined by the moon\'s phase. Burmese culture is most evident in villages where local festivals are held throughout the year, the most important being the pagoda festival.');
INSERT INTO `event` VALUES ('E11', '9:00 AM_4:00PM', '2016_2017', 'T_011', 'fareware1.png/fareware2.png/fareware3.png/fareware4.png', 'Computer University Mandalay Fareware', 'A fareware is also an expression of good wishes at a parting. If you\'re leaving a university after being there a long time, your classmates might throw you a fareware party. Fareware is an expression, like \"goodbye\".');
INSERT INTO `event` VALUES ('E12', '9:00 AM_12:00PM', '2016_2017', 'T_012', 'teacher1.jpg/teacher2.jpg/teacher3.jpg/teacher4.jpg', 'Computer University Mandalay Arsaria Puzaw Pwae', 'Teachers are making a difference educating and inspiring young people across our state. World Teachers\' Day is an opportunity to acknowledge our teachers and say thanks for the significant contributions they make in our classrooms and communities.');
INSERT INTO `event` VALUES ('E13', '9:00 AM_4:00PM', '2016_2017', 'T_013', 'gra1.png/gra2.png/gra3.png/gra4.png', 'Computer University Mandalay Graduation ceremony', 'Graduation is getting a diploma or academic degree or the ceremony that is sometimes associated with it, in which students become graduates. Before the graduation candidates are referred to as graduands. The date of graduation is often called graduation day.');
INSERT INTO `event` VALUES ('E2', '9:00 AM_4:00PM', '2016_2017', 'T_002', 'Tennis1.jpg/Tennis2.jpg/Tennis3.jpg/Tennis4.jpg', 'Computer University Mandalay Table Tennis', 'Table tennis, also known as ping pong, is a sport in which two or four players hit a lightweight ball back and forth across a table using a small bat. The game takes place on a hard table divided by a net. ');
INSERT INTO `event` VALUES ('E3', '9:00 AM_4:00PM', '2016_2017', 'T_003', 'basket1.jpg/basket2.jpg/basket3.jpg/basket4.jpg', 'Computer University Mandalay Basketball', 'Basketball is a team sport. Two teams of five players each try to score by shooting a ball through a hoop elevated 10 feet above the ground. The game is played on a rectangular floor called the court, and there is a hoop at each end. The court is divided into two main sections by the mid-court line. ');
INSERT INTO `event` VALUES ('E4', '9:00 AM_4:00PM', '2016_2017', 'T_004', 'wel1.jpg/wel2.jpg/wel3.jpg/wel4.jpg', 'Computer University Mandalay Fresher Welcome', 'Freshers Day is a welcome party to newcomers and there is a need to be friendly and motivate juniors. But these days, fresher parties have become fashion shows and are celebrated in pubs and clubs. Though we enjoy a lot in such places, it also attracts youth to unhealthy habits.');
INSERT INTO `event` VALUES ('E5', '9:00AM_4:00PM', '2016_2017', 'T_005', 'pro1.jpeg/pro2.jpeg/pro3.jpeg/pro4.jpeg', 'Computer University Mandalay Programming', 'Computer Programmer Job Description. Through the use of computer languages, such as C++ and Java, computer programmers create instructions for computers to perform and follow.');
INSERT INTO `event` VALUES ('E6', '9:00 AM_10:30AM', '2016_2017', 'T_006', 'espeak1.jpg/espeak2.jpg/espeak3.jpg/espeak4.jpg', 'Computer University Mandalay E_speaking', 'The ways in which the English language is transmitted through a conventional system of sounds. Compare to written English.');
INSERT INTO `event` VALUES ('E7', '9:00 AM_4:00PM', '2016_2017', 'T_007', 'debate1.jpg/debate2.jpg/debate3.jpg/debate4.jpg', 'Computer University Mandalay Debate', 'Students benefit from a wide variety of speech and debate events. To create standards for national competition, the National Speech & Debate Association has defined a number of main events, described below.');
INSERT INTO `event` VALUES ('E8', '12:00PM_4:00PM', '2016_2017', 'T_008', 'water1.jpg/water2.jpg/water3.jpg/water4.jpg', 'Computer University Mandalay Water Festival', 'Water Festivals are hands-on learning opportunities about water for students and communities. Traditionally, water festivals offer a variety of stations on numerous topics. Formats can vary; sometimes students go from station to station according to a schedule with each stop lasing four hours. Sometimes students or community members go from station to station as they desire');

-- ----------------------------
-- Table structure for examtimetable
-- ----------------------------
DROP TABLE IF EXISTS `examtimetable`;
CREATE TABLE `examtimetable` (
  `Exam_ID` varchar(8) NOT NULL,
  `Term_ID` varchar(8) NOT NULL,
  `Date` varchar(25) NOT NULL,
  `Start_Time` varchar(10) NOT NULL,
  `End_Time` varchar(10) NOT NULL,
  `Student_ID` varchar(8) NOT NULL,
  `Sub_ID` int(8) NOT NULL,
  `Room_ID` varchar(10) NOT NULL,
  `Year_ID` varchar(8) NOT NULL,
  `Major_ID` varchar(8) NOT NULL,
  `Academic_Year_ID` varchar(8) NOT NULL,
  PRIMARY KEY (`Exam_ID`),
  KEY `Term_ID` (`Term_ID`),
  KEY `Student_ID` (`Student_ID`),
  KEY `Subject_ID` (`Sub_ID`),
  KEY `Room_ID` (`Room_ID`),
  KEY `Year_ID` (`Year_ID`),
  KEY `Academic_Year_ID` (`Academic_Year_ID`),
  KEY `Major_ID` (`Major_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of examtimetable
-- ----------------------------
INSERT INTO `examtimetable` VALUES ('E1', '1', '2017-03-20(Monday)', '1:00 pm', '4:00 pm', '05', '1', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E10', '1', '2017-03-29(Wednesday)', '1:00 pm', '4:00 pm', '05', '10', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E11', '1', '2017-03-20(Monday)', '1:00 pm', '4:00 pm', '02', '14', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E12', '1', '2017-03-21(Tuesday)', '1:00 pm', '4:00 pm', '02', '15', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E13', '1', '2017-03-22(Wednesday)', '1:00 pm', '4:00 pm', '02', '16', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E14', '1', '2017-03-23(Thursday)', '1:00 pm', '4:00 pm', '02', '17', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E15', '1', '2017-03-24(Friday)', '1:00 pm', '4:00 pm', '02', '18', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E16', '1', '2017-03-28(Tuesday)', '1:00 pm', '4:00 pm', '02', '19', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E17', '1', '2017-03-28(Tuesday)', '1:00 pm', '4:00 pm', '02', '20', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E18', '1', '2017-03-29(Wednesday)', '1:00 pm', '4:00 pm', '02', '21', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E19', '1', '2017-03-29(Wednesday)', '1:00 pm', '4:00 pm', '02', '22', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E2', '1', '2017-03-20(Monday)', '1:00 pm', '4:00 pm', '05', '2', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E20', '1', '2017-03-20(Monday)', '1:00 pm', '4:00 pm', '26', '14', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E21', '1', '2017-03-21(Tuesday)', '1:00 pm', '4:00 pm', '26', '15', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E22', '1', '2017-03-22(Wednesday)', '1:00 pm', '4:00 pm', '26', '16', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E23', '1', '2017-03-23(Thursday)', '1:00 pm', '4:00 pm', '26', '17', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E24', '1', '2017-03-24(Friday)', '1:00 pm', '4:00 pm', '26', '18', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E25', '1', '2017-03-28(Tuesday)', '1:00 pm', '4:00 pm', '26', '27', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E26', '1', '2017-03-29(Wednesday)', '1:00 pm', '4:00 pm', '26', '28', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E27', '1', '2017-03-30(Thursday)', '9:00 am', '10:00 am', '05', '9', 'Machine_G', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E28', '1', '2017-03-31(Friday)', '9:00 am', '10:00 am', '02', '15', 'Machine_G', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E29', '1', '2017-04-05(Monday)', '9:00 am', '10:00 am', '02', '18', 'Machine_G', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E3', '1', '2017-03-20(Monday)', '1:00 pm', '4:00 pm', '05', '3', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E30', '1', '2017-03-30(Thursday)', '9:00 am', '10:00 am', '26', '27', 'Machine_H', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E31', '2', '2017-09-04(Monday)', '9:00 am', '12:00 pm', '05', '1', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E32', '2', '2017-09-04(Monday)', '9:00 am', '12:00 pm', '05', '2', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E33', '2', '2017-09-04(Monday)', '9:00 am', '12:00 pm', '05', '3', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E34', '2', '2017-09-05(Tuesday)', '9:00 am', '12:00 pm', '05', '4', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E35', '2', '2017-09-05(Tuesday)', '9:00 am', '12:00 pm', '05', '5', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E36', '2', '2017-09-06(Wednesday)', '9:00 am', '12:00 pm', '05', '6', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E37', '2', '2017-09-07(Thursday)', '9:00 am', '12:00 pm', '05', '11', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E38', '2', '2017-09-08(Friday)', '9:00 am', '12:00 pm', '05', '8', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E39', '2', '2017-09-11(Monday)', '9:00 am', '12:00 pm', '05', '12', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E4', '1', '2017-03-20(Tuesday)', '1:00 pm', '4:00 pm', '05', '4', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E40', '2', '2017-09-12(Tuesday)', '9:00 am', '12:00 pm', '05', '13', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E41', '2', '2017-09-04(Monday)', '9:00 am', '12:00 pm', '02', '14', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E42', '2', '2017-09-05(Tuesday)', '9:00 am', '12:00 pm', '02', '23', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E43', '2', '2017-09-06(Wednesday)', '9:00 am', '12:00 pm', '02', '16', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E44', '2', '2017-09-07(Thursday)', '9:00 am', '12:00 pm', '02', '24', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E45', '2', '2017-09-08(Friday)', '9:00 am', '12:00 pm', '02', '25', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E46', '2', '2017-09-11(Monday)', '9:00 am', '12:00 pm', '02', '26', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E47', '2', '2017-09-11(Monday)', '9:00 am', '12:00 pm', '02', '20', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E48', '2', '2017-09-12(Tuesday)', '9:00 am', '12:00 pm', '02', '21', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E49', '2', '2017-09-12(Tuesday)', '9:00 am', '12:00 pm', '02', '22', 'R105', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E5', '1', '2017-03-21(Tuesday)', '1:00 pm', '4:00 pm', '05', '5', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E50', '2', '2017-09-04(Monday)', '9:00 am', '12:00 pm', '26', '14', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E51', '2', '2017-09-05(Tuesday)', '9:00 am', '12:00 pm', '26', '23', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E52', '2', '2017-09-06(Wednesday)', '9:00 am', '12:00 pm', '26', '16', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E53', '2', '2017-09-07(Thursday)', '9:00 am', '12:00 pm', '26', '29', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E54', '2', '2017-09-08(Friday)', '9:00 am', '12:00 pm', '26', '30', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E55', '2', '2017-09-11(Monday)', '9:00 am', '12:00 pm', '26', '31', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E56', '2', '2017-09-12(Tuesday)', '9:00 am', '12:00 pm', '26', '28', 'R106', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E57', '2', '2017-09-13(Wednesday)', '9:00 am', '10:00 am', '05', '13', 'Machine_G', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E58', '2', '2017-09-14(Thursday)', '9:00 am', '10:00 am', '02', '23', 'Machine_G', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E59', '2', '2017-09-15(Friday)', '9:00 am', '10:00 am', '02', '23', 'Machine_G', '2', '2', '05');
INSERT INTO `examtimetable` VALUES ('E6', '1', '2017-03-22(Wednesday)', '1:00 pm', '4:00 pm', '05', '6', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E60', '2', '2017-09-13(Wednesday)', '9:00 am', '10:00 am', '26', '31', 'Machine_H', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E61', '2', '2017-09-14(Thursday)', '9:00 am', '10:00 am', '26', '28', 'Machine_H', '2', '3', '05');
INSERT INTO `examtimetable` VALUES ('E7', '1', '2017-03-23(Thursday)', '1:00 pm', '4:00 pm', '05', '7', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E8', '1', '2017-03-24(Friday)', '1:00 pm', '4:00 pm', '05', '8', 'R100', '1', '1', '05');
INSERT INTO `examtimetable` VALUES ('E9', '1', '2017-03-28(Tuesday)', '1:00 pm', '4:00 pm', '05', '9', 'R100', '1', '1', '05');

-- ----------------------------
-- Table structure for examtype
-- ----------------------------
DROP TABLE IF EXISTS `examtype`;
CREATE TABLE `examtype` (
  `Exam_Type_ID` varchar(8) NOT NULL,
  `Exam_Type` varchar(8) NOT NULL,
  PRIMARY KEY (`Exam_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of examtype
-- ----------------------------
INSERT INTO `examtype` VALUES ('1', 'Tutorial');
INSERT INTO `examtype` VALUES ('2', 'Lab');
INSERT INTO `examtype` VALUES ('3', 'Exam');
INSERT INTO `examtype` VALUES ('4', 'Project');

-- ----------------------------
-- Table structure for facilitycategory
-- ----------------------------
DROP TABLE IF EXISTS `facilitycategory`;
CREATE TABLE `facilitycategory` (
  `FacilityCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `FacilityType` varchar(20) NOT NULL,
  PRIMARY KEY (`FacilityCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facilitycategory
-- ----------------------------
INSERT INTO `facilitycategory` VALUES ('1', 'Fan');
INSERT INTO `facilitycategory` VALUES ('2', 'Cook');
INSERT INTO `facilitycategory` VALUES ('3', 'Refrigerator');
INSERT INTO `facilitycategory` VALUES ('4', 'Wifi');
INSERT INTO `facilitycategory` VALUES ('5', 'Aircon');

-- ----------------------------
-- Table structure for facilitydetail
-- ----------------------------
DROP TABLE IF EXISTS `facilitydetail`;
CREATE TABLE `facilitydetail` (
  `FacilityDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `FacilityCategoryID` int(11) NOT NULL,
  `RoomDetailID` int(11) NOT NULL,
  PRIMARY KEY (`FacilityDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facilitydetail
-- ----------------------------
INSERT INTO `facilitydetail` VALUES ('1', '1', '1');
INSERT INTO `facilitydetail` VALUES ('2', '2', '2');
INSERT INTO `facilitydetail` VALUES ('3', '2', '3');
INSERT INTO `facilitydetail` VALUES ('4', '1', '4');
INSERT INTO `facilitydetail` VALUES ('5', '2', '4');
INSERT INTO `facilitydetail` VALUES ('6', '1', '5');
INSERT INTO `facilitydetail` VALUES ('7', '2', '5');
INSERT INTO `facilitydetail` VALUES ('8', '1', '7');
INSERT INTO `facilitydetail` VALUES ('9', '2', '7');
INSERT INTO `facilitydetail` VALUES ('10', '1', '8');
INSERT INTO `facilitydetail` VALUES ('11', '3', '8');
INSERT INTO `facilitydetail` VALUES ('12', '5', '8');
INSERT INTO `facilitydetail` VALUES ('13', '1', '9');
INSERT INTO `facilitydetail` VALUES ('14', '3', '9');
INSERT INTO `facilitydetail` VALUES ('15', '5', '9');
INSERT INTO `facilitydetail` VALUES ('16', '1', '10');
INSERT INTO `facilitydetail` VALUES ('17', '3', '10');
INSERT INTO `facilitydetail` VALUES ('18', '5', '10');
INSERT INTO `facilitydetail` VALUES ('19', '1', '11');
INSERT INTO `facilitydetail` VALUES ('20', '2', '11');
INSERT INTO `facilitydetail` VALUES ('21', '3', '11');
INSERT INTO `facilitydetail` VALUES ('22', '5', '11');
INSERT INTO `facilitydetail` VALUES ('23', '1', '12');
INSERT INTO `facilitydetail` VALUES ('24', '2', '12');
INSERT INTO `facilitydetail` VALUES ('25', '3', '12');
INSERT INTO `facilitydetail` VALUES ('26', '1', '13');
INSERT INTO `facilitydetail` VALUES ('27', '2', '13');
INSERT INTO `facilitydetail` VALUES ('28', '3', '13');
INSERT INTO `facilitydetail` VALUES ('29', '1', '14');
INSERT INTO `facilitydetail` VALUES ('30', '3', '14');
INSERT INTO `facilitydetail` VALUES ('31', '1', '15');
INSERT INTO `facilitydetail` VALUES ('32', '2', '15');
INSERT INTO `facilitydetail` VALUES ('33', '3', '15');
INSERT INTO `facilitydetail` VALUES ('34', '1', '16');
INSERT INTO `facilitydetail` VALUES ('35', '2', '16');
INSERT INTO `facilitydetail` VALUES ('36', '3', '16');
INSERT INTO `facilitydetail` VALUES ('37', '1', '17');
INSERT INTO `facilitydetail` VALUES ('38', '2', '17');
INSERT INTO `facilitydetail` VALUES ('39', '3', '17');
INSERT INTO `facilitydetail` VALUES ('40', '1', '18');
INSERT INTO `facilitydetail` VALUES ('41', '2', '18');
INSERT INTO `facilitydetail` VALUES ('42', '3', '18');
INSERT INTO `facilitydetail` VALUES ('43', '5', '18');
INSERT INTO `facilitydetail` VALUES ('44', '2', '19');
INSERT INTO `facilitydetail` VALUES ('45', '2', '20');
INSERT INTO `facilitydetail` VALUES ('46', '1', '22');
INSERT INTO `facilitydetail` VALUES ('47', '1', '23');
INSERT INTO `facilitydetail` VALUES ('48', '1', '24');
INSERT INTO `facilitydetail` VALUES ('49', '3', '24');
INSERT INTO `facilitydetail` VALUES ('50', '1', '25');
INSERT INTO `facilitydetail` VALUES ('51', '3', '25');
INSERT INTO `facilitydetail` VALUES ('52', '1', '26');
INSERT INTO `facilitydetail` VALUES ('53', '3', '26');
INSERT INTO `facilitydetail` VALUES ('54', '1', '28');
INSERT INTO `facilitydetail` VALUES ('55', '1', '29');
INSERT INTO `facilitydetail` VALUES ('56', '4', '29');
INSERT INTO `facilitydetail` VALUES ('57', '1', '30');
INSERT INTO `facilitydetail` VALUES ('58', '3', '30');
INSERT INTO `facilitydetail` VALUES ('59', '1', '31');
INSERT INTO `facilitydetail` VALUES ('60', '3', '31');
INSERT INTO `facilitydetail` VALUES ('61', '1', '33');
INSERT INTO `facilitydetail` VALUES ('62', '2', '33');
INSERT INTO `facilitydetail` VALUES ('63', '3', '33');
INSERT INTO `facilitydetail` VALUES ('64', '4', '33');
INSERT INTO `facilitydetail` VALUES ('65', '5', '33');
INSERT INTO `facilitydetail` VALUES ('66', '1', '34');
INSERT INTO `facilitydetail` VALUES ('67', '2', '34');
INSERT INTO `facilitydetail` VALUES ('68', '3', '34');
INSERT INTO `facilitydetail` VALUES ('69', '4', '34');
INSERT INTO `facilitydetail` VALUES ('70', '5', '34');
INSERT INTO `facilitydetail` VALUES ('71', '1', '35');
INSERT INTO `facilitydetail` VALUES ('72', '2', '35');
INSERT INTO `facilitydetail` VALUES ('73', '3', '35');
INSERT INTO `facilitydetail` VALUES ('74', '4', '35');
INSERT INTO `facilitydetail` VALUES ('75', '5', '35');
INSERT INTO `facilitydetail` VALUES ('76', '2', '36');
INSERT INTO `facilitydetail` VALUES ('77', '3', '36');
INSERT INTO `facilitydetail` VALUES ('78', '1', '37');
INSERT INTO `facilitydetail` VALUES ('79', '1', '38');
INSERT INTO `facilitydetail` VALUES ('80', '3', '38');
INSERT INTO `facilitydetail` VALUES ('81', '1', '39');
INSERT INTO `facilitydetail` VALUES ('82', '3', '39');
INSERT INTO `facilitydetail` VALUES ('83', '1', '40');
INSERT INTO `facilitydetail` VALUES ('84', '3', '40');
INSERT INTO `facilitydetail` VALUES ('85', '4', '40');
INSERT INTO `facilitydetail` VALUES ('86', '1', '41');
INSERT INTO `facilitydetail` VALUES ('87', '3', '41');
INSERT INTO `facilitydetail` VALUES ('88', '4', '41');
INSERT INTO `facilitydetail` VALUES ('89', '5', '41');
INSERT INTO `facilitydetail` VALUES ('90', '1', '42');
INSERT INTO `facilitydetail` VALUES ('91', '3', '42');
INSERT INTO `facilitydetail` VALUES ('92', '4', '42');
INSERT INTO `facilitydetail` VALUES ('93', '1', '43');
INSERT INTO `facilitydetail` VALUES ('94', '3', '43');
INSERT INTO `facilitydetail` VALUES ('95', '4', '43');
INSERT INTO `facilitydetail` VALUES ('96', '5', '43');
INSERT INTO `facilitydetail` VALUES ('97', '1', '44');
INSERT INTO `facilitydetail` VALUES ('98', '2', '44');
INSERT INTO `facilitydetail` VALUES ('99', '3', '44');
INSERT INTO `facilitydetail` VALUES ('100', '4', '44');
INSERT INTO `facilitydetail` VALUES ('101', '1', '45');
INSERT INTO `facilitydetail` VALUES ('102', '2', '45');
INSERT INTO `facilitydetail` VALUES ('103', '3', '45');
INSERT INTO `facilitydetail` VALUES ('104', '4', '45');
INSERT INTO `facilitydetail` VALUES ('105', '2', '46');
INSERT INTO `facilitydetail` VALUES ('106', '1', '47');
INSERT INTO `facilitydetail` VALUES ('107', '1', '48');
INSERT INTO `facilitydetail` VALUES ('108', '5', '49');
INSERT INTO `facilitydetail` VALUES ('109', '1', '50');
INSERT INTO `facilitydetail` VALUES ('110', '1', '51');
INSERT INTO `facilitydetail` VALUES ('111', '1', '52');
INSERT INTO `facilitydetail` VALUES ('112', '2', '53');
INSERT INTO `facilitydetail` VALUES ('113', '1', '54');
INSERT INTO `facilitydetail` VALUES ('114', '2', '54');
INSERT INTO `facilitydetail` VALUES ('115', '1', '55');
INSERT INTO `facilitydetail` VALUES ('116', '1', '56');
INSERT INTO `facilitydetail` VALUES ('117', '3', '56');
INSERT INTO `facilitydetail` VALUES ('118', '1', '62');
INSERT INTO `facilitydetail` VALUES ('119', '1', '63');
INSERT INTO `facilitydetail` VALUES ('120', '2', '63');
INSERT INTO `facilitydetail` VALUES ('121', '1', '64');
INSERT INTO `facilitydetail` VALUES ('122', '2', '64');
INSERT INTO `facilitydetail` VALUES ('123', '1', '66');
INSERT INTO `facilitydetail` VALUES ('124', '1', '67');
INSERT INTO `facilitydetail` VALUES ('125', '1', '68');
INSERT INTO `facilitydetail` VALUES ('126', '1', '69');
INSERT INTO `facilitydetail` VALUES ('127', '1', '70');
INSERT INTO `facilitydetail` VALUES ('128', '1', '71');
INSERT INTO `facilitydetail` VALUES ('129', '1', '73');
INSERT INTO `facilitydetail` VALUES ('130', '1', '74');
INSERT INTO `facilitydetail` VALUES ('131', '1', '75');
INSERT INTO `facilitydetail` VALUES ('132', '1', '76');
INSERT INTO `facilitydetail` VALUES ('133', '1', '77');
INSERT INTO `facilitydetail` VALUES ('134', '1', '78');
INSERT INTO `facilitydetail` VALUES ('135', '1', '79');
INSERT INTO `facilitydetail` VALUES ('136', '1', '80');
INSERT INTO `facilitydetail` VALUES ('137', '1', '81');
INSERT INTO `facilitydetail` VALUES ('138', '3', '81');
INSERT INTO `facilitydetail` VALUES ('139', '5', '81');
INSERT INTO `facilitydetail` VALUES ('140', '1', '82');
INSERT INTO `facilitydetail` VALUES ('141', '3', '82');
INSERT INTO `facilitydetail` VALUES ('142', '5', '82');
INSERT INTO `facilitydetail` VALUES ('143', '1', '84');
INSERT INTO `facilitydetail` VALUES ('144', '1', '89');
INSERT INTO `facilitydetail` VALUES ('145', '1', '90');
INSERT INTO `facilitydetail` VALUES ('146', '1', '91');
INSERT INTO `facilitydetail` VALUES ('147', '2', '91');
INSERT INTO `facilitydetail` VALUES ('148', '3', '91');
INSERT INTO `facilitydetail` VALUES ('149', '4', '91');
INSERT INTO `facilitydetail` VALUES ('150', '1', '92');
INSERT INTO `facilitydetail` VALUES ('151', '2', '92');
INSERT INTO `facilitydetail` VALUES ('152', '3', '92');
INSERT INTO `facilitydetail` VALUES ('153', '4', '92');
INSERT INTO `facilitydetail` VALUES ('154', '5', '92');
INSERT INTO `facilitydetail` VALUES ('155', '1', '93');
INSERT INTO `facilitydetail` VALUES ('156', '2', '93');
INSERT INTO `facilitydetail` VALUES ('157', '3', '93');
INSERT INTO `facilitydetail` VALUES ('158', '4', '93');
INSERT INTO `facilitydetail` VALUES ('159', '1', '94');
INSERT INTO `facilitydetail` VALUES ('160', '2', '94');
INSERT INTO `facilitydetail` VALUES ('161', '3', '94');
INSERT INTO `facilitydetail` VALUES ('162', '4', '94');
INSERT INTO `facilitydetail` VALUES ('163', '5', '94');
INSERT INTO `facilitydetail` VALUES ('164', '1', '96');
INSERT INTO `facilitydetail` VALUES ('165', '1', '97');
INSERT INTO `facilitydetail` VALUES ('166', '1', '99');
INSERT INTO `facilitydetail` VALUES ('167', '2', '99');
INSERT INTO `facilitydetail` VALUES ('168', '1', '101');
INSERT INTO `facilitydetail` VALUES ('169', '2', '101');
INSERT INTO `facilitydetail` VALUES ('170', '1', '102');
INSERT INTO `facilitydetail` VALUES ('171', '1', '103');
INSERT INTO `facilitydetail` VALUES ('172', '1', '107');
INSERT INTO `facilitydetail` VALUES ('173', '1', '108');
INSERT INTO `facilitydetail` VALUES ('174', '1', '109');
INSERT INTO `facilitydetail` VALUES ('175', '1', '110');
INSERT INTO `facilitydetail` VALUES ('176', '3', '110');
INSERT INTO `facilitydetail` VALUES ('177', '1', '111');
INSERT INTO `facilitydetail` VALUES ('178', '3', '111');
INSERT INTO `facilitydetail` VALUES ('179', '1', '112');
INSERT INTO `facilitydetail` VALUES ('180', '2', '112');
INSERT INTO `facilitydetail` VALUES ('181', '1', '113');
INSERT INTO `facilitydetail` VALUES ('182', '2', '113');
INSERT INTO `facilitydetail` VALUES ('183', '1', '116');

-- ----------------------------
-- Table structure for feecategory
-- ----------------------------
DROP TABLE IF EXISTS `feecategory`;
CREATE TABLE `feecategory` (
  `FeeCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `FeeType` varchar(15) NOT NULL,
  `Fee` int(11) NOT NULL,
  `Year_ID` varchar(8) NOT NULL,
  `Academic_Year_ID` varchar(8) NOT NULL,
  PRIMARY KEY (`FeeCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of feecategory
-- ----------------------------
INSERT INTO `feecategory` VALUES ('1', 'School Fee', '15000', '1', '01');
INSERT INTO `feecategory` VALUES ('2', 'Library Fee', '300', '1', '01');
INSERT INTO `feecategory` VALUES ('3', 'Entrance Fee', '100', '1', '01');
INSERT INTO `feecategory` VALUES ('4', 'NRC Fee', '100', '1', '01');
INSERT INTO `feecategory` VALUES ('5', 'Sport Fee', '1000', '1', '01');
INSERT INTO `feecategory` VALUES ('6', 'Lab Fee', '500', '1', '01');
INSERT INTO `feecategory` VALUES ('7', 'Exam Fee', '1000', '1', '01');
INSERT INTO `feecategory` VALUES ('8', 'School Fee', '20000', '2', '01');
INSERT INTO `feecategory` VALUES ('9', 'Library Fee', '300', '2', '01');
INSERT INTO `feecategory` VALUES ('10', 'Entrance Fee', '0', '2', '01');
INSERT INTO `feecategory` VALUES ('11', 'NRC Fee', '0', '2', '01');
INSERT INTO `feecategory` VALUES ('12', 'Sport Fee', '1000', '2', '01');
INSERT INTO `feecategory` VALUES ('13', 'Lab Fee', '500', '2', '01');
INSERT INTO `feecategory` VALUES ('14', 'Exam Fee', '1000', '2', '01');
INSERT INTO `feecategory` VALUES ('15', 'School Fee', '25000', '3', '01');
INSERT INTO `feecategory` VALUES ('16', 'Library Fee', '300', '3', '01');
INSERT INTO `feecategory` VALUES ('17', 'Entrance Fee', '0', '3', '01');
INSERT INTO `feecategory` VALUES ('18', 'NRC Fee', '0', '3', '01');
INSERT INTO `feecategory` VALUES ('19', 'Sport Fee', '1000', '3', '01');
INSERT INTO `feecategory` VALUES ('20', 'Lab Fee', '500', '3', '01');
INSERT INTO `feecategory` VALUES ('21', 'Exam Fee', '1000', '3', '01');
INSERT INTO `feecategory` VALUES ('22', 'School Fee', '15000', '1', '02');
INSERT INTO `feecategory` VALUES ('23', 'Library Fee', '300', '1', '02');
INSERT INTO `feecategory` VALUES ('24', 'Entrance Fee', '100', '1', '02');
INSERT INTO `feecategory` VALUES ('25', 'NRC Fee', '100', '1', '02');
INSERT INTO `feecategory` VALUES ('26', 'Sport Fee', '1000', '1', '02');
INSERT INTO `feecategory` VALUES ('27', 'Lab Fee', '500', '1', '02');
INSERT INTO `feecategory` VALUES ('28', 'Exam Fee', '1000', '1', '02');
INSERT INTO `feecategory` VALUES ('29', 'School Fee', '20000', '2', '02');
INSERT INTO `feecategory` VALUES ('30', 'Library Fee', '300', '2', '02');
INSERT INTO `feecategory` VALUES ('31', 'Entrance Fee', '0', '2', '02');
INSERT INTO `feecategory` VALUES ('32', 'NRC Fee', '0', '2', '02');
INSERT INTO `feecategory` VALUES ('33', 'Sport Fee', '1000', '2', '02');
INSERT INTO `feecategory` VALUES ('34', 'Lab Fee', '500', '2', '02');
INSERT INTO `feecategory` VALUES ('35', 'Exam Fee', '1000', '2', '02');
INSERT INTO `feecategory` VALUES ('36', 'School Fee', '25000', '3', '02');
INSERT INTO `feecategory` VALUES ('37', 'Library Fee', '300', '3', '02');
INSERT INTO `feecategory` VALUES ('38', 'Entrance Fee', '0', '3', '02');
INSERT INTO `feecategory` VALUES ('39', 'NRC Fee', '0', '3', '02');
INSERT INTO `feecategory` VALUES ('40', 'Sport Fee', '1000', '3', '02');
INSERT INTO `feecategory` VALUES ('41', 'Lab Fee', '500', '3', '02');
INSERT INTO `feecategory` VALUES ('42', 'Exam Fee', '1000', '3', '02');
INSERT INTO `feecategory` VALUES ('43', 'School Fee', '15000', '1', '03');
INSERT INTO `feecategory` VALUES ('44', 'Library Fee', '300', '1', '03');
INSERT INTO `feecategory` VALUES ('45', 'Entrance Fee', '100', '1', '03');
INSERT INTO `feecategory` VALUES ('46', 'NRC Fee', '100', '1', '03');
INSERT INTO `feecategory` VALUES ('47', 'Sport Fee', '1000', '1', '03');
INSERT INTO `feecategory` VALUES ('48', 'Lab Fee', '500', '1', '03');
INSERT INTO `feecategory` VALUES ('49', 'Exam Fee', '1000', '1', '03');
INSERT INTO `feecategory` VALUES ('50', 'School Fee', '20000', '2', '03');
INSERT INTO `feecategory` VALUES ('51', 'Library Fee', '300', '2', '03');
INSERT INTO `feecategory` VALUES ('52', 'Entrance Fee', '0', '2', '03');
INSERT INTO `feecategory` VALUES ('53', 'NRC Fee', '0', '2', '03');
INSERT INTO `feecategory` VALUES ('54', 'Sport Fee', '1000', '2', '03');
INSERT INTO `feecategory` VALUES ('55', 'Lab Fee', '500', '2', '03');
INSERT INTO `feecategory` VALUES ('56', 'Exam Fee', '1000', '2', '03');
INSERT INTO `feecategory` VALUES ('57', 'School Fee', '25000', '3', '03');
INSERT INTO `feecategory` VALUES ('58', 'Library Fee', '300', '3', '03');
INSERT INTO `feecategory` VALUES ('59', 'Entrance Fee', '0', '3', '03');
INSERT INTO `feecategory` VALUES ('60', 'NRC Fee', '0', '3', '03');
INSERT INTO `feecategory` VALUES ('61', 'Sport Fee', '1000', '3', '03');
INSERT INTO `feecategory` VALUES ('62', 'Lab Fee', '500', '3', '03');
INSERT INTO `feecategory` VALUES ('63', 'Exam Fee', '1000', '3', '03');
INSERT INTO `feecategory` VALUES ('64', 'School Fee', '30000', '4', '03');
INSERT INTO `feecategory` VALUES ('65', 'Library Fee', '300', '4', '03');
INSERT INTO `feecategory` VALUES ('66', 'Entrance Fee', '0', '4', '03');
INSERT INTO `feecategory` VALUES ('67', 'NRC Fee', '0', '4', '03');
INSERT INTO `feecategory` VALUES ('68', 'Sport Fee', '1000', '4', '03');
INSERT INTO `feecategory` VALUES ('69', 'Lab Fee', '500', '4', '03');
INSERT INTO `feecategory` VALUES ('70', 'Exam Fee', '1000', '4', '03');
INSERT INTO `feecategory` VALUES ('71', 'School Fee', '15000', '1', '04');
INSERT INTO `feecategory` VALUES ('72', 'Library Fee', '300', '1', '04');
INSERT INTO `feecategory` VALUES ('73', 'Entrance Fee', '100', '1', '04');
INSERT INTO `feecategory` VALUES ('74', 'NRC Fee', '100', '1', '04');
INSERT INTO `feecategory` VALUES ('75', 'Sport Fee', '1000', '1', '04');
INSERT INTO `feecategory` VALUES ('76', 'Lab Fee', '500', '1', '04');
INSERT INTO `feecategory` VALUES ('77', 'Exam Fee', '1000', '1', '04');
INSERT INTO `feecategory` VALUES ('78', 'School Fee', '20000', '2', '04');
INSERT INTO `feecategory` VALUES ('79', 'Library Fee', '300', '2', '04');
INSERT INTO `feecategory` VALUES ('80', 'Entrance Fee', '0', '2', '04');
INSERT INTO `feecategory` VALUES ('81', 'NRC Fee', '0', '2', '04');
INSERT INTO `feecategory` VALUES ('82', 'Sport Fee', '1000', '2', '04');
INSERT INTO `feecategory` VALUES ('83', 'Lab Fee', '500', '2', '04');
INSERT INTO `feecategory` VALUES ('84', 'Exam Fee', '1000', '2', '04');
INSERT INTO `feecategory` VALUES ('85', 'School Fee', '25000', '3', '04');
INSERT INTO `feecategory` VALUES ('86', 'Library Fee', '300', '3', '04');
INSERT INTO `feecategory` VALUES ('87', 'Entrance Fee', '0', '3', '04');
INSERT INTO `feecategory` VALUES ('88', 'NRC Fee', '0', '3', '04');
INSERT INTO `feecategory` VALUES ('89', 'Sport Fee', '1000', '3', '04');
INSERT INTO `feecategory` VALUES ('90', 'Lab Fee', '500', '3', '04');
INSERT INTO `feecategory` VALUES ('91', 'Exam Fee', '1000', '3', '04');
INSERT INTO `feecategory` VALUES ('92', 'School Fee', '30000', '4', '04');
INSERT INTO `feecategory` VALUES ('93', 'Library Fee', '300', '4', '04');
INSERT INTO `feecategory` VALUES ('94', 'Entrance Fee', '0', '4', '04');
INSERT INTO `feecategory` VALUES ('95', 'NRC Fee', '0', '4', '04');
INSERT INTO `feecategory` VALUES ('96', 'Sport Fee', '1000', '4', '04');
INSERT INTO `feecategory` VALUES ('97', 'Lab Fee', '500', '4', '04');
INSERT INTO `feecategory` VALUES ('98', 'Exam Fee', '1000', '4', '04');
INSERT INTO `feecategory` VALUES ('99', 'School Fee', '15000', '1', '05');
INSERT INTO `feecategory` VALUES ('100', 'Library Fee', '300', '1', '05');
INSERT INTO `feecategory` VALUES ('101', 'Entrance Fee', '100', '1', '05');
INSERT INTO `feecategory` VALUES ('102', 'NRC Fee', '100', '1', '05');
INSERT INTO `feecategory` VALUES ('103', 'Sport Fee', '1000', '1', '05');
INSERT INTO `feecategory` VALUES ('104', 'Lab Fee', '500', '1', '05');
INSERT INTO `feecategory` VALUES ('105', 'Exam Fee', '1000', '1', '05');
INSERT INTO `feecategory` VALUES ('106', 'School Fee', '20000', '2', '05');
INSERT INTO `feecategory` VALUES ('107', 'Library Fee', '300', '2', '05');
INSERT INTO `feecategory` VALUES ('108', 'Entrance Fee', '0', '2', '05');
INSERT INTO `feecategory` VALUES ('109', 'NRC Fee', '0', '2', '05');
INSERT INTO `feecategory` VALUES ('110', 'Sport Fee', '1000', '2', '05');
INSERT INTO `feecategory` VALUES ('111', 'Lab Fee', '500', '2', '05');
INSERT INTO `feecategory` VALUES ('112', 'Exam Fee', '1000', '2', '05');
INSERT INTO `feecategory` VALUES ('113', 'School Fee', '25000', '3', '05');
INSERT INTO `feecategory` VALUES ('114', 'Library Fee', '300', '3', '05');
INSERT INTO `feecategory` VALUES ('115', 'Entrance Fee', '0', '3', '05');
INSERT INTO `feecategory` VALUES ('116', 'NRC Fee', '0', '3', '05');
INSERT INTO `feecategory` VALUES ('117', 'Sport Fee', '1000', '3', '05');
INSERT INTO `feecategory` VALUES ('118', 'Lab Fee', '500', '3', '05');
INSERT INTO `feecategory` VALUES ('119', 'Exam Fee', '1000', '3', '05');
INSERT INTO `feecategory` VALUES ('120', 'School Fee', '30000', '4', '05');
INSERT INTO `feecategory` VALUES ('121', 'Library Fee', '300', '4', '05');
INSERT INTO `feecategory` VALUES ('122', 'Entrance Fee', '0', '4', '05');
INSERT INTO `feecategory` VALUES ('123', 'NRC Fee', '0', '4', '05');
INSERT INTO `feecategory` VALUES ('124', 'Sport Fee', '1000', '4', '05');
INSERT INTO `feecategory` VALUES ('125', 'Lab Fee', '500', '4', '05');
INSERT INTO `feecategory` VALUES ('126', 'Exam Fee', '1000', '4', '05');
INSERT INTO `feecategory` VALUES ('127', 'School Fee', '30000', '5', '05');
INSERT INTO `feecategory` VALUES ('128', 'Library Fee', '300', '5', '05');
INSERT INTO `feecategory` VALUES ('129', 'Entrance Fee', '0', '5', '05');
INSERT INTO `feecategory` VALUES ('130', 'NRC Fee', '0', '5', '05');
INSERT INTO `feecategory` VALUES ('131', 'Sport Fee', '1000', '5', '05');
INSERT INTO `feecategory` VALUES ('132', 'Lab Fee', '500', '5', '05');
INSERT INTO `feecategory` VALUES ('133', 'Exam Fee', '1000', '5', '05');

-- ----------------------------
-- Table structure for file_download_student
-- ----------------------------
DROP TABLE IF EXISTS `file_download_student`;
CREATE TABLE `file_download_student` (
  `Sfile_ID` int(8) NOT NULL AUTO_INCREMENT,
  `Term_ID` varchar(20) NOT NULL,
  `Student_ID` varchar(8) NOT NULL,
  `Year_ID` varchar(8) NOT NULL,
  `Section_ID` varchar(8) NOT NULL,
  `SubCode` varchar(5) NOT NULL,
  `Date` date NOT NULL,
  `Upload_File_Name` varchar(40) NOT NULL,
  `Path` varchar(100) NOT NULL,
  PRIMARY KEY (`Sfile_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of file_download_student
-- ----------------------------
INSERT INTO `file_download_student` VALUES ('1', '1', '06', '1', '1', '103', '2017-08-10', 'ans', 'user_file_upload_student/db.txt');
INSERT INTO `file_download_student` VALUES ('2', '1', '06', '1', '1', '103', '2017-08-10', 'ans1', 'user_file_upload_student/LMS DB.txt');
INSERT INTO `file_download_student` VALUES ('3', '2', '06', '1', '1', '103', '0000-00-00', 'Answer', 'user_file_upload_student/285~the_alchemist.pdf');

-- ----------------------------
-- Table structure for file_download_teacher
-- ----------------------------
DROP TABLE IF EXISTS `file_download_teacher`;
CREATE TABLE `file_download_teacher` (
  `Tfile_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Term_ID` varchar(20) NOT NULL,
  `Teacher_ID` varchar(8) NOT NULL,
  `Year_ID` varchar(8) NOT NULL,
  `Section_ID` varchar(8) NOT NULL,
  `SubCode` varchar(5) NOT NULL,
  `Date` date NOT NULL,
  `Upload_File_Name` varchar(40) NOT NULL,
  `Path` varchar(100) NOT NULL,
  PRIMARY KEY (`Tfile_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of file_download_teacher
-- ----------------------------
INSERT INTO `file_download_teacher` VALUES ('1', '1', 'MOST_103', '1', '1', '103', '2017-08-09', 'aaaa', 'file/admin_file_upload_teacher/.txt');
INSERT INTO `file_download_teacher` VALUES ('2', '2', 'MOST_103', '1', '1', '103', '0000-00-00', 'Tutorial1', 'file/admin_file_upload_teacher/1.txt');

-- ----------------------------
-- Table structure for fingerprinttable
-- ----------------------------
DROP TABLE IF EXISTS `fingerprinttable`;
CREATE TABLE `fingerprinttable` (
  `FingerPrintCode` int(8) DEFAULT NULL,
  `FDATE` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fingerprinttable
-- ----------------------------

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `Grade_ID` varchar(8) DEFAULT NULL,
  `SubCode` varchar(8) DEFAULT NULL,
  `Student_ID` varchar(8) DEFAULT NULL,
  `Term_ID` varchar(8) DEFAULT NULL,
  `Exam_Type_ID` varchar(8) DEFAULT NULL,
  `Mark` int(11) DEFAULT NULL,
  `Academic_Year_ID` varchar(8) DEFAULT NULL,
  `Grade` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', 'Eng', '10', '1', '3', '45', null, 'C');
INSERT INTO `grade` VALUES ('2', '201', '10', '1', '3', '67', null, 'B');
INSERT INTO `grade` VALUES ('3', '202', '10', '1', '3', '78', null, 'B');
INSERT INTO `grade` VALUES ('4', '203', '10', '1', '3', '77', null, 'B');
INSERT INTO `grade` VALUES ('5', '204', '10', '1', '3', '68', null, 'B');
INSERT INTO `grade` VALUES ('6', '205', '10', '1', '3', '60', null, 'B');
INSERT INTO `grade` VALUES ('7', '206', '10', '1', '3', '56', null, 'C');
INSERT INTO `grade` VALUES ('1', 'Eng', '11', '1', '3', '55', null, 'C');
INSERT INTO `grade` VALUES ('2', '301', '11', '1', '3', '66', null, 'B');
INSERT INTO `grade` VALUES ('3', '302', '11', '1', '3', '77', null, 'B');
INSERT INTO `grade` VALUES ('4', '303', '11', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('5', '304', '11', '1', '3', '88', null, 'A');
INSERT INTO `grade` VALUES ('6', '305', '11', '1', '3', '22', null, 'D');
INSERT INTO `grade` VALUES ('7', '306', '11', '1', '3', '33', null, 'D');
INSERT INTO `grade` VALUES ('1', 'Myan', '05', '1', '3', '45', null, 'C');
INSERT INTO `grade` VALUES ('2', 'Eng', '05', '1', '3', '55', null, 'C');
INSERT INTO `grade` VALUES ('3', 'Phy', '05', '1', '3', '77', null, 'B');
INSERT INTO `grade` VALUES ('4', '101', '05', '1', '3', '88', null, 'A');
INSERT INTO `grade` VALUES ('5', '102', '05', '1', '3', '67', null, 'B');
INSERT INTO `grade` VALUES ('6', '103', '05', '1', '3', '45', null, 'C');
INSERT INTO `grade` VALUES ('7', '104', '05', '1', '3', '57', null, 'C');
INSERT INTO `grade` VALUES ('1', 'Eng', '16', '1', '3', '11', null, 'E');
INSERT INTO `grade` VALUES ('2', '401', '16', '1', '3', '22', null, 'D');
INSERT INTO `grade` VALUES ('3', '402', '16', '1', '3', '33', null, 'D');
INSERT INTO `grade` VALUES ('4', '403', '16', '1', '3', '44', null, 'C');
INSERT INTO `grade` VALUES ('5', '404', '16', '1', '3', '55', null, 'C');
INSERT INTO `grade` VALUES ('6', '405', '16', '1', '3', '66', null, 'B');
INSERT INTO `grade` VALUES ('7', '406', '16', '1', '3', '77', null, 'B');
INSERT INTO `grade` VALUES ('1', 'Eng', '21', '1', '3', '33', null, 'D');
INSERT INTO `grade` VALUES ('2', '501', '21', '1', '3', '44', null, 'C');
INSERT INTO `grade` VALUES ('3', '502', '21', '1', '3', '34', null, 'D');
INSERT INTO `grade` VALUES ('4', '503', '21', '1', '3', '55', null, 'C');
INSERT INTO `grade` VALUES ('5', '504', '21', '1', '3', '65', null, 'B');
INSERT INTO `grade` VALUES ('6', '505', '21', '1', '3', '76', null, 'B');
INSERT INTO `grade` VALUES ('1', 'Eng', '31', '1', '3', '78', null, 'B');
INSERT INTO `grade` VALUES ('2', '501', '31', '1', '3', '90', null, 'A');
INSERT INTO `grade` VALUES ('3', '502', '31', '1', '3', '65', null, 'B');
INSERT INTO `grade` VALUES ('4', '503', '31', '1', '3', '76', null, 'B');
INSERT INTO `grade` VALUES ('5', '504', '31', '1', '3', '23', null, 'D');
INSERT INTO `grade` VALUES ('6', '505', '31', '1', '3', '56', null, 'C');
INSERT INTO `grade` VALUES ('1', 'Eng', '26', '1', '3', '11', null, 'E');
INSERT INTO `grade` VALUES ('2', '201', '26', '1', '3', '22', null, 'D');
INSERT INTO `grade` VALUES ('3', '202', '26', '1', '3', '33', null, 'D');
INSERT INTO `grade` VALUES ('4', '203', '26', '1', '3', '44', null, 'C');
INSERT INTO `grade` VALUES ('5', '204', '26', '1', '3', '55', null, 'C');
INSERT INTO `grade` VALUES ('6', '205', '26', '1', '3', '66', null, 'B');
INSERT INTO `grade` VALUES ('7', '206', '26', '1', '3', '77', null, 'B');
INSERT INTO `grade` VALUES ('1', 'Eng', '28', '1', '3', '88', null, 'A');
INSERT INTO `grade` VALUES ('2', '301', '28', '1', '3', '22', null, 'D');
INSERT INTO `grade` VALUES ('3', '302', '28', '1', '3', '32', null, 'D');
INSERT INTO `grade` VALUES ('4', '303', '28', '1', '3', '54', null, 'C');
INSERT INTO `grade` VALUES ('5', '304', '28', '1', '3', '65', null, 'B');
INSERT INTO `grade` VALUES ('6', '305', '28', '1', '3', '75', null, 'B');
INSERT INTO `grade` VALUES ('7', '306', '28', '1', '3', '85', null, 'A');
INSERT INTO `grade` VALUES ('1', 'Eng', '32', '1', '3', '32', null, 'D');
INSERT INTO `grade` VALUES ('2', '501', '32', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('3', '502', '32', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('4', '503', '32', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('5', '504', '32', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('6', '505', '32', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('1', 'Eng', '17', '1', '3', '17', null, 'E');
INSERT INTO `grade` VALUES ('2', '401', '17', '1', '3', '44', null, 'C');
INSERT INTO `grade` VALUES ('3', '402', '17', '1', '3', '55', null, 'C');
INSERT INTO `grade` VALUES ('4', '403', '17', '1', '3', '66', null, 'B');
INSERT INTO `grade` VALUES ('5', '404', '17', '1', '3', '77', null, 'B');
INSERT INTO `grade` VALUES ('6', '405', '17', '1', '3', '88', null, 'A');
INSERT INTO `grade` VALUES ('7', '406', '17', '1', '3', '22', null, 'D');
INSERT INTO `grade` VALUES ('1', 'Eng', '18', '1', '3', '32', null, 'D');
INSERT INTO `grade` VALUES ('2', '401', '18', '1', '3', '54', null, 'C');
INSERT INTO `grade` VALUES ('3', '402', '18', '1', '3', '65', null, 'B');
INSERT INTO `grade` VALUES ('4', '403', '18', '1', '3', '75', null, 'B');
INSERT INTO `grade` VALUES ('5', '404', '18', '1', '3', '85', null, 'A');
INSERT INTO `grade` VALUES ('6', '405', '18', '1', '3', '32', null, 'D');
INSERT INTO `grade` VALUES ('7', '406', '18', '1', '3', '76', null, 'B');
INSERT INTO `grade` VALUES ('1', 'Eng', '19', '1', '3', '54', null, 'C');
INSERT INTO `grade` VALUES ('2', '401', '19', '1', '3', '87', null, 'A');
INSERT INTO `grade` VALUES ('3', '402', '19', '1', '3', '32', null, 'D');
INSERT INTO `grade` VALUES ('4', '403', '19', '1', '3', '45', null, 'C');
INSERT INTO `grade` VALUES ('5', '404', '19', '1', '3', '56', null, 'C');
INSERT INTO `grade` VALUES ('6', '405', '19', '1', '3', '65', null, 'B');
INSERT INTO `grade` VALUES ('7', '406', '19', '1', '3', '75', null, 'B');
INSERT INTO `grade` VALUES ('1', 'Eng', '22', '1', '3', '85', null, 'A');
INSERT INTO `grade` VALUES ('2', '501', '22', '1', '3', '32', null, 'D');
INSERT INTO `grade` VALUES ('3', '502', '22', '1', '3', '76', null, 'B');
INSERT INTO `grade` VALUES ('4', '503', '22', '1', '3', '54', null, 'C');
INSERT INTO `grade` VALUES ('5', '504', '22', '1', '3', '87', null, 'A');
INSERT INTO `grade` VALUES ('6', '505', '22', '1', '3', '32', null, 'D');
INSERT INTO `grade` VALUES ('1', 'Eng', '25', '1', '3', '45', null, 'C');
INSERT INTO `grade` VALUES ('2', '501', '25', '1', '3', '56', null, 'C');
INSERT INTO `grade` VALUES ('3', '502', '25', '1', '3', '44', null, 'C');
INSERT INTO `grade` VALUES ('4', '503', '25', '1', '3', '67', null, 'B');
INSERT INTO `grade` VALUES ('5', '504', '25', '1', '3', '88', null, 'A');
INSERT INTO `grade` VALUES ('6', '505', '25', '1', '3', '45', null, 'C');
INSERT INTO `grade` VALUES ('1', 'Eng', '02', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('2', '201', '02', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('3', '202', '02', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('4', '203', '02', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('5', '204', '02', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('6', '205', '02', '1', '3', '24', null, 'D');
INSERT INTO `grade` VALUES ('7', '206', '02', '1', '3', '70', null, 'B');
INSERT INTO `grade` VALUES ('1', 'Myan', '06', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('2', 'Eng', '06', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('3', 'Phy', '06', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('4', '101', '06', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('5', '102', '06', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('6', '103', '06', '1', '3', '60', null, 'B');
INSERT INTO `grade` VALUES ('7', '104', '06', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('1', 'Myan', '07', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('2', 'Eng', '07', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('3', 'Phy', '07', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('4', '101', '07', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('5', '102', '07', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('6', '103', '07', '1', '3', '70', null, 'B');
INSERT INTO `grade` VALUES ('7', '104', '07', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('1', 'Eng', '29', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('2', '301', '29', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('3', '302', '29', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('4', '303', '29', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('5', '304', '29', '1', '3', '0', null, 'E');
INSERT INTO `grade` VALUES ('6', '305', '29', '1', '3', '79', null, 'B');
INSERT INTO `grade` VALUES ('7', '306', '29', '1', '3', '0', null, 'E');

-- ----------------------------
-- Table structure for hostel
-- ----------------------------
DROP TABLE IF EXISTS `hostel`;
CREATE TABLE `hostel` (
  `HostelID` int(11) NOT NULL AUTO_INCREMENT,
  `OwnerID` varchar(8) DEFAULT NULL,
  `HostelName` varchar(30) NOT NULL,
  `Gender` varchar(5) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `TimeIn` varchar(5) NOT NULL,
  `TimeOut` varchar(5) NOT NULL,
  `Image` varchar(30) NOT NULL,
  PRIMARY KEY (`HostelID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hostel
-- ----------------------------
INSERT INTO `hostel` VALUES ('1', 'h1', 'Myitar Yate', 'Boy', 'Yan Aung Myin quarters', 'Singaing', '09-798208832', '5:30', '10:00', 'Myitar Yate.jpeg');
INSERT INTO `hostel` VALUES ('2', '', 'Nan Taw Win', 'Boy', 'No.2 street, Yan Aung Myin quarters', 'Singaing', '09-772064834', '6:00', '10:00', 'Nan Taw Win.jpeg');
INSERT INTO `hostel` VALUES ('3', null, 'Nadi', 'Girl', 'Yan-Man Road, Yan Aung Myin quarters', 'Singaing', '09-256006622', '5:30', '7:00', 'Nadi.jpeg');
INSERT INTO `hostel` VALUES ('4', '', 'Shan Shwe Li ', 'Boy', 'Yan Aung Myin quarters', 'Singaing', '09-798208832', '5:30', '10:00', 'Shan Shwe Li.jpeg');
INSERT INTO `hostel` VALUES ('5', null, 'Kaung San', 'Boy', 'Ta Yote Su quarters', 'Singaing', '09-55061609', '5:00', '11:00', 'KaungSan.jpeg');
INSERT INTO `hostel` VALUES ('6', null, 'Man Thiri Swe', 'Boy', 'Bo Tay Za street, bet No.6', 'Singaing', '09-91032142', '5:00', '11:00', 'Man ThiriSwe.jpeg');
INSERT INTO `hostel` VALUES ('7', null, 'Htake Tan', 'Boy', 'Near the Shwe Kyee Nar monastery', 'Singaing', '09-796778345', '5:00', '11:00', 'Htake Tan.jpeg');
INSERT INTO `hostel` VALUES ('8', null, 'Shwe Eain', 'Girl', 'Yan Aung Myin quarters, Khwar Nyo street', 'Singaing', '09-798512975', '5:00', '6:00', 'Shwe Eain.jpeg');
INSERT INTO `hostel` VALUES ('9', null, 'ThaZin', 'Boy', 'Ta Yote Su quarters', 'Singaing', '09-256106638', '5:00', '9:00', 'ThaZin.jpeg');
INSERT INTO `hostel` VALUES ('10', null, 'San Yate Nyein', 'Boy', 'bet Thit x Mya street', 'Singaing', '09-43106114', '5:00', '10:00', 'San Yate Nyein.jpeg');
INSERT INTO `hostel` VALUES ('11', null, 'Sein Nan Taw', 'Girl', 'Yan-Man Road, Yan Aung Myin quarters', 'Singaing', '09-973300479', '5:00', '8:30', 'Sein Nan Taw.jpeg');
INSERT INTO `hostel` VALUES ('12', null, 'Nan Htike San', 'Girl', 'OhnePin Chan quarters, Yan-Man Road', 'Singaing', '09-978018075', '6:00', '6:00', 'Nan Htike San.jpeg');
INSERT INTO `hostel` VALUES ('13', null, 'Zin Yaw', 'Girl', 'bet 35 x 36 street , bet 72 x73 street Mahar Aung Myay Township', 'Mandalay', '09-33105596', '6:00', '8:30', 'Zin Yaw.jpeg');
INSERT INTO `hostel` VALUES ('14', null, 'Pyo May', 'Girl', 'No.13/9, bet 72 x 73 street, bet 36 x 37 street', 'Mandalay', '09-91014191', '6:00', '8:30', 'Pyo May.jpeg');
INSERT INTO `hostel` VALUES ('15', null, 'AMaYar', 'Girl', 'No.999, bet 72 x 73 street, bet 36 x 37 street', 'Mandalay', '09-43099908', '6:00', '9:00', 'AMaYar.jpeg');
INSERT INTO `hostel` VALUES ('16', null, 'Askimoe', 'Girl', '73 street, bet 36 x 37 street', 'Mandalay', '09-259496688', '6:00', '9:30', 'Askimoe.jpeg');
INSERT INTO `hostel` VALUES ('17', null, 'Ngwe Myanmar', 'Girl', '73 street, corner of 37 street', 'Mandalay', '02-61813', '6:00', '9:00', 'Ngwe Myanmar.jpeg');
INSERT INTO `hostel` VALUES ('18', null, 'Saung Hnin Phyu ', 'Girl', '37 street,  bet 73 x 74 street', 'Mandalay', '02-69670', '5:00', '8:00', 'Saung Hnin Phyu.jpeg');
INSERT INTO `hostel` VALUES ('19', null, 'Shwe Phyu', 'Girl', '73 street , corner of 37, Shwe Phyu store', 'Mandalay', ' 02-32975', '6:00', '8:00', 'Shwe Phyu.jpeg');
INSERT INTO `hostel` VALUES ('20', null, 'Yamin', 'Girl', '73 street, bet 36x37 street', 'Mandalay', '02-36997', '6:00', '9:00', 'Yamin.jpeg');
INSERT INTO `hostel` VALUES ('21', null, 'Tharaphu', 'Girl', '72 street, bet 396x40 street, Mahar Nwe Zin quarters', 'Mandalay', '09-2022026459', '6:00', '8:30', 'Tharaphu.jpeg');
INSERT INTO `hostel` VALUES ('22', null, 'Daewi Akari', 'Girl', '72 street, bet 38x39 street', 'Mandalay', '09-254729655', '6:00', '8:30', 'Daewi Akari.jpeg');
INSERT INTO `hostel` VALUES ('23', null, 'La Min Nge', 'Boy', '38 street, bet 71x72 street, Mahar Nwe Zin quarters', 'Mandalay', '09-256553524', '6:00', '10:00', 'La Min Nge.jpeg');
INSERT INTO `hostel` VALUES ('24', null, 'SanBal', 'Girl', '38 street, bet 71x72 street, Mahar Nwe Zin quarters', 'Mandalay', '09-6501843', '6:00', '8:30', 'SanBal.jpeg');
INSERT INTO `hostel` VALUES ('25', null, 'KMM', 'Girl', '38 street, bet 71x72 street, Mahar Nwe Zin quarters', 'Mandalay', '02-62951', '6:00', '8:30', 'KMM.jpeg');
INSERT INTO `hostel` VALUES ('26', null, 'Shwe Win', 'Girl', '38 street, bet 71x72 street, Mahar Nwe Sin quarters', 'Mandalay', '09-79031631', '6:00', '8:30', 'Shwe Win.jpeg');
INSERT INTO `hostel` VALUES ('27', null, 'Yadanar', 'Girl', '38 street, bet 71x72 street, Mahar Nwe Zin quarters', 'Mandalay', '09-73213010', '6:00', '9:00', 'Yadanar1.jpeg');
INSERT INTO `hostel` VALUES ('28', null, 'Nandawin', 'Girl', '38 street, bet 71x73 street, Mahar Nwe Zin quarters', 'Mandalay', '09-775711064', '6:00', '9:00', 'Nandawin.jpeg');
INSERT INTO `hostel` VALUES ('29', null, 'Mya Yate Nyo', 'Girl', '38 street, bet 72x73 street, Mahar Nwe Zin quarters', 'Mandalay', '09-973060577', '6:00', '9:00', 'Mya Yate Nyo.jpeg');
INSERT INTO `hostel` VALUES ('30', null, 'Moe Koat', 'Girl', 'bet 72x73 street, bet 38x39 street, bet Kay Zaw', 'Mandalay', '09-402560988', '6:00', '9:00', 'Moe Koat.jpeg');
INSERT INTO `hostel` VALUES ('31', null, 'Shwe Poe Eain', 'Girl', 'bet 72x73 street, bet 38x39 street, bet Kay Zaw', 'Mandalay', '09-402575066', '6:00', '8:30', 'Shwe Poe Eain.jpeg');
INSERT INTO `hostel` VALUES ('32', null, 'Hla Yadanar', 'Girl', 'bet 72x73 street, bet 38x38 street, bet Kay Zaw', 'Mandalay', '09-33300915', '6:00', '8:00', 'Hla Yadanar.jpeg');
INSERT INTO `hostel` VALUES ('33', null, 'Shan Shwe Li', 'Girl', 'Yan Aung Myin quarters, PaTauk street', 'Singaing', '09-796192543', '6:00', '7:00', 'Shan Shwe Li Girl.jpeg');
INSERT INTO `hostel` VALUES ('34', null, 'Aung Tharaphu', 'Girl', 'Yan Aung Myin quarters', 'Singaing', '09-781363488', '6:00', '8:00', 'Aung Tharaph.jpeg');
INSERT INTO `hostel` VALUES ('35', null, 'Shwe Pyay Thar', 'Girl', 'Yan Aung Myin quarters, Bo Tay Za street', 'Singaing', '09-4318905', '6:00', '8:00', 'Shwe Pyay Thar .jpeg');
INSERT INTO `hostel` VALUES ('36', null, 'Ah Mae Eain', 'Boy', 'Ta Yote Su quarters, Bo Tay Za street', 'Singaing', '09-797375978', '6:00', '10:00', 'Ah Mae Eain1.jpeg');
INSERT INTO `hostel` VALUES ('37', null, 'Aye Chan Phyo', 'Boy', 'Ta Yote Su quarters, Bo Tay Za street', 'Singaing', '09-77660362', '6:00', '8:00', 'Aye Chan Phyo.jpeg');
INSERT INTO `hostel` VALUES ('38', null, 'Bo Ma', 'Girl', 'Nuge War street, Ta Yote Su quarters', 'Singaing', '09-788743559', '6:00', '8:00', 'Bo Ma.jpeg');
INSERT INTO `hostel` VALUES ('39', null, 'Nyo Chaw', 'Girl', 'Yan Aung Myin quarters, Bo Tay Za street', 'Singaing', '09-400433835', '6:00', '9:00', 'Nyo Chaw.jpeg');
INSERT INTO `hostel` VALUES ('40', null, 'Mya Pan Cherry', 'Girl', 'Yan Aung Myin quarters, Mya street, Yan-Man road', 'Singaing', '09-767676671', '6:00', '9:00', 'Mya Pan Cherry.jpeg');
INSERT INTO `hostel` VALUES ('41', null, 'Ngwe La Yaung', 'Girl', 'Yan Naing quarters', 'Singaing', '09-977363879', '6:00', '10:00', 'Ngwe La Yaung.jpeg');
INSERT INTO `hostel` VALUES ('42', null, 'ZaLat Ni', 'Boy', 'bet 39 x 40 street, bet70 x 71 street, Mahar Aung Myay Township', 'Mandalay', '09-33040868', '6:00', '10:00', 'ZaLat Ni.jpeg');
INSERT INTO `hostel` VALUES ('43', null, 'Gant Gaw Taww', 'Boy', '39 street, bet 70 x 71 street, Mahar Aung Myay Township', 'Mandalay', '02-62157', '6:00', '9:00', 'Gant Gaw Taww.jpeg');
INSERT INTO `hostel` VALUES ('44', null, 'Chan Myae Yate Mon', 'Boy', 'bet 29 x 30 street, bet 73 x 74 street, Chan Aye Thar San Township', 'Mandalay', '09-200', '6:00', '10:00', 'Chan Myae Yate Mon.jpeg');
INSERT INTO `hostel` VALUES ('45', null, 'Nyein Chan Thar Yar', 'Boy', 'bet 39 x 40 street, bet 72 x 73 street, Mahar Aung Myay Township', 'Mandalay', '09-6802591', '6:00', '9:00', 'Nyein Chan Thar Yar.jpeg');
INSERT INTO `hostel` VALUES ('46', null, 'Ngwe Zin Yaw', 'Boy', '37 street,  bet 72 x 73 street, Mahar Aung Myay Township', 'Mandalay', '09-798673548', '6:00', '9:00', 'Ngwe Zin Yaw.jpeg');
INSERT INTO `hostel` VALUES ('47', null, 'Ngwe Hnin Phyu', 'Boy', 'bet 38 x 39 street, Sein Chel street, Mahar Nwe Zin quarters', 'Mandalay', '02-77441', '6:00', '9:30', 'Ngwe Hnin Phyu.jpeg');
INSERT INTO `hostel` VALUES ('48', null, 'San Thiri', 'Boy', '73 street, bet 37 x 38, Mahar Aung Myay Township', 'Mandalay', '02-32634', '6:00', '10:00', 'San Thiri.jpeg');
INSERT INTO `hostel` VALUES ('49', null, 'Hnin Myat Phyu', 'Boy', '71 street, bet 40 x 41 street, Mahar Aung Myay Township', 'Mandaaly', '09-33040796', '6:00', '9:30', 'Hnin Myat Phyu.jpeg');
INSERT INTO `hostel` VALUES ('50', null, 'Hnin Wutt Yi', 'Boy', 'bet 41 x 42 street, bet 67 x 68, Mahar Aung Myay Township', 'Mandalay', '09-2001261', '6:00', '10:00', 'Hnin Wutt Yi.jpeg');
INSERT INTO `hostel` VALUES ('51', null, 'Pyo Toae Maung', 'Boy', '69 street, bet 42 and ThatePan road, Mahar Aung Myay Township', 'Mandalay', '09-91014006', '6:00', '10:30', 'Pyo Toae Maung.jpeg');
INSERT INTO `hostel` VALUES ('52', null, 'MiBa AYate', 'Boy', 'bet 32 x 33 street, bet 72 x 73 street, Chan Aye Thar Zan Township', 'Mandalay', '09-91045964', '6:00', '10:00', 'MiBa AYate.jpeg');
INSERT INTO `hostel` VALUES ('53', null, 'Myitar Hla Hla', 'Boy', 'bet 39 x 40 street, bet 70 x 71 street, Mahar Aung  Myay Township', 'Mandalay', '09-402545448', '6:00', '10:00', 'Myitar Hla Hla.jpeg');
INSERT INTO `hostel` VALUES ('54', null, 'Shwe San Eain', 'Boy', '38 street, bet 70 x 71 street, Mahar Aung Myay Township', 'Mandalay', '09-256013989', '6:00', '10:00', 'Shwe San Eain.jpeg');
INSERT INTO `hostel` VALUES ('55', null, 'ThaPyay Nyo', 'Boy', '17/5, bet 37 x 38 street, bet 73 x74 street, Mahar Aung Myay Township', 'Mandalay', '02-77691', '6:00', '10:00', 'ThaPyay Nyo.jpeg');
INSERT INTO `hostel` VALUES ('56', null, 'Thiri Yadanar', 'Boy', '39 street, bet 71 x 72 street, Mahar Aung Myay Township', 'Mandalay', '02-77437', '6:00', '10:00', 'Thiri Yadanar.jpeg');
INSERT INTO `hostel` VALUES ('57', null, 'Thalar Oo', 'Boy', '283/97, bet 40 x 41 street, bet 70x71 street, Mahar Aung Myay Township', 'Mandalay', '09-259092258', '6:00', '10:00', 'Thalar Oo.jpeg');
INSERT INTO `hostel` VALUES ('58', null, 'Aye Yate Nyein', 'Boy', '67 street, bet 41 x 42 street, Mahar Aung Myay Township', 'Mandalay', '09-2001261', '6:00', '10:00', 'Aye Yate Nyein.jpeg');
INSERT INTO `hostel` VALUES ('59', null, 'Khant Thu Aung', 'Girl', 'Ngu War street, bet 64 x 65 street, Chan Myae Thar Zi Township', 'Mandalay', '09-798798422', '6:00', '9:00', 'Khant Thu Aung.jpeg');
INSERT INTO `hostel` VALUES ('60', null, 'San Yate Myaing', 'Girl', '69 street, bet 40 x 41 street, Mahar Aung Myay Township', 'Mandalay', '02-62324', '5:00', '9:00', 'San Yate Myaing.jpeg');
INSERT INTO `hostel` VALUES ('61', null, 'Hnin Wutt Yi', 'Girl', '68 street, bet 41 x 42 street, Mahar Aung Myay Township', 'Mandalay', '09-2001261', '6:00', '8:00', 'Hnin Wutt Yi.jpeg');
INSERT INTO `hostel` VALUES ('62', null, 'Pa Dauk Myaing', 'Girl', '68 street, bet 42 x 43 street, Mahar Aung Myay Township', 'Mandalay', '09-798937514', '5:30', '9:00', 'Pa Dauk Myaing.jpeg');
INSERT INTO `hostel` VALUES ('63', null, 'Yadanar', 'Girl', '69 street, bet 40 x 41 street, Mahar Aung Myay Township', 'Mandalay', '09-6815174', '6:00', '9:00', 'Yadanar2.jpeg');
INSERT INTO `hostel` VALUES ('64', null, 'Ye Yint Mann', 'Girl', '42 street,bet 67 x 68 street,Than Lwin street Mahar Aung Myay Township', 'Mandalay', '02-77080', '6:00', '9:00', 'Ye Yint Mann.jpeg');
INSERT INTO `hostel` VALUES ('65', null, 'Ngwe San Eain', 'Boy', 'OhnePin Chan quarters', 'Singaing', '09-971356202', '5:00', '10:00', 'Ngwe San Eain boy .jpeg');
INSERT INTO `hostel` VALUES ('66', null, 'Ngwe San Eain', 'Girl', 'OhnePin Chan quarters', 'Singaing', '09-971356202', '5:00', '8:30', 'Ngwe San Eain girl.jpeg');
INSERT INTO `hostel` VALUES ('67', null, 'Daw Tin Nu Htun', 'Girl', 'Nyaung Chauk Pin quarters', 'Kyaukse', '066-50437', '6:00', '7:00', 'Daw Tin Nu Htun.jpeg');
INSERT INTO `hostel` VALUES ('68', null, 'Daw Aye Mar', 'Girl', 'Si Sone', 'Kyaukse', '0979758435', '6:00', '8:00', 'Daw Aye Mar.jpeg');
INSERT INTO `hostel` VALUES ('69', null, 'Lin Latt Mon', 'Girl', 'Sue Kone', 'Kuakse', '09-777768648', '5:00', '8:00', 'Lin Latt Mon.jpeg');
INSERT INTO `hostel` VALUES ('70', null, 'Hwae Hike', 'Girl', '69 street, bet 42 x 43 street, Mahar Aung Myay Township', 'Mandalay', '09-259027602', '6:00', '8:30', 'Hwae Hike.jpeg');

-- ----------------------------
-- Table structure for increment
-- ----------------------------
DROP TABLE IF EXISTS `increment`;
CREATE TABLE `increment` (
  `Sr_No` int(5) NOT NULL,
  `Teacher_ID` varchar(10) DEFAULT NULL,
  `Current_Salary` int(10) DEFAULT NULL,
  `Modify_Month` int(5) DEFAULT NULL,
  `Modify_Year` int(5) DEFAULT NULL,
  PRIMARY KEY (`Sr_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of increment
-- ----------------------------
INSERT INTO `increment` VALUES ('1', 'MOST_103', '34000', '6', '2017');

-- ----------------------------
-- Table structure for internship
-- ----------------------------
DROP TABLE IF EXISTS `internship`;
CREATE TABLE `internship` (
  `I_ID` int(8) NOT NULL AUTO_INCREMENT,
  `C_ID` varchar(8) DEFAULT NULL,
  `Student_ID` varchar(8) DEFAULT NULL,
  `Duration` varchar(10) NOT NULL,
  `Acedamic_Year_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`I_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of internship
-- ----------------------------
INSERT INTO `internship` VALUES ('1', 'c003', '31', '3 months', '05');
INSERT INTO `internship` VALUES ('2', 'c002', '32', '3 months', '05');
INSERT INTO `internship` VALUES ('3', 'c002', '33', '3 months', '05');
INSERT INTO `internship` VALUES ('4', 'c002', '34', '3 months', '05');
INSERT INTO `internship` VALUES ('6', 'c002', '35', '3 months', '05');
INSERT INTO `internship` VALUES ('7', 'c003', '21', '3 months', '05');

-- ----------------------------
-- Table structure for internshipdetail
-- ----------------------------
DROP TABLE IF EXISTS `internshipdetail`;
CREATE TABLE `internshipdetail` (
  `C_ID` varchar(8) NOT NULL,
  `Company_Name` varchar(15) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of internshipdetail
-- ----------------------------
INSERT INTO `internshipdetail` VALUES ('c001', 'MCPA', 'Mdy', 'MIIT');
INSERT INTO `internshipdetail` VALUES ('c002', 'Lucky Bird', 'Ygn', 'Hlae Tan');
INSERT INTO `internshipdetail` VALUES ('c003', 'EMJ Global', 'Ygn', 'San Chaung');
INSERT INTO `internshipdetail` VALUES ('c004', 'Thein Minn', 'Ygn', 'Dagong');
INSERT INTO `internshipdetail` VALUES ('c005', 'Cytron', 'Ygn', 'Shwe Gong Taing');
INSERT INTO `internshipdetail` VALUES ('c006', 'Booming Luck', 'Ygn', 'San Chaung');
INSERT INTO `internshipdetail` VALUES ('c007', 'Pearl Yadana', 'Ygn', 'San Chaung');
INSERT INTO `internshipdetail` VALUES ('c008', 'VSS(Myanmar)', 'Ygn', 'San Chaung');

-- ----------------------------
-- Table structure for leavedetail
-- ----------------------------
DROP TABLE IF EXISTS `leavedetail`;
CREATE TABLE `leavedetail` (
  `Sr-No` int(11) NOT NULL,
  `Leave_ID` varchar(8) NOT NULL,
  `Teacher_ID` varchar(8) NOT NULL,
  `Month` int(10) NOT NULL,
  PRIMARY KEY (`Sr-No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489;

-- ----------------------------
-- Records of leavedetail
-- ----------------------------
INSERT INTO `leavedetail` VALUES ('1', 'L001', 'MOST_103', '3');
INSERT INTO `leavedetail` VALUES ('2', 'L001', 'MOST_104', '4');
INSERT INTO `leavedetail` VALUES ('3', 'L002', 'MOST_105', '3');
INSERT INTO `leavedetail` VALUES ('4', 'L003', 'MOST_106', '6');
INSERT INTO `leavedetail` VALUES ('5', 'L004', 'MOST_107', '8');
INSERT INTO `leavedetail` VALUES ('6', 'L004', 'MOST_108', '8');
INSERT INTO `leavedetail` VALUES ('7', 'L003', 'MOST_109', '9');
INSERT INTO `leavedetail` VALUES ('8', 'L004', 'MOST_110', '9');
INSERT INTO `leavedetail` VALUES ('9', 'L002', 'MOST_111', '6');
INSERT INTO `leavedetail` VALUES ('10', 'L004', 'MOST_112', '9');
INSERT INTO `leavedetail` VALUES ('11', 'L003', 'MOST_113', '5');

-- ----------------------------
-- Table structure for leavetype
-- ----------------------------
DROP TABLE IF EXISTS `leavetype`;
CREATE TABLE `leavetype` (
  `Leave-ID` varchar(5) NOT NULL,
  `Leave Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Leave-ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461;

-- ----------------------------
-- Records of leavetype
-- ----------------------------
INSERT INTO `leavetype` VALUES ('L001', 'Medical');
INSERT INTO `leavetype` VALUES ('L002', 'Maternity');
INSERT INTO `leavetype` VALUES ('L003', 'Service');
INSERT INTO `leavetype` VALUES ('L004', 'Causal');

-- ----------------------------
-- Table structure for lectureplan
-- ----------------------------
DROP TABLE IF EXISTS `lectureplan`;
CREATE TABLE `lectureplan` (
  `No` int(8) NOT NULL,
  `SubCode` varchar(8) NOT NULL,
  `Major` varchar(5) NOT NULL,
  `SubName` varchar(60) NOT NULL,
  `BookName` varchar(90) NOT NULL,
  `Term` varchar(20) NOT NULL,
  `Chapter` varchar(30) NOT NULL,
  `Page` varchar(10) NOT NULL,
  `Period` varchar(30) NOT NULL,
  `DetailLecturePlan` longtext NOT NULL,
  `ReferenceBook` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lectureplan
-- ----------------------------
INSERT INTO `lectureplan` VALUES ('0', '123', '', '', '', '', '', '', '', '', '');
INSERT INTO `lectureplan` VALUES ('0', '124', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for library_book
-- ----------------------------
DROP TABLE IF EXISTS `library_book`;
CREATE TABLE `library_book` (
  `book_ID` varchar(10) NOT NULL,
  `book_Name` varchar(150) DEFAULT NULL,
  `edition` varchar(20) DEFAULT NULL,
  `published_Year` varchar(12) DEFAULT NULL,
  `donor` varchar(100) DEFAULT NULL,
  `author_Name` varchar(80) DEFAULT NULL,
  `category_ID` varchar(10) DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`book_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of library_book
-- ----------------------------
INSERT INTO `library_book` VALUES ('', '', '', '', '', '', '', '');
INSERT INTO `library_book` VALUES ('101', 'Computer Programming And Techniques', '', '', '', '', 'c06', '');
INSERT INTO `library_book` VALUES ('106', 'Digital Electronic', '', '', '', '', 'c01', 'libraryBooks/106.pdf');
INSERT INTO `library_book` VALUES ('1146', 'Comparing K-Means And Fuzzy C-Means Clustering On Data Set For Dentition Of Mammals', '', '2013', '', 'Hnin Ei Wai', 'c11', '');
INSERT INTO `library_book` VALUES ('117', 'Project Management (Third Year Text Book)', '', '', '', '', 'c06', '');
INSERT INTO `library_book` VALUES ('118', 'DBMS (Third Year Text Book)', '', '', '', 'C.J.Date', 'c07', '');
INSERT INTO `library_book` VALUES ('119', 'Electronic Devices (Third Year CT Text Book)', 'Fifth Edition', '', '', '', 'c01', 'libraryBooks/119.pdf');
INSERT INTO `library_book` VALUES ('120', 'Engineering Circuit Analysis', 'Sixth Edition', '', '', '', 'c01', 'libraryBooks/120 6edition.pdf');
INSERT INTO `library_book` VALUES ('123', 'Introduction To Operating Research', '', '', '', 'Hillies and Liebermen', 'c01', 'libraryBooks/123.pdf');
INSERT INTO `library_book` VALUES ('126', 'Digital (Second Year)', '', '', '', '', 'c01', '');
INSERT INTO `library_book` VALUES ('127', 'Management Information System', '', '', '', 'Hens and Master', 'c06', '');
INSERT INTO `library_book` VALUES ('129', 'Management Information System', 'Third Edition', '', '', '', 'c06', '');
INSERT INTO `library_book` VALUES ('1467', 'Developing The Speaking Skill Of The Second Year Students at The computer University', '', '2010', '', 'Thin Thin Soe', 'c10', '');
INSERT INTO `library_book` VALUES ('1542', 'Design And Implementation Of Security System Using Steganographic and Cryptographic Techniques', '', '2011', '', 'Khin Myo Thant', 'c10', '');
INSERT INTO `library_book` VALUES ('1546', 'Implementation Of Finger_Print Based Security Control System', '', '2011', '', 'Phyu Phyu Thant', 'c10', '');
INSERT INTO `library_book` VALUES ('1547', 'Implementation Of Myanmar Noun Phrase Tokennizer For Supporting Natural Language Processing', '', '2011', '', 'Zun May Myint', 'c10', '');
INSERT INTO `library_book` VALUES ('1548', 'Implementation Of Myanmar banknotes Recognition System Using Backpropagation Neural Network', '', '2011', '', 'Wint Sandar Win', 'c10', '');
INSERT INTO `library_book` VALUES ('1549', 'Design and Implementation Of Expert System For Warehouse Control', '', '2011', '', 'Htet Htet Tin', 'c10', '');
INSERT INTO `library_book` VALUES ('1550', 'Implementation Of Classification System For Insects Using Neural Network', '', '2011', '', 'Pyae Phyo Phyo Thein', 'c10', '');
INSERT INTO `library_book` VALUES ('1551', 'Implementation Of Decision Support System For Diseases Using Decision Tree Induction', '', '2011', '', 'Shine Hnin Oo', 'c10', '');
INSERT INTO `library_book` VALUES ('1553', 'Implementation Of Speaker Verification System Using Linear Prediction Cepstral Coefficients (LPCC)', '', '2011', '', 'Thae Su Win', 'c10', '');
INSERT INTO `library_book` VALUES ('1554', 'Design and Implementation Of Iris Based Security Control System', '', '2011', '', 'Tin Ni Ni Kyaw', 'c10', '');
INSERT INTO `library_book` VALUES ('1555', 'Recognition Of Myanmar Handwriting Digits Using Neural Network', '', '2011', '', 'Thandar Soe', 'c10', '');
INSERT INTO `library_book` VALUES ('1627', 'Expert Systems And Applied Artifical Intelligence', '', '', '', 'Efraim Turbanc', 'c06', '');
INSERT INTO `library_book` VALUES ('1645', 'A Guide To SPSS', '', '', '', 'Thomas W Pavkcc', 'c06', '');
INSERT INTO `library_book` VALUES ('1646', 'Advance Programming Using Visual Basic 2005', '', '', '', 'Julia Case Bradly, Antia c Millspaugh', 'c06', '');
INSERT INTO `library_book` VALUES ('1649', 'Principle Of Computer Science', '', '', '', 'Carl Reynoeds', 'c06', '');
INSERT INTO `library_book` VALUES ('1677', 'Computer Graphic', 'Second Edition', '', '', 'Dondd Hearn. M.P. Auine Baier', 'c06', '');
INSERT INTO `library_book` VALUES ('1678', 'Operating System', 'Fourth Edition', '', '', 'Willam Stallings', 'c06', '');
INSERT INTO `library_book` VALUES ('1680', 'Electric Circuit', '', '', '', '', 'c01', '');
INSERT INTO `library_book` VALUES ('1699', 'Ontology-Based Related E-books Identification ', '', '2013', '', 'Su Myat Sandar Win', 'c11', '');
INSERT INTO `library_book` VALUES ('1708', 'Data Replication For Agricultural Loan System Using Lazy Replication Method', '', '2013', '', 'Mar Mar Myint', 'c11', '');
INSERT INTO `library_book` VALUES ('1734', 'Automatic Facial Expression Recognition System', '', '2013', '', 'Darli Myint Aung', 'c10', '');
INSERT INTO `library_book` VALUES ('1735', 'Web Page Design Quality Assesment System', '', '2013', '', 'Naw Lay Wah', 'c10', '');
INSERT INTO `library_book` VALUES ('1736', 'Data Security For Bank Loan Using RSA Algorithm And Radius With EAP-MDS', '', '2013', '', 'Yan Lin Htoo', 'c11', '');
INSERT INTO `library_book` VALUES ('1739', 'Simulation Of Strong Mobility In Mobile Agent Technology', '', '2013', '', 'Aye Su Paing', 'c11', '');
INSERT INTO `library_book` VALUES ('1741', 'PHP5 For Dummies', '', '', '', 'Janet Valede', 'c06', '');
INSERT INTO `library_book` VALUES ('1743', 'Systems Analysis and Design', 'Fifth Edition', '', '', 'Valacich George Hoffer', 'c06', '');
INSERT INTO `library_book` VALUES ('1744', 'Java 2 Programming Black Book', '', '', '', '', 'c06', '');
INSERT INTO `library_book` VALUES ('1783', 'HUMAN-COMPUTER INTERACTION', '', '', '', 'Mahwah, New Jersey', 'c06', '');
INSERT INTO `library_book` VALUES ('1784', 'Advances in Computers Volume 63', '', '', '', 'ALIR-HURSON', 'c01', '');
INSERT INTO `library_book` VALUES ('1786', 'Internetworking With TCP/IP (Volume1)', '', '', '', 'Principles, protocols, And Architecture', 'c05', 'libraryBooks/Nt1786.pdf');
INSERT INTO `library_book` VALUES ('1788', 'Engineering Circuit Analysis', 'Eight Edition', '', '', 'Hayt, Kemmerly, Durbin', 'c05', 'libraryBooks/Nt1788.pdf');
INSERT INTO `library_book` VALUES ('1789', 'Engineering Circuit Analysis', 'Eight Edition', '', '', 'Hayt, Kenamerly, Durbin', 'c01', 'libraryBooks/Nt1789.pdf');
INSERT INTO `library_book` VALUES ('1792', 'Visual Basic 2010', '', '', '', 'Thearon Wills, Bryan Newsome', 'c06', '');
INSERT INTO `library_book` VALUES ('1794', 'PARALLEL DATABASEAND TECHNIOUES', '', '', '', 'Abdelguerfi Wong', 'c07', '');
INSERT INTO `library_book` VALUES ('1795', 'Information Processing and Routing in Wireless Sensor Networks', '', '', '', 'Yu, Prasanna, Krishamacha', 'c05', 'https://www.amazon.com/Information-Processing-Routing-Wireless-Networks/dp/9');
INSERT INTO `library_book` VALUES ('1799', 'Microsoft Visual Basic 2010', '', '', '', 'Thearon Willis, Bryan Newsome', ' c06', 'libraryBooks/1799.pdf');
INSERT INTO `library_book` VALUES ('1804', 'Protocols and Architectures for Wireless Sensor Networks', '', '', '', 'Holger Karl, Andreas Willing', 'c01', 'libraryBooks/1804.pdf');
INSERT INTO `library_book` VALUES ('1807', 'Software Quality Engineering', '', '', '', 'JEFF TIAN', 'c01', 'libraryBooks/software quality.pdf');
INSERT INTO `library_book` VALUES ('1810', 'The LINUX ENTERPRISE Cluster', '', '', '', 'Karl Kapper', 'c01', '');
INSERT INTO `library_book` VALUES ('1813', 'A Networking Approach To Grid Computing', '', '', '', 'DANIEL MINOLI', 'c05', '');
INSERT INTO `library_book` VALUES ('1814', 'Electronic Devices Electron Flow Version', 'Ninth Edition', '', '', 'Floyd', 'c05', 'https://www.amazon.com/Electronic-Devices-Electron-Flow-Version/dp/013254984');
INSERT INTO `library_book` VALUES ('1815', 'Object_Orented Programmig In C++ ', 'Fourth Editio', '', '', 'Rabert  Lafore', 'c06', 'libraryBooks/1815.pdf');
INSERT INTO `library_book` VALUES ('1817', 'Object-Oriented Database Design', '', '', '', 'JANL.HARRINGTON', 'c06', '');
INSERT INTO `library_book` VALUES ('1819', 'Java 2', 'JDK 5 Edition', '', '', 'Steven Holzneretal', 'c06', 'libraryBooks/1819.pdf');
INSERT INTO `library_book` VALUES ('1820', 'XML DATABASES AND THE SEMANTIC WEB', '', '', '', 'BHAVANI THURAISINGAM', 'c07', 'libraryBooks/Xml Databases.pdf');
INSERT INTO `library_book` VALUES ('1825', 'Professional Web Developer', '', '', '', 'Ei Maung(Fairway Web)', 'c06', '');
INSERT INTO `library_book` VALUES ('1827', 'IELTS Examination Papers with Answers Cambridge ESOL(6)', '', '', '', '', 'c09', 'http://ieltsonlinetests.com/6/catalogue/cambridge-ielts-6-with-answers');
INSERT INTO `library_book` VALUES ('1828', 'Cambridge Grammar for IELTS with Answers', '', '', '', 'Hopkins, Cullen', 'c09', 'https://sachtienganhhn.net/pdf-embed/cambridge-grammar-for-ielts-with-answers.html');
INSERT INTO `library_book` VALUES ('1829', 'IELTS Examination Papers with Answers Cambridge ESOL(7) ', '', '', '', '', 'c09', 'https://docs.google.com/file/d/0B6H1j9wJevPDbjY2VmZnck1HSjg/view');
INSERT INTO `library_book` VALUES ('1832', 'E-Mail Security', '', '', '', 'Bruce Schneier', 'c01', '');
INSERT INTO `library_book` VALUES ('1841', 'Electronic Circuit Analysis and Design', 'Third Edition', '', '', 'Donald A Neamen', 'c01', '');
INSERT INTO `library_book` VALUES ('1842', 'Process Systems Analysis and Control', 'Second Edition', '', '', 'Donaldr.Coughanowr', 'c06', '');
INSERT INTO `library_book` VALUES ('1849', 'Process Control Concepts, Dynamics and Applications', '', '', '', 'S.K.SINGH', 'c06', '');
INSERT INTO `library_book` VALUES ('1851', 'Introduction to Neural Networks, Fuzzy Logic Genetic Algorithms', '', '', '', 'Sudarshak.Vallura T.NaqeswaraRao', 'c01', '');
INSERT INTO `library_book` VALUES ('1853', 'Construction Planning Equipment and Methods ', 'Sixth Edition', '', '', 'Peurijoy, Schexhayder', 'c01', '');
INSERT INTO `library_book` VALUES ('1859', 'Digital Principles and Applications', '', '', '', 'Leach, Malvino, Saha', 'c01', '');
INSERT INTO `library_book` VALUES ('1886', 'á€¡á€á€»á€…á€ºá€”á€¾á€„á€ºá€· á€…á€­á€á€ºá€•á€Šá€¬', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€á€€á€ºá€á€­á€¯á€¸', 'c08', 'http://myanmarbooksfree.blogspot.co.id/?m=0');
INSERT INTO `library_book` VALUES ('1887', 'á€žá€°á€á€­á€¯á€·á€Šá€®á€”á€±á€¬á€„á€ºá€”á€¾á€„á€ºá€· á€€á€»á€½á€”á€ºá€á€±á€¬á€ºá€›á€žá€…á€¬á€á€™á€ºá€¸á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€‡á€±á€¬á€ºá€‚á€»á€®', 'c08', 'http://mightkyaw1.blogspot.co.id/2017/03/down-facebook_27.html?m=1');
INSERT INTO `library_book` VALUES ('1888', 'á€œá€°á€á€½á€„á€ºá€€á€»á€šá€ºá€–á€­á€¯á€· á€œá€°á€›á€Šá€ºá€œá€Šá€ºá€–á€­á€¯á€·', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€Šá€®á€Šá€®á€”á€­á€¯á€„á€º', 'c08', 'http://myanmarbooksfree.blogspot.co.id/?m=0');
INSERT INTO `library_book` VALUES ('1893', 'á€á€­á€¯á€€á€»á€­á€¯', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€±á€¬á€„á€ºá€‘á€½á€”á€ºá€¸á€žá€°', 'c08', 'http://1kyawlwin1.blogspot.co.id/2015/01/blog-post_21.html?m=1');
INSERT INTO `library_book` VALUES ('1903', 'á€¡á€¬á€‡á€¬á€”á€Šá€ºá€”á€±á€·á á€žá€™á€­á€¯á€„á€ºá€¸á€™á€¾á€á€ºá€á€™á€ºá€¸á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€á€€á€ºá€á€±á€á€º', 'c08', 'http://mightkyaw1.blogspot.co.id/2017/03/down-facebook_27.html?m=1');
INSERT INTO `library_book` VALUES ('1904', 'á€¡á€±á€¬á€„á€ºá€žá€”á€ºá€¸á á€¡á€±á€¬á€„á€ºá€†á€”á€ºá€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€á€€á€ºá€á€±á€á€º', 'c08', 'http://myanmarbooksfree.blogspot.co.id/?m=0');
INSERT INTO `library_book` VALUES ('1905', 'á€—á€™á€¬á€· á€¦á€¸á€žá€”á€ºá€·', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€¡á€‘á€±á€¬á€€á€ºá€á€±á€¬á€º á€œá€¾á€¡á€±á€¬á€„á€º', 'c08', 'http://myanmarbooksfree.blogspot.co.id/?m=0');
INSERT INTO `library_book` VALUES ('1906', 'á€žá€°á€á€­á€¯á€·á€™á€¼á€„á€ºá€žá€±á€¬ á€¦á€¸á€žá€”á€ºá€·', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€€á€œá€±á€¬á€„á€ºá€…á€¯á€¶', 'c08', 'http://1kyawlwin1.blogspot.co.id/2015/01/blog-post_21.html?m=1');
INSERT INTO `library_book` VALUES ('1909', 'á€”á€•á€­á€¯á€œá€®á€šá€¶', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€á€€á€ºá€á€­á€¯á€¸', 'c08', 'http://1kyawlwin1.blogspot.co.id/2015/01/blog-post_21.html?m=1');
INSERT INTO `library_book` VALUES ('1911', 'á€—á€­á€¯á€œá€ºá€á€»á€¯á€•á€ºá€¡á€±á€¬á€„á€ºá€†á€”á€ºá€¸ á€”á€¾á€…á€ºáá€á€áŠ á€…á€¬áá€á€', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€€á€œá€±á€¬á€„á€ºá€…á€¯á€¶', 'c08', 'http://mightkyaw1.blogspot.co.id/2017/03/down-facebook_27.html?m=1');
INSERT INTO `library_book` VALUES ('1924', 'á€¡á€á€»á€­á€”á€ºá€á€­á€¯á€á€­á€¯á€”á€¾á€„á€ºá€· á€¡á€‚á€ºá€œá€­á€•á€ºá€…á€€á€¬á€¸á€•á€¼á€±á€¬á€›á€¡á€±á€¬á€„á€º', '', '', 'á€á€šá€ºá€šá€°á€žá€±á€¬á€…á€¬á€¡á€¯á€•á€º', 'á€†á€›á€¬á€™á€±á€¬á€„á€ºá€™á€±á€¬á€„á€ºá€á€™á€ºá€¸', 'c08', 'http://mightkyaw1.blogspot.co.id/2017/03/down-facebook_27.html?m=1');
INSERT INTO `library_book` VALUES ('1925', 'Andriod á€–á€¯á€”á€ºá€¸á€™á€»á€¬á€¸á€¡á€á€½á€€á€º á€¡á€žá€¯á€¶á€¸á€á€„á€º ABD Command á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€žá€±á€¬á€…á€¬á€¡á€¯á€•á€º', 'á€žá€®á€Ÿá€…á€­á€¯á€¸', 'c08', 'http://1kyawlwin1.blogspot.co.id/2015/01/blog-post_21.html?m=1');
INSERT INTO `library_book` VALUES ('1926', 'Andriod á€–á€¯á€”á€ºá€¸á€™á€»á€¬á€¸á€€á€­á€¯ á€œá€½á€šá€ºá€€á€°á€…á€½á€¬ Root á€œá€¯á€•á€ºá€á€¼á€„á€ºá€¸', '', '', 'á€á€šá€ºá€šá€°á€žá€±á€¬á€…á€¬á€¡á€¯á€•á€º', 'á€™á€„á€ºá€¸á€™á€„á€ºá€¸(IT)', 'c08', 'http://myanmarbooksfree.blogspot.co.id/?m=0');
INSERT INTO `library_book` VALUES ('1927', 'á€á€½á€²á€–á€€á€ºá€™á€žá€¯á€¶á€¸á€žá€„á€ºá€·á€žá€±á€¬ á€†á€±á€¸á€á€«á€¸á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', '', 'c08', 'http://mightkyaw1.blogspot.co.id/2017/03/down-facebook_27.html?m=1');
INSERT INTO `library_book` VALUES ('1929', 'á€žá€™á€®á€¸á€œá€±á€¸á€–á€á€ºá€–á€­á€¯á€·(á€•á€±á€«á€„á€ºá€¸á€á€»á€¯á€•á€º)', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€€á€±á€¬á€„á€ºá€¸á€žá€”á€ºá€·', 'c08', 'http://1kyawlwin1.blogspot.co.id/2015/01/blog-post_21.html?m=1');
INSERT INTO `library_book` VALUES ('1940', 'á€€á€»á€½á€”á€ºá€á€±á€¬á€ºá€·á€˜á€á€‡á€¬á€á€ºá€€á€¼á€±á€¬á€„á€ºá€¸áƒ', '', '', 'á€á€šá€ºá€šá€°á€žá€±á€¬á€…á€¬á€¡á€¯á€•á€º', 'á€žá€±á€¬á€ºá€á€¬á€†á€½á€±', 'c08', 'http://myanmarbooksfree.blogspot.co.id/?m=0');
INSERT INTO `library_book` VALUES ('1942', 'á€œá€°á€„á€šá€ºá€™á€»á€¬á€¸á€žá€­á€¯á€· á€™á€‚á€ºá€œá€¬á€•á€«', '', '', 'á€á€šá€ºá€šá€°á€žá€±á€¬á€…á€¬á€¡á€¯á€•á€º', 'á€¡á€±á€¬á€„á€ºá€žá€„á€ºá€¸', 'c08', 'http://mightkyaw1.blogspot.co.id/2017/03/down-facebook_27.html?m=1');
INSERT INTO `library_book` VALUES ('1953', 'á€…á€Šá€ºá€¸á€€á€™á€ºá€¸á€œá€­á€¯á€€á€ºá€”á€¬ á€…á€±á€á€”á€¬á€‘á€¬á€¸ á€™á€™á€¾á€¬á€¸á€…á€±á€”á€²á€·', '', '', 'á€á€šá€ºá€šá€°á€žá€±á€¬á€…á€¬á€¡á€¯á€•á€º', 'á€™á€±á€¬á€„á€ºá€™á€±á€¬á€„á€ºá€á€„á€º', 'c08', 'http://1kyawlwin1.blogspot.co.id/2015/01/blog-post_21.html?m=1');
INSERT INTO `library_book` VALUES ('1955', 'á€žá€™á€®á€¸á€¡á€•á€»á€­á€¯á€…á€„á€ºá€žá€­á€¯á€· ', '', '', 'á€á€šá€ºá€šá€°á€žá€±á€¬á€…á€¬á€¡á€¯á€•á€º', 'á€á€€á€ºá€á€­á€¯á€¸áŠ á€”á€¯á€šá€¥á€º', 'c08', 'http://mightkyaw1.blogspot.co.id/2017/03/down-facebook_27.html?m=1');
INSERT INTO `library_book` VALUES ('1963', 'á€œá€°á€„á€šá€ºá€”á€¾á€„á€ºá€·á€˜á€á€á€”á€ºá€–á€­á€¯á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€€á€œá€±á€¬á€„á€ºá€…á€¯á€¶', 'c08', 'http://myanmarbooksfree.blogspot.co.id/?m=0');
INSERT INTO `library_book` VALUES ('1964', 'á€œá€°á€„á€šá€ºá€”á€¾á€„á€ºá€·á€„á€¼á€­á€™á€ºá€¸á€á€»á€™á€ºá€¸á€›á€±á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€€á€œá€±á€¬á€„á€ºá€…á€¯á€¶', 'c08', 'http://1kyawlwin1.blogspot.co.id/2015/01/blog-post_21.html?m=1');
INSERT INTO `library_book` VALUES ('1965', 'Sample English Conversation (á€›á€¾á€„á€ºá€¸á€›á€¾á€„á€ºá€¸á€œá€±á€¸ á€¡á€‚á€ºá€œá€­á€•á€ºá€…á€€á€¬á€¸á€•á€¼á€±á€¬)', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€á€„á€ºá€¸á€Ÿá€­á€”á€ºá€¸', 'c08', 'http://mightkyaw1.blogspot.co.id/2017/03/down-facebook_27.html?m=1');
INSERT INTO `library_book` VALUES ('1966', 'á€œá€°á€žá€¬á€¸á€¡á€›á€„á€ºá€¸á€¡á€™á€¼á€…á€º á€…á€®á€™á€¶á€á€”á€ºá€·á€á€½á€²á€›á€±á€¸ á€™á€”á€ºá€”á€±á€‚á€»á€¬á€á€­á€¯á€·á€¡á€á€½á€€á€º á€œá€€á€º', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€’á€±á€«á€€á€ºá€á€¬á€‘á€½á€”á€ºá€¸á€á€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('1967', 'á€€á€­á€¯á€šá€ºá€·á€€á€­á€¯á€šá€ºá€€á€­á€¯á€šá€ºá€€á€­á€¯á€¸ á€á€­á€¯á€¸áá€žá€¬á€á€„á€º (á€¡á€™á€»á€­á€¯á€¸á€žá€™á€®á€¸á€™á€»á€¬á€¸áŠ á€¡á€œá€¯á€', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€”á€á€ºá€™á€±á€¬á€€á€ºá€¡á€”á€®á€á€»á€­á€¯', 'c08', '');
INSERT INTO `library_book` VALUES ('1968', 'á€•á€Šá€¬á€”á€­á€¯á€„á€ºá€„á€¶á€á€±á€¬á€º', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€žá€­á€”á€ºá€¸á€”á€­á€¯á€„á€º', 'c08', '');
INSERT INTO `library_book` VALUES ('1970', 'á€œá€°á€„á€šá€ºá€™á€»á€¬á€¸á€¡á€á€½á€€á€º á€…á€®á€¸á€•á€½á€¬á€¸á€›á€±á€¸á€¡á€á€½á€±á€¸á€¡á€á€±á€«á€º', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€›á€²á€™á€¼á€„á€ºá€· (á€…á€½á€”á€ºá€·á€¦á€¸á€á€®á€‘á€½á€„á€º)', 'c08', '');
INSERT INTO `library_book` VALUES ('1971', 'á€€á€»á€½á€”á€ºá€á€±á€¬á€º á€˜á€®á€…á€®á€¡á€€á€ºá€…á€º', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€·á€€á€¼á€½á€šá€º', 'c08', '');
INSERT INTO `library_book` VALUES ('1977', 'á€’á€±á€«á€€á€ºá€á€¬á€›á€½á€¾á€±á€žá€½á€¾á€±á€¸á€”á€¾á€„á€ºá€· á€™á€•á€”á€ºá€¸á€™á€¾á€¯á€¶', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€œá€€á€ºá€¬á€›á€Šá€ºá€€á€»á€±á€¬á€º', 'c08', '');
INSERT INTO `library_book` VALUES ('1979', 'á€†á€±á€¸á€á€«á€¸á€™á€•á€« á€”á€±á€‘á€­á€¯á€„á€ºá€…á€¬á€¸á€žá€±á€¬á€€á€ºá€™á€¾á€¯á€•á€¯á€¶á€…á€¶á€–á€¼á€„á€ºá€· á€€á€»á€”á€ºá€¸á€™á€¬á€›á€±á€¸á€…á€±á', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€¦á€¸á€œá€¾á€™á€¼á€„á€ºá€·', 'c08', '');
INSERT INTO `library_book` VALUES ('1980', 'á€á€½á€²á€–á€€á€ºá€™á€žá€¯á€¶á€¸á€žá€„á€ºá€·á€žá€±á€¬ á€†á€±á€¸á€á€«á€¸á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', '', 'c08', '');
INSERT INTO `library_book` VALUES ('1983', 'á€€á€»á€±á€¸á€‡á€°á€¸á€•á€¼á€¯á á€™á€±á€™á€±á€·á€€á€­á€¯ á€€á€¼á€Šá€ºá€·á€›á€¾á€¯á€…á€±á€¬á€„á€ºá€·á€›á€¾á€±á€¬á€€á€ºá€•á€«', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€”á€­á€¯á€„á€ºá€¸á€”á€­á€¯á€„á€ºá€¸á€…á€”á€±', 'c08', '');
INSERT INTO `library_book` VALUES ('1987', 'á€‡á€±á€¬á€ºá€‚á€»á€®á€œá€€á€ºá€›á€½á€±á€¸á€…á€„á€º', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€‡á€±á€¬á€ºá€‚á€»á€®', 'c08', '');
INSERT INTO `library_book` VALUES ('1988', 'á€œá€»á€¾á€­á€¯á€·á€á€¾á€€á€ºá€žá€±á€¬ á€žá€”á€ºá€¸á€€á€¼á€½á€šá€ºá€žá€°á€Œá€±á€¸á€”á€¾á€„á€ºá€· á€¡á€á€¼á€¬á€¸á€•á€»á€±á€¬á€ºá€›á€½á€¾á€„á€ºá€¡á€¬á', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€”á€­á€¯á€„á€ºá€¸á€”á€­á€¯á€„á€ºá€¸á€…á€”á€±', 'c08', '');
INSERT INTO `library_book` VALUES ('1991', 'á€˜á€¬á€€á€­á€¯á€™á€¾ á€™á€€á€¼á€±á€¬á€€á€ºá€žá€°á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€±á€¬á€„á€ºá€€á€­á€¯á€€á€­á€¯', 'c08', '');
INSERT INTO `library_book` VALUES ('2003', 'á€€á€­á€¯á€šá€ºá€€á€»á€„á€ºá€·á€á€›á€¬á€¸á€”á€¾á€„á€ºá€· á€˜á€á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€›á€±á€¸ á€¡á€œá€±á€·á€¡á€€á€»á€„á€ºá€·á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€’á€±á€«á€€á€ºá€á€¬á€žá€­á€”á€ºá€¸á€œá€½á€„á€º', 'c08', '');
INSERT INTO `library_book` VALUES ('2007', 'á€¡á€±á€¬á€„á€ºá€›á€¬á€¡á€±á€¬á€„á€ºá€€á€¼á€±á€¬á€„á€ºá€¸ á€€á€±á€¬á€„á€ºá€¸á€žá€Šá€ºá€·á€…á€€á€¬á€¸á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€’á€±á€«á€€á€ºá€á€¬á€™á€á€„á€ºá€á€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2008', 'á€…á€…á€ºá€™á€®á€¸á€™á€„á€¼á€­á€™á€ºá€¸ á€™á€¼á€€á€ºá€™á€…á€­á€™á€ºá€¸á€”á€­á€¯á€„á€ºá€žá€Šá€ºá€·á€™á€¼á€±', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€’á€±á€«á€€á€ºá€á€¬á€™á€á€„á€ºá€á€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2009', 'á€€á€»á€±á€¬á€€á€ºá€…á€›á€…á€ºá€á€²á€œá€±á€¸á€™á€»á€¬á€¸á€™á€¾á€á€…á€ºá€†á€„á€ºá€·', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€œá€€á€ºá€¬á€›á€Šá€ºá€€á€»á€±á€¬á€º', 'c08', '');
INSERT INTO `library_book` VALUES ('2010', 'á€™á€‚á€ºá€œá€¬á€›á€¾á€­á€žá€±á€¬ á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€™á€¾á€¯', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€œá€€á€ºá€¬á€›á€Šá€ºá€€á€»á€±á€¬á€º', 'c08', '');
INSERT INTO `library_book` VALUES ('2050', 'á€€á€¬á€™á€á€á€¾á€¬', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€¦á€¸á€”á€¯', 'c08', '');
INSERT INTO `library_book` VALUES ('2051', 'á€•á€„á€ºá€œá€šá€ºá€”á€¾á€„á€ºá€·á€á€°á€žá€±á€¬ á€™á€­á€”á€ºá€¸á€™á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€‚á€»á€°á€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2052', 'á€”á€¶á€›á€¶á á€¡á€á€¼á€¬á€¸á€á€…á€ºá€–á€€á€º', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€‚á€»á€°á€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2058', 'á€á€€á€ºá€˜á€¯á€”á€ºá€€á€¼á€®á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', '(á€žá€­á€”á€ºá€¸á€–á€±) á€žá€­á€”á€ºá€¸á€–á€±á€™á€¼á€„á€ºá€·', 'c08', '');
INSERT INTO `library_book` VALUES ('2064', 'á€žá€¯á€á€™á€¼á€­á€¯á€·á€á€±á€¬á€º', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€¼á€žá€”á€ºá€¸á€á€„á€ºá€·', 'c08', '');
INSERT INTO `library_book` VALUES ('2066', 'á€›á€¾á€¬á€¸á€œá€±á€¬á€·á€Ÿá€¯á€™á€ºá€¸á á€™á€¾á€á€ºá€á€™á€ºá€¸á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€¼á€žá€”á€ºá€¸á€á€„á€ºá€·', 'c08', '');
INSERT INTO `library_book` VALUES ('2075', 'á€•á€¯á€‚á€¶á€™á€¾ á€žá€¬á€žá€”á€¬á€·á€’á€«á€šá€€á€¬á€€á€¼á€®á€¸á€™á€»á€¬á€¸á€”á€¾á€„á€ºá€· á€žá€¬á€žá€”á€­á€€á€¡á€†á€±á€¬á€€á€ºá€¡á€¡á€¯á€¶á€™á€»á€¬á', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€’á€±á€«á€€á€ºá€á€¬á€™á€á€„á€ºá€á€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2076', 'á€‘á€€á€ºá€™á€¼á€€á€ºá€‘á€°á€¸á€á€»á€½á€”á€ºá€žá€°á€á€­á€¯á€·á á€”á€¾á€¯á€á€ºá€‘á€½á€€á€ºá€…á€€á€¬á€¸á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€’á€±á€«á€€á€ºá€á€¬á€™á€á€„á€ºá€á€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2079', 'á€…á€¥á€ºá€¸á€…á€¬á€¸á€á€¼á€„á€ºá€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€–á€±á€™á€¼á€„á€ºá€·', 'c08', '');
INSERT INTO `library_book` VALUES ('2080', 'á€€á€¼á€­á€¯á€¸á€€á€¼á€¬á€á€±á€¬á€„á€ºá€•á€¶á€á€á€ºá€žá€¶', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€œá€€á€ºá€¬á€›á€Šá€ºá€€á€»á€±á€¬á€º', 'c08', '');
INSERT INTO `library_book` VALUES ('2082', 'á€œá€±á€œá€½á€„á€ºá€·á€žá€°', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€¼á€žá€”á€ºá€¸á€á€„á€ºá€·', 'c08', '');
INSERT INTO `library_book` VALUES ('2083', 'á€“á€«á€¸á€á€±á€¬á€„á€ºá€€á€­á€¯á€€á€»á€±á€¬á€ºá á€™á€®á€¸á€•á€„á€ºá€œá€šá€ºá€€á€­á€¯á€–á€¼á€á€ºá€™á€Šá€º', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€¼á€žá€”á€ºá€¸á€á€„á€ºá€·', 'c08', '');
INSERT INTO `library_book` VALUES ('2084', 'á€žá€™á€­á€¯á€„á€ºá€¸á€…á€€á€¬á€¸ á€•á€”á€ºá€¸á€…á€€á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€¼á€žá€”á€ºá€¸á€á€„á€ºá€·', 'c08', '');
INSERT INTO `library_book` VALUES ('2086', 'á€œá€°á€á€­á€¯á€„á€ºá€¸á€¡á€á€½á€€á€ºá€˜á€á€á€…á€ºá€žá€€á€ºá€á€¬ á€€á€»á€”á€ºá€¸á€™á€¬á€›á€±á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€’á€±á€«á€€á€ºá€á€¬á€™á€±á€¬á€„á€ºá€™á€±á€¬á€„á€ºá€Šá€­á€¯', 'c08', '');
INSERT INTO `library_book` VALUES ('2087', 'á€…á€…á€ºá€€á€­á€¯á€šá€ºá€á€½á€±á€·á€¡á€á€½á€±á€·á€¡á€€á€¼á€¯á€¶á€”á€¾á€„á€ºá€· á€¡á€á€½á€±á€¸á€á€±á€«á€º á€†á€±á€¬á€„á€ºá€¸á€•á€«á€¸á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€›á€½á€¾á€±á€¥á€’á€±á€«á€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2088', 'á€á€á€ºá€œá€²á€á€±á€¬á€ºá€›á€½á€¾á€±á€•á€¯á€†á€­á€¯á€¸ á€á€”á€ºá€¸á€‘á€­á€¯á€¸á€œá€­á€¯á€· á€€á€¼á€­á€¯á€™á€šá€º', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€á€„á€ºá€á€„á€ºá€‘á€°á€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2089', 'á€žá€»á€¾á€±á€¬á€„á€ºá€•á€±á€…á€°á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€á€„á€ºá€á€„á€ºá€‘á€°á€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2091', 'á€›á€±á€€á€”á€ºá€žá€¬ á€€á€¼á€¬á€á€­á€¯á€„á€ºá€¸á€¡á€±á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€±á€á€„á€ºá€¸á€™á€¼á€„á€ºá€·', 'c08', '');
INSERT INTO `library_book` VALUES ('2100', 'á€€á€»á€½á€”á€ºá€™á€–á€±á€–á€±', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€¡á€±á€¬á€„á€ºá€†á€”á€ºá€¸á€…á€¯á€€á€¼á€Šá€º', 'c08', '');
INSERT INTO `library_book` VALUES ('2103', 'á€•á€­á€¯á€™á€­á€¯á€€á€±á€¬á€„á€ºá€¸á€™á€½á€”á€ºá€žá€±á€¬ á€˜á€á€”á€±á€”á€Šá€ºá€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€Ÿá€­á€”á€ºá€¸á€œá€á€º', 'c08', '');
INSERT INTO `library_book` VALUES ('2105', 'á€†á€¶á€€á€±á€žá€¬á€¡á€œá€¾á€”á€¾á€„á€ºá€· á€€á€»á€”á€ºá€¸á€™á€¬á€›á€±á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€’á€±á€«á€€á€ºá€á€¬á€á€„á€ºá€™á€±á€¬á€„á€ºá€œá€½á€„á€º(Fame)', 'c08', '');
INSERT INTO `library_book` VALUES ('2106', 'á€€á€¼á€€á€ºá€¥á€”á€¾á€„á€ºá€· á€€á€»á€”á€ºá€¸á€™á€¬á€›á€±á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€’á€±á€«á€€á€ºá€á€¬á€á€„á€ºá€™á€±á€¬á€„á€ºá€œá€½á€„á€º(Fame)', 'c08', '');
INSERT INTO `library_book` VALUES ('2109', 'á€¡á€¬á€€á€¬á€žá€™á€¾á€á€ºá€á€™á€ºá€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€á€±á€¬á€ºá€€á€±á€¬á€„á€ºá€¸á€™á€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2124', 'á€•á€¯á€‚á€¶á€žá€°á€›á€²á€€á€±á€¬á€„á€ºá€¸á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€žá€±á€¬á€ºá€á€¬á€†á€½á€±', 'c08', '');
INSERT INTO `library_book` VALUES ('2130', 'á€™á€»á€¾á€±á€¬á€ºá€œá€„á€ºá€·á€á€»á€€á€ºá€”á€¾á€„á€ºá€· á€¡á€á€¼á€¬á€¸á€™á€»á€€á€ºá€”á€¾á€¬á€–á€¯á€¶á€¸á€†á€±á€¬á€„á€ºá€¸á€•á€«á€¸á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€‚á€»á€°á€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2131', 'á€€á€»á€±á€¬á€ºá€Ÿá€­á€”á€ºá€¸á€œá€­á€¯á€·á€”á€¬á€™á€Šá€ºá€€á€¼á€®á€¸á€á€²á€· á€œá€°á€á€…á€ºá€šá€±á€¬á€€á€º', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€¡á€±á€¬á€„á€ºá€žá€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2133', 'á€€á€­á€¯á€šá€ºá€€á€»á€„á€ºá€·á€”á€¾á€„á€ºá€· á€•á€Šá€¬', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€¡á€±á€¬á€„á€ºá€žá€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2134', 'á€™á€¼á€­á€¯á€„á€º', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€’á€‚á€¯á€”á€ºá€á€¬á€›á€¬', 'c08', '');
INSERT INTO `library_book` VALUES ('2139', 'á€˜á€¬á€žá€¬á€”á€¾á€„á€ºá€·á€…á€¬á€•á€± á€…á€¬á€•á€±á€”á€¾á€„á€ºá€·á€˜á€¬á€žá€¬', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€±á€¬á€„á€ºá€á€„á€ºá€™á€„á€º(á€“á€”á€¯á€–á€¼á€°)', 'c08', '');
INSERT INTO `library_book` VALUES ('2150', 'á€…á€½á€”á€ºá€·á€¦á€¸á€á€®á€‘á€½á€„á€º á€œá€¯á€•á€ºá€„á€”á€ºá€¸á€›á€¾á€„á€ºá€á€­á€¯á€·á á€˜á€á€•á€¯á€¶á€…á€¶', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€¦á€¸á€€á€»á€±á€¬á€ºá€Šá€½á€¾á€”á€ºá€·', 'c08', '');
INSERT INTO `library_book` VALUES ('2153', 'á€…á€­á€á€ºáá€–á€­á€…á€®á€¸á€™á€¾á€¯á€€á€­á€¯ á€œá€»á€±á€¬á€·á€á€»á€”á€Šá€ºá€¸á€™á€»á€¬á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€’á€±á€«á€€á€ºá€á€¬á€žá€­á€”á€ºá€¸á€œá€½á€„á€º', 'c08', '');
INSERT INTO `library_book` VALUES ('2154', 'á€”á€„á€ºá€œá€¬á€¸á€Ÿá€²á€· á€’á€®á€™á€­á€¯á€€á€›á€±á€…á€®á€”á€¾á€„á€ºá€· á€™á€®á€¸á€Ÿá€¯á€”á€ºá€¸á€Ÿá€¯á€”á€ºá€¸á€á€±á€¬á€€á€ºá€á€±á€¬á€·á€™á€Šá€ºá', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€†á€›á€¬á€á€”á€ºá€á€…á€ºá€¦á€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2155', 'á€€á€œá€±á€¸á€œá€°á€„á€šá€º á€žá€¯á€á€…á€½á€šá€ºá€…á€¯á€¶á€€á€»á€™á€ºá€¸ á€¡á€™á€±á€¸á€¡á€–á€¼á€± á…á€á€', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€±á€¬á€„á€ºá€†á€¯á€›á€¾á€„á€º', 'c08', '');
INSERT INTO `library_book` VALUES ('216', 'Compiler Design Theory', '', '', '', 'R.M. Lasrish', 'c01', '');
INSERT INTO `library_book` VALUES ('2168', 'á€™á€¼á€„á€ºá€¸á€”á€®á€•á€¯á€€á€œá€±á€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€†á€¯á€‘á€€á€º', 'c08', '');
INSERT INTO `library_book` VALUES ('2177', 'á€á€•á€ºá€žá€¬á€¸ á€›á€­á€¯á€„á€ºá€šá€”á€ºá€¡á€¬á€¸ á€€á€šá€ºá€á€„á€ºá€á€¼á€„á€ºá€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€†á€¯á€‘á€€á€º', 'c08', '');
INSERT INTO `library_book` VALUES ('219', 'Enginnering Circuit Analysis', 'Sixth Edition', '', '', 'William H.Hayt, Jr. jack E.Kammercy', 'c01', '');
INSERT INTO `library_book` VALUES ('2197', 'á€•á€”á€ºá€¸á€€á€¼á€¬á€á€á€ºá€™á€¾á€¯á€¶', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€á€„á€ºá€á€„á€ºá€‘á€°á€¸', 'c08', 'http://www.mediafire.com/?qqj0x0bwofk6oq7');
INSERT INTO `library_book` VALUES ('220', 'Database System', 'Eight Edition', '', '', 'C.J.Date', 'c07', '');
INSERT INTO `library_book` VALUES ('2200', 'á€•á€±á€€á€Šá€…á€ºá€™á€»á€¬á€¸á€†á€®á€™á€¾ á€œá€¾á€±á€€á€¬á€¸á€‘á€…á€ºá€™á€»á€¬á€¸á€†á€®á€žá€­á€¯á€·', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€±á€¬á€„á€ºá€žá€¬á€á€»á€­á€¯', 'c08', 'http://mightkyaw1.blogspot.co.id/?m=1');
INSERT INTO `library_book` VALUES ('2202', 'á€–á€¡á€±á€”á€¾á€…á€ºá€¦á€¸á€žá€„á€ºá€•á€±á€¸á€á€²á€· á€†á€„á€ºá€¸á€›á€²á€”á€Šá€ºá€¸áŠ á€á€»á€™á€ºá€¸á€žá€¬á€”á€Šá€ºá€¸', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€¼á€á€ºá€„á€¼á€­á€™á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('2203', 'á€•á€¼á€±á€¬á€•á€¼á€…á€›á€¬á€á€½á€±á€œá€² á€á€•á€¯á€¶á€€á€¼á€®á€¸(á„)', '', '', 'á€á€šá€ºá€šá€°á€…á€¬á€¡á€¯á€•á€º', 'á€™á€¬á€™á€¬á€¡á€±á€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('221', 'The Design and Analysis of Computer Algorithms', '', '', '', 'Aho, Hoperoft', 'c06', '');
INSERT INTO `library_book` VALUES ('2252', 'Cambridge English IELTS 9 with Answers', '', '', '', '', 'c09', 'http://www.qposter.com/2015/05/Download-Cambridge-Practice-Tests-For-IELTS-9-With-PDF-File-And-Audio-CD.html?m=1');
INSERT INTO `library_book` VALUES ('2254', 'Cambridge IELTS 7 Examination Papers with Answers ', '', '', '', '', 'c09', '');
INSERT INTO `library_book` VALUES ('2261', 'E_Business & E_Commerce Management', null, null, null, 'Dave Chaffey', 'c06', 'https://geomart25.files.wordpress.com/2014/05/dave-chaffey-e-business-and-e-commerce-management-strategies-4th-ed-qwerty80.pdf');
INSERT INTO `library_book` VALUES ('2262', 'Operating System Concepts', '6th Edition', null, null, 'Silberschatz, Galvin, Gagne', 'c06', 'http:/web.cecs.pdx.edu/~walpole/class/cs533/spring2006/slides/121.pdf');
INSERT INTO `library_book` VALUES ('2263', 'Java Server Programming J2EE', '1.4 Edition', null, null, null, 'c06', 'http://toc.dreamtechpress.com/toc_978-81-7722-721-5.pdf');
INSERT INTO `library_book` VALUES ('2267', 'Cambrige Objectives IELTS Intermediate ', '', '', '', 'Black, Sharp', 'c09', 'libraryBooks/Objective IELTS.pdf');
INSERT INTO `library_book` VALUES ('2268', 'Cambridge IELTS(8) with Answers', '', '', '', '', 'c09', 'https://www.docdroid.net/XyU7iwz/cambridge-ielts-8.pdf');
INSERT INTO `library_book` VALUES ('2273', 'Oxford Dictionary of Computing', '', '', '', '', 'c09', '');
INSERT INTO `library_book` VALUES ('2282', 'AI Application Programming ', 'Second Edition', '', '', 'M. Tim Jones', 'c06', 'http://www.goodreads.com/book/show/161143.AI_Application_Programming');
INSERT INTO `library_book` VALUES ('2285', 'Peer to Peer System And Applications ', '', '', '', 'Steinmetz, Wehrle (Eds)', 'c05', 'https://www.researchgate.net/publication/215753334_Peer-to-Peer-Systems_and_Applications');
INSERT INTO `library_book` VALUES ('229', 'Digital Computer Control Systems', '', '', '', 'G.S.Virk', 'c01', '');
INSERT INTO `library_book` VALUES ('2290', 'UNIX Shell Programming', '', '', '', 'Kanetkar', 'c06', 'https://www.scribd.com/mobile/document/327601334/UNIX-SHELL-Programming-pdf');
INSERT INTO `library_book` VALUES ('2300', 'Object _Oriented Database Design Clearly Explained', '', '', '', 'Harrington', 'c07', 'http://orethaukey.deviantart.com/journal/Object-Oriented-Database-Design-Clearly-Explained-310363925');
INSERT INTO `library_book` VALUES ('2301', 'XML Database and The Sematic WEB', '', '', '', 'Thuraisingham', 'c07', '');
INSERT INTO `library_book` VALUES ('2308', 'Database Systems Design, Implementation, and Management ', 'Eight Edition', '', '', 'Coronel', 'c07', 'libraryBooks/database system.pdf');
INSERT INTO `library_book` VALUES ('231', 'Modern Control Systems', '9th Edition', '', '', 'Richard C.Darf, Robert H.Bishop', 'c06', '');
INSERT INTO `library_book` VALUES ('2314', 'Modern Database Management ', 'Eight Editon', '', '', 'Haffer, Prescott, Mcfadden', 'c07', 'http://key-to-programming.blogspot.com/2015/05/modern-database-management-8th-edition.html?m=1');
INSERT INTO `library_book` VALUES ('2318', 'Mastering Database Technologies ', '', '', '', 'Bayross', 'c07', 'http://84-me433nk.medicaltraveljournal.com/page/mastering-database-technologies/');
INSERT INTO `library_book` VALUES ('232', 'Neural Networks', '', '', '', 'Robert Callan', 'c05', 'https://books.google.com.mm/books/about/');
INSERT INTO `library_book` VALUES ('2321', 'Java Data Object', '', '', '', 'Jordan , Russell', 'c06', 'http://www.oracle.com/technetwork/java/index-jsp-135919.html       JDO');
INSERT INTO `library_book` VALUES ('2330', 'The Complete Reference J2ME', '', '', '', 'Keogh', 'c06', 'libraryBooks/2330.pdf');
INSERT INTO `library_book` VALUES ('2334', 'Practical ASP', '', '', '', 'Bayross', 'c06', 'https://books.google.com.mm/books/about/Practical_Asp.html?id=MESSAAAACAAJ&redir_esc=y');
INSERT INTO `library_book` VALUES ('235', 'CP/M Software', '', '', '', 'MC Graw Hill', 'c06', '');
INSERT INTO `library_book` VALUES ('236', 'Introduction to Business Data Processing', '', '', '', 'Lawrence S.Oricia', 'c06', '');
INSERT INTO `library_book` VALUES ('238', 'Information Systems Concepts For Management', '', '', '', 'Henry C.Lrras. Jr', 'c06', '');
INSERT INTO `library_book` VALUES ('251', 'Internetworking With TCP/IP ', 'Second Edition', '', '', 'Douglas E.COMER', 'c05', 'https://books.google.com.mm/books/about/Internetworking_with_TCP_IP_IP.html?id=');
INSERT INTO `library_book` VALUES ('255', 'Internetworking with TCP/IP ', 'Fourth Edition', '', '', 'Douglus E. Comer', 'c05', '');
INSERT INTO `library_book` VALUES ('258', 'Digital Image Processing', '', '', '', 'Roquel C.gonzalet, Richarel E', 'c01', '');
INSERT INTO `library_book` VALUES ('270', 'Programming Language', 'International Editio', '', '', 'Allen', 'c06', '');
INSERT INTO `library_book` VALUES ('349', 'Essential of System Analysi and Design', 'Second Edition', '', '', 'Valacich George Hoffer', 'c06', '');
INSERT INTO `library_book` VALUES ('351', 'Artifficial Intelligence', '', '', '', '', 'c06', '');
INSERT INTO `library_book` VALUES ('43', 'An Introduction To Database Systems', 'Sixth Edition', '', '', 'C.J.Date', 'c07', '');
INSERT INTO `library_book` VALUES ('498', 'Oxford English For Computing', '', '', '', 'Keith Boechner, p.Charles Brown', 'c09', '');
INSERT INTO `library_book` VALUES ('499', 'Information System', '', '', '', '', 'c06', '');
INSERT INTO `library_book` VALUES ('508', 'Programmin Language', 'Fourth Edition', '', '', 'Robert W.Sebesta', 'c06', '');
INSERT INTO `library_book` VALUES ('509', 'Data Mining Concepts and Techniques', '', '', '', 'Jiawei Han, Micheline Kamber', 'c06', '');
INSERT INTO `library_book` VALUES ('510', 'The Design And Analysis of Computer Algorithms', '', '', '', 'Aho/ Hopcroft/ Ullman', 'c06', '');
INSERT INTO `library_book` VALUES ('570', 'Computer Architecture And Organization', 'Eight Edition', '', '', 'John P.Hayerz', 'c06', '');
INSERT INTO `library_book` VALUES ('574', 'Advance Digital Signal Processing and Nece Reduction', 'second Edition', '', '', '', 'c01', '');
INSERT INTO `library_book` VALUES ('587', 'Database System Concepts', 'Third Edition', '', '', '', 'c07', '');
INSERT INTO `library_book` VALUES ('589', 'Principle Of Digital Audio', 'Fouth Edition', '', '', '', 'c01', '');
INSERT INTO `library_book` VALUES ('591', 'PHP And MySQL', '', '', '', '', 'c07', '');
INSERT INTO `library_book` VALUES ('666', 'Multi-Agent Fuzzy Traffic Signal Control', '', '2007', '', 'May Mya Aung', 'c10', '');
INSERT INTO `library_book` VALUES ('672', 'Configuration File Protection For Software Privacy', '', '2007', '', 'Theint Win Lai', 'c10', '');
INSERT INTO `library_book` VALUES ('676', 'Implementation Of Streamed Memory Controller For Performence Algorithm', '', '2007', '', 'Yee Yee Soe', 'c10', '');
INSERT INTO `library_book` VALUES ('677', 'An Efficient Data Transfer Protocol For Distributed Systems', '', '2007', '', 'May Thu Aung', 'c10', '');
INSERT INTO `library_book` VALUES ('680', 'Dual Pipeline Control Design', '', '', '', 'Myat Thu Kyaw Swar', 'c10', '');
INSERT INTO `library_book` VALUES ('682', 'Sensorless Control Of Stepper Motor Using Discrete Kalman Filter', '', '2007', '', 'Tin Zar Zar', 'c10', '');
INSERT INTO `library_book` VALUES ('685', 'SECURE MOBILE AGENT EXECUTION: COMPUTING WITH ENCRYPTED POLYNOMIALS', null, '2006', null, 'Myat Thet Lyar Htay', 'c10', null);
INSERT INTO `library_book` VALUES ('686', 'MOBILE AGENT-BASED LOAD-BALANCING TECHNIQUE IN DISTRIBUTED COMPUTING ', null, '2006', null, 'Cho Cho Myint', 'c10', null);
INSERT INTO `library_book` VALUES ('689', 'MOBILE AGENT-BASED OFFICE WORK FLOW SYSTEM', null, '2006', null, 'Thandar Aye', 'c10', null);
INSERT INTO `library_book` VALUES ('690', 'QUERY OPTIMIZATION USING MOBILE AGENT', null, '2006', null, 'Thandar Win', 'c10', null);
INSERT INTO `library_book` VALUES ('691', 'PARALLEL COMPUTING IN SOLVING NUMERICAL PROBLEMS USING JAVA MOBILE AGENT', null, '2006', null, 'Nyein Nyein Oo', 'c10', null);
INSERT INTO `library_book` VALUES ('692', 'DEVELOPMENT OF FINDING THE OPTIMUL TOOL PATH FOR THREE-AHIS CMC MILLING MATCHING USING GENETIC ALGORITHM', null, '2006', null, 'Thant Zin', 'c10', null);
INSERT INTO `library_book` VALUES ('693', 'PARALLEL STRING SEARCHING USING MOBILE AGENT', null, '2006', null, 'Aye Wai Oo', 'c10', null);
INSERT INTO `library_book` VALUES ('694', 'PERFORMANCE EVALUATION OF MOBILE AGENT-BASED DISTRIBUTED COMPUTING FOR ITERATIVE METHODS', null, '2006', null, 'Zar Zar Wint', 'c10', null);
INSERT INTO `library_book` VALUES ('751', 'Design and Construction of Microcontroller_Based Telephone Exchange', '', '2007', '', 'Aye Sander Win', 'c10', '');
INSERT INTO `library_book` VALUES ('820', 'Implementation Of Resuable Commnication Module For Microcontroller', '', '2007', '', 'Thiri Naing', 'c10', '');
INSERT INTO `library_book` VALUES ('822', 'Pipeline Optimization By Out_Of_Order Execution And Register Renaming', '', '2007', '', 'Thu Nandar', 'c10', '');
INSERT INTO `library_book` VALUES ('823', 'A Diagnosis System Using The SVM Approach with Ensemble Feature Selection', '', '2007', '', 'Saw Thandar Myint', 'c10', '');
INSERT INTO `library_book` VALUES ('828', 'Central Heating System Based On Fuzzy Controller', '', '2007', '', 'Ohn Mar Kyaw', 'c10', '');
INSERT INTO `library_book` VALUES ('830', 'Determing The Human Motion Path From A Video Sequence', '', '2007', '', 'Aye Pa Pa Mya', 'c10', '');
INSERT INTO `library_book` VALUES ('831', 'Multi_agent Fuzzy Traffic Signal Control', '', '2007', '', 'May Mya Aung', 'c10', '');
INSERT INTO `library_book` VALUES ('833', 'Managing Certificates Of Grid Security Infrastructure', '', '2007', '', 'May Phyo Oo', 'c10', '');
INSERT INTO `library_book` VALUES ('839', 'Configuration File Protection For Software Privacy', '', '2007', '', 'Theint Win Lai', 'c10', '');
INSERT INTO `library_book` VALUES ('90', 'Operating System', 'Fourth Edition', '', '', 'William Stallings', 'c06', '');
INSERT INTO `library_book` VALUES ('91', 'GCCE Text Books (Oxford English For omputing)', '', '', '', '', 'c09', '');
INSERT INTO `library_book` VALUES ('96', 'First Year Text Book (Technical English)', '', '', '', '', 'c09', '');
INSERT INTO `library_book` VALUES ('D(113)', 'Beginning ASP.NET 2.0 Database Beta Preview', '', '', '', 'Kacjjman Thangarathiam', 'c07', '');
INSERT INTO `library_book` VALUES ('D(114)', 'MCSE SQL Server 7 Database Design', '', '', '', 'David Besch', 'c07', '');
INSERT INTO `library_book` VALUES ('D(120)', 'Database Driven WEB Sites', '', '', '', 'Mike morrison, Joine Morrison', 'c07', '');
INSERT INTO `library_book` VALUES ('D(143)', 'Visual Basic 6Database Pragramming For Dummies', '', '', '', 'Mansfieldc', 'c07', 'libraryBooks/Visual Basic 6 Database.pdf');
INSERT INTO `library_book` VALUES ('D(150)', 'Build Your Own Home Network', '', '', '', 'Gilster and Gilster', 'c05', 'libraryBooks/Nt150.pdf');
INSERT INTO `library_book` VALUES ('D(169)', 'Guided Database Activities Using Microsoft Access', '', '', '', 'Cambridge', 'c07', '');
INSERT INTO `library_book` VALUES ('D(170)', 'Doing Objects in Visual Basic 6', '', '', '', 'Deborah Kurata', 'c06', '');
INSERT INTO `library_book` VALUES ('D(172)', 'Professional Visual Basic & Databases', '', '', '', 'Charles Willians', 'c07', 'https://www.amazon.com/Professional-Visual-Basic-6-Databases/dp/1861002025');
INSERT INTO `library_book` VALUES ('D(182)', 'SQL Server 2005 Express Edition Starter Kit', '', '', '', 'Rajesh George, Lance Delano', 'c07', '');
INSERT INTO `library_book` VALUES ('D(184)', 'Debugging Visual Basic Trouble Shooting', '', '', '', 'Jung, Kent', 'c06', '');
INSERT INTO `library_book` VALUES ('D(199)', 'Microsoft SQL Server 2000 Programming', '', '', '', 'Guerrero and Rojas', 'c07', 'libraryBooks/MicrosoftSQLserver2000.pdf');
INSERT INTO `library_book` VALUES ('D(208)', 'Database Management', '', '', '', '', 'c07', '');
INSERT INTO `library_book` VALUES ('D(222)', 'Fundamentals of Computer Networking', '', '', '', 'U Zaw Win Aung', 'c05', '');
INSERT INTO `library_book` VALUES ('D(228)', 'IC3 Basics Internet and Computing Core Certizication', '', '', '', 'AnnAmbrose, Marly Bergerud, Dr.Donald Bu', 'c06', '');
INSERT INTO `library_book` VALUES ('D(233)', 'MCSD Solution Architectures', '', '', '', 'Randy Cornish, Derek Ferguson, Denny Day', 'c01', '');
INSERT INTO `library_book` VALUES ('D(244)', 'VSAM concepts Programming and Design', '', '', '', 'Jay Ranacle, Hirday Ranqde', 'c06', '');
INSERT INTO `library_book` VALUES ('D(257)', 'MCSE, SQL Server 2000 Design Study Guiide', '', '', '', 'Marc Lsrael, J.Steven Jones', 'c07', '');
INSERT INTO `library_book` VALUES ('D(266)', 'Master Office 97 Visually', '', '', '', 'Maran Graphics', 'c01', '');
INSERT INTO `library_book` VALUES ('D(268)', 'Database Access With Visual Basic.NET', 'Third Edition', '', '', 'Jeffy p.MCManus, Jackie Goldstein, Kevin T.Price, Contributor', 'c07', '');
INSERT INTO `library_book` VALUES ('D(271)', 'MCSE, SQL Server 2000 Administration Study Guide', '', '', '', 'Lance Mortensen, Rick Sawtell, Josephl. ', 'c07', 'libraryBooks/MS Press.pdf');
INSERT INTO `library_book` VALUES ('D(274)', 'SQL Server 7 Database Design', '', '', '', 'Thomas Moore', 'c07', '');
INSERT INTO `library_book` VALUES ('D(277)', 'Solution Architectures Covers Exan 70-100', '', '', '', 'Brian Matsik', 'c01', '');
INSERT INTO `library_book` VALUES ('D(288)', 'A textBox of Strength of Material', '', '', '', 'Dr.R.K.Bansal', 'c06', '');
INSERT INTO `library_book` VALUES ('D(289)', 'A textBox of Theory of Machines', '', '', '', 'Dr.R.K.Bansal, Dr.J.S.Brar', 'c06', '');
INSERT INTO `library_book` VALUES ('D(291)', 'Programmable Logic Controllers ', 'Fourth Edition', '', '', 'Frank D.Petruzella', 'c06', '');
INSERT INTO `library_book` VALUES ('D(292)', 'Micro Electronics', 'Second Edition', '', '', 'Jacob Millman, Arvin Grabel', 'c05', 'https://www.abebooks.com/Microelectronics-Second-Edition-Arvin-Grabel-');
INSERT INTO `library_book` VALUES ('D(293)', 'Integrated Electronics Analog and Digital Circuits and Systems', '', '', '', 'Milliman, Halkias, Parikh', 'c01', 'libraryBooks/Nt293.pdf');
INSERT INTO `library_book` VALUES ('D(296)', 'Fundamental of Town Planning', '', '', '', 'G.K.Hiraskar', 'c01', '');
INSERT INTO `library_book` VALUES ('D(298)', 'Fundamental of Optical Fiber Communication', '', '', '', 'Sapna Katiyar', 'c01', '');
INSERT INTO `library_book` VALUES ('D(302)', 'Essential of Oceangraphy ', 'Tenth Edition', '', '', 'Trujillo, Thurman', 'c01', '');
INSERT INTO `library_book` VALUES ('D(305)', 'Designing for Cisco Internetwork Solutions (DESGN) Foundation Learning Guide', 'Third Edition', '', '', 'Sean Wilkins', 'c01', '');
INSERT INTO `library_book` VALUES ('D(307)', 'Official Cert Guide Cisco CCNA Routing and Switching ICND2 200-101', '', '', '', 'Wendell Odom', 'c01', '');
INSERT INTO `library_book` VALUES ('D(309)', 'Designing Cisco Network Service (ARCH) Foundation Learning Guide', 'Third Edition', '', '', 'John Tiso', 'c05', 'https://www.amazon.com/Designing-Network-Architectures-Foundation-Learning-e');
INSERT INTO `library_book` VALUES ('D(310)', 'Implementing Ciso IP Switched Networks (SWITCH) Foundation Learining Guide CCNP SWITCH 300_115', '', '', '', 'Richard Froom, Erum Frahim', 'c05', 'http://www.ciscopress.com/store/implementing-cisco-ip-switched-networks-swit');
INSERT INTO `library_book` VALUES ('D(311)', 'Implementing Cisco IP Routing(ROUTE) Foundation Learning Guide CCNP ROUTE 300-101', '', '', '', 'Diane Teare, Bob Vachan, Rick Graziani', 'c01', '');
INSERT INTO `library_book` VALUES ('D(312)', 'Troubleshooting and Maintaining Cisco IP Networks (TSHOOT) Foundation Learning Guide CCNP TSHOOT 300_135', '', '', '', 'Amir Ranjbar', 'c05', 'http://www.ciscopress.com/store/troubleshooting-and-maintaining-cisco-ip-net');
INSERT INTO `library_book` VALUES ('D(313)', 'Official Cert Guide CCIE Routing and Switching V 5.0 Vol.2 Fifth Edition', '', '', '', 'Narbik Kocharians, Terry vinson', 'c05', 'http://www.ciscopress.com/store/ccie-routing-and-switching-v5.0-official-cer');
INSERT INTO `library_book` VALUES ('D(314)', 'Official Cert Guide CCIE Routing and Switching V.5.0 Vol.1', 'Fifth Edition', '', '', 'Narbik Kocharians, Peter Paluch', 'c01', '');
INSERT INTO `library_book` VALUES ('D(315)', 'IP Routing On Cisco IOS, IOS XE, and IOS XR', '', '', '', 'Brad Edge Worth, Aaron Foss, Ramiro Garza Rios', 'c05', 'https://www.abebooks.com/servlet/BookDetailsPL?');
INSERT INTO `library_book` VALUES ('D(316)', 'Cloud Computing Automating the Virtualized Data Center', '', '', '', 'Ven Kata Josyula, Malcohm Orr, Greg Page', 'c05', 'libraryBooks/Nt316.pdf');
INSERT INTO `library_book` VALUES ('D(317)', 'Designing Networks and Services for the Colua Delivering Business_Grade Could Applications and Services', '', '', '', 'Huseni Saboowala, Mu hammad Abid Sudhi Modali', 'c05', 'http://www.ciscopress.com/store/designing-networks-and-services-for-the-clou');
INSERT INTO `library_book` VALUES ('D(319)', 'CCIE Professional Development Network Security Technologies and Solutions A Comprehensive, all_in_one Reference for Cisconetwork Security', '', '', '', 'Yusuf Bhaij', 'c05', 'http://www.ciscopress.com/store/network-security-technologies-and-solutions-');
INSERT INTO `library_book` VALUES ('DB_1', 'A Decade Of Oracle Database Manageability', '', '', '', 'Pete Belknap, John Beresniewicz, Beloit Dageville, Karl Dias, Uri Shaft, Khaled ', 'c07', 'libraryBooks/A Decade of oracle database manageability.pdf');
INSERT INTO `library_book` VALUES ('DB_10', 'Introduction To SQL Mastering The Relational Database Language ', 'Fourth Edition', '', '', 'Rick F. Ven Der Lans', 'c07', 'libraryBooks/DB10.pdf');
INSERT INTO `library_book` VALUES ('DB_11', 'Microsoft SQL Server and VMware Virtul Infrastructure', '', '', '', '', 'c07', 'libraryBooks/DB11.pdf');
INSERT INTO `library_book` VALUES ('DB_12', 'Microsoft Visual Basic 2010 Step by Step', '', '', '', 'Michael Halvorsol', 'c07', 'libraryBooks/DB12.pdf');
INSERT INTO `library_book` VALUES ('DB_13', 'Introducing Microsoft SQL Server 2012 ', '', '', '', 'Ross Mistry, Stacia Misner', 'c07', 'libraryBooks/DB13.pdf');
INSERT INTO `library_book` VALUES ('DB_14', 'Microsoft SQL Server 2005 Analysis Service Step By Step', '2005 Edition', '', '', 'Reed Jacobson, Stacia Misner, Hidachi Consulting', 'c07', 'libraryBooks/DB14.pdf');
INSERT INTO `library_book` VALUES ('DB_15', 'Microsoft Visual Basic 2013 Step by Step', '', '', '', 'Michael Halvoyson', 'c06', 'libraryBooks/DB15.pdf');
INSERT INTO `library_book` VALUES ('DB_16', 'Migration From SQL Server 2005', '', '', '', 'Andrew Snodgrass', 'c07', 'libraryBooks/DB16.pdf');
INSERT INTO `library_book` VALUES ('DB_17', 'Oracle Database 10g The Self_Managing Database', '', 'Nov 2003', '', '', 'c07', 'libraryBooks/DB17.pdf');
INSERT INTO `library_book` VALUES ('DB_18', 'Oracle Database 10g Automatic Storage Management Over View and Technical Best Practices', '', 'May 2007', '', 'Nitin Velgurlekar', 'c07', 'libraryBooks/DB18.pdf');
INSERT INTO `library_book` VALUES ('DB_2', 'Oracle Advanced SQL Tuning Features of Oracle Database 11g', '', '', '', 'Peter Belknap, Sergey Koltakov, Jack Raitto', 'c07', 'libraryBooks/advanced SQL tuning features of oracle databqase 11g.pdf');
INSERT INTO `library_book` VALUES ('DB_20', 'Oracle Database Concepts 10g', '', 'Oct 2005', '', '', 'c07', 'libraryBooks/DB20.pdf');
INSERT INTO `library_book` VALUES ('DB_21', 'Oracle Database SQL Reference 10g ', '', 'Dec 2005', '', '', 'c07', 'libraryBooks/DB21.pdf');
INSERT INTO `library_book` VALUES ('DB_22', 'Oracle Essential And Oracle Database 10g', 'Third Editon', '', '', 'Rick Greenwald ,Robert Stackowiak, Jonatban Stern', 'c07', 'libraryBooks/DB22.pdf');
INSERT INTO `library_book` VALUES ('DB_23', 'Oracle Essentials', 'Fifth Edition', '', '', 'Rick Greenwald', 'c07', 'libraryBooks/DB23.pdf');
INSERT INTO `library_book` VALUES ('DB_24', 'Oracle Essential', '', '', '', 'Rick Greenwald', 'c07', 'libraryBooks/DB24.pdf');
INSERT INTO `library_book` VALUES ('DB_25', 'Visual Basic And Database', '', '', '', '', 'c07', 'libraryBooks/DB25.pdf');
INSERT INTO `library_book` VALUES ('DB_3', 'Automatic Performence Diagnosis and Tuning In Oracle', '', '', '', 'Karl Dias, Mark Ramacher, Uri Shaft', 'c07', 'libraryBooks/DB3.pdf');
INSERT INTO `library_book` VALUES ('DB_4', 'Automatic SQL Tuning In Oracle 10g', '', '', '', 'Benoit Dageville, Dinesh Das, Karl Dias', 'c07', 'libraryBooks/DB4.pdf');
INSERT INTO `library_book` VALUES ('DB_5', 'Beginning SQL Server 2012 For Developers', 'Third Edition', '', '', 'Rovin Dewson', 'c07', 'libraryBooks/DB5.pdf');
INSERT INTO `library_book` VALUES ('DB_6', 'Microsoft SQL Sever 2008 Programming', '', '', '', 'Robert Vieira', 'c07', 'libraryBooks/DB6.pdf');
INSERT INTO `library_book` VALUES ('DB_7', 'Database Design and Programming with SQL', '', '', '', '', 'c07', 'libraryBooks/DB7.pdf');
INSERT INTO `library_book` VALUES ('DB_8', 'Database Performance With Oracle Database 10g', '', '', '', 'Herbe Lejeune', 'c07', 'libraryBooks/DB8.pdf');
INSERT INTO `library_book` VALUES ('DB_9', 'Introducing Microsoft SQL Server 2008 R2', '', '', '', 'Ross and Stacia mIsnel', 'c07', 'libraryBooks/DB9.pdf');
INSERT INTO `library_book` VALUES ('E(1)', 'Cambridge Practice Tests For IELTS1', '', '', '', '', 'c09', 'http://www.qposter.com/2015/05/Download-Cambridge-Practice-Tests-For-IELTS-1-10-With-PDF-File-Audio-CD-And-Answers.html?m=1');
INSERT INTO `library_book` VALUES ('E(10)', 'Cambridge Practice Tests For IELTS 10', '', '', '', '', 'c09', 'http://www.qposter.com/2015/05/Download-Cambridge-Practice-Tests-For-IELTS-1-10-With-PDF-File-Audio-CD-And-Answers.html?m=1');
INSERT INTO `library_book` VALUES ('E(2)', 'Cambridge Practice Tests For IELTS 2', '', '', '', '', 'c09', 'http://www.qposter.com/2015/05/Download-Cambridge-Practice-Tests-For-IELTS-1-10-With-PDF-File-Audio-CD-And-Answers.html?m=1');
INSERT INTO `library_book` VALUES ('E(3)', 'Cambridge Practice Tests For IELTS 3', '', '', '', '', 'c09', 'http://www.qposter.com/2015/05/Download-Cambridge-Practice-Tests-For-IELTS-1-10-With-PDF-File-Audio-CD-And-Answers.html?m=1');
INSERT INTO `library_book` VALUES ('E(4)', 'Cambridge Practice Tests For IELTS 4', '', '', '', '', 'c09', 'http://www.qposter.com/2015/05/Download-Cambridge-Practice-Tests-For-IELTS-1-10-With-PDF-File-Audio-CD-And-Answers.html?m=1');
INSERT INTO `library_book` VALUES ('E(5)', 'Cambridge Practice Tests For IELTS 5', '', '', '', '', 'c09', 'http://www.qposter.com/2015/05/Download-Cambridge-Practice-Tests-For-IELTS-1-10-With-PDF-File-Audio-CD-And-Answers.html?m=1');
INSERT INTO `library_book` VALUES ('E(6)', 'Cambridge Practice Tests For IELTS 6', '', '', '', '', 'c09', 'http://www.qposter.com/2015/05/Download-Cambridge-Practice-Tests-For-IELTS-1-10-With-PDF-File-Audio-CD-And-Answers.html?m=1');
INSERT INTO `library_book` VALUES ('GS_1 ', 'Library System For CU(mdy) By Using Double Hashing', '', '2014-2015', '', 'Group-1', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_10', 'Inventory Control System For Electronic Shop Using Monte Carlo Simulation technique', '', '2014-2015', '', 'Group_10', 'c02', 'libraryBooks/group9.pdf');
INSERT INTO `library_book` VALUES ('GS_11', 'Student Rollcall System For Computer University (Mandalay)', '', '2014-2015', '', 'Group_11', 'c02', 'libraryBooks/group11.pdf');
INSERT INTO `library_book` VALUES ('GS_13', 'Online Order Control System For Poly-Propylene Based-On Two-Tier Architecture', '', '2014-2015', '', 'Group_13', 'c02', 'libraryBooks/group13.pdf');
INSERT INTO `library_book` VALUES ('GS_15', 'Estimating The Effort Cost Required For A Software Project', '', '2014-2015', '', 'Group_15', 'c02', 'libraryBooks/group15.pdf');
INSERT INTO `library_book` VALUES ('GS_17', 'Finding The Shortest Path For Popular Pagoda Of Bagan', '', '2014-2015', '', 'Group_17', 'c02', 'libraryBooks/group17.pdf');
INSERT INTO `library_book` VALUES ('GS_18', 'Estimation System For Population Of Myanmar ', '', '2014-2015', '', 'Group_18', 'c02', 'libraryBooks/group18.pdf');
INSERT INTO `library_book` VALUES ('GS_19', 'Maximum Sales Of FootWear Shop By Using Insertion Sort Algorithm', '', '2014-2015', '', 'Group_19', 'c02', 'libraryBooks/group19.pdf');
INSERT INTO `library_book` VALUES ('GS_2', 'Simulation Of Queue Based System For Dental Clinic', '', '2014-2015', '', 'Group_2', 'c02', 'libraryBooks/group2.pdf');
INSERT INTO `library_book` VALUES ('GS_20', 'Decision Making Systems Of Diagnoses For Diabetes', '', '2014-2015', '', 'Group_20', 'c02', 'libraryBooks/group20.pdf');
INSERT INTO `library_book` VALUES ('GS_21', 'Decision Making For The Production Planning By Using /discounted Cash_Flow Method', '', '2014-2015', '', 'Group-21', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_22', 'Finding Shortest Path For Pagodas In Taunggyi division Using Recursive best_first Search(RBFS)', '', '2014-2015', '', 'Group-22', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_23', 'Constraint_Based Recommendation System For Purchasing Laptops', '', '2014-2015', '', 'Group-23', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_25', 'Stock Control System For Petrol Station', '', '2014-2015', '', 'Group-25', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_26', 'Online Sale System For Motorcycle Using Three Tier Architecture', '', '2014-2015', '', 'Group-26', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_27', 'Information Of Patient Data From Data Warehouse Using Online Analytical Processing (OLAP)', '', '2014-2015', '', 'Group-27', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_29', '/air Ticket Reservation System', '', '2014-2015', '', 'Group-29', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_3', 'Online Shopping For Medicine Using Two_Tier Architecture ', '', '2014-2015', '', 'Group_3', 'c02', 'libraryBooks/group3.pdf');
INSERT INTO `library_book` VALUES ('GS_31', 'University Timetabling System Using Constrant Satisfication Problem (CSP) Concept', '', '2014-2015', '', 'Group-31', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_32', 'Forecating On Digital Camera Sales and Inventory System', '', '2014-2015', '', 'Group-32', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_33', 'Optimal Route Finding For Famous Places In Mandalay BY Using A* Search Algorithm', '', '2014-2015', '', 'Group-33', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_34', 'Information System Using Indexing Method On Personal Finance For Serving Machine Selling Company', '', '2014-2015', '', 'Group-34', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_35', 'To Solve The Maximization Problem Using Simplex Method For Furniture Manufacture ', '', '2014-2015', '', 'Group-35', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_36', 'Saving And Loan System For CUmdy) Using Normalization Method', '', '2014-2015', '', 'Group-36', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_37', 'Estate Agency By Using Depth_limitted Search', '', '2014-2015', '', 'Group-37', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_39', 'Nagar Literacy Book Center Using Entity Realtionship Approach Based On Conceptual Modeling', '', '2014-2015', '', 'Group-3', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_4', 'A System For Bank Employement Using Model Based Reflex Agent', '', '2014-2015', '', 'Group-4', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_41', 'Decision support For Calculating Maximize Profit Crops By Using Graphical Method', '', '2014-2015', '', 'Group-41', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_42', 'Query Processing System For Mandalay Directory', '', '2014-2015', '', 'Group-42', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_43', 'Information System For Last Vehicle Licence By Using SnowFlake Schema ', '', '2014-2015', '', 'Group-43', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_45', 'Data Mart Processing For Toll Plaza Using Extraction-Transformation-Loading (ETL) Process', '', '2014-2015', '', 'Group-45', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_46', 'Simulation  For Customer Scheduling By Using SHORTEST REMAINTING TIME (SRI)', '', '2014-2015', '', 'Group-46', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_47', 'Web_Based Learning system Using Learning Gent', '', '2014-2015', '', 'Group-47', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_48', 'Simulation Of AIM System Using UML Class Diagram', '', '2014-2015', '', 'Group-48', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_49', 'Construction Of English_Myanmar Dictionary By Using Lexicagraphic Algorithm', '', '2014-2015', '', 'Group-49', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_5', 'Datermining The Optimul Number of Phone Repairmen ', '', '2014-2015', '', 'Group_5', 'c02', 'libraryBooks/group5.pdf');
INSERT INTO `library_book` VALUES ('GS_50', 'Finding Famous pagodas And Popular Places In Myanmar By Using Binary Search', '', '2014-2015', '', 'Group-50', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_6', 'Information System For Emergency Services By Using Iterative Deepening Depth-First Search', '', '2014-2015', '', 'Group-6', 'c02', '');
INSERT INTO `library_book` VALUES ('GS_7', 'Online Enrollment System For Matriculated Students ', '', '2014-2015', '', 'Group_7', 'c02', 'libraryBooks/group7.pdf');
INSERT INTO `library_book` VALUES ('GS_8', 'Online Shopping For Clothing By Using Linear Search', '', '2014-2015', '', 'Group_8', 'c02', 'libraryBooks/group8.pdf');
INSERT INTO `library_book` VALUES ('GS_9', 'Hotel Booking System Using Divided And Conquer Method', '', '2014-2015', '', 'Group-9', 'c02', '');
INSERT INTO `library_book` VALUES ('GT_1', 'Design of 2_bit Arithmetic Logic Unit', '', '2014-2015', '', 'Group_1', 'c03', 'libraryBooks/group1.pdf');
INSERT INTO `library_book` VALUES ('GT_10', 'Automatic Water Level Controller ', '', '2014-2015', '', 'Group-10', 'c03', '');
INSERT INTO `library_book` VALUES ('GT_11', 'Music Genre Classification Based On Combination Of Fourier Transform And Logarithmic Methods', '', '2014-2015', '', 'Group-11', 'c03', '');
INSERT INTO `library_book` VALUES ('GT_12', 'Automatic Light Switching Using Light Depending Resistor', '', '2014-2015', '', 'Group_12', 'c03', 'libraryBooks/group12.pdf');
INSERT INTO `library_book` VALUES ('GT_13', 'Object Counting system PIC', '', '2014-2015', '', 'Group-13', 'c03', '');
INSERT INTO `library_book` VALUES ('GT_3', 'Automobile Parking Counting System Using Counters And 7_Segement ', '', '2014-2015', '', 'Group-3', 'c03', '');
INSERT INTO `library_book` VALUES ('GT_35', 'To Solve The Maximization Problem Using Simplex Method For Furniture Manufacture', '', '2014-2015', '', 'Group-35', 'c03', '');
INSERT INTO `library_book` VALUES ('GT_4', 'High And Low Voltage Cutoff With Alarm ', '', '2014-2015', '', 'Grouo_4', 'c03', 'libraryBooks/group4.pdf');
INSERT INTO `library_book` VALUES ('GT_5', 'Slide In And Out Switch Control System', '', '2014-2015', '', 'Group-5', 'c03', '');
INSERT INTO `library_book` VALUES ('GT_6', 'Voltage Regulator Based On Electronic Device', '', '2014-2015', '', 'Group_6', 'c03', 'libraryBooks/group6.pdf');
INSERT INTO `library_book` VALUES ('GT_7', 'Head Decting And Automatic Cooling Fan', '', '2014-2015', '', 'Group-7', 'c03', '');
INSERT INTO `library_book` VALUES ('GT_8', 'Electonic Voting Machine [EVM]', '', '2014-2015', '', 'Group-8', 'c03', '');
INSERT INTO `library_book` VALUES ('GT_9', 'Traffic Light Control System', '', '2014-2015', '', 'Group_9', 'c03', 'libraryBooks/group10.pdf');
INSERT INTO `library_book` VALUES ('H_1', 'Advances In Computer Science And Enginnering Vol 23', '', '2006', '', 'Alexander gelbukh, Sergio Suarez Guerra', 'c01', 'libraryBooks/1784 Vol23.pdf');
INSERT INTO `library_book` VALUES ('H_2', 'Software Quality Enginnering Where To Find It in Software Engineering Body Of Knowledge( SWEBOK)', '', '', '', 'Witond Suryn, Anaben Stambollian', 'c01', 'libraryBooks/1807.pdf');
INSERT INTO `library_book` VALUES ('H_3', 'Digital Signatures In a PDF', '', '', '', '', 'c01', 'libraryBooks/Digital Signatures.pdf');
INSERT INTO `library_book` VALUES ('L(1137)', 'Implementation Of Water Tap Control System', '', '2013', '', 'Hnin Lei May Phyu', 'c11', '');
INSERT INTO `library_book` VALUES ('L(1148)', 'Solving Transportation Problem Using Modified Distribution (MODI) method', '', '2013', '', 'Nilar Phyo Wai', 'c11', '');
INSERT INTO `library_book` VALUES ('L(1158)', 'Performance Evaluation Of Two Supervised Clustering Algorithms', '', '2013', '', 'Ei Ei Aung', 'c11', '');
INSERT INTO `library_book` VALUES ('L(1170)', 'Computer Aided System Using Fuzzy Logic For The Ability Of Preschooler', '', '2013', '', 'Nay Mya Say', 'c11', '');
INSERT INTO `library_book` VALUES ('L(1175)', 'Implementation Of Online Book Shop Using Generalized Sequential Pattern Mining Algorithm', '', '2013', '', 'Hanni Cho Htwe Aung', 'c11', '');
INSERT INTO `library_book` VALUES ('L(1216)', 'Finding Shortest Paths And Supporting Information In Myanmar', '', '2013', '', 'Mon Mon Thaw', 'c11', '');
INSERT INTO `library_book` VALUES ('L(1220)', 'Redundant Papers Search Using Longest Common Sub_String', '', '2013', '', 'Win Lai Oo', 'c11', '');
INSERT INTO `library_book` VALUES ('L(1238)', 'Signals and Systems', '', '', '', '', '', '');
INSERT INTO `library_book` VALUES ('L(1321)', 'Technical English', '', '', '', '', 'c09', '');
INSERT INTO `library_book` VALUES ('L(1326)', 'Modern Complier Design', 'Second Edition', '', 'á€›á€¯á€¶á€¸á€á€»á€¯á€•á€ºá€™á€¾á€•á€±á€¸á€•á€­á€¯á€·', 'Gorine. Van Roeswijk.Bal', 'c01', '');
INSERT INTO `library_book` VALUES ('L(1327)', 'Classical Mechanics', '', '', 'á€›á€¯á€¶á€¸á€á€»á€¯á€•á€ºá€™á€¾á€•á€±á€¸á€•á€­á€¯á€·', 'John Michael Finn', 'c01', '');
INSERT INTO `library_book` VALUES ('L(1328)', 'SIGNALS AND SYSTEMS', 'Second Edition', '', '', 'OPIENHEIM WILLSKY', 'c01', '');
INSERT INTO `library_book` VALUES ('L(1329)', 'Operating Systems Internals ans Design Principles', 'Seventh Edition', '', 'á€›á€¯á€¶á€¸á€á€»á€¯á€•á€ºá€™á€¾á€•á€±á€¸á€•á€­á€¯á€·', 'William Sitallings', 'c06', '');
INSERT INTO `library_book` VALUES ('L(1330)', 'Business Data Communication And Networking', 'Sixth Edition', '', '', 'Atgerald & Deranis', 'c05', 'https://www.amazon.com/Business-Data-Communications-Networking-12th-ebook/dph');
INSERT INTO `library_book` VALUES ('L(1331)', 'Wireless Power Transfer for Medical Microsystems', '', '', '', 'Tianjia Sur Xiang Xie Zhihua W', 'c05', 'http://www.springer.com/gp/book/9781461477013');
INSERT INTO `library_book` VALUES ('L(1346)', 'WEB Engineering', '', '', '', 'Gerti Kapplel Birgit PPbll Siegiried Reich Werfer Retschitzegger', 'c06', '');
INSERT INTO `library_book` VALUES ('L(1347)', 'Introduction To Algorithm', 'Third Edition', '', '', 'Thomas H. Cormer Charles E.Leisers Ronald L.Rivest Clifford Stein', 'c01', '');
INSERT INTO `library_book` VALUES ('L(1348)', 'Operating Systems', 'Second Edition', '', '', 'William Stallings', 'c06', '');
INSERT INTO `library_book` VALUES ('L(1349)', 'Modern Linear Control Design A Time Domain Approach', '', '', '', 'Paolo Caravar', 'c06', '');
INSERT INTO `library_book` VALUES ('L(1365)', 'Industrial Engineering FE', '', '', '', '', '', '');
INSERT INTO `library_book` VALUES ('L(1367)', 'Data Miniing Techniques', 'Third Edition', '', 'á€›á€¯á€¶á€¸á€á€»á€¯á€•á€ºá€™á€¾á€•á€±á€¸á€•á€­á€¯á€·', 'Gordon S.Linof Michael J.A.Ber', 'c06', '');
INSERT INTO `library_book` VALUES ('L(1368)', 'Introduction To Operating Research', '', '', '', 'Joseph G.Ecker Michael Kupferschmid', 'c06', '');
INSERT INTO `library_book` VALUES ('L(1370)', 'BasicEngineering Circuit', 'Third Edition', '', '', 'J.David Irwin', 'c05', 'libraryBooks/Nt1370.pdf');
INSERT INTO `library_book` VALUES ('L(1372)', 'Securoty For Telcommunication Networks', '', '', '', 'Patrick Trayno, Patrick McDanie Thomas La Parta', 'c05', 'http://www.springer.com/la/book/9780387724416');
INSERT INTO `library_book` VALUES ('L(1375)', 'TCP/IP Protocol Suite', 'Fourth Edition', '', '', 'Behrouz.A.Forouzan', 'c05', 'https://www.amazon.com/Protocol-Suite-McGraw-Hill-Forouzan-Networking/dp/007');
INSERT INTO `library_book` VALUES ('L(1405)', 'á€†á€¯á€á€±á€¬á€¬á€„á€ºá€¸á€á€½á€±á€•á€¼á€Šá€ºá€·á€–á€­á€¯á€·', '', '', 'á€’á€±á€«á€ºá€€á€¼á€Šá€ºá€™á€­á€¯á€¸á€á€­á€¯á€„á€º(Physics)', 'á€›â€‹â€‹á€±á€á€”á€½á€šá€º(á€¡á€„á€ºá€¸á€™)', 'c08', '');
INSERT INTO `library_book` VALUES ('L(1407)', 'á€¡á€™á€»á€­á€¯á€¸á€žá€¬á€¸á€á€±á€«á€„á€ºá€¸á€†á€±á€¬á€„á€º á€—á€­á€¯á€œá€ºá€¡á€±á€¬á€„á€ºá€†á€”á€ºá€¸ (á€”á€¾á€…á€ºáá€á€ á€•á€¼á€Šá€ºá€·á€¡á€‘á€', '', '', 'á€¦á€¸á€‘á€½á€”á€ºá€¸á€œá€„á€ºá€¸', 'á€€á€œá€±á€¬á€„á€ºá€…á€¯á€¶', 'c08', '');
INSERT INTO `library_book` VALUES ('L(1435)', 'á€•á€®á€™á€­á€¯á€¸á€”á€¾á€„á€ºá€¸á á€•á€®á€™á€­á€¯á€¸á€”á€¾á€„á€ºá€¸', '', '', 'á€™á€±á€¬á€„á€ºá€€á€»á€±á€¬á€ºá€‡á€„á€ºá€œá€á€º', 'á€•á€®á€™á€­á€¯á€¸á€”á€¾á€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('L(1436)', 'á€†á€±á€¬á€ºá€œá€™á€½á€”á€ºá€žá€­á€¯á€€á€º', '', '', 'á€’á€±á€«á€ºá€™á€¼á€„á€ºá€·á€™á€¼á€„á€ºá€·á€™á€±á€¬á€º', 'H.Rider Haggard', 'c08', '');
INSERT INTO `library_book` VALUES ('L(1439)', 'á€›á€„á€ºá€™á€¾á€á€…á€ºá€›á€¾á€­á€¯á€€á€º', '', '', 'á€¦á€¸á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€·á€‘á€½á€”á€ºá€¸ (á€œá€„á€ºá€¸á€á€±á€¸á€á€›á€­á€¯á€„á€º á€•á€Šá', 'á€‚á€»á€¬á€”á€šá€ºá€€á€»á€±á€¬á€ºá€™á€™á€œá€±á€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('L(1441)', 'á€œá€¯á€•á€ºá€á€»á€„á€ºá€á€¬á€œá€¯á€•á€ºá€á€½á€„á€ºá€·á€›á€¾á€­á€žá€±á€¬ á€á€­á€¯á€„á€ºá€¸á€•á€¼á€Šá€º ', '', '', 'á€¦á€¸á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€·á€‘á€½á€”á€ºá€¸ (á€œá€„á€ºá€¸á€á€±á€¸á€á€›á€­á€¯á€„á€º á€•á€Šá', 'á€¡á€€á€¼á€Šá€ºá€á€±á€¬á€º', 'c08', '');
INSERT INTO `library_book` VALUES ('L(1505)', 'á€‚á€»á€°á€¸á€œá€­á€šá€€á€º á€†á€®á€†á€¬', '', '', 'á€¦á€¸á€‘á€½á€”á€ºá€¸á€œá€„á€ºá€¸', 'á€€á€±á€¬á€„á€ºá€¸á€™á€¼á€á€ºá€™á€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('L(341)', 'á€¡á€­á€¯á€¸á€›á€¾á€­á€¯á€¸áá€¡á€€á€¼á€™á€ºá€¸á€™á€–á€€á€ºá€›á€±á€¸ á€¡á€™á€¼á€„á€º', '', '', 'á€œá€¾á€°á€’á€«á€”á€ºá€¸', 'á€¡á€±á€¬á€„á€ºá€žá€°á€›', 'c08', '');
INSERT INTO `library_book` VALUES ('L(343)', 'á€œá€€á€ºá€†á€„á€ºá€·á€€á€™á€ºá€¸á€á€²á€·á€žá€±á€¬ á€œá€¯á€•á€ºá€¡á€¬á€¸á€á€”á€ºá€–á€­á€¯á€¸', '', '', 'á€œá€¾á€°á€’á€«á€”á€ºá€¸', 'á€¡á€±á€¬á€„á€ºá€žá€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('L(355)', 'á€¡á€™á€¼á€²á€…á€®á€¸á€†á€„á€ºá€¸á€”á€±á€žá€±á€¬ á€™á€¼á€…á€ºá€á€…á€ºá€…á€„á€ºá€¸á€¡á€€á€¼á€±á€¬á€„á€ºá€¸', '', '', 'á€œá€¾á€°á€’á€«á€”á€ºá€¸', 'á€›â€‹â€‹á€±á€á€”á€½á€šá€º', 'c08', '');
INSERT INTO `library_book` VALUES ('L(356)', 'á€”á€±á€·á€…á€¥á€ºá€žá€¯á€¶á€¸ á€†á€±á€¬á€„á€ºá€•á€¯á€’á€ºá€™á€»á€¬á€¸', '', '', 'á€œá€¾á€°á€’á€«á€”á€ºá€¸', 'á€œá€°á€‘á€¯á€…á€­á€”á€ºá€á€„á€ºá€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('L(366)', 'á€žá€á€­á€”á€¾á€„á€ºá€·á€•á€¼á€±á€¬á€•á€« á€’á€±á€«á€žá€€á€­á€¯á€”á€¬á€¸á€œá€Šá€ºá€•á€« á€¡á€œá€¯á€•á€ºá€á€½á€„á€ºá€™á€½á€¾á€±á€·á€œá€»á€±á€¬á€ºá€á', '', '', 'á€œá€¾á€°á€’á€«á€”á€ºá€¸', 'á€¦á€¸á€‡á€±á€¬á€á€­á€€(á€™á€Ÿá€¬á€™á€¼á€­á€¯á€„á€ºá€á€±á€¬á€›)', 'c08', '');
INSERT INTO `library_book` VALUES ('L(371)', 'á€¦á€¸á€€á€¯á€œá€¬á€¸ á€™á€Ÿá€¬á€›á€¬á€‡á€á€„á€ºá€€á€¼á€®á€¸ (á€’á€¯á€á€­á€š)', '', '', 'á€œá€¾á€°á€’á€«á€”á€ºá€¸', 'á€¦á€¸á€€á€¯á€œá€¬á€¸', 'c08', '');
INSERT INTO `library_book` VALUES ('L(783)', 'Expert Oracle Database Architecture', '', '', '', 'Thomas Kyte', 'c07', 'libraryBooks/expert oracle.pdf');
INSERT INTO `library_book` VALUES ('L(792)', 'SQL & PL/SQL For Oracle Log Black Book', '', '', '', '', 'c07', '');
INSERT INTO `library_book` VALUES ('L(793)', 'Beginning SQl', '', '', '', 'Phul Wilton, John Colby', 'c07', 'libraryBooks/Beginning SQL.pdf');
INSERT INTO `library_book` VALUES ('L(811)', 'Mastering Oracle SQL', '', '', '', 'Misbra, Beaulieu', 'c07', 'https://www.amazon.com/Mastering-Oracle-SQL-Sanjay-Mishra/dp/0596006322');
INSERT INTO `library_book` VALUES ('L(814)', 'SQL/ PL SQL For Oracle 9i', '', '', '', 'P.S.Deshpande', 'c07', 'libraryBooks/a96540.pdf');
INSERT INTO `library_book` VALUES ('L(820)', 'Microsoft SQL Server 2005 Integration Services', '', '', '', 'Kirk Haselden', 'c07', '');
INSERT INTO `library_book` VALUES ('L(827)', 'Esay Oracle PL/SQL Pragramming', '', '', '', 'John Garmany', 'c06', '');
INSERT INTO `library_book` VALUES ('L(830)', 'Hard Core Java', '', '', '', 'Robert Simmons', 'c06', '');
INSERT INTO `library_book` VALUES ('L(834)', 'Eclipse', '', '', '', 'Steve Holzner', 'c06', '');
INSERT INTO `library_book` VALUES ('L(837)', 'Java 2 Programming Black Book', 'JDK 5 Edition', '', '', 'Holzner', 'c06', '');
INSERT INTO `library_book` VALUES ('L(838)', 'SQL Server 2005 Express Edition Starter Kit', '', '', '', 'George, Delano', 'c07', '');
INSERT INTO `library_book` VALUES ('L(839)', 'Database Systems Concepts, Design and Aplications', '', '', '', 'S.K.Singh', 'c07', '');
INSERT INTO `library_book` VALUES ('L(843)', 'The Complete Reference XML', '', '', '', 'Williamson', 'c06', '');
INSERT INTO `library_book` VALUES ('L(844)', 'HTML Black Book', '', '', '', 'Holzner', 'c06', '');
INSERT INTO `library_book` VALUES ('L(845)', 'SQL Server 2005 Bible ', '', '', '', 'Paul Nielsen', 'c07', 'http://www.wiley.com/WileyCDA/WileyTitle/productCd-0764542567.html');
INSERT INTO `library_book` VALUES ('L(850)', 'Comdex.NET 4.0 Programming Course Kit', '', '', '', 'VIKAS GUPTA', 'c06', '');
INSERT INTO `library_book` VALUES ('L(856)', 'Programming Windows', 'Fifth Edition', '', '', 'Charles Petzold', 'c06', 'libraryBooks/L(856).pdf');
INSERT INTO `library_book` VALUES ('L(858)', 'WEB Enabled Commercial Application Development', '', '', '', 'Ivanbayross', 'c06', 'http://www.goodreads.com/book/show/8715586-web-enabled-commercial-application-development-using-java-2-0');
INSERT INTO `library_book` VALUES ('L(859)', 'Microsoft SQL Server 2005 The Complete Reference', '', '', '', 'Jeffrey R.Shapiro', 'c07', '');
INSERT INTO `library_book` VALUES ('L(861)', 'The C++ Pragramming Language', 'Third Edition', '', '', 'Bjarne Stroustrup', 'c06', 'libraryBooks/L(861).pdf');
INSERT INTO `library_book` VALUES ('L(863)', 'Java How to Program ', 'Seventh Edition', '', '', 'Deitel, Deitel', 'c06', '');
INSERT INTO `library_book` VALUES ('L(864)', 'Professional ASP.NET 2.0', '', '', '', 'Evjen, Hanselman,Sivakumar, Rader', 'c06', 'http://as.wiley.com/WileyCDA/WileyTitle/productCd-0471781436.html');
INSERT INTO `library_book` VALUES ('L(865)', 'JavaScript', 'Sixth Edition', '', '', 'Bible', 'c06', 'http://www.dannyg.com/dl/JSB6RefBooklet.pdf');
INSERT INTO `library_book` VALUES ('L(867)', 'Java Server Programming (J2EE 1.4) Black Book', '', '', '', 'Bible', 'c06', 'http://index-of.es/Java/Wiley%20Publishing,%20Inc%20-%20Java*202%20Enterprise%20Edition%201.4%20Bible.pdf');
INSERT INTO `library_book` VALUES ('L(869)', 'Core Java Volume 2.Advanced Features', 'Eighth Edition', '', '', 'Horstmall Cornell', 'c06', 'http://ptgmedia.pearsoncmg.com/images/9780137081608/samplepages/o13708160X.pdf');
INSERT INTO `library_book` VALUES ('L(870)', 'Data Structures And Algorithms In C++', '', '', '', 'Goodrich, Tamassia, Mount', 'c06', 'https://o6ucs.files.wordpress.com/2012/11/data-structures-and-algorithms-in-c.pdf');
INSERT INTO `library_book` VALUES ('L(871)', 'Ajax In ACTION', '', '', '', 'Crane, Pascarello', 'c06', 'http://circulodorado.co/ajax-in-action.pdf');
INSERT INTO `library_book` VALUES ('L(875)', 'Java Servlet Progmming', '', '', '', 'Hunter', 'c06', '');
INSERT INTO `library_book` VALUES ('L(876)', 'Professional SQL Server 2005 Programming', '', '', '', 'Robert Vieira', 'c07', '');
INSERT INTO `library_book` VALUES ('L(878)', 'Head First HTML With CSS & XHTML', '', '', '', 'Freeman', 'c06', 'libraryBooks/L(878).pdf');
INSERT INTO `library_book` VALUES ('L(880)', 'Java Cookbook', '', '', '', 'Ian F. Darwin', 'c06', '');
INSERT INTO `library_book` VALUES ('L(881)', 'XML IN A HUTSHELL A Destop Quick Reference', '', '', '', 'Harold, Means', 'c06', '');
INSERT INTO `library_book` VALUES ('L(882)', 'Learining Oracle PL/SQL', '', '', '', 'Pribyl, Feuerstein', 'c07', 'libraryBooks/Learning Oracle.pdf');
INSERT INTO `library_book` VALUES ('L(883)', 'Oracle Essentials Oracle Database Log', '', '', '', 'Greenwald, Stackowiak Stern', 'c07', '');
INSERT INTO `library_book` VALUES ('L(884)', 'Beginning SQL Server 2005 For Developers', '', '', '', 'Robin Dewson', 'c07', '');
INSERT INTO `library_book` VALUES ('L(885)', 'VB.NET CORE CLASSESIN a nutshell a Destop Quick Reference', '', '', '', 'Kurniawan, Neward', 'c06', 'libraryBooks/L(885).pdf');
INSERT INTO `library_book` VALUES ('L(888)', 'Java Network Programming', '', '', '', 'Harold', 'c06', 'libraryBooks/L(888).pdf');
INSERT INTO `library_book` VALUES ('L(889)', 'XML Problem-Design-Solution', '', '', '', 'Amiano, Thomas', 'c06', 'http://dev.quabook.com/debug?filename=Xml-Problem-Design-Solution.pdf&q=XML+Problem+Design+Solution&group=tst217&source=lgkeys-d2106-1');
INSERT INTO `library_book` VALUES ('L(890)', 'Starting Out With Oracle', '', '', '', 'Day, Slyke', 'c06', 'https://books.google.com.mm/books/about/Starting_Out_With_Oracle_Covers_Sql_Pl_S.html?id=HdR8AYpy8jEC&redir_esc=y');
INSERT INTO `library_book` VALUES ('L(892)', 'XML Unleashed', '', '', '', 'Morrison.et al', 'c06', 'http://www.semanariouno.com/xml-unleashed.pdf');
INSERT INTO `library_book` VALUES ('L(895)', 'Visual basic to Advance', '', '', '', 'Soma Dasgupta', 'c06', 'https://www.amazon.com/Advanced-Visual-Basic-Techniques-Stephens/dp/0471188816');
INSERT INTO `library_book` VALUES ('L(898)', 'Microsoft SQL Server 2005 Reporting Services Infrastructure Design ', '', '', '', 'Josephl.Jorden', 'c07', '');
INSERT INTO `library_book` VALUES ('L(899)', 'Java & XML', '', '', '', 'Mclaughlin, Edelson', 'c06', 'http://www.vogella.com/tutorials/JavaXML/article.html');
INSERT INTO `library_book` VALUES ('L(901)', 'Creating a Self_Tuning Oracle Datbase', '', '', '', '', 'c07', '');
INSERT INTO `library_book` VALUES ('L(905)', 'JavaScript in 24 Hours', 'Fourth Edition', '', '', 'Moncur', 'c06', 'https://www.amazon.com/Sams-Teach-Yourself-JavaScript-Hours/dp/0672328798');
INSERT INTO `library_book` VALUES ('L(906)', 'Oracle PL/SQL Programming', '', '', '', '', 'c07', 'libraryBooks/oracle database.pdf');
INSERT INTO `library_book` VALUES ('L(907)', 'XML in 24 Hours', 'Third Edition', '', '', 'Morrison', 'c06', 'http://dl.acm.org/citation.cfm?id=1076800=xml 24');
INSERT INTO `library_book` VALUES ('L(909)', 'SQL A Complete Reference', 'Second Edition', '', '', 'Leon, Leon', 'c07', 'libraryBooks/SQL the complete reference second edition.pdf');
INSERT INTO `library_book` VALUES ('L(912)', 'Java Enterprise IN a nutshell a Practical', '', '', '', 'Farley, Crawford', 'c06', 'https://www.amazon.com/Java-Enterprise-Nutshell-Practical-OReilly/dp/0596101422');
INSERT INTO `library_book` VALUES ('L(915)', 'Introduction to SQL', 'Fourth Edition', '', '', 'Rick F.Van Der Lans', 'c07', 'libraryBooks/Introduction_to_SQL.pdf');
INSERT INTO `library_book` VALUES ('L(916)', 'HTML & XHTML The Definitive Guide', '', '', '', 'Musciano, Kemedy', 'c06', '');
INSERT INTO `library_book` VALUES ('L(917)', 'Microsoft SQL Server 2005 Analysis Services Step by Step', '', '', '', 'Jacobson, Misner, Consulting', 'c07', 'libraryBooks/L(917).pdf');
INSERT INTO `library_book` VALUES ('L(919)', 'Murach Beginning Java 2JDK5', '', '', '', 'Lowe, Murach, Steelm', 'c06', 'https://www.amazon.com/Murachs-Beginning-Java-Doug-Lowe/dp/1890774294');
INSERT INTO `library_book` VALUES ('L(920)', 'Understanding.NET Updated for .NET Framework ', 'Second Edition', '', '', 'David Chappell', 'c06', 'https://www.pearson.com/us/higher-education/program/Chappell-Understanding-NET-2nd-Edition/PGM299039.html');
INSERT INTO `library_book` VALUES ('L(921)', 'SQL Functions (Covering ANSI AQL, 0racle, SQL MySQL, DB2 & Pastgre SQL)', '', '', '', 'Jones, Stephens, Plew, Garrett, Kriegel', 'c07', '');
INSERT INTO `library_book` VALUES ('L(924)', 'Visual Basic 2005 in 24 hours', '', '', '', 'James Foxall', 'c06', '');
INSERT INTO `library_book` VALUES ('L(926)', 'Access Database Design & Programming', '', '', '', 'Steven Roman', 'c07', 'libraryBooks/database_design_course.pdf');
INSERT INTO `library_book` VALUES ('L(930)', 'DATABASE MANAGEMENT SYSTEMS DESIGNING & BUILDING BUSINESS APPLICATION', 'Third Edition', '', '', 'Geralav.Post', 'c07', '');
INSERT INTO `library_book` VALUES ('L(932)', 'Thinking in C++ Volume Two:Pratical Programming', '', '', '', 'Eckel, Allison', 'c06', 'http://freecomputerbooks.com/Thinking-in-Cpp-Volume-Two.html');
INSERT INTO `library_book` VALUES ('L(934)', 'PHP5 FOR DUMMIES', '', '', '', 'Janet Valade', 'c06', 'libraryBooks/L(934).pdf');
INSERT INTO `library_book` VALUES ('M1', 'á€¡á€€á€ºá€’á€®á€†á€„á€º', '', '', '', 'á€á€»á€…á€ºá€…á€¶á€á€„á€ºá€¸', 'c08', 'libraryBooks/M1.pdf');
INSERT INTO `library_book` VALUES ('M10', 'á€¡á€á€±á€¬á€„á€ºá€•á€¶á€á€½á€± á€›á€¾á€­á€á€²á€·á€œá€»á€¾á€„á€º', '', '', '', 'á€œá€½á€”á€ºá€¸á€‘á€¬á€¸á€‘á€¬á€¸', 'c08', 'libraryBooks/M10.pdf');
INSERT INTO `library_book` VALUES ('M11', 'á€€á€»á€½á€”á€ºá€™á€˜á€ á€•á€¯á€¶á€›á€­á€•á€º', '', '', '', 'á€œá€„á€ºá€¸á€¦á€¸á€á€„á€º', 'c08', 'libraryBooks/M11.pdf');
INSERT INTO `library_book` VALUES ('M12', 'á€™á€¼á€”á€ºá€™á€¬á€·á€…á€½á€šá€ºá€…á€¯á€¶á€€á€»á€™á€ºá€¸ á€¡á€”á€¾á€…á€ºá€á€»á€¯á€•á€º ', '', '2014', '', '', 'c08', 'libraryBooks/M12.pdf');
INSERT INTO `library_book` VALUES ('M13', 'á€žá€°á€„á€šá€ºá€á€»á€„á€ºá€¸', '', '', '', 'á€™á€”á€±á€¬á€ºá€Ÿá€›á€®', 'c08', 'libraryBooks/M13.pdf');
INSERT INTO `library_book` VALUES ('M14', 'á€€á€±á€¬á€„á€ºá€¸á€€á€„á€ºá€‘á€€á€ºá€€ á€†á€„á€ºá€¸á€žá€€á€ºá€žá€°', '', '', '', 'á€•á€¯á€Šá€á€„á€º', 'c08', 'libraryBooks/M14.pdf');
INSERT INTO `library_book` VALUES ('M15', 'á€€á€­á€¯á€¸á€™á€›á€¾á€­á€á€²á€· á€”á€á€„á€ºá€¸', '', '', '', 'á€á€¬á€›á€¬á€™á€„á€ºá€¸â€‹á€±á€', 'c08', 'libraryBooks/M15.pdf');
INSERT INTO `library_book` VALUES ('M16', 'á€”á€á€ºá€†á€­á€¯á€¸', '', '', '', 'á€á€€á€ºá€á€±á€á€º', 'c08', 'libraryBooks/M16.pdf');
INSERT INTO `library_book` VALUES ('M17', 'á€†á€¬á€¸á€•á€¯á€œá€„á€ºá€¸á€”á€¾á€„á€ºá€¸á€™á€±á€¬á€„á€ºá€”á€¾á€„á€ºá€· á€•á€›á€±á€¬á€ºá€–á€€á€ºá€†á€¬á€’á€±á€«á€€á€ºá€á€¬á€†á€­á€á€ºá€–á€½á€¬á€¸', '', '', '', 'á€™á€„á€ºá€¸á€žá€­á€á€º', 'c08', 'libraryBooks/M17.pdf');
INSERT INTO `library_book` VALUES ('M18', 'á€á€½á€±á€·á€á€»á€„á€ºá€œá€¾á€•á€¼á€®', '', '', '', 'á€‚á€»á€°á€¸', 'c08', 'libraryBooks/M18.pdf');
INSERT INTO `library_book` VALUES ('M19', 'á€•á€­á€¯á€á€»á€…á€ºá€›á€á€²á€·á€žá€° á€€á€­á€¯á€šá€ºá€•á€²á€–á€¼á€…á€ºá€•á€«á€…á€±', '', '', '', 'á€‚á€»á€°á€¸', 'c08', 'libraryBooks/M19.pdf');
INSERT INTO `library_book` VALUES ('M2', 'á€¡á€›á€¾á€±á€· á€™á€¼á€­á€¯á€·á€›á€­á€¯á€¸á€™á€¾ á€™á€­á€¯á€¸á€›á€±á€…á€€á€ºá€™á€»á€¬á€¸', '', '', '', 'á€á€¬á€šá€¬á€™á€„á€ºá€¸â€‹â€‹á€±á€', 'c08', 'libraryBooks/M2.pdf');
INSERT INTO `library_book` VALUES ('M20', 'á€€á€½á€”á€ºá€•á€»á€°á€á€¬ á€žá€¯á€¶á€¸á€…á€½á€²á€žá€°á€™á€»á€¬á€¸á€¡á€á€½á€€á€º á€¡á€‚á€ºá€œá€­á€•á€ºá€…á€¬', '', '', '', 'á€™á€±á€¬á€„á€ºá€™á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€·á€žá€­á€”á€ºá€¸ (á€…á€€á€ºá€™á€¾á€¯', 'c08', 'libraryBooks/M20.pdf');
INSERT INTO `library_book` VALUES ('M21', 'á€•á€›á€…á€¶á€¡á€­á€™á€º', '', '', '', 'á€…á€­á€á€¼á€¡á€‚á€ºá€‚', 'c08', 'libraryBooks/M21.pdf');
INSERT INTO `library_book` VALUES ('M22', 'World Book', '', '', '', 'á€–á€±á€™á€¼á€„á€ºá€·', 'c08', 'libraryBooks/M22.pdf');
INSERT INTO `library_book` VALUES ('M23', 'Aspects of Myanmar Culture', '', '', '', 'á€á€„á€ºá€™á€±á€¬á€„á€ºá€¦á€¸ (B.A.English)', 'c08', 'libraryBooks/M23.pdf');
INSERT INTO `library_book` VALUES ('M24', 'á€™á€”á€€á€ºá€–á€¼á€”á€ºá€á€«á€™á€¾á€¬ á€‘á€¬á€¸á€á€²á€·á€á€²á€·á€™á€»á€€á€ºá€”á€¾á€¬', '', '', '', 'á€á€¬á€›á€¬á€™á€„á€ºá€¸â€‹á€±á€', 'c08', 'libraryBooks/M24.pdf');
INSERT INTO `library_book` VALUES ('M25', 'á€…á€­á€á€ºá€–á€á€ºá€žá€°', '', '', '', 'á€œá€½á€”á€ºá€¸á€‘á€¬á€¸á€‘á€¬á€¸', 'c08', 'libraryBooks/M25.pdf');
INSERT INTO `library_book` VALUES ('M3', 'á€§á€€á€›á€® á€–á€½á€¬á€¸á€…á€±á€¬', '', '', '', 'á€™á€¼á€žá€”á€ºá€¸á€á€„á€ºá€·', 'c08', 'libraryBooks/M3.pdf');
INSERT INTO `library_book` VALUES ('M4', 'á€’á€±á€¸á€œá€ºá€€á€¬á€”á€€á€ºá€‚á€»á€® á€œá€°á€žá€”á€ºá€¸á€•á€±á€«á€„á€ºá€¸á€™á€»á€¬á€¸á€…á€½á€¬á€á€­á€¯á€·á á€˜á€á€€á€­á€¯ á€•á€¼á€±á€¬á€„á€ºá€¸', '', '', '', 'á€–á€±á€™á€¼á€„á€ºá€·', 'c08', 'libraryBooks/M4.pdf');
INSERT INTO `library_book` VALUES ('M5', 'á€•á€¼á€±á€¬á€á€á€º á€†á€­á€¯á€á€á€º á€•á€±á€«á€„á€ºá€¸á€žá€„á€ºá€¸á€á€á€ºá€á€²á€·á€žá€°', '', '', '', 'á€–á€±á€™á€¼á€„á€ºá€·', 'c08', 'libraryBooks/M5.pdf');
INSERT INTO `library_book` VALUES ('M6', 'á€™á€¾á€±á€¬á€ºá€›á€¯á€¶á€á€±á€¬á€™á€¾á€¬ á€™á€±á€¬á€œá€¾á€•á€¼á€®', '', '', '', 'á€™á€¼á€žá€”á€ºá€¸á€á€„á€ºá€·', 'c08', 'libraryBooks/M6.pdf');
INSERT INTO `library_book` VALUES ('M7', 'á€™á€¾á€±á€¬á€ºá€†á€›á€¬á€›á€²á€· á€€á€»á€±á€¬á€„á€ºá€¸á€…á€¬á€¡á€¯á€•á€º', '', '', '', 'á€á€¬á€›á€¬á€™á€„á€ºá€¸â€‹á€±á€', 'c08', 'libraryBooks/M7.pdf');
INSERT INTO `library_book` VALUES ('M8', 'á€€á€”á€ºá€·á€€á€°á€œá€€á€ºá€œá€¾á€Šá€ºá€·', '', '', '', 'á€¡á€±á€¬á€„á€ºá€žá€„á€ºá€¸', 'c08', 'libraryBooks/M8.pdf');
INSERT INTO `library_book` VALUES ('M9', 'á€žá€°á€˜á€šá€ºá€žá€°á€œá€²', '', '', '', 'á€žá€­á€¯á€¸á€†á€±á€¬á€„á€ºá€¸', 'c08', 'libraryBooks/M9.pdf');
INSERT INTO `library_book` VALUES ('O1', 'First Year Old Question', '', '2013', '', '', 'c04', 'libraryBooks/F2013.pdf');
INSERT INTO `library_book` VALUES ('O10', 'Second Year Old Question', '', '2017', '', '', 'c04', 'libraryBooks/S2017.pdf');
INSERT INTO `library_book` VALUES ('O11', 'Third Year Old Question', '', '2013', '', '', 'c04', 'libraryBooks/T2013.pdf');
INSERT INTO `library_book` VALUES ('O12', 'Third Year Old Question', '', '2014', '', '', 'c04', 'libraryBooks/T2014.pdf');
INSERT INTO `library_book` VALUES ('O13', 'Third Year Old Question', '', '2015', '', '', 'c04', 'libraryBooks/T2015.pdf');
INSERT INTO `library_book` VALUES ('O14', 'Third Year Old Question', '', '2016', '', '', 'c04', 'libraryBooks/T2016.pdf');
INSERT INTO `library_book` VALUES ('O15', 'Third Year Old Question', '', '2017', '', '', 'c04', 'libraryBooks/T2017.pdf');
INSERT INTO `library_book` VALUES ('O16', 'Fourth Year Old Question', '', '2013', '', '', 'c04', 'libraryBooks/Fo2013.pdf');
INSERT INTO `library_book` VALUES ('O17', 'Fourth Year Old Question', '', '2014', '', '', 'c04', 'libraryBooks/Fo2014.pdf');
INSERT INTO `library_book` VALUES ('O18', 'Fourth Year Old Question', '', '2015', '', '', 'c04', 'libraryBooks/Fo2015.pdf');
INSERT INTO `library_book` VALUES ('O19', 'Fourth Year Old Question', '', '2016', '', '', 'c04', 'libraryBooks/Fo2016.pdf');
INSERT INTO `library_book` VALUES ('O2', 'First Year Old Question', '', '2014', '', '', 'c04', 'libraryBooks/F2014.pdf');
INSERT INTO `library_book` VALUES ('O20', 'Fourth Year Old Question', '', '2017', '', '', 'c04', 'libraryBooks/Fo2017.pdf');
INSERT INTO `library_book` VALUES ('O21', 'Fifth Year Old Question', '', '2017', '', '', 'c04', 'libraryBooks/Fi2017.pdf');
INSERT INTO `library_book` VALUES ('O3', 'First Year Old Question', '', '2015', '', '', 'c04', 'libraryBooks/F2015.pdf');
INSERT INTO `library_book` VALUES ('O4', 'First Year Old Question', '', '2016', '', '', 'c04', 'libraryBooks/F2016.pdf');
INSERT INTO `library_book` VALUES ('O5', 'First Year Old Question', '', '2017', '', '', 'c04', 'libraryBooks/F2017.pdf');
INSERT INTO `library_book` VALUES ('O6', 'Second Year Old Question', '', '2013', '', '', 'c04', 'libraryBooks/S2013.pdf');
INSERT INTO `library_book` VALUES ('O7', 'Second Year Old Question', '', '2014', '', '', 'c04', 'libraryBooks/S2014.pdf');
INSERT INTO `library_book` VALUES ('O8', 'Second Year Old Question', '', '2015', '', '', 'c04', 'libraryBooks/S2015.pdf');
INSERT INTO `library_book` VALUES ('O9', 'Second Year Old Question', '', '2016', '', '', 'c04', 'libraryBooks/S2016.pdf');
INSERT INTO `library_book` VALUES ('T(1)', 'Authomatic Image Segmentation By Using Edge And Marker Controlled Watershed Transformation', '', '2016', '', 'Khin Lay Mon', 'c10', '');
INSERT INTO `library_book` VALUES ('T(11)', 'Solving Symmetric Travelling Salesman Problem (STSP) Using Colony System (ACS) ', '', '2016', '', 'Nyein Nyein Soe', 'c11', 'libraryBooks/nyein nyein soe.pdf');
INSERT INTO `library_book` VALUES ('T(14)', 'Comparing Voting Power For Handset Brands Using Banzhaf  Power And Shapley_Stiubile Power Index', '', '2016', '', 'Hnin Inzali', 'c11', 'libraryBooks/hnin inzali.pdf');
INSERT INTO `library_book` VALUES ('T(17)', 'Decision Making For Private school Establishment Using NEURO-FUZZY Method ', '', '2016', '', 'Thae Su Lwin', 'c11', 'libraryBooks/thae su lwin.pdf');
INSERT INTO `library_book` VALUES ('T(18)', 'Secure Electronic Online Payment System Using Dual Signature', '', '2016', '', 'Su Su Shwe', 'c11', 'libraryBooks/su su shwe.pdf');
INSERT INTO `library_book` VALUES ('T(19)', 'Implementation Of Text Steganography Using Synonym Stbstitution Based Algorithm In Letter Of Credit(LC)', '', '2016', '', 'Me MeKhaing', 'c11', 'libraryBooks/me me khaing.pdf');
INSERT INTO `library_book` VALUES ('T(2)', 'Pattern Mining Algorithm for primary Protein Sequences', '', '2016', '', 'Pyae Phyo Thu', 'c10', '');
INSERT INTO `library_book` VALUES ('T(20)', 'Capacitated Vehicle Routing Problem By Apploying And Colony System With Saving Heuristic ', '', '2016', '', 'May Choon Htike', 'c11', 'libraryBooks/may choon htike.pdf');
INSERT INTO `library_book` VALUES ('T(21)', 'Classification Of Dermatalogy Using AndColony Optimization (ACO) With Feature Selection And Algorithm(GA)', '', '2016', '', 'Aye Thiri Mon', 'c11', 'libraryBooks/aye thiri mon.pdf');
INSERT INTO `library_book` VALUES ('T(23)', 'Performance Comparisom Of Ecxact And Heuristic Algorithm For Traveling Salesman Problem', '', '2016', '', 'Thida Aye', 'c11', 'libraryBooks/thida aye.pdf');
INSERT INTO `library_book` VALUES ('T(24)', 'Online Shopping Based  Home Delivery System Using A*', '', '2016', '', 'Myat San Nwe', 'c11', 'libraryBooks/myat san nwe.pdf');
INSERT INTO `library_book` VALUES ('T(26)', 'Disease Prediction Of Health Care System Based On Gini Index Classification ', '', '2016', '', 'Thiri', 'c11', 'libraryBooks/thiri.pdf');
INSERT INTO `library_book` VALUES ('T(3)', 'Efficient Interactive Image Segmentation Using Modified Maxical Similarity Region Merging', '', '2016', '', 'May Thu Win', 'c10', '');

-- ----------------------------
-- Table structure for library_category
-- ----------------------------
DROP TABLE IF EXISTS `library_category`;
CREATE TABLE `library_category` (
  `category_ID` varchar(10) NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of library_category
-- ----------------------------
INSERT INTO `library_category` VALUES ('c01', 'Hardware');
INSERT INTO `library_category` VALUES ('c02', 'BC.SC Project');
INSERT INTO `library_category` VALUES ('c03', 'B,C,Tech Project');
INSERT INTO `library_category` VALUES ('c04 ', 'Old Question');
INSERT INTO `library_category` VALUES ('c05', 'Networking');
INSERT INTO `library_category` VALUES ('c06', 'Software');
INSERT INTO `library_category` VALUES ('c07', 'Database Management System');
INSERT INTO `library_category` VALUES ('c08', 'Myanmar');
INSERT INTO `library_category` VALUES ('c09', 'English');
INSERT INTO `library_category` VALUES ('c10', 'PHD Thesis');
INSERT INTO `library_category` VALUES ('c11', 'Master Thesis');

-- ----------------------------
-- Table structure for lmsinfo
-- ----------------------------
DROP TABLE IF EXISTS `lmsinfo`;
CREATE TABLE `lmsinfo` (
  `Lmsinfo_ID` int(8) NOT NULL AUTO_INCREMENT,
  `Teacher_ID` varchar(8) NOT NULL,
  `Year_ID` varchar(8) NOT NULL,
  `Major_ID` varchar(8) NOT NULL,
  `Section_ID` varchar(8) NOT NULL,
  `SubCode` varchar(5) NOT NULL,
  PRIMARY KEY (`Lmsinfo_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lmsinfo
-- ----------------------------
INSERT INTO `lmsinfo` VALUES ('1', 'MOST_103', '1', '1', '1', '103');
INSERT INTO `lmsinfo` VALUES ('2', 'MOST_195', '1', '1', '1', '102');
INSERT INTO `lmsinfo` VALUES ('3', 'MOST_237', '1', '1', '1', 'Phy');
INSERT INTO `lmsinfo` VALUES ('4', 'MOST_199', '1', '1', '1', 'Eng');
INSERT INTO `lmsinfo` VALUES ('5', 'MOST_172', '1', '1', '1', '101');
INSERT INTO `lmsinfo` VALUES ('6', 'MOST_120', '1', '1', '1', 'Myan');
INSERT INTO `lmsinfo` VALUES ('7', 'MOST_121', '1', '1', '1', 'Myan');
INSERT INTO `lmsinfo` VALUES ('8', 'MOST_122', '1', '1', '1', 'Myan');
INSERT INTO `lmsinfo` VALUES ('9', 'MOST_156', '1', '1', '1', '101');
INSERT INTO `lmsinfo` VALUES ('10', 'MOST_236', '1', '1', '1', 'Phy');
INSERT INTO `lmsinfo` VALUES ('11', 'MOST_156', '1', '1', '1', '104');
INSERT INTO `lmsinfo` VALUES ('12', 'MOST_240', '1', '1', '2', 'Phy');
INSERT INTO `lmsinfo` VALUES ('13', 'MOST_166', '1', '1', '2', '101');
INSERT INTO `lmsinfo` VALUES ('14', 'MOST_206', '1', '1', '2', 'Eng');
INSERT INTO `lmsinfo` VALUES ('15', 'MOST_120', '1', '1', '2', 'Myan');
INSERT INTO `lmsinfo` VALUES ('16', 'MOST_140', '1', '1', '2', '104');
INSERT INTO `lmsinfo` VALUES ('17', 'MOST_124', '1', '1', '2', '103');
INSERT INTO `lmsinfo` VALUES ('18', 'MOST_206', '1', '1', '2', 'Eng');
INSERT INTO `lmsinfo` VALUES ('19', 'MOST_121', '1', '1', '2', 'Myan');
INSERT INTO `lmsinfo` VALUES ('20', 'MOST_122', '1', '1', '2', 'Myan');
INSERT INTO `lmsinfo` VALUES ('21', 'MOST_229', '2', '2', '5', '204');
INSERT INTO `lmsinfo` VALUES ('22', 'MOST_191', '2', '2', '5', '202');
INSERT INTO `lmsinfo` VALUES ('23', 'MOST_203', '2', '2', '5', 'Eng');
INSERT INTO `lmsinfo` VALUES ('24', 'MOST_104', '2', '2', '5', '205');
INSERT INTO `lmsinfo` VALUES ('25', 'MOST_139', '2', '2', '5', '201');
INSERT INTO `lmsinfo` VALUES ('26', 'MOST_190', '2', '2', '5', '202');
INSERT INTO `lmsinfo` VALUES ('27', 'MOST_149', '2', '2', '5', '203');
INSERT INTO `lmsinfo` VALUES ('29', 'MOST_203', '2', '2', '5', 'Eng');
INSERT INTO `lmsinfo` VALUES ('30', 'MOST_218', '2', '2', '5', '204');
INSERT INTO `lmsinfo` VALUES ('32', 'MOST_104', '2', '2', '5', '205');
INSERT INTO `lmsinfo` VALUES ('33', 'MOST_230', '2', '2', '5', '206');
INSERT INTO `lmsinfo` VALUES ('34', 'MOST_104', '2', '3', '21', '205');
INSERT INTO `lmsinfo` VALUES ('35', 'MOST_202', '2', '3', '21', 'Eng');
INSERT INTO `lmsinfo` VALUES ('36', 'MOST_229', '2', '3', '21', '204');
INSERT INTO `lmsinfo` VALUES ('37', 'MOST_110', '2', '3', '21', '203');
INSERT INTO `lmsinfo` VALUES ('38', 'MOST_161', '2', '3', '21', '206');
INSERT INTO `lmsinfo` VALUES ('39', 'MOST_191', '2', '3', '21', '202');
INSERT INTO `lmsinfo` VALUES ('40', 'MOST_136', '2', '3', '21', '201');

-- ----------------------------
-- Table structure for lmsinsert
-- ----------------------------
DROP TABLE IF EXISTS `lmsinsert`;
CREATE TABLE `lmsinsert` (
  `Lmsinsert_ID` int(8) NOT NULL AUTO_INCREMENT,
  `Student_ID` varchar(8) NOT NULL,
  `Roll_No` varchar(15) NOT NULL,
  `Name_Eng` varchar(30) NOT NULL,
  `Year_ID` varchar(8) NOT NULL,
  `Major_ID` varchar(8) NOT NULL,
  `Section_ID` varchar(8) NOT NULL,
  `Academic_Year_ID` varchar(8) NOT NULL,
  PRIMARY KEY (`Lmsinsert_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lmsinsert
-- ----------------------------
INSERT INTO `lmsinsert` VALUES ('1', '05', '1CST-25', 'Ma Zin Win Htet', '1', '1', '1', '05');
INSERT INTO `lmsinsert` VALUES ('2', '06', '1CST-27', 'Ma Su Yee Mon', '1', '1', '1', '05');
INSERT INTO `lmsinsert` VALUES ('3', '07', '1CST-28', 'Mg Hein Htet Anug', '1', '1', '1', '05');
INSERT INTO `lmsinsert` VALUES ('4', '09', '1CST-78', 'Mg Zayar Htun', '1', '1', '2', '05');
INSERT INTO `lmsinsert` VALUES ('5', '01', '2CS_34', 'Mg Thein Aung ', '2', '2', '5', '05');
INSERT INTO `lmsinsert` VALUES ('6', '02', '2CS-29', 'Ma Nilar Soe', '2', '2', '5', '05');
INSERT INTO `lmsinsert` VALUES ('7', '10', '2CS-27', 'Ma Win Pa Pa Thein', '2', '2', '5', '05');
INSERT INTO `lmsinsert` VALUES ('8', '26', '2CT-12', 'Ma Mon Mon Cho', '2', '3', '21', '05');

-- ----------------------------
-- Table structure for localscholarimage
-- ----------------------------
DROP TABLE IF EXISTS `localscholarimage`;
CREATE TABLE `localscholarimage` (
  `imageName` varchar(50) NOT NULL,
  `University` varchar(15) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Duration` varchar(15) NOT NULL,
  `Acedamic_Year` varchar(20) NOT NULL,
  `Deadline` varchar(15) NOT NULL,
  PRIMARY KEY (`imageName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of localscholarimage
-- ----------------------------
INSERT INTO `localscholarimage` VALUES ('1.jpg', '---', 'American', '1 year', '2017', '30.6.2017');
INSERT INTO `localscholarimage` VALUES ('a.jpg', 'KDI School', 'Korea', '2year', '2017', '26.5.2017');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `User_ID` varchar(8) DEFAULT NULL,
  `Username` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Access_Level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('103', 'sawthandar', '123', 'user');
INSERT INTO `login` VALUES ('104', 'myomama', '123', 'user');
INSERT INTO `login` VALUES ('124', 'ayeaye', 'chaw', 'user');
INSERT INTO `login` VALUES ('MOST_105', 'teacher', 'teacher', 'admin');
INSERT INTO `login` VALUES ('34234', 'user', 'mohan', 'user');
INSERT INTO `login` VALUES ('3sdfasd4', 'admin', 'mohan', 'admin');
INSERT INTO `login` VALUES ('MOST_109', 'marmar', 'thin', 'admin');
INSERT INTO `login` VALUES ('MOST_101', 'kyawsoe', 'kyawsoe', 'Rector');
INSERT INTO `login` VALUES ('MOST_103', 'sawthandar', '1234', 'Dean');
INSERT INTO `login` VALUES ('MOST_102', 'ohmar', 'ohmar', 'MDean');
INSERT INTO `login` VALUES ('144', 'z', 'z', 'admin');
INSERT INTO `login` VALUES ('MOST_101', 'rector', 'kyawsoe', 'admin');
INSERT INTO `login` VALUES ('116', 'g', 'g', 'admin');
INSERT INTO `login` VALUES ('12345', 'admin', 'a', 'admin');
INSERT INTO `login` VALUES ('01', 'thein', 'thein', 'user');
INSERT INTO `login` VALUES ('02', 'nilar', 'nilar', 'user');
INSERT INTO `login` VALUES ('03', 'nilar1', 'soe', 'user');
INSERT INTO `login` VALUES ('zaw', 'zaw', 'zaw1510', 'caradmin');
INSERT INTO `login` VALUES ('1G3349', '1G3349', 'driver', 'driver');
INSERT INTO `login` VALUES ('1G6626', '1G6626', '123', 'driver');
INSERT INTO `login` VALUES ('1H2002', '1H2002', '1234', 'driver');
INSERT INTO `login` VALUES ('1H9204', '1H9204', '123', 'driver');
INSERT INTO `login` VALUES ('1H9209', '1H9209', '123', 'driver');
INSERT INTO `login` VALUES ('1K3583', '1K3583', '123', 'driver');
INSERT INTO `login` VALUES ('3M7980', '3M7980', '123', 'driver');
INSERT INTO `login` VALUES ('4E6852', '4E6852', '123', 'driver');
INSERT INTO `login` VALUES ('6F7627', '6F7627', '123', 'driver');
INSERT INTO `login` VALUES ('6J1975', '6J1975', '123', 'driver');
INSERT INTO `login` VALUES ('6L6761', '6L6761', '123', 'driver');
INSERT INTO `login` VALUES ('7E1145', '7E1145', '123', 'driver');
INSERT INTO `login` VALUES ('7E5740', '7E5740', '123', 'driver');
INSERT INTO `login` VALUES ('7H8245', '7H8245', '123', 'driver');
INSERT INTO `login` VALUES ('7M3270', '7M3270', '123', 'driver');
INSERT INTO `login` VALUES ('8B4817', '8B4817', '123', 'driver');
INSERT INTO `login` VALUES ('8C2213', '8C2213', '123', 'driver');
INSERT INTO `login` VALUES ('8C4845', '8C4845', '123', 'driver');
INSERT INTO `login` VALUES ('8C5892', '8C5892', '123', 'driver');
INSERT INTO `login` VALUES ('8E2819', '8E2819', '123', 'driver');
INSERT INTO `login` VALUES ('8E6808', '8E6808', '123', 'driver');
INSERT INTO `login` VALUES ('8E6884', '8E6884', '123', 'driver');
INSERT INTO `login` VALUES ('8E8335', '8E8335', '123', 'driver');
INSERT INTO `login` VALUES ('8F4706', '8F4706', '123', 'driver');
INSERT INTO `login` VALUES ('8F4736', '8F4736', '123', 'driver');
INSERT INTO `login` VALUES ('8G2538', '8G2538', '123', 'driver');
INSERT INTO `login` VALUES ('8G3015', '8G3015', '123', 'driver');
INSERT INTO `login` VALUES ('8G3827', '8G3827', '123', 'driver');
INSERT INTO `login` VALUES ('8G4665', '8G4665', '123', 'driver');
INSERT INTO `login` VALUES ('8G5854', '8G5854', '123', 'driver');
INSERT INTO `login` VALUES ('8H3695', '8H3695', '123', 'driver');
INSERT INTO `login` VALUES ('8H7311', '8H7311', '123', 'driver');
INSERT INTO `login` VALUES ('8I1353', '8I1353', '123', 'driver');
INSERT INTO `login` VALUES ('8I5211', '8I5211', '123', 'driver');
INSERT INTO `login` VALUES ('8I5956', '8I5956', '123', 'driver');
INSERT INTO `login` VALUES ('8J8103', '8J8103', '123', 'driver');
INSERT INTO `login` VALUES ('8J9248', '8J9248', '123', 'driver');
INSERT INTO `login` VALUES ('8K1706', '8K1706', '123', 'driver');
INSERT INTO `login` VALUES ('8K4400', '8K4400', '123', 'driver');
INSERT INTO `login` VALUES ('8K5566', '8K5566', '123', 'driver');
INSERT INTO `login` VALUES ('8K6938', '8K6938', '123', 'driver');
INSERT INTO `login` VALUES ('8K7796', '8K7796', '123', 'driver');
INSERT INTO `login` VALUES ('8K8562', '8K8562', '123', 'driver');
INSERT INTO `login` VALUES ('8K9165', '8K9165', '123', 'driver');
INSERT INTO `login` VALUES ('8L7269', '8L7269', '123', 'driver');
INSERT INTO `login` VALUES ('8L7550', '8L7550', '123', 'driver');
INSERT INTO `login` VALUES ('8L9832', '8L9832', '123', 'driver');
INSERT INTO `login` VALUES ('8M2039', '8M2039', '123', 'driver');
INSERT INTO `login` VALUES ('8M2610', '8M2610', '123', 'driver');
INSERT INTO `login` VALUES ('8M4914', '8M4914', '123', 'driver');
INSERT INTO `login` VALUES ('8M7389', '8M7389', '123', 'driver');
INSERT INTO `login` VALUES ('9L6385', '9L6385', '123', 'driver');
INSERT INTO `login` VALUES ('150', 'si', 'si', 'user');
INSERT INTO `login` VALUES ('MOST_191', 'kay', 'kay', 'courseadmin');
INSERT INTO `login` VALUES ('06', 'mon', 'mon', 'user');
INSERT INTO `login` VALUES ('h1', 'mtr', 'nyr', 'user');
INSERT INTO `login` VALUES ('07', 'hein', 'hein', 'activityadmin');
INSERT INTO `login` VALUES ('L_01', 'khainmon', 'khainmon', 'libraryadmin');
INSERT INTO `login` VALUES ('F_01', 'nwe', 'nwe', 'schoolfeeadmin');
INSERT INTO `login` VALUES ('S_01', 'han', 'popo', 'scholarshipadmin');
INSERT INTO `login` VALUES ('7621', 'sumon', 'sumon', 'user');
INSERT INTO `login` VALUES ('7623', 'nai', 'nai', 'user');
INSERT INTO `login` VALUES ('MOST_101', 'kyawswar', 'soe', 'user');
INSERT INTO `login` VALUES ('15', 'yin', 'yin', 'user');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `Major_ID` varchar(8) NOT NULL,
  `Major` varchar(8) NOT NULL,
  PRIMARY KEY (`Major_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('1', 'CST');
INSERT INTO `major` VALUES ('2', 'CS');
INSERT INTO `major` VALUES ('3', 'CT');

-- ----------------------------
-- Table structure for mark
-- ----------------------------
DROP TABLE IF EXISTS `mark`;
CREATE TABLE `mark` (
  `Mark_ID` int(8) NOT NULL AUTO_INCREMENT,
  `SubCode` varchar(8) NOT NULL,
  `Student_ID` varchar(8) NOT NULL,
  `Term_ID` varchar(8) NOT NULL,
  `Exam_Type_ID` varchar(8) NOT NULL,
  `Mark` varchar(8) DEFAULT NULL,
  `Academic_Year_ID` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`Mark_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mark
-- ----------------------------
INSERT INTO `mark` VALUES ('1', 'Eng', '10', '1', '1', '5', '05');
INSERT INTO `mark` VALUES ('2', '201', '10', '2', '4', '6', '05');
INSERT INTO `mark` VALUES ('3', '203', '10', '1', '3', '77', '05');
INSERT INTO `mark` VALUES ('4', '203', '10', '1', '4', '2', '05');
INSERT INTO `mark` VALUES ('5', '203', '10', '2', '1', '5', '05');
INSERT INTO `mark` VALUES ('6', '203', '10', '2', '2', '3', '05');
INSERT INTO `mark` VALUES ('7', '204', '10', '2', '3', '64', '05');
INSERT INTO `mark` VALUES ('8', '204', '10', '2', '4', '7', '05');
INSERT INTO `mark` VALUES ('10', 'Eng', '10', '1', '3', '45', '05');
INSERT INTO `mark` VALUES ('11', 'Eng', '10', '2', '3', '60', '05');
INSERT INTO `mark` VALUES ('12', 'Eng', '10', '2', '1', '7', '05');
INSERT INTO `mark` VALUES ('13', '201', '10', '1', '1', '6', '05');
INSERT INTO `mark` VALUES ('14', '201', '10', '1', '2', '3', '05');
INSERT INTO `mark` VALUES ('15', '201', '10', '1', '3', '67', '05');
INSERT INTO `mark` VALUES ('16', '201', '10', '1', '4', '5', '05');
INSERT INTO `mark` VALUES ('17', '201', '10', '2', '1', '4', '05');
INSERT INTO `mark` VALUES ('18', '201', '10', '2', '2', '6', '05');
INSERT INTO `mark` VALUES ('19', '201', '10', '2', '3', '77', '05');
INSERT INTO `mark` VALUES ('20', '202', '10', '1', '1', '2', '05');
INSERT INTO `mark` VALUES ('21', '202', '10', '1', '3', '78', '05');
INSERT INTO `mark` VALUES ('22', '202', '10', '2', '1', '4', '05');
INSERT INTO `mark` VALUES ('23', '202', '10', '2', '3', '89', '05');
INSERT INTO `mark` VALUES ('24', '203', '10', '1', '1', '7', '05');
INSERT INTO `mark` VALUES ('25', '203', '10', '1', '2', '3', '05');
INSERT INTO `mark` VALUES ('26', '204', '10', '1', '3', '68', '05');
INSERT INTO `mark` VALUES ('27', '204', '10', '1', '4', '5', '05');
INSERT INTO `mark` VALUES ('28', '205', '10', '1', '1', '2', '05');
INSERT INTO `mark` VALUES ('29', '205', '10', '1', '2', '3', '05');
INSERT INTO `mark` VALUES ('30', '205', '10', '1', '3', '30', '05');
INSERT INTO `mark` VALUES ('31', '205', '10', '1', '4', '6', '05');
INSERT INTO `mark` VALUES ('32', '205', '10', '2', '1', '2', '05');
INSERT INTO `mark` VALUES ('33', '205', '10', '2', '2', '5', '05');
INSERT INTO `mark` VALUES ('34', '205', '10', '2', '3', '98', '05');
INSERT INTO `mark` VALUES ('35', '205', '10', '2', '4', '5', '05');
INSERT INTO `mark` VALUES ('36', '206', '10', '1', '1', '3', '05');
INSERT INTO `mark` VALUES ('37', '206', '10', '1', '3', '56', '05');
INSERT INTO `mark` VALUES ('38', '206', '10', '2', '1', '3', '05');
INSERT INTO `mark` VALUES ('39', '206', '10', '2', '3', '75', '05');
INSERT INTO `mark` VALUES ('40', 'Eng', '10', '1', '2', '0', '05');
INSERT INTO `mark` VALUES ('41', 'Eng', '10', '1', '4', '0', '05');
INSERT INTO `mark` VALUES ('42', 'Eng', '10', '2', '2', '0', '05');
INSERT INTO `mark` VALUES ('43', 'Eng', '10', '2', '4', '0', '05');
INSERT INTO `mark` VALUES ('44', 'Eng', '11', '1', '3', '55', '05');
INSERT INTO `mark` VALUES ('45', '301', '11', '1', '3', '66', '05');
INSERT INTO `mark` VALUES ('46', '302', '11', '1', '3', '77', '05');
INSERT INTO `mark` VALUES ('47', '304', '11', '1', '3', '88', '05');
INSERT INTO `mark` VALUES ('48', '305', '11', '1', '3', '22', '05');
INSERT INTO `mark` VALUES ('49', '306', '11', '1', '3', '33', '05');
INSERT INTO `mark` VALUES ('50', '307', '11', '1', '3', '11', '05');
INSERT INTO `mark` VALUES ('51', 'Myan', '05', '1', '3', '45', '05');
INSERT INTO `mark` VALUES ('52', 'Eng', '05', '1', '3', '55', '05');
INSERT INTO `mark` VALUES ('53', 'Phy', '05', '1', '3', '77', '05');
INSERT INTO `mark` VALUES ('54', '101', '05', '1', '3', '88', '05');
INSERT INTO `mark` VALUES ('55', '102', '05', '1', '3', '67', '05');
INSERT INTO `mark` VALUES ('56', '103', '05', '1', '3', '45', '05');
INSERT INTO `mark` VALUES ('57', '104', '05', '1', '3', '57', '05');
INSERT INTO `mark` VALUES ('58', 'Eng', '16', '1', '3', '11', '05');
INSERT INTO `mark` VALUES ('59', '401', '16', '1', '3', '22', '05');
INSERT INTO `mark` VALUES ('60', '402', '16', '1', '3', '33', '05');
INSERT INTO `mark` VALUES ('61', '403', '16', '1', '3', '44', '05');
INSERT INTO `mark` VALUES ('62', '404', '16', '1', '3', '55', '05');
INSERT INTO `mark` VALUES ('63', '405', '16', '1', '3', '66', '05');
INSERT INTO `mark` VALUES ('64', '406', '16', '1', '3', '77', '05');
INSERT INTO `mark` VALUES ('65', 'Eng', '21', '1', '3', '33', '05');
INSERT INTO `mark` VALUES ('66', '501', '21', '1', '3', '44', '05');
INSERT INTO `mark` VALUES ('67', '502', '21', '1', '3', '34', '05');
INSERT INTO `mark` VALUES ('68', '503', '21', '1', '3', '55', '05');
INSERT INTO `mark` VALUES ('69', '504', '21', '1', '3', '65', '05');
INSERT INTO `mark` VALUES ('70', '505', '21', '1', '3', '76', '05');
INSERT INTO `mark` VALUES ('71', 'Eng', '31', '1', '3', '78', '05');
INSERT INTO `mark` VALUES ('72', '501', '31', '1', '3', '90', '05');
INSERT INTO `mark` VALUES ('73', '502', '31', '1', '3', '65', '05');
INSERT INTO `mark` VALUES ('74', '503', '31', '1', '3', '76', '05');
INSERT INTO `mark` VALUES ('75', '504', '31', '1', '3', '23', '05');
INSERT INTO `mark` VALUES ('76', '505', '31', '1', '3', '56', '05');
INSERT INTO `mark` VALUES ('77', 'Eng', '26', '1', '3', '11', '05');
INSERT INTO `mark` VALUES ('78', '201', '26', '1', '3', '22', '05');
INSERT INTO `mark` VALUES ('79', '202', '26', '1', '3', '33', '05');
INSERT INTO `mark` VALUES ('80', '203', '26', '1', '3', '44', '05');
INSERT INTO `mark` VALUES ('81', '204', '26', '1', '3', '55', '05');
INSERT INTO `mark` VALUES ('82', '205', '26', '1', '3', '66', '05');
INSERT INTO `mark` VALUES ('83', '206', '26', '1', '3', '77', '05');
INSERT INTO `mark` VALUES ('84', 'Eng', '28', '1', '3', '88', '05');
INSERT INTO `mark` VALUES ('86', '301', '28', '1', '3', '22', '05');
INSERT INTO `mark` VALUES ('87', '302', '28', '1', '3', '32', '05');
INSERT INTO `mark` VALUES ('88', '303', '28', '1', '3', '54', '05');
INSERT INTO `mark` VALUES ('89', '304', '28', '1', '3', '65', '05');
INSERT INTO `mark` VALUES ('90', '305', '28', '1', '3', '75', '05');
INSERT INTO `mark` VALUES ('91', '306', '28', '1', '3', '85', '05');
INSERT INTO `mark` VALUES ('92', 'Eng', '32', '1', '3', '32', '05');
INSERT INTO `mark` VALUES ('93', '401', '32', '1', '3', '76', '05');
INSERT INTO `mark` VALUES ('94', '402', '32', '1', '3', '54', '05');
INSERT INTO `mark` VALUES ('95', '403', '32', '1', '3', '87', '05');
INSERT INTO `mark` VALUES ('96', '404', '32', '1', '3', '32', '05');
INSERT INTO `mark` VALUES ('97', '405', '32', '1', '3', '45', '05');
INSERT INTO `mark` VALUES ('98', '406', '32', '1', '3', '56', '05');
INSERT INTO `mark` VALUES ('99', 'Eng', '17', '1', '3', '17', '05');
INSERT INTO `mark` VALUES ('100', '401', '17', '1', '3', '44', '05');
INSERT INTO `mark` VALUES ('101', '402', '17', '1', '3', '55', '05');
INSERT INTO `mark` VALUES ('102', '403', '17', '1', '3', '66', '05');
INSERT INTO `mark` VALUES ('103', '404', '17', '1', '3', '77', '05');
INSERT INTO `mark` VALUES ('104', '405', '17', '1', '3', '88', '05');
INSERT INTO `mark` VALUES ('105', '406', '17', '1', '3', '22', '05');
INSERT INTO `mark` VALUES ('106', 'Eng', '18', '1', '3', '32', '05');
INSERT INTO `mark` VALUES ('107', '401', '18', '1', '3', '54', '05');
INSERT INTO `mark` VALUES ('108', '402', '18', '1', '3', '65', '05');
INSERT INTO `mark` VALUES ('109', '403', '18', '1', '3', '75', '05');
INSERT INTO `mark` VALUES ('110', '404', '18', '1', '3', '85', '05');
INSERT INTO `mark` VALUES ('111', '405', '18', '1', '3', '32', '05');
INSERT INTO `mark` VALUES ('112', '406', '18', '1', '3', '76', '05');
INSERT INTO `mark` VALUES ('113', 'Eng', '19', '1', '3', '54', '05');
INSERT INTO `mark` VALUES ('114', '401', '19', '1', '3', '87', '05');
INSERT INTO `mark` VALUES ('115', '402', '19', '1', '3', '32', '05');
INSERT INTO `mark` VALUES ('116', '403', '19', '1', '3', '45', '05');
INSERT INTO `mark` VALUES ('117', '404', '19', '1', '3', '56', '05');
INSERT INTO `mark` VALUES ('118', '405', '19', '1', '3', '65', '05');
INSERT INTO `mark` VALUES ('119', '406', '19', '1', '3', '75', '05');
INSERT INTO `mark` VALUES ('120', 'Eng', '22', '1', '3', '85', '05');
INSERT INTO `mark` VALUES ('121', '501', '22', '1', '3', '32', '05');
INSERT INTO `mark` VALUES ('122', '502', '22', '1', '3', '76', '05');
INSERT INTO `mark` VALUES ('123', '503', '22', '1', '3', '54', '05');
INSERT INTO `mark` VALUES ('124', '504', '22', '1', '3', '87', '05');
INSERT INTO `mark` VALUES ('125', '505', '22', '1', '3', '32', '05');
INSERT INTO `mark` VALUES ('126', 'Eng', '25', '1', '3', '45', '05');
INSERT INTO `mark` VALUES ('127', '501', '25', '1', '3', '56', '05');
INSERT INTO `mark` VALUES ('128', '502', '25', '1', '3', '44', '05');
INSERT INTO `mark` VALUES ('129', '503', '25', '1', '3', '67', '05');
INSERT INTO `mark` VALUES ('130', '504', '25', '1', '3', '88', '05');
INSERT INTO `mark` VALUES ('131', '505', '25', '1', '3', '45', '05');
INSERT INTO `mark` VALUES ('132', '205', '02', '1', '3', '24', '05');
INSERT INTO `mark` VALUES ('133', '103', '06', '1', '3', '60', '05');
INSERT INTO `mark` VALUES ('134', '103', '07', '1', '3', '70', '05');
INSERT INTO `mark` VALUES ('135', '305', '29', '1', '3', '79', '05');
INSERT INTO `mark` VALUES ('136', '206', '02', '1', '3', '70', '05');
INSERT INTO `mark` VALUES ('137', '103', '05', '2', '3', '70', '05');
INSERT INTO `mark` VALUES ('147', '103', '05', '2', '2', '12', '03');
INSERT INTO `mark` VALUES ('148', '103', '06', '2', '2', '23', '03');
INSERT INTO `mark` VALUES ('149', '103', '07', '2', '2', '12', '03');
INSERT INTO `mark` VALUES ('150', '103', '05', '1', '4', '2', '05');
INSERT INTO `mark` VALUES ('168', '103', '05', '1', '1', '12', '05');
INSERT INTO `mark` VALUES ('169', '103', '06', '1', '1', '11', '05');
INSERT INTO `mark` VALUES ('170', '103', '07', '1', '1', '20', '05');

-- ----------------------------
-- Table structure for masterstudent
-- ----------------------------
DROP TABLE IF EXISTS `masterstudent`;
CREATE TABLE `masterstudent` (
  `Student_ID` varchar(225) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Roll_No` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of masterstudent
-- ----------------------------
INSERT INTO `masterstudent` VALUES ('01', 'Ma Hnin Woot Yee', '6CS(10)-34');
INSERT INTO `masterstudent` VALUES ('02', 'Ma Htet Htet Lin', '6CS(10)-33');
INSERT INTO `masterstudent` VALUES ('03', 'Khin Thandar Aung', '6CS(10)-6');
INSERT INTO `masterstudent` VALUES ('04', 'Ma Khing Aye Mon Bo', '6CS(10)-5');
INSERT INTO `masterstudent` VALUES ('05', 'Ma May Zin Oo', '6CS(10)-38');
INSERT INTO `masterstudent` VALUES ('06', 'Ma Theingi Tun', '6CS(10)-23');
INSERT INTO `masterstudent` VALUES ('07', 'Ma Thin Thin Soe', '6CS(10)-20');
INSERT INTO `masterstudent` VALUES ('08', 'Ma Thin Thin Soe', '6CS(10)-16');
INSERT INTO `masterstudent` VALUES ('09', 'Ma Thiri Htein', '6CS(10)-38');
INSERT INTO `masterstudent` VALUES ('10', 'Mg Phyo Min Zaw', '5Cs(Jr)-1');
INSERT INTO `masterstudent` VALUES ('11', 'Ma Ei Ei Mon ', '5Cs(Jr)-2');
INSERT INTO `masterstudent` VALUES ('12', 'Ma May Me Khin', '5Cs(Jr)-3');
INSERT INTO `masterstudent` VALUES ('13', 'Ma San San', '5Cs(Jr)-4');
INSERT INTO `masterstudent` VALUES ('14', 'Ma Nwe Yu Aung', '5Cs(Jr)-5');
INSERT INTO `masterstudent` VALUES ('15', 'Ma Naw Su Myittar', '5Cs(Jr)-7');
INSERT INTO `masterstudent` VALUES ('16', 'Ma Thandar Aung', '5Cs(Jr)-9');
INSERT INTO `masterstudent` VALUES ('17', 'Ma Myint Myint', '5Cs(Jr)-11');
INSERT INTO `masterstudent` VALUES ('18', 'Ma Nyein Thidar Swe', '5Cs(Jr)-13');
INSERT INTO `masterstudent` VALUES ('19', 'Mg Ye Lin Oo', '5Cs(Jr)-15');
INSERT INTO `masterstudent` VALUES ('20', 'Mg Thet Naung Myint', '5Cs(Jr)-18');
INSERT INTO `masterstudent` VALUES ('21', 'Ma Yee Mon Tun', '5Cs(Jr)-19');
INSERT INTO `masterstudent` VALUES ('22', 'Ma Myat Mon Oo', '5Cs(Jr)-21');
INSERT INTO `masterstudent` VALUES ('23', 'Ma Aye Aye Kyaw', '5Cs(Jr)-22');
INSERT INTO `masterstudent` VALUES ('24', 'Ma Khin Su Han', '5Cs(Jr)-24');
INSERT INTO `masterstudent` VALUES ('25', 'Ma Ei Mon Thandar Wint', '5Cs(Jr)-25');
INSERT INTO `masterstudent` VALUES ('26', 'Ma Mar Mar Nwe', '5Cs(Jr)-26');
INSERT INTO `masterstudent` VALUES ('27', 'Ma Khin Khin Oo', '5Cs(Jr)-27');
INSERT INTO `masterstudent` VALUES ('28', 'Ma Khin Myo Htet', '5Cs(Jr)-29');
INSERT INTO `masterstudent` VALUES ('29', 'Ma Myat Wutt Yee Phyo', '5Cs(Jr)-31');
INSERT INTO `masterstudent` VALUES ('30', 'Ma Thandar Swe', '5Cs(Jr)-26');
INSERT INTO `masterstudent` VALUES ('31', 'MaKhin Sandar Win', '5Cs(Jr)-38');
INSERT INTO `masterstudent` VALUES ('32', 'Ma Ohn Mar Myint', '5Cs(Jr)-39');
INSERT INTO `masterstudent` VALUES ('33', 'Mg Zarni Maung', '5Cs(Jr)-43');
INSERT INTO `masterstudent` VALUES ('34', 'Ma Thaw Thaw Oo', '5Cs(Jr)-48');
INSERT INTO `masterstudent` VALUES ('35', 'Ma Than Than Nu', '5Cs(Jr)-49');
INSERT INTO `masterstudent` VALUES ('36', 'Ma Nyomi Tun', '5Cs(Jr)-50');
INSERT INTO `masterstudent` VALUES ('37', 'Ma Nwe Kyi Pyar Thein', '5Cs(Jr)-52');
INSERT INTO `masterstudent` VALUES ('38', 'Mg Si Thu Kyaw San', '5Cs(Jr)-56');
INSERT INTO `masterstudent` VALUES ('39', 'Ma Myat Wutt Yi Win', '5Cs(Jr)-103');
INSERT INTO `masterstudent` VALUES ('40', 'Ma Khin Myo Han', '5Cs(Jr)-102');
INSERT INTO `masterstudent` VALUES ('41', 'Ma Ei Theint Theint Thu', '5Cs(Jr)-35');
INSERT INTO `masterstudent` VALUES ('42', 'Ma Mya Thinzar Wai', '5Cs(Jr)-104');
INSERT INTO `masterstudent` VALUES ('43', 'Ma Khin Thidar Aung', '6Cs(Jr)-4');
INSERT INTO `masterstudent` VALUES ('44', 'Ma Myint Myat Myo', '6Cs(Jr)-6');
INSERT INTO `masterstudent` VALUES ('45', 'Ma Aye Aye ', '6Cs(Jr)-7');
INSERT INTO `masterstudent` VALUES ('46', 'Ma Myat Su Mon', '6Cs(Jr)-9');
INSERT INTO `masterstudent` VALUES ('47', 'Ma Than Than Aye', '6Cs(Jr)-10');
INSERT INTO `masterstudent` VALUES ('48', 'Ma Khin Mar Aye', '6Cs(Jr)-13');
INSERT INTO `masterstudent` VALUES ('49', 'Ma Yu Yu Hlaing', '6Cs(Jr)-14');
INSERT INTO `masterstudent` VALUES ('50', 'Mg Zay Soe', '6Cs(Jr)-15');
INSERT INTO `masterstudent` VALUES ('51', 'Mg Min Thu Aung', '6Cs(Jr)-18');
INSERT INTO `masterstudent` VALUES ('52', 'Ma Hay Ma Hla Thein', '6Cs(Jr)-20');
INSERT INTO `masterstudent` VALUES ('53', 'Ma Thidar Kyaw Soe\r\n', '6Cs(Jr)-23');
INSERT INTO `masterstudent` VALUES ('54', 'Ma Kay Khaing Win', '6Cs(Jr)-24');
INSERT INTO `masterstudent` VALUES ('55', 'Mg Aung Thu Kyaw', '6Cs(Jr)-30');
INSERT INTO `masterstudent` VALUES ('56', 'Ma Nyein San Thu', '6Cs(Jr)-31');
INSERT INTO `masterstudent` VALUES ('57', 'Ma Nwe Nwe Nu Yin', '6Cs(Jr)-33');
INSERT INTO `masterstudent` VALUES ('58', 'Ma Myo Pa Pa Khaing', '6Cs(Jr)-36');
INSERT INTO `masterstudent` VALUES ('59', 'Ma Su Mon Yi', '6Cs(Jr)-39');
INSERT INTO `masterstudent` VALUES ('60', 'Ma May Thu Maung', '6Cs(Jr)-41');
INSERT INTO `masterstudent` VALUES ('61', 'Ma May Zin Myint', '6Cs(Jr)-42');
INSERT INTO `masterstudent` VALUES ('62', 'Ma Khin Phyo Wai', '6Cs(Jr)-44');
INSERT INTO `masterstudent` VALUES ('63', 'Ma Aye Su Mon', '6Cs(Jr)-49');
INSERT INTO `masterstudent` VALUES ('64', 'Ma Yin Min Htet', '6Cs(Jr)-56');
INSERT INTO `masterstudent` VALUES ('65', 'Mg Nay Toe Ko', '6Cs(Jr)-59');
INSERT INTO `masterstudent` VALUES ('66', 'Ma Su Su Khaing', '6Cs(Jr)-69');
INSERT INTO `masterstudent` VALUES ('67', 'Ma Lwin Lwin Maw', '6Cs(Jr)-70');
INSERT INTO `masterstudent` VALUES ('68', 'Ma Thae Mar Lwin', '6Cs(Jr)-71');
INSERT INTO `masterstudent` VALUES ('69', 'Ma Phyu Phyu Myint', '6Cs(Jr)-73');
INSERT INTO `masterstudent` VALUES ('70', 'Ma Honey San', '6Cs(Jr)-76');
INSERT INTO `masterstudent` VALUES ('71', 'Ma Moh Moh', '6Cs(Jr)-83');
INSERT INTO `masterstudent` VALUES ('72', 'Ma Thin Shwe War Thaung', '6Cs(Jr)-89');
INSERT INTO `masterstudent` VALUES ('73', 'Ma Su Wai Tun', '6Cs(Jr)-92');
INSERT INTO `masterstudent` VALUES ('74', 'Ma Kyi Pyar', '6Cs(Jr)-96');
INSERT INTO `masterstudent` VALUES ('75', 'Ma Saung Hnin Pwint Oo', '6Cs(09)-1');
INSERT INTO `masterstudent` VALUES ('76', 'Mg Kyaw Thu Win', '6Cs(09)-2');
INSERT INTO `masterstudent` VALUES ('77', 'Ma Su Myat Thu', '6Cs(09)-3');
INSERT INTO `masterstudent` VALUES ('78', 'Mg Toe Naing Win', '6Cs(09)-4');
INSERT INTO `masterstudent` VALUES ('79', 'Mg Toe Naing Win', '6Cs(09)-4');
INSERT INTO `masterstudent` VALUES ('79', 'Ma Myat Mon Aye', '6Cs(09)-5');
INSERT INTO `masterstudent` VALUES ('80', 'Ma Thae Nu Aung', '6Cs(09)-6');
INSERT INTO `masterstudent` VALUES ('81', 'Ma Ohn Mar', '6Cs(09)-10');
INSERT INTO `masterstudent` VALUES ('82', 'Ma Lat Lat Bone Kyawe', '6Cs(09)-12');
INSERT INTO `masterstudent` VALUES ('83', 'Ma Thae Seint Aye', '6Cs(09)-13');
INSERT INTO `masterstudent` VALUES ('84', 'Ma Tin Nilar Oo', '6Cs(09)-14');
INSERT INTO `masterstudent` VALUES ('85', 'Ma Thinzar Tun', '6Cs(09)-16');
INSERT INTO `masterstudent` VALUES ('86', 'Ma Pwint Mar Naing Win', '6Cs(09)-17');
INSERT INTO `masterstudent` VALUES ('87', 'Ma Kay Thi Nwe', '6Cs(09)-18');
INSERT INTO `masterstudent` VALUES ('88', 'Ma Khaing Mar Lar Myint', '6Cs(09)-19');
INSERT INTO `masterstudent` VALUES ('89', 'Ma May Thet Nwe', '6Cs(09)-20');
INSERT INTO `masterstudent` VALUES ('90', 'Mg Aung Aung', '6Cs(09)-21');
INSERT INTO `masterstudent` VALUES ('91', 'Ma Ei Phyu Phyu Soe', '6Cs(09)-23');
INSERT INTO `masterstudent` VALUES ('92', 'Ma May Zun Zaw', '6Cs(09)-24');
INSERT INTO `masterstudent` VALUES ('93', 'Ma Ei Ngwe Sin', '6Cs(09)-25');
INSERT INTO `masterstudent` VALUES ('94', 'Ma Lae Mon Ko', '6Cs(09)-33');
INSERT INTO `masterstudent` VALUES ('95', 'Ma Zin Win Nge Nge Htwe', '6Cs(09)-35');
INSERT INTO `masterstudent` VALUES ('96', 'Ma Theint', '6Cs(09)-36');
INSERT INTO `masterstudent` VALUES ('97', 'Ma Thin Myat Nwe', '6Cs(09)-37');
INSERT INTO `masterstudent` VALUES ('98', 'Ma Thiri Htein', '6Cs(09)-38');
INSERT INTO `masterstudent` VALUES ('99', 'Ma Myat Mon Kyaw', '6Cs(09)-40');
INSERT INTO `masterstudent` VALUES ('100', 'Ma Khin May Htoo', '6Cs(09)-41');
INSERT INTO `masterstudent` VALUES ('101', 'Ma Aye Myat Thu', '6Cs(09)-43');
INSERT INTO `masterstudent` VALUES ('102', 'Ma Win Pa Pa Tun', '6Cs(09)-44');
INSERT INTO `masterstudent` VALUES ('103', 'Ma New War Win', '6Cs(09)-47');
INSERT INTO `masterstudent` VALUES ('104', 'Ma Tin Su Wai', '6Cs(09)-48');
INSERT INTO `masterstudent` VALUES ('105', 'Ma Nwe Nwe Win', '6Cs(09)-49');
INSERT INTO `masterstudent` VALUES ('106', 'Ma Nu Nandar Lin', '6Cs(09)-51');
INSERT INTO `masterstudent` VALUES ('107', 'Ma Honey Lat', '6Cs(09)-56');
INSERT INTO `masterstudent` VALUES ('108', 'Ma Nwe Yi Lin', '6Cs(09)-57');
INSERT INTO `masterstudent` VALUES ('109', 'Ma Zar Zar Hlaing', '6Cs(09)-60');
INSERT INTO `masterstudent` VALUES ('110', 'Ma Ei Mon Cho', '6Cs(09)-62');
INSERT INTO `masterstudent` VALUES ('111', 'Ma Wai Mi Aung', '6Cs(09)-63');
INSERT INTO `masterstudent` VALUES ('112', 'MA Swe Zin Moe', '6Cs(09)-64');
INSERT INTO `masterstudent` VALUES ('113\r\n', 'Ma Phyo Phyo Wai', '6Cs(09)-67');
INSERT INTO `masterstudent` VALUES ('114', 'Ma Ei Ei Htwe', '6Cs(09)-68');
INSERT INTO `masterstudent` VALUES ('115', 'Mg Kyaw Zin Oo', '6Cs(09)-70');
INSERT INTO `masterstudent` VALUES ('116', 'Ma Hnin Su Khaing', '6Cs(09)-71');
INSERT INTO `masterstudent` VALUES ('117', 'Nann  Khaing Pwint Phyu', '6Cs(09)-90');
INSERT INTO `masterstudent` VALUES ('118', 'Tin Tin Nwe', '6Cs(09)-27');
INSERT INTO `masterstudent` VALUES ('119', 'Thet Nwe Aye', '6Cs(09)-59');
INSERT INTO `masterstudent` VALUES ('030', 'Aye Aye', '5CS-3');

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `SR_No` int(8) NOT NULL AUTO_INCREMENT,
  `Order_ID` int(11) NOT NULL,
  `Sub_ID` varchar(8) NOT NULL,
  PRIMARY KEY (`SR_No`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------
INSERT INTO `orderdetails` VALUES ('1', '3', '10');
INSERT INTO `orderdetails` VALUES ('2', '3', '11');
INSERT INTO `orderdetails` VALUES ('3', '3', '10');
INSERT INTO `orderdetails` VALUES ('4', '3', '8');
INSERT INTO `orderdetails` VALUES ('5', '3', '10');
INSERT INTO `orderdetails` VALUES ('6', '4', '11');
INSERT INTO `orderdetails` VALUES ('7', '5', '8');
INSERT INTO `orderdetails` VALUES ('8', '6', '13');
INSERT INTO `orderdetails` VALUES ('9', '4', '12');
INSERT INTO `orderdetails` VALUES ('10', '5', '120');
INSERT INTO `orderdetails` VALUES ('11', '6', '126');
INSERT INTO `orderdetails` VALUES ('12', '7', '113');
INSERT INTO `orderdetails` VALUES ('13', '8', '73');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '');
INSERT INTO `orders` VALUES ('2', '');
INSERT INTO `orders` VALUES ('3', '34234');
INSERT INTO `orders` VALUES ('4', '34234');
INSERT INTO `orders` VALUES ('5', '34234');
INSERT INTO `orders` VALUES ('6', '34234');
INSERT INTO `orders` VALUES ('7', '34234');
INSERT INTO `orders` VALUES ('8', '5CS-111');

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `P_ID` varchar(10) NOT NULL,
  `Page_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES ('P1', 'teacher_manage_department.php');
INSERT INTO `page` VALUES ('P2', 'teacher_detail.php');
INSERT INTO `page` VALUES ('P3', 'teacher_manage_all.php\r\n');

-- ----------------------------
-- Table structure for participant
-- ----------------------------
DROP TABLE IF EXISTS `participant`;
CREATE TABLE `participant` (
  `Participant_ID` varchar(10) NOT NULL,
  `Student_ID` varchar(10) NOT NULL,
  `Event_ID` varchar(10) NOT NULL,
  `No_Of_Session` int(5) NOT NULL,
  PRIMARY KEY (`Participant_ID`),
  FULLTEXT KEY `Froeign` (`Student_ID`,`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of participant
-- ----------------------------
INSERT INTO `participant` VALUES ('P_111', '01', 'E1', '2');
INSERT INTO `participant` VALUES ('P_112', '02', 'E2', '7');
INSERT INTO `participant` VALUES ('P_113', '04', 'E3', '7');
INSERT INTO `participant` VALUES ('P_114', '04', 'E4', '7');
INSERT INTO `participant` VALUES ('P_115', '05', 'E5', '7');
INSERT INTO `participant` VALUES ('P_116', '06', 'E6', '2');
INSERT INTO `participant` VALUES ('P_117', '07', 'E7', '7');
INSERT INTO `participant` VALUES ('P_118', '08', 'E8', '3');
INSERT INTO `participant` VALUES ('P_120', '09', 'E10', '4');
INSERT INTO `participant` VALUES ('P_121', '21', 'E11', '7');
INSERT INTO `participant` VALUES ('P_122', '11', 'E12', '4');
INSERT INTO `participant` VALUES ('P_123', '21', 'E13', '7');
INSERT INTO `participant` VALUES ('P_124', '25', 'E1', '2');
INSERT INTO `participant` VALUES ('P_125', '27', 'E1', '2');
INSERT INTO `participant` VALUES ('P_126', '04', 'E1', '2');
INSERT INTO `participant` VALUES ('P_127', '05', 'E1', '2');
INSERT INTO `participant` VALUES ('P_128', '23', 'E1', '2');
INSERT INTO `participant` VALUES ('P_129', '07', 'E1', '2');
INSERT INTO `participant` VALUES ('P_130', '08', 'E1', '2');
INSERT INTO `participant` VALUES ('P_131', '29', 'E1', '2');
INSERT INTO `participant` VALUES ('P_132', '10', 'E1', '2');
INSERT INTO `participant` VALUES ('P_134', '12', 'E1', '2');
INSERT INTO `participant` VALUES ('P_136', '14', 'E1', '2');
INSERT INTO `participant` VALUES ('P_138', '16', 'E1', '2');
INSERT INTO `participant` VALUES ('P_141', '19', 'E1', '2');
INSERT INTO `participant` VALUES ('P_143', '21', 'E1', '2');
INSERT INTO `participant` VALUES ('P_147', '25', 'E2', '7');
INSERT INTO `participant` VALUES ('P_148', '05', 'E2', '7');
INSERT INTO `participant` VALUES ('P_149', '04', 'E2', '7');
INSERT INTO `participant` VALUES ('P_150', '06', 'E2', '7');
INSERT INTO `participant` VALUES ('P_151', '07', 'E2', '7');
INSERT INTO `participant` VALUES ('P_152', '08', 'E2', '7');
INSERT INTO `participant` VALUES ('P_153', '09', 'E2', '7');
INSERT INTO `participant` VALUES ('P_154', '20', 'E2', '7');
INSERT INTO `participant` VALUES ('P_155', '21', 'E2', '7');
INSERT INTO `participant` VALUES ('P_156', '07', 'E3', '7');
INSERT INTO `participant` VALUES ('P_157', '12', 'E3', '7');
INSERT INTO `participant` VALUES ('P_158', '08', 'E3', '7');
INSERT INTO `participant` VALUES ('P_159', '14', 'E3', '7');
INSERT INTO `participant` VALUES ('P_160', '21', 'E3', '7');
INSERT INTO `participant` VALUES ('P_161', '16', 'E3', '7');
INSERT INTO `participant` VALUES ('P_162', '23', 'E3', '7');
INSERT INTO `participant` VALUES ('P_163', '25', 'E3', '7');
INSERT INTO `participant` VALUES ('P_164', '19', 'E3', '7');
INSERT INTO `participant` VALUES ('P_165', '01', 'E4', '7');
INSERT INTO `participant` VALUES ('P_166', '02', 'E4', '7');
INSERT INTO `participant` VALUES ('P_167', '03', 'E4', '7');
INSERT INTO `participant` VALUES ('P_168', '05', 'E4', '7');
INSERT INTO `participant` VALUES ('P_169', '06', 'E4', '7');
INSERT INTO `participant` VALUES ('P_170', '07', 'E4', '7');
INSERT INTO `participant` VALUES ('P_171', '08', 'E4', '7');
INSERT INTO `participant` VALUES ('P_172', '09', 'E4', '7');
INSERT INTO `participant` VALUES ('P_173', '10', 'E4', '7');
INSERT INTO `participant` VALUES ('P_174', '11', 'E4', '7');
INSERT INTO `participant` VALUES ('P_175', '12', 'E4', '7');
INSERT INTO `participant` VALUES ('P_176', '13', 'E4', '7');
INSERT INTO `participant` VALUES ('P_177', '14', 'E4', '7');
INSERT INTO `participant` VALUES ('P_178', '15', 'E4', '7');
INSERT INTO `participant` VALUES ('P_179', '16', 'E4', '7');
INSERT INTO `participant` VALUES ('P_180', '17', 'E4', '7');
INSERT INTO `participant` VALUES ('P_181', '18', 'E4', '7');
INSERT INTO `participant` VALUES ('P_182', '19', 'E4', '7');
INSERT INTO `participant` VALUES ('P_183', '20', 'E4', '7');
INSERT INTO `participant` VALUES ('P_184', '21', 'E4', '7');
INSERT INTO `participant` VALUES ('P_185', '22', 'E4', '7');
INSERT INTO `participant` VALUES ('P_186', '23', 'E4', '7');
INSERT INTO `participant` VALUES ('P_187', '24', 'E4', '7');
INSERT INTO `participant` VALUES ('P_188', '25', 'E4', '7');
INSERT INTO `participant` VALUES ('P_189', '04', 'E5', '7');
INSERT INTO `participant` VALUES ('P_190', '06', 'E5', '7');
INSERT INTO `participant` VALUES ('P_191', '07', 'E5', '7');
INSERT INTO `participant` VALUES ('P_192', '07', 'E5', '7');
INSERT INTO `participant` VALUES ('P_193', '08', 'E6', '2');
INSERT INTO `participant` VALUES ('P_194', '09', 'E6', '2');
INSERT INTO `participant` VALUES ('P_195', '10', 'E6', '2');
INSERT INTO `participant` VALUES ('P_196', '11', 'E6', '2');
INSERT INTO `participant` VALUES ('P_197', '12', 'E7', '7');
INSERT INTO `participant` VALUES ('P_198', '13', 'E7', '7');
INSERT INTO `participant` VALUES ('P_199', '14', 'E7', '7');
INSERT INTO `participant` VALUES ('P_200', '15', 'E7', '7');
INSERT INTO `participant` VALUES ('P_201', '16', 'E7', '7');
INSERT INTO `participant` VALUES ('P_202', '01', 'E8', '3');
INSERT INTO `participant` VALUES ('P_203', '02', 'E8', '3');
INSERT INTO `participant` VALUES ('P_204', '03', 'E8', '3');
INSERT INTO `participant` VALUES ('P_205', '04', 'E8', '3');
INSERT INTO `participant` VALUES ('P_206', '05', 'E8', '3');
INSERT INTO `participant` VALUES ('P_207', '06', 'E8', '3');
INSERT INTO `participant` VALUES ('P_208', '07', 'E8', '3');
INSERT INTO `participant` VALUES ('P_209', '09', 'E8', '3');
INSERT INTO `participant` VALUES ('P_210', '10', 'E8', '3');
INSERT INTO `participant` VALUES ('P_211', '11', 'E8', '3');
INSERT INTO `participant` VALUES ('P_212', '12', 'E8', '3');
INSERT INTO `participant` VALUES ('P_213', '13', 'E8', '3');
INSERT INTO `participant` VALUES ('P_214', '14', 'E8', '3');
INSERT INTO `participant` VALUES ('P_215', '15', 'E8', '3');
INSERT INTO `participant` VALUES ('P_216', '16', 'E8', '3');
INSERT INTO `participant` VALUES ('P_217', '17', 'E8', '3');
INSERT INTO `participant` VALUES ('P_218', '18', 'E8', '3');
INSERT INTO `participant` VALUES ('P_219', '19', 'E8', '3');
INSERT INTO `participant` VALUES ('P_220', '20', 'E8', '3');
INSERT INTO `participant` VALUES ('P_221', '21', 'E8', '3');
INSERT INTO `participant` VALUES ('P_222', '22', 'E8', '3');
INSERT INTO `participant` VALUES ('P_223', '23', 'E8', '3');
INSERT INTO `participant` VALUES ('P_224', '24', 'E8', '3');
INSERT INTO `participant` VALUES ('P_225', '25', 'E8', '3');
INSERT INTO `participant` VALUES ('P_226', '26', 'E8', '3');
INSERT INTO `participant` VALUES ('P_227', '27', 'E8', '3');
INSERT INTO `participant` VALUES ('P_228', '28', 'E8', '3');
INSERT INTO `participant` VALUES ('P_229', '29', 'E8', '3');
INSERT INTO `participant` VALUES ('P_230', '30', 'E8', '3');
INSERT INTO `participant` VALUES ('P_231', '26', 'E4', '7');
INSERT INTO `participant` VALUES ('P_232', '27', 'E4', '7');
INSERT INTO `participant` VALUES ('P_233', '28', 'E4', '7');
INSERT INTO `participant` VALUES ('P_234', '29', 'E4', '7');
INSERT INTO `participant` VALUES ('P_235', '30', 'E4', '7');
INSERT INTO `participant` VALUES ('P_236', '01', 'E10', '4');
INSERT INTO `participant` VALUES ('P_237', '02', 'E10', '4');
INSERT INTO `participant` VALUES ('P_238', '03', 'E10', '4');
INSERT INTO `participant` VALUES ('P_239', '04', 'E10', '4');
INSERT INTO `participant` VALUES ('P_240', '05', 'E10', '4');
INSERT INTO `participant` VALUES ('P_241', '06', 'E10', '4');
INSERT INTO `participant` VALUES ('P_242', '07', 'E10', '4');
INSERT INTO `participant` VALUES ('P_243', '08', 'E10', '4');
INSERT INTO `participant` VALUES ('P_244', '09', 'E10', '4');
INSERT INTO `participant` VALUES ('P_245', '11', 'E10', '4');
INSERT INTO `participant` VALUES ('P_246', '12', 'E10', '4');
INSERT INTO `participant` VALUES ('P_247', '13', 'E10', '4');
INSERT INTO `participant` VALUES ('P_248', '14', 'E10', '4');
INSERT INTO `participant` VALUES ('P_249', '15', 'E10', '4');
INSERT INTO `participant` VALUES ('P_250', '16', 'E10', '4');
INSERT INTO `participant` VALUES ('P_251', '17', 'E10', '4');
INSERT INTO `participant` VALUES ('P_252', '18', 'E10', '4');
INSERT INTO `participant` VALUES ('P_253', '19', 'E10', '4');
INSERT INTO `participant` VALUES ('P_254', '20', 'E10', '4');
INSERT INTO `participant` VALUES ('P_255', '21', 'E10', '4');
INSERT INTO `participant` VALUES ('P_256', '22', 'E10', '4');
INSERT INTO `participant` VALUES ('P_257', '23', 'E10', '4');
INSERT INTO `participant` VALUES ('P_258', '24', 'E10', '4');
INSERT INTO `participant` VALUES ('P_259', '25', 'E10', '4');
INSERT INTO `participant` VALUES ('P_260', '26', 'E10', '4');
INSERT INTO `participant` VALUES ('P_261', '27', 'E10', '4');
INSERT INTO `participant` VALUES ('P_262', '28', 'E10', '4');
INSERT INTO `participant` VALUES ('P_263', '29', 'E10', '4');
INSERT INTO `participant` VALUES ('P_264', '30', 'E10', '4');
INSERT INTO `participant` VALUES ('P_265', '22', 'E11', '7');
INSERT INTO `participant` VALUES ('P_266', '23', 'E11', '7');
INSERT INTO `participant` VALUES ('P_267', '24', 'E11', '7');
INSERT INTO `participant` VALUES ('P_268', '25', 'E11', '7');
INSERT INTO `participant` VALUES ('P_269', '01', 'E12', '4');
INSERT INTO `participant` VALUES ('P_270', '02', 'E12', '4');
INSERT INTO `participant` VALUES ('P_271', '03', 'E12', '4');
INSERT INTO `participant` VALUES ('P_272', '04', 'E12', '4');
INSERT INTO `participant` VALUES ('P_273', '05', 'E12', '4');
INSERT INTO `participant` VALUES ('P_274', '06', 'E12', '4');
INSERT INTO `participant` VALUES ('P_275', '07', 'E12', '4');
INSERT INTO `participant` VALUES ('P_276', '08', 'E12', '4');
INSERT INTO `participant` VALUES ('P_277', '09', 'E12', '4');
INSERT INTO `participant` VALUES ('P_278', '10', 'E12', '4');
INSERT INTO `participant` VALUES ('P_279', '11', 'E12', '4');
INSERT INTO `participant` VALUES ('P_280', '13', 'E12', '4');
INSERT INTO `participant` VALUES ('P_281', '14', 'E12', '4');
INSERT INTO `participant` VALUES ('P_282', '15', 'E12', '4');
INSERT INTO `participant` VALUES ('P_283', '16', 'E12', '4');
INSERT INTO `participant` VALUES ('P_284', '17', 'E12', '4');
INSERT INTO `participant` VALUES ('P_285', '18', 'E12', '4');
INSERT INTO `participant` VALUES ('P_286', '19', 'E12', '4');
INSERT INTO `participant` VALUES ('P_287', '20', 'E12', '4');
INSERT INTO `participant` VALUES ('P_288', '21', 'E12', '4');
INSERT INTO `participant` VALUES ('P_289', '22', 'E12', '4');
INSERT INTO `participant` VALUES ('P_290', '23', 'E12', '4');
INSERT INTO `participant` VALUES ('P_291', '24', 'E12', '4');
INSERT INTO `participant` VALUES ('P_292', '25', 'E12', '4');
INSERT INTO `participant` VALUES ('P_293', '26', 'E12', '4');
INSERT INTO `participant` VALUES ('P_294', '27', 'E12', '4');
INSERT INTO `participant` VALUES ('P_295', '28', 'E12', '4');
INSERT INTO `participant` VALUES ('P_296', '29', 'E12', '4');
INSERT INTO `participant` VALUES ('P_297', '30', 'E12', '4');
INSERT INTO `participant` VALUES ('P_298', '22', 'E13', '7');
INSERT INTO `participant` VALUES ('P_299', '23', 'E13', '7');
INSERT INTO `participant` VALUES ('P_300', '24', 'E13', '7');
INSERT INTO `participant` VALUES ('P_301', '25', 'E13', '7');

-- ----------------------------
-- Table structure for pass_fail
-- ----------------------------
DROP TABLE IF EXISTS `pass_fail`;
CREATE TABLE `pass_fail` (
  `PF_ID` varchar(8) DEFAULT NULL,
  `New_Roll_NO` int(11) DEFAULT NULL,
  `Student_ID` varchar(8) DEFAULT NULL,
  `Total_Mark` int(11) DEFAULT NULL,
  `Pass_Fail` varchar(8) DEFAULT NULL,
  `Academic_Year_ID` varchar(8) DEFAULT NULL,
  `Year_ID` varchar(8) DEFAULT NULL,
  `Major_ID` varchar(8) DEFAULT NULL,
  `Credit` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pass_fail
-- ----------------------------
INSERT INTO `pass_fail` VALUES (null, null, '10', '251', 'Fail', '05', '2', '2', ' ');
INSERT INTO `pass_fail` VALUES (null, null, '11', '64', 'Fail', '05', '3', '2', ' ');
INSERT INTO `pass_fail` VALUES (null, null, '05', '193', 'Fail', '05', '1', '1', ' ');
INSERT INTO `pass_fail` VALUES (null, null, '16', '105', 'Fail', '05', '4', '2', ' ');
INSERT INTO `pass_fail` VALUES (null, null, '21', '35', 'Fail', '05', '5', '2', ' ');
INSERT INTO `pass_fail` VALUES (null, null, '31', '62', 'Fail', '05', '5', '2', ' ');
INSERT INTO `pass_fail` VALUES (null, null, '26', '48', 'Fail', '05', '2', '3', ' ');
INSERT INTO `pass_fail` VALUES (null, null, '28', '117', 'Fail', '05', '3', '3', ' ');
INSERT INTO `pass_fail` VALUES (null, null, '32', '13', 'Fail', '05', '5', '2', ' ');
INSERT INTO `pass_fail` VALUES (null, null, '17', '118', 'Fail', '05', '4', '2', ' ');
INSERT INTO `pass_fail` VALUES (null, null, '18', '133', 'Fail', '05', '4', '2', ' ');

-- ----------------------------
-- Table structure for paymenthistory
-- ----------------------------
DROP TABLE IF EXISTS `paymenthistory`;
CREATE TABLE `paymenthistory` (
  `Sr_No` int(5) NOT NULL AUTO_INCREMENT,
  `Teacher_ID` varchar(10) DEFAULT NULL,
  `January` double(20,0) DEFAULT NULL,
  `February` double(20,0) DEFAULT NULL,
  `March` double(20,0) DEFAULT NULL,
  `April` double(20,0) DEFAULT NULL,
  `May` double(20,0) DEFAULT NULL,
  `June` double(20,0) DEFAULT NULL,
  `July` double(20,0) DEFAULT NULL,
  `August` double(20,0) DEFAULT NULL,
  `September` double(20,0) DEFAULT NULL,
  `October` double(20,0) DEFAULT NULL,
  `November` double(20,0) DEFAULT NULL,
  `December` double(20,0) DEFAULT NULL,
  `Year` int(5) DEFAULT NULL,
  PRIMARY KEY (`Sr_No`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of paymenthistory
-- ----------------------------
INSERT INTO `paymenthistory` VALUES ('1', 'MOST_103', '340000', '340000', '340000', '340000', '340000', '340000', '340000', '340000', '340000', '340000', '340000', '340000', '2016');
INSERT INTO `paymenthistory` VALUES ('2', 'MOST_104', '284000', '284000', '284000', '284000', '283655', '284000', '284000', '284000', '284000', '284000', '284000', '284000', '2016');
INSERT INTO `paymenthistory` VALUES ('3', 'MOST_107', '292000', '282499', '267455', '287249', '239914', '292000', '292000', '292000', '292000', '141290', '104300', '2920000', '2016');
INSERT INTO `paymenthistory` VALUES ('4', 'MOST_105', '250000', '250000', '250000', '250000', '250000', '250000', '250000', '250000', '242155', '250000', '250000', '250000', '2016');
INSERT INTO `paymenthistory` VALUES ('5', 'MOST-112', '258000', '258000', '258000', '258000', '27851', '280000', '280000', '280000', '280000', '280000', '280000', '280000', '2016');

-- ----------------------------
-- Table structure for percent_detail
-- ----------------------------
DROP TABLE IF EXISTS `percent_detail`;
CREATE TABLE `percent_detail` (
  `P_ID` varchar(8) NOT NULL,
  `Sub_ID` varchar(8) NOT NULL,
  `Year_ID` varchar(8) NOT NULL,
  PRIMARY KEY (`P_ID`),
  UNIQUE KEY `P_ID` (`P_ID`),
  KEY `P_ID_2` (`P_ID`),
  KEY `Sub_ID` (`Sub_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of percent_detail
-- ----------------------------
INSERT INTO `percent_detail` VALUES ('1', '33', '05');
INSERT INTO `percent_detail` VALUES ('10', '34', '05');
INSERT INTO `percent_detail` VALUES ('2', '33', '05');
INSERT INTO `percent_detail` VALUES ('3', '33', '05');
INSERT INTO `percent_detail` VALUES ('4', '33', '05');
INSERT INTO `percent_detail` VALUES ('5', '33', '05');
INSERT INTO `percent_detail` VALUES ('6', '34', '05');
INSERT INTO `percent_detail` VALUES ('7', '34', '05');
INSERT INTO `percent_detail` VALUES ('8', '34', '05');
INSERT INTO `percent_detail` VALUES ('9', '34', '05');

-- ----------------------------
-- Table structure for promotion
-- ----------------------------
DROP TABLE IF EXISTS `promotion`;
CREATE TABLE `promotion` (
  `Sr_No` int(5) NOT NULL,
  `Position_Name` varchar(20) DEFAULT NULL,
  `PromotionRule` int(11) DEFAULT NULL,
  `Increment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276;

-- ----------------------------
-- Records of promotion
-- ----------------------------
INSERT INTO `promotion` VALUES ('1', 'Rector', null, null);
INSERT INTO `promotion` VALUES ('2', 'Pre_Rector', null, null);
INSERT INTO `promotion` VALUES ('3', 'Professor', '1', '4000');
INSERT INTO `promotion` VALUES ('4', 'Assistant Professor', '3', '4000');
INSERT INTO `promotion` VALUES ('5', 'Lecture', '3', '4000');
INSERT INTO `promotion` VALUES ('6', 'Assistant Lecture', '3', '4000');
INSERT INTO `promotion` VALUES ('7', 'Tutor', '3', '2000');

-- ----------------------------
-- Table structure for provider
-- ----------------------------
DROP TABLE IF EXISTS `provider`;
CREATE TABLE `provider` (
  `Provider_ID` varchar(8) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Relationship` varchar(30) NOT NULL,
  `Occupation` varchar(50) NOT NULL,
  `Permanent_Address` varchar(50) NOT NULL,
  `Phone_Num` varchar(20) NOT NULL,
  `Student_ID` varchar(8) NOT NULL,
  PRIMARY KEY (`Provider_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of provider
-- ----------------------------
INSERT INTO `provider` VALUES ('00001', 'ဦးကျော်ခိုင်', 'အဖ', 'ကုန်သည်', '၈၄ လမ်း ၃၂*၃၃ ကြား၊ အိမ်အမှတ်(၁၅)', '၀၉၂၀၁၁၇၄၀', '01');
INSERT INTO `provider` VALUES ('00002', 'ဒေါ်သူဇာအောင်', 'အဒေါ်', 'ဆရာမ', 'ကွက်သစ်မြို့ ၊ တိုးချဲသုံးရပ်ကွက်', '၀၉၂၀၁၁၇၄၆', '02');
INSERT INTO `provider` VALUES ('00003', 'ဒေါ်ြမင့်ရီ', 'အမိ', 'ဆရာဝန်', 'စမာရွာ၊စဉ့်ကိုင်မြို့', '၀၉၂၀၁၁၇၅၆', '03');
INSERT INTO `provider` VALUES ('00004', 'ဦးမြင့်အောင်', 'ဦးလေး', 'ပွဲစား', 'တောင်ဥက္ကာလာမြို့ ၊ အိမ်အမှတ် (၁၈)', '၀၉၂၀၁၁၇၈၈', '04');
INSERT INTO `provider` VALUES ('00005', 'ဒေါ်သူဇာအေး', 'အမိ', 'ဆရာမ', 'တိုးချဲ (၄) ရပ်ကွက် ၊ အိမ်အမှတ် (၈)', '၀၉၂၀၁၁၇၃၅', '05');
INSERT INTO `provider` VALUES ('00006', 'ဒေါ်အေးပပထွန်း', 'အဒေါ်', 'မှီခို', '၈၄ လမ်း ၃၂*၃၃ ကြား၊ အိမ်အမှတ်(၅၀)', '၀၉၄၀၆၇၈၉၆၄', '06');
INSERT INTO `provider` VALUES ('00007', 'ဦးကျော်အေး', 'အမိ', 'ကုန်သည်', 'တိုးချဲ (၄) ရပ်ကွက် ၊ အိမ်အမှတ် (၈)', '၀၉၂၅၉၀၀၇၉၆၆', '07');
INSERT INTO `provider` VALUES ('00008', 'ဒေါ်မေရီလွင်', 'အမိ', 'မှီခို', 'စမာရွာ၊စဉ့်ကိုင်မြို့', '၀၉၄၀၆၇၈၉၉၃', '08');
INSERT INTO `provider` VALUES ('00009', 'ဦးအောင်အေး', 'ဦးလေး', 'ကုန်သည်', 'မြောက်ဥက္ကာလာမြို့ ၊ အိမ်အမှတ် (၁၈)', '၀၉၂၀၁၁၇၅၆', '09');
INSERT INTO `provider` VALUES ('00010', 'ဦးကျော်ကျော်', 'အဖ', 'ပွဲစား', '၈၄ လမ်း ၃၂*၃၃ ကြား၊ အိမ်အမှတ်(၅၀)', '၀၉၂၀၁၁၇၅၆', '10');

-- ----------------------------
-- Table structure for receipt
-- ----------------------------
DROP TABLE IF EXISTS `receipt`;
CREATE TABLE `receipt` (
  `ReceiptID` int(11) NOT NULL AUTO_INCREMENT,
  `ReceiptNo` varchar(8) NOT NULL,
  `ReceiptBookNo` varchar(8) NOT NULL,
  `ReceiptTotal` varchar(10) NOT NULL,
  `ReceiptDate` date NOT NULL,
  `Student_ID` varchar(8) NOT NULL,
  PRIMARY KEY (`ReceiptID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of receipt
-- ----------------------------
INSERT INTO `receipt` VALUES ('1', '33', '2', '90000', '2017-07-11', '05');

-- ----------------------------
-- Table structure for receiptdetail
-- ----------------------------
DROP TABLE IF EXISTS `receiptdetail`;
CREATE TABLE `receiptdetail` (
  `ReceiptDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `ReceiptID` int(11) NOT NULL,
  `FeeCategoryID` int(11) NOT NULL,
  PRIMARY KEY (`ReceiptDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of receiptdetail
-- ----------------------------
INSERT INTO `receiptdetail` VALUES ('1', '1', '1');
INSERT INTO `receiptdetail` VALUES ('2', '1', '2');
INSERT INTO `receiptdetail` VALUES ('3', '1', '3');
INSERT INTO `receiptdetail` VALUES ('4', '1', '4');
INSERT INTO `receiptdetail` VALUES ('5', '1', '5');
INSERT INTO `receiptdetail` VALUES ('6', '1', '6');
INSERT INTO `receiptdetail` VALUES ('7', '1', '7');
INSERT INTO `receiptdetail` VALUES ('8', '1', '22');
INSERT INTO `receiptdetail` VALUES ('9', '1', '23');
INSERT INTO `receiptdetail` VALUES ('10', '1', '24');
INSERT INTO `receiptdetail` VALUES ('11', '1', '25');
INSERT INTO `receiptdetail` VALUES ('12', '1', '26');
INSERT INTO `receiptdetail` VALUES ('13', '1', '27');
INSERT INTO `receiptdetail` VALUES ('14', '1', '28');
INSERT INTO `receiptdetail` VALUES ('15', '1', '43');
INSERT INTO `receiptdetail` VALUES ('16', '1', '44');
INSERT INTO `receiptdetail` VALUES ('17', '1', '45');
INSERT INTO `receiptdetail` VALUES ('18', '1', '46');
INSERT INTO `receiptdetail` VALUES ('19', '1', '47');
INSERT INTO `receiptdetail` VALUES ('20', '1', '48');
INSERT INTO `receiptdetail` VALUES ('21', '1', '49');
INSERT INTO `receiptdetail` VALUES ('22', '1', '71');
INSERT INTO `receiptdetail` VALUES ('23', '1', '72');
INSERT INTO `receiptdetail` VALUES ('24', '1', '73');
INSERT INTO `receiptdetail` VALUES ('25', '1', '74');
INSERT INTO `receiptdetail` VALUES ('26', '1', '75');
INSERT INTO `receiptdetail` VALUES ('27', '1', '76');
INSERT INTO `receiptdetail` VALUES ('28', '1', '77');
INSERT INTO `receiptdetail` VALUES ('29', '1', '99');
INSERT INTO `receiptdetail` VALUES ('30', '1', '100');
INSERT INTO `receiptdetail` VALUES ('31', '1', '101');
INSERT INTO `receiptdetail` VALUES ('32', '1', '102');
INSERT INTO `receiptdetail` VALUES ('33', '1', '103');
INSERT INTO `receiptdetail` VALUES ('34', '1', '104');
INSERT INTO `receiptdetail` VALUES ('35', '1', '105');

-- ----------------------------
-- Table structure for relatedcourse
-- ----------------------------
DROP TABLE IF EXISTS `relatedcourse`;
CREATE TABLE `relatedcourse` (
  `No` int(8) NOT NULL AUTO_INCREMENT,
  `Sub_ID` int(8) NOT NULL,
  `related_ID` int(8) NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relatedcourse
-- ----------------------------
INSERT INTO `relatedcourse` VALUES ('1', '4', '14');
INSERT INTO `relatedcourse` VALUES ('2', '4', '32');
INSERT INTO `relatedcourse` VALUES ('3', '4', '47');
INSERT INTO `relatedcourse` VALUES ('4', '4', '68');
INSERT INTO `relatedcourse` VALUES ('5', '6', '0');
INSERT INTO `relatedcourse` VALUES ('6', '7', '17');
INSERT INTO `relatedcourse` VALUES ('7', '7', '27');
INSERT INTO `relatedcourse` VALUES ('8', '8', '16');
INSERT INTO `relatedcourse` VALUES ('9', '8', '34');
INSERT INTO `relatedcourse` VALUES ('10', '8', '49');
INSERT INTO `relatedcourse` VALUES ('11', '8', '69');
INSERT INTO `relatedcourse` VALUES ('12', '9', '20');
INSERT INTO `relatedcourse` VALUES ('13', '9', '76');
INSERT INTO `relatedcourse` VALUES ('14', '10', '0');
INSERT INTO `relatedcourse` VALUES ('15', '11', '17');
INSERT INTO `relatedcourse` VALUES ('16', '12', '24');
INSERT INTO `relatedcourse` VALUES ('17', '12', '29');
INSERT INTO `relatedcourse` VALUES ('18', '13', '0');
INSERT INTO `relatedcourse` VALUES ('19', '14', '4');
INSERT INTO `relatedcourse` VALUES ('20', '14', '32');
INSERT INTO `relatedcourse` VALUES ('21', '14', '47');
INSERT INTO `relatedcourse` VALUES ('22', '14', '68');
INSERT INTO `relatedcourse` VALUES ('23', '15', '38');
INSERT INTO `relatedcourse` VALUES ('24', '16', '8');
INSERT INTO `relatedcourse` VALUES ('25', '16', '34');
INSERT INTO `relatedcourse` VALUES ('26', '16', '49');
INSERT INTO `relatedcourse` VALUES ('27', '16', '69');
INSERT INTO `relatedcourse` VALUES ('28', '17', '11');
INSERT INTO `relatedcourse` VALUES ('29', '18', '36');
INSERT INTO `relatedcourse` VALUES ('30', '18', '51');
INSERT INTO `relatedcourse` VALUES ('31', '18', '57');
INSERT INTO `relatedcourse` VALUES ('32', '18', '75');
INSERT INTO `relatedcourse` VALUES ('33', '19', '54');
INSERT INTO `relatedcourse` VALUES ('34', '20', '9');
INSERT INTO `relatedcourse` VALUES ('35', '21', '36');
INSERT INTO `relatedcourse` VALUES ('36', '21', '52');
INSERT INTO `relatedcourse` VALUES ('37', '22', '25');
INSERT INTO `relatedcourse` VALUES ('38', '22', '56');
INSERT INTO `relatedcourse` VALUES ('39', '23', '0');
INSERT INTO `relatedcourse` VALUES ('40', '24', '15');
INSERT INTO `relatedcourse` VALUES ('41', '25', '22');
INSERT INTO `relatedcourse` VALUES ('42', '25', '56');
INSERT INTO `relatedcourse` VALUES ('43', '26', '7');
INSERT INTO `relatedcourse` VALUES ('44', '27', '20');
INSERT INTO `relatedcourse` VALUES ('45', '28', '44');
INSERT INTO `relatedcourse` VALUES ('46', '29', '12');
INSERT INTO `relatedcourse` VALUES ('47', '30', '25');
INSERT INTO `relatedcourse` VALUES ('48', '30', '56');
INSERT INTO `relatedcourse` VALUES ('49', '31', '45');
INSERT INTO `relatedcourse` VALUES ('50', '32', '4');
INSERT INTO `relatedcourse` VALUES ('51', '32', '14');
INSERT INTO `relatedcourse` VALUES ('52', '32', '47');
INSERT INTO `relatedcourse` VALUES ('53', '32', '68');
INSERT INTO `relatedcourse` VALUES ('54', '33', '55');
INSERT INTO `relatedcourse` VALUES ('55', '33', '70');
INSERT INTO `relatedcourse` VALUES ('56', '34', '8');
INSERT INTO `relatedcourse` VALUES ('57', '34', '16');
INSERT INTO `relatedcourse` VALUES ('58', '34', '49');
INSERT INTO `relatedcourse` VALUES ('59', '34', '69');
INSERT INTO `relatedcourse` VALUES ('60', '35', '40');
INSERT INTO `relatedcourse` VALUES ('61', '35', '82');
INSERT INTO `relatedcourse` VALUES ('62', '36', '52');
INSERT INTO `relatedcourse` VALUES ('63', '36', '20');
INSERT INTO `relatedcourse` VALUES ('64', '37', '27');
INSERT INTO `relatedcourse` VALUES ('65', '38', '15');
INSERT INTO `relatedcourse` VALUES ('66', '39', '33');
INSERT INTO `relatedcourse` VALUES ('67', '40', '35');
INSERT INTO `relatedcourse` VALUES ('68', '41', '18');
INSERT INTO `relatedcourse` VALUES ('69', '41', '51');
INSERT INTO `relatedcourse` VALUES ('70', '41', '57');
INSERT INTO `relatedcourse` VALUES ('71', '41', '75');
INSERT INTO `relatedcourse` VALUES ('72', '42', '60');
INSERT INTO `relatedcourse` VALUES ('73', '43', '62');
INSERT INTO `relatedcourse` VALUES ('74', '44', '28');
INSERT INTO `relatedcourse` VALUES ('75', '45', '31');
INSERT INTO `relatedcourse` VALUES ('76', '46', '28');
INSERT INTO `relatedcourse` VALUES ('77', '40', '82');
INSERT INTO `relatedcourse` VALUES ('78', '47', '4');
INSERT INTO `relatedcourse` VALUES ('79', '47', '14');
INSERT INTO `relatedcourse` VALUES ('80', '47', '32');
INSERT INTO `relatedcourse` VALUES ('81', '47', '68');
INSERT INTO `relatedcourse` VALUES ('82', '48', '69');
INSERT INTO `relatedcourse` VALUES ('83', '49', '8');
INSERT INTO `relatedcourse` VALUES ('84', '49', '16');
INSERT INTO `relatedcourse` VALUES ('85', '49', '34');
INSERT INTO `relatedcourse` VALUES ('86', '50', '72');
INSERT INTO `relatedcourse` VALUES ('87', '51', '18');
INSERT INTO `relatedcourse` VALUES ('88', '51', '57');
INSERT INTO `relatedcourse` VALUES ('89', '51', '41');
INSERT INTO `relatedcourse` VALUES ('90', '51', '75');
INSERT INTO `relatedcourse` VALUES ('91', '52', '21');
INSERT INTO `relatedcourse` VALUES ('92', '52', '36');
INSERT INTO `relatedcourse` VALUES ('93', '53', '73');
INSERT INTO `relatedcourse` VALUES ('94', '54', '19');
INSERT INTO `relatedcourse` VALUES ('95', '55', '39');
INSERT INTO `relatedcourse` VALUES ('96', '56', '22');
INSERT INTO `relatedcourse` VALUES ('97', '56', '25');
INSERT INTO `relatedcourse` VALUES ('98', '57', '18');
INSERT INTO `relatedcourse` VALUES ('99', '58', '74');
INSERT INTO `relatedcourse` VALUES ('100', '59', '73');
INSERT INTO `relatedcourse` VALUES ('101', '60', '42');
INSERT INTO `relatedcourse` VALUES ('102', '61', '43');
INSERT INTO `relatedcourse` VALUES ('103', '61', '77');
INSERT INTO `relatedcourse` VALUES ('104', '62', '43');
INSERT INTO `relatedcourse` VALUES ('105', '63', '35');
INSERT INTO `relatedcourse` VALUES ('106', '64', '18');
INSERT INTO `relatedcourse` VALUES ('107', '64', '41');
INSERT INTO `relatedcourse` VALUES ('108', '64', '57');
INSERT INTO `relatedcourse` VALUES ('109', '65', '78');
INSERT INTO `relatedcourse` VALUES ('110', '66', '78');
INSERT INTO `relatedcourse` VALUES ('111', '67', '62');
INSERT INTO `relatedcourse` VALUES ('112', '67', '80');
INSERT INTO `relatedcourse` VALUES ('113', '68', '4');
INSERT INTO `relatedcourse` VALUES ('114', '68', '14');
INSERT INTO `relatedcourse` VALUES ('115', '68', '32');
INSERT INTO `relatedcourse` VALUES ('116', '68', '47');
INSERT INTO `relatedcourse` VALUES ('117', '69', '8');
INSERT INTO `relatedcourse` VALUES ('118', '69', '16');
INSERT INTO `relatedcourse` VALUES ('119', '69', '34');
INSERT INTO `relatedcourse` VALUES ('120', '69', '49');
INSERT INTO `relatedcourse` VALUES ('121', '70', '33');
INSERT INTO `relatedcourse` VALUES ('122', '71', '79');
INSERT INTO `relatedcourse` VALUES ('123', '72', '50');
INSERT INTO `relatedcourse` VALUES ('124', '73', '59');
INSERT INTO `relatedcourse` VALUES ('125', '74', '58');
INSERT INTO `relatedcourse` VALUES ('126', '75', '18');
INSERT INTO `relatedcourse` VALUES ('127', '75', '41');
INSERT INTO `relatedcourse` VALUES ('128', '75', '51');
INSERT INTO `relatedcourse` VALUES ('129', '76', '0');
INSERT INTO `relatedcourse` VALUES ('130', '77', '33');
INSERT INTO `relatedcourse` VALUES ('131', '78', '65');
INSERT INTO `relatedcourse` VALUES ('132', '79', '40');
INSERT INTO `relatedcourse` VALUES ('133', '80', '0');
INSERT INTO `relatedcourse` VALUES ('134', '81', '0');
INSERT INTO `relatedcourse` VALUES ('135', '82', '40');
INSERT INTO `relatedcourse` VALUES ('136', '1', '0');
INSERT INTO `relatedcourse` VALUES ('137', '2', '0');
INSERT INTO `relatedcourse` VALUES ('138', '3', '0');
INSERT INTO `relatedcourse` VALUES ('139', '4', '0');
INSERT INTO `relatedcourse` VALUES ('140', '83', '0');
INSERT INTO `relatedcourse` VALUES ('141', '84', '0');
INSERT INTO `relatedcourse` VALUES ('142', '85', '0');
INSERT INTO `relatedcourse` VALUES ('143', '86', '68');
INSERT INTO `relatedcourse` VALUES ('144', '86', '14');
INSERT INTO `relatedcourse` VALUES ('145', '86', '32');
INSERT INTO `relatedcourse` VALUES ('146', '86', '47');
INSERT INTO `relatedcourse` VALUES ('147', '87', '0');
INSERT INTO `relatedcourse` VALUES ('148', '5', '0');
INSERT INTO `relatedcourse` VALUES ('149', '88', '0');
INSERT INTO `relatedcourse` VALUES ('150', '89', '4');
INSERT INTO `relatedcourse` VALUES ('151', '89', '32');
INSERT INTO `relatedcourse` VALUES ('152', '89', '47');
INSERT INTO `relatedcourse` VALUES ('153', '89', '68');
INSERT INTO `relatedcourse` VALUES ('154', '90', '8');
INSERT INTO `relatedcourse` VALUES ('155', '90', '34');
INSERT INTO `relatedcourse` VALUES ('156', '90', '49');
INSERT INTO `relatedcourse` VALUES ('157', '90', '69');
INSERT INTO `relatedcourse` VALUES ('158', '91', '9');
INSERT INTO `relatedcourse` VALUES ('159', '92', '36');
INSERT INTO `relatedcourse` VALUES ('160', '92', '52');
INSERT INTO `relatedcourse` VALUES ('161', '93', '25');
INSERT INTO `relatedcourse` VALUES ('162', '93', '56');
INSERT INTO `relatedcourse` VALUES ('163', '94', '8');
INSERT INTO `relatedcourse` VALUES ('164', '94', '32');
INSERT INTO `relatedcourse` VALUES ('165', '94', '47');
INSERT INTO `relatedcourse` VALUES ('166', '94', '68');
INSERT INTO `relatedcourse` VALUES ('167', '95', '23');
INSERT INTO `relatedcourse` VALUES ('168', '96', '8');
INSERT INTO `relatedcourse` VALUES ('169', '96', '34');
INSERT INTO `relatedcourse` VALUES ('170', '96', '49');
INSERT INTO `relatedcourse` VALUES ('171', '96', '69');
INSERT INTO `relatedcourse` VALUES ('172', '97', '11');
INSERT INTO `relatedcourse` VALUES ('173', '98', '41');
INSERT INTO `relatedcourse` VALUES ('174', '98', '51');
INSERT INTO `relatedcourse` VALUES ('175', '98', '57');
INSERT INTO `relatedcourse` VALUES ('176', '98', '64');
INSERT INTO `relatedcourse` VALUES ('177', '99', '4');
INSERT INTO `relatedcourse` VALUES ('178', '99', '14');
INSERT INTO `relatedcourse` VALUES ('179', '99', '47');
INSERT INTO `relatedcourse` VALUES ('180', '99', '68');
INSERT INTO `relatedcourse` VALUES ('181', '100', '8');
INSERT INTO `relatedcourse` VALUES ('182', '100', '16');
INSERT INTO `relatedcourse` VALUES ('183', '100', '49');
INSERT INTO `relatedcourse` VALUES ('184', '100', '69');
INSERT INTO `relatedcourse` VALUES ('185', '101', '27');
INSERT INTO `relatedcourse` VALUES ('186', '101', '9');
INSERT INTO `relatedcourse` VALUES ('187', '102', '15');
INSERT INTO `relatedcourse` VALUES ('188', '103', '44');
INSERT INTO `relatedcourse` VALUES ('189', '104', '4');
INSERT INTO `relatedcourse` VALUES ('190', '104', '14');
INSERT INTO `relatedcourse` VALUES ('191', '104', '47');
INSERT INTO `relatedcourse` VALUES ('192', '104', '68');
INSERT INTO `relatedcourse` VALUES ('193', '105', '55');
INSERT INTO `relatedcourse` VALUES ('194', '105', '70');
INSERT INTO `relatedcourse` VALUES ('195', '106', '8');
INSERT INTO `relatedcourse` VALUES ('196', '106', '16');
INSERT INTO `relatedcourse` VALUES ('197', '106', '49');
INSERT INTO `relatedcourse` VALUES ('198', '106', '69');
INSERT INTO `relatedcourse` VALUES ('199', '107', '40');
INSERT INTO `relatedcourse` VALUES ('200', '107', '82');
INSERT INTO `relatedcourse` VALUES ('201', '108', '8');
INSERT INTO `relatedcourse` VALUES ('202', '108', '16');
INSERT INTO `relatedcourse` VALUES ('203', '108', '69');
INSERT INTO `relatedcourse` VALUES ('204', '108', '49');
INSERT INTO `relatedcourse` VALUES ('205', '109', '55');
INSERT INTO `relatedcourse` VALUES ('206', '109', '33');
INSERT INTO `relatedcourse` VALUES ('207', '110', '35');
INSERT INTO `relatedcourse` VALUES ('208', '110', '82');
INSERT INTO `relatedcourse` VALUES ('209', '111', '60');
INSERT INTO `relatedcourse` VALUES ('210', '112', '4');
INSERT INTO `relatedcourse` VALUES ('211', '112', '14');
INSERT INTO `relatedcourse` VALUES ('212', '112', '32');
INSERT INTO `relatedcourse` VALUES ('213', '112', '68');
INSERT INTO `relatedcourse` VALUES ('214', '113', '8');
INSERT INTO `relatedcourse` VALUES ('215', '113', '16');
INSERT INTO `relatedcourse` VALUES ('216', '113', '34');
INSERT INTO `relatedcourse` VALUES ('217', '113', '69');
INSERT INTO `relatedcourse` VALUES ('218', '114', '4');
INSERT INTO `relatedcourse` VALUES ('219', '114', '14');
INSERT INTO `relatedcourse` VALUES ('220', '114', '32');
INSERT INTO `relatedcourse` VALUES ('221', '114', '68');
INSERT INTO `relatedcourse` VALUES ('222', '115', '8');
INSERT INTO `relatedcourse` VALUES ('223', '115', '16');
INSERT INTO `relatedcourse` VALUES ('224', '115', '34');
INSERT INTO `relatedcourse` VALUES ('225', '115', '69');
INSERT INTO `relatedcourse` VALUES ('226', '116', '4');
INSERT INTO `relatedcourse` VALUES ('227', '116', '14');
INSERT INTO `relatedcourse` VALUES ('228', '116', '32');
INSERT INTO `relatedcourse` VALUES ('229', '116', '68');
INSERT INTO `relatedcourse` VALUES ('230', '117', '8');
INSERT INTO `relatedcourse` VALUES ('231', '117', '16');
INSERT INTO `relatedcourse` VALUES ('232', '117', '34');
INSERT INTO `relatedcourse` VALUES ('233', '117', '69');
INSERT INTO `relatedcourse` VALUES ('234', '118', '77');
INSERT INTO `relatedcourse` VALUES ('235', '118', '37');
INSERT INTO `relatedcourse` VALUES ('236', '119', '4');
INSERT INTO `relatedcourse` VALUES ('237', '119', '14');
INSERT INTO `relatedcourse` VALUES ('238', '119', '32');
INSERT INTO `relatedcourse` VALUES ('239', '119', '47');
INSERT INTO `relatedcourse` VALUES ('240', '120', '8');
INSERT INTO `relatedcourse` VALUES ('241', '120', '16');
INSERT INTO `relatedcourse` VALUES ('242', '120', '34');
INSERT INTO `relatedcourse` VALUES ('243', '120', '49');
INSERT INTO `relatedcourse` VALUES ('244', '121', '33');
INSERT INTO `relatedcourse` VALUES ('245', '122', '4');
INSERT INTO `relatedcourse` VALUES ('246', '122', '14');
INSERT INTO `relatedcourse` VALUES ('247', '122', '32');
INSERT INTO `relatedcourse` VALUES ('248', '122', '47');
INSERT INTO `relatedcourse` VALUES ('249', '123', '4');
INSERT INTO `relatedcourse` VALUES ('250', '123', '14');
INSERT INTO `relatedcourse` VALUES ('251', '123', '32');
INSERT INTO `relatedcourse` VALUES ('252', '123', '47');

-- ----------------------------
-- Table structure for rentdetail
-- ----------------------------
DROP TABLE IF EXISTS `rentdetail`;
CREATE TABLE `rentdetail` (
  `rent_ID` int(8) NOT NULL AUTO_INCREMENT,
  `admin_ID` varchar(8) DEFAULT NULL,
  `Teacher_ID` varchar(8) DEFAULT NULL,
  `Student_ID` varchar(8) DEFAULT NULL,
  `book_ID` varchar(10) DEFAULT NULL,
  `rent_Date` varchar(15) DEFAULT NULL,
  `return_Date` varchar(11) DEFAULT NULL,
  `fine` int(10) DEFAULT NULL,
  PRIMARY KEY (`rent_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rentdetail
-- ----------------------------
INSERT INTO `rentdetail` VALUES ('1', 'ad123', null, '3CS-30', 'L(934)', '12/3/2017', '19/3/2017', null);
INSERT INTO `rentdetail` VALUES ('2', 'ad123', 'MOST_102', null, 'L(932)', '23/4/2017', '26/4/2017', null);
INSERT INTO `rentdetail` VALUES ('3', 'ad654', 'MOST_114', null, 'L(912)', '30/3/2017', '3/4/2017', null);
INSERT INTO `rentdetail` VALUES ('4', 'ad654', 'MOST_124', null, 'L(905)', '1/1/2017', '5/1/2017', null);
INSERT INTO `rentdetail` VALUES ('5', 'ad123', 'MOST_115', null, 'L(889)', '2/1/2017', '6/1/2017', null);
INSERT INTO `rentdetail` VALUES ('6', 'ad123', null, '1CST-27', 'D(302)', '12/1/2017', '', null);
INSERT INTO `rentdetail` VALUES ('7', 'ad654', null, '2CS-70', 'D(291)', '2/3/2017', '12/3/2017', null);
INSERT INTO `rentdetail` VALUES ('8', 'ad654', null, '5CS-22', 'D(224)', '12/3/2017', '21/3/2017', null);
INSERT INTO `rentdetail` VALUES ('9', 'ad654', null, '3CS-74', 'D(311)', '23/4/2017', '30/4/2017', null);
INSERT INTO `rentdetail` VALUES ('10', 'ad123', null, '4CS-31', 'L(888)', '11/4/2017', '16/4/2017', null);
INSERT INTO `rentdetail` VALUES ('11', null, null, '02', '0001', '2017/8/22', null, null);
INSERT INTO `rentdetail` VALUES ('12', null, null, '5CS-22', '1654', '2017/8/2', null, null);
INSERT INTO `rentdetail` VALUES ('13', null, 'MOST_119', null, '102', '2017/8/2', null, null);

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `Result_ID` varchar(8) DEFAULT NULL,
  `Student_ID` varchar(8) DEFAULT NULL,
  `Serial_No` int(11) DEFAULT NULL,
  `Total_Mark` int(11) DEFAULT NULL,
  `Distinction` varchar(8) DEFAULT NULL,
  `Academic_Year_ID` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES (null, '10', '8', '54', ' ', '05');
INSERT INTO `result` VALUES (null, '10', '0', '30', ' ', '05');
INSERT INTO `result` VALUES (null, '10', '0', '6', ' ', '05');
INSERT INTO `result` VALUES (null, '10', '0', '20', ' ', '05');
INSERT INTO `result` VALUES (null, '10', '0', '12', ' ', '05');
INSERT INTO `result` VALUES (null, '10', '13', '70', ' ', '05');
INSERT INTO `result` VALUES (null, '10', '14', '58', ' ', '05');
INSERT INTO `result` VALUES (null, '11', '15', '22', ' ', '05');
INSERT INTO `result` VALUES (null, '11', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '11', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '11', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '11', '19', '35', ' ', '05');
INSERT INTO `result` VALUES (null, '11', '20', '7', ' ', '05');
INSERT INTO `result` VALUES (null, '11', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '05', '1', '18', ' ', '05');
INSERT INTO `result` VALUES (null, '05', '2', '22', ' ', '05');
INSERT INTO `result` VALUES (null, '05', '3', '31', ' ', '05');
INSERT INTO `result` VALUES (null, '05', '4', '31', ' ', '05');
INSERT INTO `result` VALUES (null, '05', '5', '27', ' ', '05');
INSERT INTO `result` VALUES (null, '05', '6', '42', ' ', '05');
INSERT INTO `result` VALUES (null, '05', '7', '23', ' ', '05');
INSERT INTO `result` VALUES (null, '16', '22', '4', ' ', '05');
INSERT INTO `result` VALUES (null, '16', '23', '9', ' ', '05');
INSERT INTO `result` VALUES (null, '16', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '16', '25', '18', ' ', '05');
INSERT INTO `result` VALUES (null, '16', '26', '17', ' ', '05');
INSERT INTO `result` VALUES (null, '16', '27', '26', ' ', '05');
INSERT INTO `result` VALUES (null, '16', '28', '31', ' ', '05');
INSERT INTO `result` VALUES (null, '21', '29', '13', ' ', '05');
INSERT INTO `result` VALUES (null, '21', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '21', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '21', '32', '22', ' ', '05');
INSERT INTO `result` VALUES (null, '21', '33', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '21', '34', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '31', '29', '31', ' ', '05');
INSERT INTO `result` VALUES (null, '31', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '31', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '31', '32', '30', ' ', '05');
INSERT INTO `result` VALUES (null, '31', '33', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '31', '34', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '26', '8', '4', ' ', '05');
INSERT INTO `result` VALUES (null, '26', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '26', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '26', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '26', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '26', '13', '13', ' ', '05');
INSERT INTO `result` VALUES (null, '26', '14', '31', ' ', '05');
INSERT INTO `result` VALUES (null, '28', '15', '35', ' ', '05');
INSERT INTO `result` VALUES (null, '28', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '28', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '28', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '28', '19', '26', ' ', '05');
INSERT INTO `result` VALUES (null, '28', '20', '26', ' ', '05');
INSERT INTO `result` VALUES (null, '28', '21', '30', ' ', '05');
INSERT INTO `result` VALUES (null, '32', '29', '13', ' ', '05');
INSERT INTO `result` VALUES (null, '32', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '32', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '32', '32', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '32', '33', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '32', '34', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '17', '22', '7', ' ', '05');
INSERT INTO `result` VALUES (null, '17', '23', '18', ' ', '05');
INSERT INTO `result` VALUES (null, '17', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '17', '25', '26', ' ', '05');
INSERT INTO `result` VALUES (null, '17', '26', '23', ' ', '05');
INSERT INTO `result` VALUES (null, '17', '27', '35', ' ', '05');
INSERT INTO `result` VALUES (null, '17', '28', '9', ' ', '05');
INSERT INTO `result` VALUES (null, '18', '22', '13', ' ', '05');
INSERT INTO `result` VALUES (null, '18', '23', '22', ' ', '05');
INSERT INTO `result` VALUES (null, '18', '0', '0', ' ', '05');
INSERT INTO `result` VALUES (null, '18', '25', '30', ' ', '05');
INSERT INTO `result` VALUES (null, '18', '26', '26', ' ', '05');
INSERT INTO `result` VALUES (null, '18', '27', '13', ' ', '05');
INSERT INTO `result` VALUES (null, '18', '28', '30', ' ', '05');
INSERT INTO `result` VALUES (null, '19', '22', '22', ' ', '05');
INSERT INTO `result` VALUES (null, '19', '23', '35', ' ', '05');
INSERT INTO `result` VALUES (null, '19', '0', '0', ' ', '05');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `Room_ID` varchar(10) NOT NULL,
  `Capacity` int(5) NOT NULL,
  `Category_ID` int(5) NOT NULL,
  PRIMARY KEY (`Room_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('Machine_A', '50', '2');
INSERT INTO `room` VALUES ('Machine_B', '50', '2');
INSERT INTO `room` VALUES ('Machine_D', '50', '2');
INSERT INTO `room` VALUES ('Machine_G', '50', '2');
INSERT INTO `room` VALUES ('Machine_H', '50', '2');
INSERT INTO `room` VALUES ('R100', '50', '1');
INSERT INTO `room` VALUES ('R101', '50', '1');
INSERT INTO `room` VALUES ('R102', '50', '1');
INSERT INTO `room` VALUES ('R103', '50', '1');
INSERT INTO `room` VALUES ('R104', '50', '1');
INSERT INTO `room` VALUES ('R106', '50', '1');

-- ----------------------------
-- Table structure for roomdetail
-- ----------------------------
DROP TABLE IF EXISTS `roomdetail`;
CREATE TABLE `roomdetail` (
  `RoomDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `HostelID` int(11) NOT NULL,
  `RoomTypeID` int(11) NOT NULL,
  `RoomPrice` varchar(6) NOT NULL,
  PRIMARY KEY (`RoomDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roomdetail
-- ----------------------------
INSERT INTO `roomdetail` VALUES ('1', '1', '2', '25000');
INSERT INTO `roomdetail` VALUES ('2', '2', '2', '20000');
INSERT INTO `roomdetail` VALUES ('3', '2', '5', '20000');
INSERT INTO `roomdetail` VALUES ('4', '3', '2', '25000');
INSERT INTO `roomdetail` VALUES ('5', '3', '3', '25000');
INSERT INTO `roomdetail` VALUES ('6', '4', '2', '20000');
INSERT INTO `roomdetail` VALUES ('7', '5', '1', '20000');
INSERT INTO `roomdetail` VALUES ('8', '6', '1', '20000');
INSERT INTO `roomdetail` VALUES ('9', '6', '2', '20000');
INSERT INTO `roomdetail` VALUES ('10', '6', '3', '20000');
INSERT INTO `roomdetail` VALUES ('11', '7', '1', '25000');
INSERT INTO `roomdetail` VALUES ('12', '8', '1', '25000');
INSERT INTO `roomdetail` VALUES ('13', '8', '2', '40000');
INSERT INTO `roomdetail` VALUES ('14', '9', '5', '15000');
INSERT INTO `roomdetail` VALUES ('15', '10', '1', '30000');
INSERT INTO `roomdetail` VALUES ('16', '10', '2', '30000');
INSERT INTO `roomdetail` VALUES ('17', '10', '5', '20000');
INSERT INTO `roomdetail` VALUES ('18', '11', '1', '25000');
INSERT INTO `roomdetail` VALUES ('19', '12', '2', '20000');
INSERT INTO `roomdetail` VALUES ('20', '13', '4', '20000');
INSERT INTO `roomdetail` VALUES ('21', '14', '2', '40000');
INSERT INTO `roomdetail` VALUES ('22', '15', '2', '50000');
INSERT INTO `roomdetail` VALUES ('23', '15', '3', '50000');
INSERT INTO `roomdetail` VALUES ('24', '16', '2', '30000');
INSERT INTO `roomdetail` VALUES ('25', '16', '3', '30000');
INSERT INTO `roomdetail` VALUES ('26', '16', '4', '30000');
INSERT INTO `roomdetail` VALUES ('27', '17', '5', '40000');
INSERT INTO `roomdetail` VALUES ('28', '18', '2', '40000');
INSERT INTO `roomdetail` VALUES ('29', '19', '2', '35000');
INSERT INTO `roomdetail` VALUES ('30', '20', '3', '40000');
INSERT INTO `roomdetail` VALUES ('31', '20', '4', '40000');
INSERT INTO `roomdetail` VALUES ('32', '21', '3', '25000');
INSERT INTO `roomdetail` VALUES ('33', '22', '3', '35000');
INSERT INTO `roomdetail` VALUES ('34', '22', '4', '35000');
INSERT INTO `roomdetail` VALUES ('35', '22', '5', '35000');
INSERT INTO `roomdetail` VALUES ('36', '23', '3', '40000');
INSERT INTO `roomdetail` VALUES ('37', '24', '2', '40000');
INSERT INTO `roomdetail` VALUES ('38', '25', '2', '50000');
INSERT INTO `roomdetail` VALUES ('39', '25', '3', '50000');
INSERT INTO `roomdetail` VALUES ('40', '26', '2', '65000');
INSERT INTO `roomdetail` VALUES ('41', '26', '2', '80000');
INSERT INTO `roomdetail` VALUES ('42', '26', '3', '65000');
INSERT INTO `roomdetail` VALUES ('43', '26', '3', '80000');
INSERT INTO `roomdetail` VALUES ('44', '27', '2', '55000');
INSERT INTO `roomdetail` VALUES ('45', '27', '2', '55000');
INSERT INTO `roomdetail` VALUES ('46', '28', '3', '25000');
INSERT INTO `roomdetail` VALUES ('47', '29', '2', '30000');
INSERT INTO `roomdetail` VALUES ('48', '30', '4', '45000');
INSERT INTO `roomdetail` VALUES ('49', '30', '4', '65000');
INSERT INTO `roomdetail` VALUES ('50', '31', '2', '40000');
INSERT INTO `roomdetail` VALUES ('51', '31', '3', '40000');
INSERT INTO `roomdetail` VALUES ('52', '32', '2', '30000');
INSERT INTO `roomdetail` VALUES ('53', '33', '2', '25000');
INSERT INTO `roomdetail` VALUES ('54', '34', '5', '25000');
INSERT INTO `roomdetail` VALUES ('55', '35', '2', '20000');
INSERT INTO `roomdetail` VALUES ('56', '36', '2', '20000');
INSERT INTO `roomdetail` VALUES ('57', '37', '5', '20000');
INSERT INTO `roomdetail` VALUES ('58', '38', '1', '25000');
INSERT INTO `roomdetail` VALUES ('59', '38', '2', '25000');
INSERT INTO `roomdetail` VALUES ('60', '38', '4', '25000');
INSERT INTO `roomdetail` VALUES ('61', '38', '5', '25000');
INSERT INTO `roomdetail` VALUES ('62', '39', '5', '20000');
INSERT INTO `roomdetail` VALUES ('63', '40', '4', '25000');
INSERT INTO `roomdetail` VALUES ('64', '41', '3', '20000');
INSERT INTO `roomdetail` VALUES ('65', '42', '2', '35000');
INSERT INTO `roomdetail` VALUES ('66', '42', '2', '40000');
INSERT INTO `roomdetail` VALUES ('67', '43', '1', '80000');
INSERT INTO `roomdetail` VALUES ('68', '43', '2', '50000');
INSERT INTO `roomdetail` VALUES ('69', '44', '1', '60000');
INSERT INTO `roomdetail` VALUES ('70', '45', '1', '30000');
INSERT INTO `roomdetail` VALUES ('71', '46', '2', '30000');
INSERT INTO `roomdetail` VALUES ('72', '47', '2', '25000');
INSERT INTO `roomdetail` VALUES ('73', '47', '2', '30000');
INSERT INTO `roomdetail` VALUES ('74', '48', '2', '35000');
INSERT INTO `roomdetail` VALUES ('75', '49', '2', '45000');
INSERT INTO `roomdetail` VALUES ('76', '50', '1', '70000');
INSERT INTO `roomdetail` VALUES ('77', '50', '2', '40000');
INSERT INTO `roomdetail` VALUES ('78', '51', '3', '25000');
INSERT INTO `roomdetail` VALUES ('79', '52', '1', '90000');
INSERT INTO `roomdetail` VALUES ('80', '52', '2', '45000');
INSERT INTO `roomdetail` VALUES ('81', '52', '1', '95000');
INSERT INTO `roomdetail` VALUES ('82', '52', '2', '50000');
INSERT INTO `roomdetail` VALUES ('83', '53', '5', '35000');
INSERT INTO `roomdetail` VALUES ('84', '54', '2', '35000');
INSERT INTO `roomdetail` VALUES ('85', '55', '3', '35000');
INSERT INTO `roomdetail` VALUES ('86', '56', '1', '40000');
INSERT INTO `roomdetail` VALUES ('87', '56', '2', '35000');
INSERT INTO `roomdetail` VALUES ('88', '57', '2', '40000');
INSERT INTO `roomdetail` VALUES ('89', '57', '2', '45000');
INSERT INTO `roomdetail` VALUES ('90', '58', '1', '70000');
INSERT INTO `roomdetail` VALUES ('91', '59', '1', '50000');
INSERT INTO `roomdetail` VALUES ('92', '59', '1', '75000');
INSERT INTO `roomdetail` VALUES ('93', '59', '2', '35000');
INSERT INTO `roomdetail` VALUES ('94', '59', '2', '50000');
INSERT INTO `roomdetail` VALUES ('95', '60', '2', '25000');
INSERT INTO `roomdetail` VALUES ('96', '61', '1', '70000');
INSERT INTO `roomdetail` VALUES ('97', '61', '2', '40000');
INSERT INTO `roomdetail` VALUES ('98', '62', '1', '35000');
INSERT INTO `roomdetail` VALUES ('99', '62', '1', '43000');
INSERT INTO `roomdetail` VALUES ('100', '62', '2', '30000');
INSERT INTO `roomdetail` VALUES ('101', '62', '2', '38000');
INSERT INTO `roomdetail` VALUES ('102', '63', '1', '60000');
INSERT INTO `roomdetail` VALUES ('103', '63', '2', '40000');
INSERT INTO `roomdetail` VALUES ('104', '64', '2', '30000');
INSERT INTO `roomdetail` VALUES ('105', '64', '3', '30000');
INSERT INTO `roomdetail` VALUES ('106', '64', '4', '30000');
INSERT INTO `roomdetail` VALUES ('107', '64', '2', '36000');
INSERT INTO `roomdetail` VALUES ('108', '64', '3', '36000');
INSERT INTO `roomdetail` VALUES ('109', '64', '4', '36000');
INSERT INTO `roomdetail` VALUES ('110', '65', '2', '20000');
INSERT INTO `roomdetail` VALUES ('111', '66', '2', '20000');
INSERT INTO `roomdetail` VALUES ('112', '67', '1', '25000');
INSERT INTO `roomdetail` VALUES ('113', '67', '2', '15000');
INSERT INTO `roomdetail` VALUES ('114', '68', '2', '12000');
INSERT INTO `roomdetail` VALUES ('115', '69', '2', '15000');
INSERT INTO `roomdetail` VALUES ('116', '70', '4', '45000');

-- ----------------------------
-- Table structure for roomtype
-- ----------------------------
DROP TABLE IF EXISTS `roomtype`;
CREATE TABLE `roomtype` (
  `RoomTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `RoomType` varchar(30) NOT NULL,
  PRIMARY KEY (`RoomTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roomtype
-- ----------------------------
INSERT INTO `roomtype` VALUES ('1', 'Single Room');
INSERT INTO `roomtype` VALUES ('2', 'Double Room');
INSERT INTO `roomtype` VALUES ('3', 'Triple Room');
INSERT INTO `roomtype` VALUES ('4', 'Quadruple Room');
INSERT INTO `roomtype` VALUES ('5', 'Hall Room');

-- ----------------------------
-- Table structure for route
-- ----------------------------
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route` (
  `RouteID` int(11) NOT NULL AUTO_INCREMENT,
  `CarNo` varchar(10) DEFAULT NULL,
  `Way` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`RouteID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of route
-- ----------------------------
INSERT INTO `route` VALUES ('1', '8E6884', '66,67,68,69,70,71,72,73,74,75,76,77,78St,MHAM');
INSERT INTO `route` VALUES ('2', '8H7311', 'Sein Pan,CATS,MHAM');
INSERT INTO `route` VALUES ('3', '8K5566', '67,69,70,81,82St,MHAM,89St,CATS');
INSERT INTO `route` VALUES ('4', '8G5854', '62,63,64,65,66,73St,AMTS,PTG,CATS,MHAM');
INSERT INTO `route` VALUES ('5', '3M7980', '55,59,69,74,73,66,St,CATS');
INSERT INTO `route` VALUES ('6', '8E6808', 'AMYPY');
INSERT INTO `route` VALUES ('7', '1H2002', '69,70,71,72,73,74,St,MHAM');
INSERT INTO `route` VALUES ('8', '8C2213', 'Sein Pan, MHAM,AMYPY');
INSERT INTO `route` VALUES ('9', '8J8103', 'PGTK,AMYPY');
INSERT INTO `route` VALUES ('10', '8J9248', 'Singaing to CUMDY');
INSERT INTO `route` VALUES ('11', '8B4817', 'Sintgaing to CUMDY');
INSERT INTO `route` VALUES ('12', '7E1145', '78,79,80,89,AMTS,CATS');
INSERT INTO `route` VALUES ('13', '8K9165', '82,83,89,90,91,92,86,87,88,St,AMTS,CATS,AHAM');
INSERT INTO `route` VALUES ('14', '8L9832', 'Sagaing to CUMDY');
INSERT INTO `route` VALUES ('15', '1K3583', 'Sagaing to CUMDY');
INSERT INTO `route` VALUES ('16', '8E2819', 'Sein Pan, MHAM');
INSERT INTO `route` VALUES ('17', '8M4914', 'AMTS');
INSERT INTO `route` VALUES ('18', '9L6385', 'Mdy');
INSERT INTO `route` VALUES ('19', '7H8245', 'Mdy');
INSERT INTO `route` VALUES ('20', '8F4736', '91,84,MHAM');
INSERT INTO `route` VALUES ('21', '8I5956', 'Mdy');
INSERT INTO `route` VALUES ('22', '6L6761', 'Sintgaing to CUMDY');
INSERT INTO `route` VALUES ('23', '1H9209', 'Sintgaing to CUMDY');
INSERT INTO `route` VALUES ('24', '8L7550', 'Sintgaing to CUMDY');
INSERT INTO `route` VALUES ('25', '8K8562', 'Sintgaing to CUMDY');
INSERT INTO `route` VALUES ('26', '8M2039', 'Sagaing to CUMDY');
INSERT INTO `route` VALUES ('27', '8K1706', 'CMTS,PGTK,SM');
INSERT INTO `route` VALUES ('28', '8M2610', 'Sintgaing to CUMDY');
INSERT INTO `route` VALUES ('29', '8C4845', 'Sintgaing to CUMDY');
INSERT INTO `route` VALUES ('30', '8K7796', 'Sintgaing to CUMDY');
INSERT INTO `route` VALUES ('31', '1H9204', 'Sintgaing to CUMDY');
INSERT INTO `route` VALUES ('32', '8K6938', 'Sintgaing to CUMDY');
INSERT INTO `route` VALUES ('33', '8I1353', 'Sein Pan, 69,76,78 St,MHAM');
INSERT INTO `route` VALUES ('34', '6J1975', '68,69,72,73,70,83,84,75,CATS,MHAM');
INSERT INTO `route` VALUES ('35', '8E8335', 'Sintgaing to CUMDY');
INSERT INTO `route` VALUES ('36', '1G3349', 'Myittarr to CUMDY');
INSERT INTO `route` VALUES ('37', '8G4665', 'Sagaing to CUMDY');
INSERT INTO `route` VALUES ('38', '8K4400', 'Sagaing to CUMDY');
INSERT INTO `route` VALUES ('39', '8G2538', '66,69St,MHAM,CMTS');
INSERT INTO `route` VALUES ('40', '4E6852', 'CMTS');
INSERT INTO `route` VALUES ('41', '8G3827', 'MHAM,AMTS,CMTS');
INSERT INTO `route` VALUES ('42', '8C5892', '82,83,86,87,90,91,66,68,71,72,73,69St,AMTS,CMTS,MHAM');
INSERT INTO `route` VALUES ('43', '8M7389', 'Aung Pin Lal ,Myat Yi Nan Na,Tin Man Kon,62 St,CMTS');
INSERT INTO `route` VALUES ('44', '8G3015', '90,88,AMTS');
INSERT INTO `route` VALUES ('45', '7E5740', 'Sintgaing to CUMDY');
INSERT INTO `route` VALUES ('46', '6F7627', 'Aung Thar Ya,Aung Pin Lal,Myat Yi Nan Na,58 St,SM,CMTS');
INSERT INTO `route` VALUES ('47', '1G6626', '73,74,76,83,86,87,89,AMTS,CATS');
INSERT INTO `route` VALUES ('48', '8I5211', '56,57,58,59,61,62,65,66,73,74,75,AMTS,CATS');
INSERT INTO `route` VALUES ('49', '8L7269', 'SM');
INSERT INTO `route` VALUES ('50', '8H3695', 'Kyaukse to CUMDY');
INSERT INTO `route` VALUES ('51', '8F4706', 'Kyaukse to CUMDY');
INSERT INTO `route` VALUES ('52', '7M3270', 'AMYPY');

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `Pscale-ID` varchar(5) NOT NULL,
  `MaxSalary` int(11) NOT NULL,
  `MinSalary` int(11) NOT NULL,
  PRIMARY KEY (`Pscale-ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1820;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES ('P001', '0', '0');
INSERT INTO `salary` VALUES ('P002', '400000', '380000');
INSERT INTO `salary` VALUES ('P003', '360000', '340000');
INSERT INTO `salary` VALUES ('P004', '330000', '310000');
INSERT INTO `salary` VALUES ('P005', '300000', '280000');
INSERT INTO `salary` VALUES ('P006', '270000', '250000');
INSERT INTO `salary` VALUES ('P007', '190000', '180000');

-- ----------------------------
-- Table structure for scholarship
-- ----------------------------
DROP TABLE IF EXISTS `scholarship`;
CREATE TABLE `scholarship` (
  `Sr_No` int(8) NOT NULL AUTO_INCREMENT,
  `Scholar_ID` varchar(8) NOT NULL,
  `Teacher_ID` varchar(8) DEFAULT NULL,
  `Student_ID` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`Sr_No`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of scholarship
-- ----------------------------
INSERT INTO `scholarship` VALUES ('1', 'sch001', 'MOST_137', null);
INSERT INTO `scholarship` VALUES ('2', 'sch002', 'MOST_129', null);
INSERT INTO `scholarship` VALUES ('3', 'sch003', null, '31');
INSERT INTO `scholarship` VALUES ('4', 'sch004', 'MOST_106', null);
INSERT INTO `scholarship` VALUES ('5', 'sch005', 'MOST_109', null);
INSERT INTO `scholarship` VALUES ('6', 'sch006', 'MOST_150', null);
INSERT INTO `scholarship` VALUES ('7', 'sch007', 'MOST_165', null);
INSERT INTO `scholarship` VALUES ('8', 'sch008', 'MOST_135', null);
INSERT INTO `scholarship` VALUES ('9', 'sch009', 'MOST_156', null);
INSERT INTO `scholarship` VALUES ('18', 'sch010', null, '27');
INSERT INTO `scholarship` VALUES ('20', 'sch011', null, '33');

-- ----------------------------
-- Table structure for scholarshipdetail
-- ----------------------------
DROP TABLE IF EXISTS `scholarshipdetail`;
CREATE TABLE `scholarshipdetail` (
  `Scholar_ID` varchar(8) NOT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `University` varchar(10) DEFAULT NULL,
  `Degree` varchar(10) DEFAULT NULL,
  `Duration` varchar(10) DEFAULT NULL,
  `Acedamic_Year_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Scholar_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of scholarshipdetail
-- ----------------------------
INSERT INTO `scholarshipdetail` VALUES ('sch001', 'Mdy', 'Myanmar', 'UCSY', 'PHD', '3 years', '05');
INSERT INTO `scholarshipdetail` VALUES ('sch002', 'Mdy', 'Myanmar', 'UCSM', 'PHD', '3 years', '05');
INSERT INTO `scholarshipdetail` VALUES ('sch003', '-', 'Singapore', 'UIT', 'Diploma', '1 year', '01');
INSERT INTO `scholarshipdetail` VALUES ('sch004', 'Mdy', 'Myanmar', 'UCSM', 'PHD', '3 years', '05');
INSERT INTO `scholarshipdetail` VALUES ('sch005', 'Mdy', 'Myanmar', 'UCSM', 'PHD', '3 years', '05');
INSERT INTO `scholarshipdetail` VALUES ('sch006', 'Mdy', 'Myanmar', 'UCSM', 'PHD', '3year', '05');
INSERT INTO `scholarshipdetail` VALUES ('sch007', 'Mdy', 'Myanmar', 'UCSM', 'PhD', '5year', '05');
INSERT INTO `scholarshipdetail` VALUES ('sch008', 'Mdy', 'Myanmar', 'UCSM', 'PHD', '3 years', '05');
INSERT INTO `scholarshipdetail` VALUES ('sch009', 'Mdy', 'Myanmar', 'UCSM', 'PHD', '3 years', '05');
INSERT INTO `scholarshipdetail` VALUES ('sch010', 'Mdy', 'Korea', 'KDI school', 'Master', '2 year', '06');
INSERT INTO `scholarshipdetail` VALUES ('sch011', '--', 'Singapore', '----', 'Master', '1 year', '02');

-- ----------------------------
-- Table structure for scholarshippic
-- ----------------------------
DROP TABLE IF EXISTS `scholarshippic`;
CREATE TABLE `scholarshippic` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `image` varchar(15) NOT NULL,
  `name` varchar(60) NOT NULL,
  `link` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of scholarshippic
-- ----------------------------
INSERT INTO `scholarshippic` VALUES ('1', 'People.jpg', 'Synchromedia Phd Scholarship in Canada 2017', 'www.scholarship.com');
INSERT INTO `scholarshippic` VALUES ('2', 'Award.jpg', 'ITT Doublin President\'s Research Award Scheme', 'www.scholarship.com');
INSERT INTO `scholarshippic` VALUES ('3', 'Grad.jpg', '25 Fully Funded Scholarships for International Student', 'www.scholars4dev.com');
INSERT INTO `scholarshippic` VALUES ('4', 'Stu.jpg', 'Computer Science Scholarships & Aid ComputerScience', 'www.computerscience.org');

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `Section_ID` varchar(8) NOT NULL,
  `Section_Name` varchar(30) NOT NULL,
  `Year_ID` varchar(8) DEFAULT NULL,
  `Major_ID` varchar(8) DEFAULT NULL,
  `Academic_Year_ID` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`Section_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES ('1', 'Section(A)', '1', '1', '05');
INSERT INTO `section` VALUES ('10', 'Section(B)', '3', '2', '05');
INSERT INTO `section` VALUES ('11', 'Section(C)', '3', '2', '05');
INSERT INTO `section` VALUES ('12', 'Section(D)', '3', '2', '05');
INSERT INTO `section` VALUES ('13', 'Section(A)', '4', '2', '05');
INSERT INTO `section` VALUES ('14', 'Section(B)', '4', '2', '05');
INSERT INTO `section` VALUES ('15', 'Section(C)', '4', '2', '05');
INSERT INTO `section` VALUES ('16', 'Section(D)', '4', '2', '05');
INSERT INTO `section` VALUES ('17', 'Section(A)', '5', '2', '05');
INSERT INTO `section` VALUES ('18', 'Section(B)', '5', '2', '05');
INSERT INTO `section` VALUES ('19', 'Section(C)', '5', '2', '05');
INSERT INTO `section` VALUES ('2', 'Section(B)', '1', '1', '05');
INSERT INTO `section` VALUES ('20', 'Section(D)', '5', '2', '05');
INSERT INTO `section` VALUES ('21', 'Section(A)', '5', '3', '05');
INSERT INTO `section` VALUES ('22', 'Section(A)', '3', '3', '05');
INSERT INTO `section` VALUES ('3', 'Section(C)', '1', '2', '05');
INSERT INTO `section` VALUES ('4', 'Section(D)', '1', '2', '05');
INSERT INTO `section` VALUES ('5', 'Section(A)', '2', '2', '05');
INSERT INTO `section` VALUES ('6', 'Section(B)', '2', '2', '05');
INSERT INTO `section` VALUES ('7', 'Section(C)', '2', '2', '05');
INSERT INTO `section` VALUES ('8', 'Section(D)', '2', '2', '05');
INSERT INTO `section` VALUES ('9', 'Section(A)', '3', '2', '05');

-- ----------------------------
-- Table structure for section_detail
-- ----------------------------
DROP TABLE IF EXISTS `section_detail`;
CREATE TABLE `section_detail` (
  `Section_Detail_ID` varchar(8) NOT NULL,
  `Student_ID` varchar(8) DEFAULT NULL,
  `Result_ID` varchar(8) DEFAULT NULL,
  `Section_ID` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`Section_Detail_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of section_detail
-- ----------------------------
INSERT INTO `section_detail` VALUES ('001', '01', '100', '1');
INSERT INTO `section_detail` VALUES ('002', '02', '101', '5');
INSERT INTO `section_detail` VALUES ('003', '03', '103', '6');
INSERT INTO `section_detail` VALUES ('004', '04', '104', '6');
INSERT INTO `section_detail` VALUES ('005', '05', '105', '1');
INSERT INTO `section_detail` VALUES ('006', '06', '106', '1');
INSERT INTO `section_detail` VALUES ('007', '07', '107', '1');
INSERT INTO `section_detail` VALUES ('009', '09', '109', '2');
INSERT INTO `section_detail` VALUES ('010', '10', '110', '5');
INSERT INTO `section_detail` VALUES ('011', '11', '111', '9');
INSERT INTO `section_detail` VALUES ('012', '12', '112', '9');
INSERT INTO `section_detail` VALUES ('013', '13', '113', '10');
INSERT INTO `section_detail` VALUES ('014', '14', '114', '10');
INSERT INTO `section_detail` VALUES ('015', '15', '115', '10');
INSERT INTO `section_detail` VALUES ('016', '16', '116', '13');
INSERT INTO `section_detail` VALUES ('017', '17', '117', '13');
INSERT INTO `section_detail` VALUES ('018', '18', '118', '13');
INSERT INTO `section_detail` VALUES ('019', '19', '119', '14');
INSERT INTO `section_detail` VALUES ('020', '20', '120', '14');
INSERT INTO `section_detail` VALUES ('021', '21', '121', '17');
INSERT INTO `section_detail` VALUES ('022', '22', '122', '17');
INSERT INTO `section_detail` VALUES ('023', '23', '123', '18');
INSERT INTO `section_detail` VALUES ('024', '24', '124', '18');
INSERT INTO `section_detail` VALUES ('025', '25', '125', '21');
INSERT INTO `section_detail` VALUES ('026', '26', '126', '21');
INSERT INTO `section_detail` VALUES ('027', '27', '127', '22');
INSERT INTO `section_detail` VALUES ('028', '28', '128', '22');
INSERT INTO `section_detail` VALUES ('029', '29', '129', '22');
INSERT INTO `section_detail` VALUES ('030', '30', '130', '10');
INSERT INTO `section_detail` VALUES ('031', '31', '131', '11');
INSERT INTO `section_detail` VALUES ('032', '32', '132', '11');
INSERT INTO `section_detail` VALUES ('033', '33', '133', '12');
INSERT INTO `section_detail` VALUES ('034', '34', '134', '12');
INSERT INTO `section_detail` VALUES ('035', '35', '135', '13');
INSERT INTO `section_detail` VALUES ('036', '36', '136', '13');
INSERT INTO `section_detail` VALUES ('037', '37', '137', '14');
INSERT INTO `section_detail` VALUES ('038', '38', '138', '14');
INSERT INTO `section_detail` VALUES ('039', '39', '139', '15');
INSERT INTO `section_detail` VALUES ('040', '40', '140', '15');
INSERT INTO `section_detail` VALUES ('041', '41', '141', '16');
INSERT INTO `section_detail` VALUES ('042', '42', '142', '16');
INSERT INTO `section_detail` VALUES ('043', '43', '143', '17');
INSERT INTO `section_detail` VALUES ('044', '44', '144', '17');
INSERT INTO `section_detail` VALUES ('045', '45', '145', '18');
INSERT INTO `section_detail` VALUES ('046', '46', '146', '18');
INSERT INTO `section_detail` VALUES ('047', '47', '147', '19');
INSERT INTO `section_detail` VALUES ('048', '48', '148', '19');
INSERT INTO `section_detail` VALUES ('049', '49', '149', '20');
INSERT INTO `section_detail` VALUES ('050', '50', '150', '20');

-- ----------------------------
-- Table structure for sponsorshipapplicant
-- ----------------------------
DROP TABLE IF EXISTS `sponsorshipapplicant`;
CREATE TABLE `sponsorshipapplicant` (
  `App_ID` int(8) NOT NULL AUTO_INCREMENT,
  `Roll_No` varchar(8) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Fstatus` varchar(10) DEFAULT NULL,
  `Mstatus` varchar(10) DEFAULT NULL,
  `TotalIncome` int(6) DEFAULT NULL,
  `NoOfSibling` int(2) DEFAULT NULL,
  `Acedamic_Year` varchar(10) NOT NULL,
  `Rec_T_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`App_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sponsorshipapplicant
-- ----------------------------
INSERT INTO `sponsorshipapplicant` VALUES ('1', '5CS-3', 'Ma Ei Phyu Thant', 'Normal', 'Normal', '200000', '4', '2016-2017', 'Daw Aye Aye');
INSERT INTO `sponsorshipapplicant` VALUES ('2', '5CS-4', 'Ma Myat Noe Wai', 'Normal', 'Normal', '300000', '4', '2016-2017', 'Daw Myat Thuzar ');
INSERT INTO `sponsorshipapplicant` VALUES ('3', '4CS-35', 'Mg Kaung Zaw', 'Normal', 'Normal', '200000', '4', '2016-2017', 'Daw Mu Mu Aye');
INSERT INTO `sponsorshipapplicant` VALUES ('5', '5CS-22', 'Ma Thuzar', 'Normal', 'Normal', '20000', '4', '2016-2017', 'Daw Myat Thida');

-- ----------------------------
-- Table structure for sponsorshipaward
-- ----------------------------
DROP TABLE IF EXISTS `sponsorshipaward`;
CREATE TABLE `sponsorshipaward` (
  `Award_ID` int(8) NOT NULL AUTO_INCREMENT,
  `Sp_ID` varchar(8) DEFAULT NULL,
  `App_ID` int(8) DEFAULT NULL,
  `Student_ID` varchar(8) NOT NULL,
  `Acedamic_Year_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Award_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sponsorshipaward
-- ----------------------------
INSERT INTO `sponsorshipaward` VALUES ('44', '1', '1', '32', '05');
INSERT INTO `sponsorshipaward` VALUES ('45', '1', '3', '16', '05');

-- ----------------------------
-- Table structure for sponsorshipname
-- ----------------------------
DROP TABLE IF EXISTS `sponsorshipname`;
CREATE TABLE `sponsorshipname` (
  `Sp_ID` varchar(8) NOT NULL,
  `Sp_Name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Sp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sponsorshipname
-- ----------------------------
INSERT INTO `sponsorshipname` VALUES ('1', 'Local');
INSERT INTO `sponsorshipname` VALUES ('2', 'U Tin Maung');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `php_ID` varchar(8) DEFAULT NULL,
  `Student_ID` varchar(8) DEFAULT NULL,
  `Academic_Year_ID` varchar(8) DEFAULT NULL,
  `Roll_No` varchar(15) DEFAULT NULL,
  `Year_ID` varchar(8) DEFAULT NULL,
  `Major_ID` varchar(8) DEFAULT NULL,
  `PF_ID` varchar(8) DEFAULT NULL,
  `Elastic_Subject_ID` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (null, '01', '05', '2CS-34', '2', '2', '1', '');
INSERT INTO `student` VALUES (null, '02', '05', '2CS-29', '2', '2', '2', '');
INSERT INTO `student` VALUES (null, '03', '05', '2CS-70', '2', '2', '3', '');
INSERT INTO `student` VALUES (null, '04', '05', '2CS-88', '2', '2', '4', '');
INSERT INTO `student` VALUES (null, '05', '05', '1CST-25', '1', '1', '5', '');
INSERT INTO `student` VALUES (null, '06', '05', '1CST-27', '1', '1', '6', '');
INSERT INTO `student` VALUES (null, '07', '05', '1CST-28', '1', '1', '7', '');
INSERT INTO `student` VALUES (null, '08', '05', '1CST-73', '1', '1', '8', '');
INSERT INTO `student` VALUES (null, '09', '05', '1CST-78', '1', '1', '9', '');
INSERT INTO `student` VALUES (null, '10', '05', '2CS-27', '2', '2', '10', '');
INSERT INTO `student` VALUES (null, '11', '05', '3CS-30', '3', '2', '11', '');
INSERT INTO `student` VALUES (null, '12', '05', '3CS-33', '3', '2', '12', '');
INSERT INTO `student` VALUES (null, '13', '05', '3CS-81', '3', '2', '13', '');
INSERT INTO `student` VALUES (null, '14', '05', '3CS-74', '3', '2', '14', '');
INSERT INTO `student` VALUES (null, '15', '05', '3CS-84', '3', '2', '15', '');
INSERT INTO `student` VALUES (null, '16', '05', '4CS-35', '4', '2', '16', '');
INSERT INTO `student` VALUES (null, '17', '05', '4CS-29', '4', '2', '17', '');
INSERT INTO `student` VALUES (null, '18', '05', '4CS-31', '4', '2', '18', '');
INSERT INTO `student` VALUES (null, '19', '05', '4CS-77', '4', '2', '19', '');
INSERT INTO `student` VALUES (null, '20', '05', '4CS-87', '4', '2', '20', '');
INSERT INTO `student` VALUES (null, '21', '05', '5CS-34', '5', '2', '21', '');
INSERT INTO `student` VALUES (null, '22', '05', '5CS-22', '5', '2', '22', '');
INSERT INTO `student` VALUES (null, '23', '05', '5CS-70', '5', '2', '23', '');
INSERT INTO `student` VALUES (null, '24', '05', '5CS-73', '5', '2', '24', '');
INSERT INTO `student` VALUES (null, '25', '05', '5CS-85', '5', '2', '25', '');
INSERT INTO `student` VALUES (null, '26', '05', '2CT-12', '2', '3', '26', '');
INSERT INTO `student` VALUES (null, '27', '05', '2CT-24', '2', '3', '27', '');
INSERT INTO `student` VALUES (null, '28', '05', '3CT-14', '3', '3', '28', '');
INSERT INTO `student` VALUES (null, '29', '05', '3CT-25', '3', '3', '29', '');
INSERT INTO `student` VALUES (null, '30', '05', '3CT-8', '3', '3', '30', '');
INSERT INTO `student` VALUES (null, '01', '04', '1CST-30', '1', '1', '31', '');
INSERT INTO `student` VALUES (null, '01', '06', '3CS-140', '3', '2', '32', '');
INSERT INTO `student` VALUES (null, '02', '04', '1CST-1', '1', '1', '33', '');
INSERT INTO `student` VALUES (null, '02', '06', '3CS-78', '3', '2', '34', '');
INSERT INTO `student` VALUES (null, '03', '04', '1CST-30', '1', '1', '35', '');
INSERT INTO `student` VALUES (null, '03', '06', '2CS-56', '2', '2', '36', '');
INSERT INTO `student` VALUES (null, '26', '04', '1CST-86', '1', '1', '37', '');
INSERT INTO `student` VALUES (null, '26', '06', '3CT-21', '3', '3', '38', '');
INSERT INTO `student` VALUES (null, '31', '05', '5CS-2', '5', '2', '39', '');
INSERT INTO `student` VALUES (null, '32', '05', '5CS-3', '5', '2', '40', '');
INSERT INTO `student` VALUES (null, '33', null, null, null, null, '22', '');
INSERT INTO `student` VALUES (null, '34', '05', '5CS-5', '5', '2', '23', '');
INSERT INTO `student` VALUES (null, '35', '05', '5CS-6', '5', '2', '24', '');
INSERT INTO `student` VALUES (null, '11111', '05', '5CS-68', '5', '2', '24', '');

-- ----------------------------
-- Table structure for student1
-- ----------------------------
DROP TABLE IF EXISTS `student1`;
CREATE TABLE `student1` (
  `Student_ID` varchar(10) NOT NULL,
  `Name_Eng` varchar(20) NOT NULL,
  `Roll_No` varchar(10) NOT NULL,
  `Academic_Year_ID` varchar(10) NOT NULL,
  `Academic_Year` varchar(10) NOT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student1
-- ----------------------------
INSERT INTO `student1` VALUES ('01', 'Mg Aung Min', '2CS_34', '01', '2013_2014');
INSERT INTO `student1` VALUES ('02', 'Mg Lin Htet', '2CS_70', '02', '2012_2013');
INSERT INTO `student1` VALUES ('03', 'Mg Tun Tun', '2CS_34', '03', '2014_2015');
INSERT INTO `student1` VALUES ('04', 'Mg Aye', '4CT_18', '04', '2016_2017');
INSERT INTO `student1` VALUES ('05', 'Mg Wai Naing', '4CS_36', '04', '2016_2017');
INSERT INTO `student1` VALUES ('06', 'Mg Mg Aye', '4CT_26', '05', '2015_2016');
INSERT INTO `student1` VALUES ('07', 'Mg Min Min', '5CT_10', '05', '2015_2016');
INSERT INTO `student1` VALUES ('08', 'Mg Ba Oo', '4CT_33', '01', '2013_2014');
INSERT INTO `student1` VALUES ('09', 'Ma Thazin', '1CST_78', '05', '2015_2016');
INSERT INTO `student1` VALUES ('10', 'Mg Lin Myat', '2CS_27', '01', '2013_2014');
INSERT INTO `student1` VALUES ('11', 'Ma Lin Lin', '3CS_30', '02', '2012_2013');
INSERT INTO `student1` VALUES ('12', 'Mg Pyae Sone', '3CS_33', '03', '2014_2015');
INSERT INTO `student1` VALUES ('13', 'Ma Aye Aye', '3CS_81', '02', '2012_2013');
INSERT INTO `student1` VALUES ('14', 'Mg Ye Lwin', '3CS_74', '03', '2014_2015');
INSERT INTO `student1` VALUES ('15', 'Ma Thidar', '3CS_84', '04', '2016_2017');
INSERT INTO `student1` VALUES ('16', 'Mg Kaung Zaw', '4CS_35', '03', '2014_2015');
INSERT INTO `student1` VALUES ('17', 'Ma Thae Thae', '4CS_29', '04', '2016_2017');
INSERT INTO `student1` VALUES ('18', 'Ma Lae Lae', '4CS_31', '03', '2014_2015');
INSERT INTO `student1` VALUES ('19', 'Mg Naing Aung', '4CS_77', '04', '2016_2017');
INSERT INTO `student1` VALUES ('20', 'Ma Khine Hnin', '4CS_87', '03', '2014_2015');
INSERT INTO `student1` VALUES ('21', 'Mg Thura', '5CS_34', '04', '2016_2017');
INSERT INTO `student1` VALUES ('22', 'Ma Thuzar', '5CS_22', '03', '2014_2015');
INSERT INTO `student1` VALUES ('23', 'Mg Paing Paing', '5CS_70', '05', '2015_2016');
INSERT INTO `student1` VALUES ('24', 'Ma May Lwin', '5CS_73', '03', '2014_2015');
INSERT INTO `student1` VALUES ('25', 'Mg Thiha', '5CS_85', '01', '2013_2014');
INSERT INTO `student1` VALUES ('26', 'Ma Mya Mya', '2CT_12', '04', '2016_2017');
INSERT INTO `student1` VALUES ('27', 'Mg Min Khant', '2CT_24', '02', '2012_2013');
INSERT INTO `student1` VALUES ('28', 'Ma Nwe Nwe', '2CT_9', '04', '2016_2017');
INSERT INTO `student1` VALUES ('29', 'Mg Zaw Zaw', '2CT_14', '03', '2014_2015');
INSERT INTO `student1` VALUES ('30', 'Ma Yi Yi Myint', '2CT_7', '02', '2012_2013');

-- ----------------------------
-- Table structure for studentdetail
-- ----------------------------
DROP TABLE IF EXISTS `studentdetail`;
CREATE TABLE `studentdetail` (
  `Student_ID` varchar(8) DEFAULT NULL,
  `Photo` longblob,
  `Admission_Year` varchar(10) NOT NULL,
  `Name_Myan` varchar(30) NOT NULL,
  `Name_Eng` varchar(30) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `Religion` varchar(20) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `NRC` varchar(20) NOT NULL,
  `TownshipStateDivision` varchar(50) NOT NULL,
  `Native_Town` varchar(20) NOT NULL,
  `Permanent_Address` varchar(50) NOT NULL,
  `Contact_Address` varchar(50) NOT NULL,
  `Phone_Num` varchar(20) NOT NULL,
  `Email_Address` varchar(50) CHARACTER SET latin1 NOT NULL,
  `NRC_Copy` longblob NOT NULL,
  `Police_Recommendation` longblob NOT NULL,
  `Address_Recommendation` longblob NOT NULL,
  `FatherName_Myan` varchar(30) NOT NULL,
  `FatherName_Eng` varchar(30) NOT NULL,
  `FatherNationality` varchar(20) NOT NULL,
  `FatherReligion` varchar(30) NOT NULL,
  `FatherDate_Of_Birth` date NOT NULL,
  `FatherNRC` varchar(20) NOT NULL,
  `FatherNRC_Copy` longblob NOT NULL,
  `FatherTownshipStateDivision` varchar(50) NOT NULL,
  `FatherNative_Town` varchar(30) NOT NULL,
  `FatherOccupation` varchar(50) NOT NULL,
  `FatherPermanent_Address` varchar(50) NOT NULL,
  `FatherPhone_Num` varchar(20) NOT NULL,
  `MotherName_Myan` varchar(30) NOT NULL,
  `MotherName_Eng` varchar(30) NOT NULL,
  `MotherNationality` varchar(20) NOT NULL,
  `MotherReligion` varchar(30) NOT NULL,
  `MotherDate_Of_Birth` date NOT NULL,
  `MotherNRC` varchar(20) NOT NULL,
  `MotherNRC_Copy` longblob NOT NULL,
  `MotherTownshipStateDivision` varchar(50) NOT NULL,
  `MotherNative_Town` varchar(30) NOT NULL,
  `MotherOccupation` varchar(50) NOT NULL,
  `MotherPermanent_Address` varchar(50) NOT NULL,
  `MotherPhone_Num` varchar(20) NOT NULL,
  `MarticulationRoll_No` varchar(10) NOT NULL,
  `MarticulationYear` varchar(10) NOT NULL,
  `Dept_Of_Transistor` varchar(30) NOT NULL,
  `ProviderName` varchar(30) NOT NULL,
  `Relationship` varchar(30) NOT NULL,
  `ProviderOccupation` varchar(50) NOT NULL,
  `ProviderPermanent_Address` varchar(50) NOT NULL,
  `ProviderPhone_Num` varchar(20) NOT NULL,
  `Total_Mark` int(5) NOT NULL,
  `Sponsor` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentdetail
-- ----------------------------
INSERT INTO `studentdetail` VALUES ('01', null, '2012', 'မောင်သိန်းအောင်', 'Mg Thein Aung', 'ဗမာ', 'ဗုဒ္ဓ', '1996-03-17', '၁၂/ဗတထ(နိုင်)၀၈၇၁၃၂', 'မန္တလေးမြို့', 'မန္တလေးမြို့', '၁၈*၁၉ ၊ ၈၂လမ်း ၊ အောင်မြေသာစံ', '၁၈*၁၉ ၊ ၈၂လမ်း ၊ အောင်မြေသာစံ', '09499285012', 'theinaung@gmial.com', '', '', '', 'ဦးလှစိန်', 'U Hla Sein', 'ဗမာ', 'ဗုဒ္ဓ', '1963-07-05', '၉/မနမ(နိုင်)၂၃၃၄၈၅', '', 'မန္တလေး', 'မန္တလေး', 'ကျောင်းဆရာ', '၁၈*၁၉ ၊ ၈၂လမ်း ၊ အောင်မြေသာစံ', '09791848179', 'ဒေါ်အေးငွေ', 'Daw Aye Ngwe', 'ဗမာ', 'ဗုဒ္ဓ', '1968-07-05', '၉/မတန(နိုင်)၃၄၀၈၉၀', '', 'မန္တလေး', 'မန္တလေး', 'ဝန်ထမ်း', '၁၈*၁၉ ၊ ၈၂လမ်း ၊ အောင်မြေသာစံ', '09782959205', 'မနတ-၆၀၂', '2011', 'အထက-၁ မန္တလေး', 'ဦးလှစိန်', 'အဘ', 'ကျောင်းဆရာ', '၁၈*၁၉ ၊ ၈၂လမ်း ၊ အောင်မြေသာစံ', '09791848179', '450', 'Accept');
INSERT INTO `studentdetail` VALUES ('02', null, '2012', 'မနီလာစိုး', 'Ma Nilar Soe', 'ဗမာ', 'ဗုဒ္ဓ', '1996-07-11', '၉/မဟမ(နိုင်)၀၃၃၅၀၆', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', '၃၈လမ်း၊၈၃*၈၄ကြား၊အိုးဘိုရပ်၊မဟာအောင်မြေ၊မန္တလေး', '09795729488', 'nilar@gmial.com', '', '', '', 'ဦးခင်မောင်စိုး', 'U Khin Maung Soe', 'ဗမာ', 'ဗုဒ္ဓ', '1963-07-19', '၉/မရတ(နိုင်)၀၃၉၂၁၂', '', 'မန္တလေး', 'မန္တလေး', 'ကုန်သည်', '၃၈လမ်း၊၈၃*၈၄ကြား၊အိုးဘိုရပ်၊မဟာအောင်မြေ၊မန္တလေး', '09981519593', '​ေဒါ်ခင်သန်း', 'Daw Khin Than', 'ဗမာ', 'ဗုဒ္ဓ', '1960-07-05', '၉/မသန(နိုင်)၀၂၈၉၉၈', '', 'မန္တလေး', 'မန္တလေး', 'ဝန်ထမ်း', '၃၈လမ်း၊၈၃*၈၄ကြား၊အိုးဘိုရပ်၊မဟာအောင်မြေ၊မန္တလေး', '0978466466', 'မရ-၅၈', '2011', 'အထက-၁ မန္တလေး', 'ဦးခင်မောင်စိုး', 'အဘ', 'ကုန်သည်', '၃၈လမ်း၊၈၃*၈၄ကြား၊အိုးဘိုရပ်၊မဟာအောင်မြေ၊မန္တလေး', '09981519593', '448', 'Accept');
INSERT INTO `studentdetail` VALUES ('03', null, '2012', 'မနီလာစိုး', 'Ma Nilar Soe', 'ဗမာ', 'ဗုဒ္ဓ', '1995-02-26', '၉/မတရ(နိုင်)၁၈၁၇၉၁', 'မတ္တရာ', 'မတ္တရာ', 'မတ္တရာ', 'မတ္တရာ', '0979263783', 'myamya@gmail.com', '', '', '', 'ဦးကံထူး', 'U Kan Htoo', 'ဗမာ', 'ဗုဒ္ဓ', '1957-09-18', '၉/မတရ(နိုင်)၀၈၀၇၈၁', '', 'မတ္တရာ', 'မတ္တရာ', 'ဆရာဝန်', 'မတ္တရာ', '09974664668', 'ဒေါ်တင်အေး', 'Daw Tin Aye', 'ဗမာ', 'ဗုဒ္ဓ', '1967-07-03', '၉/မတရ(နိုင်)၃၄၉၅၂၈', '', 'မတ္တရာ', 'မတ္တရာ', 'ဝန်ထမ်း', 'မတ္တရာ', '09789975027', 'မတရ-၂၃', '2011', 'မတ္တရာ', 'ဦးကံထူး', 'အဘ', 'ဆရာဝန်', 'မတ္တရာ', '09974664668', '446', 'Accept');
INSERT INTO `studentdetail` VALUES ('04', null, '2012', 'မောင်သန်းမျိုးအောင်', 'Mg Than Myo Aung', 'ဗမာ', 'ခရစ္စယာန်', '1996-06-16', '၉/ခမစ(နိုင်)၀၅၆၅၀၈', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', '09796466578', 'thanmyoaung@gmail.com', '', '', '', 'ဦးသိန်းတန်', 'U Thein Tan', 'ဗမာ', 'ခရစ္စယာန်', '1958-08-19', '၉/ပမန(နိုင်)၁၆၉၂၉၀', '', 'မန္တလေး', 'မန္တလေး', 'ကျောင်းဆရာ', 'မန္တလေး', '09784653378', 'ဒေါ်ခင်မာရီ', 'Daw Khin Mar Yee', 'ဗမာ', 'ခရစ္စယာန်', '1956-07-03', '၉/မတရ(နိုင်)၀၀၇၄၅၅', '', 'မန္တလေး', 'မန္တလေး', 'ဝန်ထမ်း', 'မန္တလေး', '09402688359', 'မနတ-၇၈၄', '2011', 'အထက-၃ မန္တလေး', 'ဦးသိန်းတန်', 'အဘ', 'ကျောင်းဆရာ', 'မန္တလေး', '09784653378', '445', 'Accept');
INSERT INTO `studentdetail` VALUES ('05', null, '2012', 'မဇင်ဝင်းထက်', 'Ma Zin Win Htet', 'ဗမာ', 'ဗုဒ္ဓ', '1996-09-28', '၉/ရဘန(နိုင်)၂၁၅၈၇၇', 'ရွှေဘို', 'ရွှေဘို', 'ရွှေဘို', 'ရွှေဘို', '09785356369', 'zinwinhtet@gmail.com', '', '', '', 'ဦးစိုးနိုင်', 'U Soe Naing', 'ဗမာ', 'ဗမာ', '1965-07-19', '၉/၀လန(နိုင်)၀၈၆၀၂၅', '', 'ရွှေဘို', 'ရွှေဘို', 'ပွဲစား', 'ရွှေဘို', '09784525657', 'ဒေါ်သီသီအေး', 'Daw Thi Thi Aye', 'ဗမာ', 'ဗုဒ္ဓ', '1955-08-19', '၅/၀လန(နိုင်)၀၅၂၇၈၃', '', 'ရွှေဘို', 'ရွှေဘို', 'ဆရာဝန်', 'ဈေးသည်', '09785535328', 'မရမ-၁၆၈', '2011', 'အထက-၂ ရွှေဘို', 'ဦးစိုးနိုင်', 'အဘ', 'ပွဲစား', 'ရွှေဘို', '09973523567', '444', 'Accept');
INSERT INTO `studentdetail` VALUES ('06', null, '2012', 'မဆုရီမွန်', 'Ma Su Yee MOn', 'ဗမာ', 'ဗုဒ္ဓ', '1996-07-09', '၉/အမဇ(နိုင်)၀၄၂၅၄၇', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'အကွက်(၆၂)ပြည်ကြီးရန်လုံ အောင်မြေသာစံမြို့နယ်', 'အကွက်(၆၂)ပြည်ကြီးရန်လုံ အောင်မြေသာစံမြို့နယ်', '09256284650', 'sumon@gmail.com', '', '', '', 'ဦးဇော်ခင်', 'U Zaw Khin', 'ဗမာ', 'ဗုဒ္ဓ', '1958-09-19', '၉/မနတ(နိုင်)၀၃၃၅၁၇', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ကျောက်လုပ်ငန်း', 'အကွက်(၆၂)ပြည်ကြီးရန်လုံ အောင်မြေသာစံမြို့နယ်', '09402524950', 'ဒေါ်စန်းစန်းမော်', 'Daw San San Maw', 'ဗမာ', 'ဗုဒ္ဓ', '1960-10-05', '၉/မနတ(နိုင်)၀၀၃၃၂၄', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မှီခို', 'အကွက်(၆၂)ပြည်ကြီးရန်လုံ အောင်မြေသာစံမြို့နယ်', '09777788150', 'မနမ-၃၀၄', '2011', 'အထက-၁ မန္တလေး', 'ဦ:ဇော်ခင်', 'အဘ', 'ကျောက်လုပ်ငန်း', 'အကွက်(၆၂)ပြည်ကြီးရန်လုံ အောင်မြေသာစံမြို့နယ်', '09402524950', '443', 'Accept');
INSERT INTO `studentdetail` VALUES ('07', null, '2012', 'မောင်ဟိန်းထက်အောင်', 'Mg Hein Htet Aung', 'ဗမာ', 'ဗုဒ္ဓ', '1996-09-11', '၉/ကဆန(နိုင်)၁၅၈၃၂၆', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', 'ကြက်မင်းတွန်ရပ် ကျောက်ဆည်မြို့', 'ကြက်မင်းတွန်ရပ် ကျောက်ဆည်မြို့', '09256284652', 'hein@gmail.com', '', '', '', 'ဦးဝင်းနိုင်', 'U Win Naing', 'ဗမာ', 'ဗုဒ္ဓ', '1958-09-19', '၉/ကဆန(နိုင်)၁၁၆၁၅၅', '', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', 'ကားပွဲစား', 'ကြက်မင်းတွန်ရပ် ကျောက်ဆည်မြို့', '09402524951', 'ဒေါ်စန်းစန်းအေး', 'Daw San San Aye', 'ဗမာ', 'ဗုဒ္ဓ', '1960-01-05', '၉/ကဆန(နိုင်)၀၂၆၄၆၄', '', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', 'မှီခို', 'ကြက်မင်းတွန်ရပ် ကျောက်ဆည်မြို့', '09777788151', 'မဆ-၃၅၃', '2011', 'အထက-၁ ကျောက်ဆည်', 'ဦးဝင်းနိုင်', 'အဘ', 'ကားပွဲစား', 'ကြက်မင်းတွန်ရပ် ကျောက်ဆည်မြို့', '09402524951', '442', 'Accept');
INSERT INTO `studentdetail` VALUES ('08', null, '2012', 'မောင်ဝေလင်းဇော်', 'Mg Wai Lin Zaw', 'ဗမာ', 'ဗုဒ္ဓ', '1958-02-10', '၁/ကမန(နိုင်)၀၄၀၁၇၀', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ချမ်းအေးသာစံ မန္တလေးမြို့', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09256384653', 'wai@gmail.com', '', '', '', 'ဦးထွန်းရွှေ', 'U Tun Shwe', 'ဗမာ', 'ဗုဒ္ဓ', '1958-10-01', '၁/ကမန(နိုင်)၀၄၁၄၈၉', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ပန်းတိမ်လုပ်ငန်း', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09405224952', 'ဒေါ်ထွေးကြည်', 'Daw Htwe Kyi', 'ဗမာ', 'ဗုဒ္ဓ', '1968-04-05', '၁/ကမန(နိုင်)၀၁၀၈၉၇', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ဝန်ထမ်း', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09777788152', 'မနမ-၁၀၅၂', '2011', 'အထက-၂ မန္တလေး', 'ဦးထွန်းရွှေ', 'အဘ', 'ပန်းတိမ်လုပ်ငန်း', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09402524952', '441', 'Accept');
INSERT INTO `studentdetail` VALUES ('09', null, '2013', 'မောင်ဇေယျာထွန်း', 'Mg Zayar Htun', 'ရှမ်း', 'ဗုဒ္ဓ', '1997-07-20', '၁/ကမန(နိုင်)၁၅၅၃၆၅', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', '09256284654', 'htun@gmail.com', '', '', '', 'ဦးထင်ထွန်း', 'U Htin Htun', 'ရှမ်း', 'ဗုဒ္ဓ', '1963-04-03', '၁/မပန(နိုင်)၀၂၁၉၀', '', 'တောင်ကြီး', 'တောင်ကြီး', 'ကျောက်လုပ်ငန်း', 'မန္တလေး', '09402524953', 'ဒေါ်စန်းမြင့်', 'Daw San Myint', 'ဗမာ', 'ဗုဒ္ဓ', '1960-07-02', '၉/မကန(နိုင်)၀၂၅၀၉၁', '', 'မန္တလေး', 'မန္တလေးမြို့', 'မှီခို', 'မန္တလေး', '09797600710', 'မနမ-၇၈၀', '2012', 'အထက-၁ မန္တလေး', 'ဦးထင်ထွန်း', 'အဘ', 'ကျောက်လုပ်ငန်း', 'တောင်ကြီး', '09402524953', '440', 'Accept');
INSERT INTO `studentdetail` VALUES ('10', null, '2013', 'မဝင်းပပသိန်း', 'Ma Win Pa Pa Thein', 'ဗမာ', 'ဗုဒ္ဓ', '1996-07-18', '၉/မဟမ(နိုင်)၀၃၅၇၈၈', 'ကျောက်ပန်းတောင်း', 'ကျောက်ပန်းတောင်း', 'ကျောက်ပန်းတောင်း', 'ကျောက်ပန်းတောင်း', '09256284655', 'papa@gmail.com', '', '', '', 'ဦးသိန်းလွင်', 'U Thein Lwin', 'ဗမာ', 'ဗုဒ္ဓ', '1962-03-04', '၉/မရမ(နိုင်)၀၀၀၇၃၅၈', '', 'ကျောက်ပန်းတောင်း', 'ကျောက်ပန်းတောင်း', 'ထန်းလျက်လုပ်ငန်း', 'ကျောက်ပန်းတောင်း', '09402524954', 'ဒေါ်ဝင်းမာဦး', 'Daw Win Mar Oo', 'ဗမာ', 'ဗုဒ္ဓ', '1967-04-16', '၉/မရမ(နိုင်)၀၀၇၃၅၉', '', 'ကျောက်ပန်းတောင်း', 'ကျောက်ပန်းတောင်း', 'မှီခို', 'ကျောက်ပန်းတောင်း', '09797600712', 'မနတ-၁၉၁၄', '2012', 'ကျောက်ပန်းတောင်း( အထက)', 'ဦးသိန်းလွင်', 'အဘ', 'ထန်းလျက်လုပ်ငန်း', 'ကျောက်ပန်းတောင်း', '09402524954', '439', 'Accept');
INSERT INTO `studentdetail` VALUES ('11', null, '2013', 'မောင်ဟိန်းသူ', 'Mg Hein Thu', 'ချင်း', 'ခရစ္စယာန်', '1997-03-24', '၉/မဟမ(နိုင်)၀၃၈၉၂၃', 'ကလေးမြို့', 'ကလေးမြို့', 'ကလေးမြို့', 'ကလေးမြို့', '09256284656', 'heinthu@gmail.com', '', '', '', 'ဦးအောင်ထင်ဦး', 'U Aung Htin Oo', 'ချင်း', 'ခရစ္စယာန်', '1960-07-10', '၉/မရတ(နိုင်)၀၂၀၂၂၆', '', 'ကလေးမြို့', 'ကလေးမြို့', 'ကုန်သည်', 'ကလေးမြို့', '09402524955', 'ဒေါ်မြင့်မြင့်သန်း', 'Daw Myint Myint Than', 'ဗမာ', 'ဗုဒ္ဓ', '1959-07-17', '၉/မရတ(နိုင်)၀၂၀၂၂၇', '', 'မေမြို့', 'မေမြို့', 'ဝန်ထမ်း', 'ကလေးမြို့', '09797600713', 'မနတ-၁၁၉၉', '2012', 'အထက-ကလေး', 'ဦးအောင်ထင်ဦး', 'အဘ', 'ကုန်သည်', 'ကလေးမြို့', '09402524955', '438', 'Accept');
INSERT INTO `studentdetail` VALUES ('12', null, '2013', 'မအိဝင်း', 'Ma Ei Win', 'ဗမာ', 'ဗုဒ္ဓ', '1996-09-18', '၉/အမဇ(နိုင်)၀၄၅၇၀၄', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', '09256284657', 'eiwin@gmail.com', '', '', '', 'ဦးမြတ်သောင်းနိုင်', 'U Myat Thaung Naing', 'ဗမာ', 'ဗုဒ္ဓ', '1960-03-03', '၉/မနမ(နိုင်)၀၅၄၃၄၀', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ကားပွဲစား', 'မန္တလေး', '09402524956', 'ဒေါ်ခင်စိုးမိုးဝင်း', 'Daw Khin Soe Moe Win', 'ဗမာ', 'ဗုဒ္ဓ', '1967-07-24', '၉/မနမ(နိုင်)၀၅၃၀၀၃', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ဝန်ထမ်း', 'မန္တလေး', '09797600714', 'မနမ-၆၀၅', '2012', 'အထက-၁ မန္တလေး', 'ဦးမြတ်သောင်းနိုင်', 'အဘ', 'ကားပွဲစား', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09402524956', '437', 'Accept');
INSERT INTO `studentdetail` VALUES ('13', null, '2014', 'မယဉ်ယဉ်ထွေး', 'Ma Yin Yin Htwe', 'ဗမာ', 'ဗုဒ္ဓ', '1996-07-18', '၉/ခခန(နိုင်)၀၅၇၀၉၂', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', '09256284658', 'htwe@gmail.com', '', '', '', 'ဦးသိန်းဇော်ဦး', 'U Thein Zaw Oo', 'ဗမာ', 'ဗုဒ္ဓ', '1958-11-25', '၁၃/ညရန(နိုင်)၀၂၇၃၀၃', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ကျောက်လုပ်ငန်း', 'မန္တလေး', '09402524957', 'ဒေါ်စိုးစိုးတင့်', 'Daw Soe Soe Tint', 'ဗမာ', 'ဗုဒ္ဓ', '1960-09-12', '၁၃/ဖခန(နိုင်)၀၂၆၁၆၂', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မှီခို', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09797600715', 'မမ-၁၄၉', '2013', 'အထက-၁ မန္တလေး', 'ဦးသိန်းဇော်ဦး', 'အဘ', 'ကျောက်လုပ်ငန်း', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09402524957', '436', 'Reject');
INSERT INTO `studentdetail` VALUES ('14', null, '2014', 'မမေစုမွန်', 'Ma May Su Mon', 'ဗမာ', 'ဗုဒ္ဓ', '1997-09-18', '၉/ပကခ(နိုင်)၀၃၉၁၂၉', 'မေမြို့', 'မေမြို့', 'မေမြို့', 'မေမြို့', '09256284659', 'maysumon@gmail.com', '', '', '', 'ဦးနေမင်းလှိုင်', 'U Nay Min Hlaing', 'ဗမာ', 'ဗုဒ္ဓ', '1963-07-03', '၉/မနမ(နိုင်)၀၀၀၂၇၆', '', 'မေမြို့', 'မေမြို့', 'ဆရာဝန်', 'မေမြို့', '09402524958', 'ဒေါ်ခင်မိုး', 'Daw Khin Moe', 'ဗမာ', 'ဗုဒ္ဓ', '1962-07-04', '၉/မနမ(နိုင်)၀၆၃၃၇၇', '', 'မေမြို့', 'မေမြို့', 'ဝန်ထမ်း', 'မေမြို့', '09797600716', 'မရမ-၁၀၄၂', '2013', 'အထက-၂ မန္တလေး', 'ဦးနေမင်းလှိုင်', 'အဘ', 'ဆရာဝန်', 'မေမြို့', '09402524958', '435', 'Reject');
INSERT INTO `studentdetail` VALUES ('15', null, '2014', 'မယဉ်မျိုးသူ', 'Ma Yin Myo Thu', 'ရှမ်း', 'ဗုဒ္ဓ', '1996-02-11', '၅/ရဘန(နိုင်)၂၀၅၉၈၅', 'နောင်ချို', 'နောင်ချို', 'နောင်ချို', 'နောင်ချို', '09256284660', 'yin@gmail.com', '', '', '', 'ဦးတင့်ဝေ', 'U Tint Wai', 'ရှမ်း', 'ဗုဒ္ဓ', '1965-02-17', '၅/ရဘမ(နိုင်)၀၇၅၄၄၁', '', 'နောင်ချို', 'နောင်ချို', 'ခြံလုပ်ငန်း', 'နောင်ချို', '09402524959', 'ဒေါ်ရီရီဝင်း', 'Daw Yi Yi Win', 'ရှမ်း', 'ဗုဒ္ဓ', '1959-05-05', '၅/ရဘန(နိုင်)၀၅၂၇၇၉', '', 'နောင်ချို', 'နောင်ချို', 'ခြံလုပ်ငန်း', 'နောင်ချို', '09797600717', 'မနတ-၂၀၄', '2013', 'အထက-၁ မန္တလေး', 'ဦးတင့်ဝေ', 'အဘ', 'ခြံလုပ်ငန်း', 'နောင်ချို', '09402524959', '434', 'Reject');
INSERT INTO `studentdetail` VALUES ('16', null, '2015', 'မောင်ခန့်စည်သူ', 'Mg Khant Si Thu', 'ဗမာ', 'ဗုဒ္ဓ', '1995-01-27', '၁၂/လသယ(နိုင်)၀၆၃၂၅၂', 'ရန်ကုန်', 'ရန်ကုန်မြို့', 'ရန်ကုန်မြို့', 'ရန်ကုန်မြို့', '09256284661', 'khant@gmail.com', '', '', '', 'ဦးမြင့်စိန်အောင်', 'U Myint Sein Aung', 'ဗမာ', 'ဗုဒ္ဓ', '1958-07-04', '၁၂/ရကန(နိုင်)၀၆၃၀၆၁', '', 'ရန်ကုန်မြို့', 'ရန်ကုန်မြို့', 'ကားပွဲစား', 'ရန်ကုန်မြို့', '09402524960', 'ဒေါ်ဝင်းမာကြည်', 'Daw Win Mar Kyi', 'ဗမာ', 'ဗုဒ္ဓ', '1959-03-18', '၁၄/ရကန(နိုင်)၀၆၆၈၃၂', '', 'ရန်ကုန်မြို့', 'ရန်ကုန်မြို့', 'ဝန်ထမ်း', 'ရန်ကုန်မြို့', '09797600718', 'မဇသ-၁၉၇', '2014', 'အထက-၂ ကမာရွတ်', 'ဦးမြင့်စိန်အောင်', 'အဘ', 'ကားပွဲစား', 'ရန်ကုန်မြို့', '09402524960', '432', 'Reject');
INSERT INTO `studentdetail` VALUES ('17', null, '2015', 'မမြစုရီ', 'Ma Mya Su Yee', 'ကချင်', 'ခရစ္စယာန်', '1998-05-02', '၁/ကမန(နိုင်)၀၃၃၂၃၃', 'ကချင်ပြည်နယ်', 'ဖားကန့်', 'ဖားကန့်', 'ဖားကန့်', '09256284662', 'myasuyee@gmail.com', '', '', '', 'ဦးစိန်ထွန်း', 'U Sein Tun', 'ကချင်', 'ခရစ္စယာန်', '1964-11-01', '၁/ကမန(နိုင်)၀၀၈၃၅၀', '', 'ကချင်ပြည်နယ်', 'ဖားကန့်', 'ကျောက်လုပ်ငန်း', 'ဖားကန့်', '09402524961', 'ဒေါ်ခင်စန်းဦး', 'Daw Khin San Oo', 'ကချင်', 'ခရစ္စယာန်', '1967-02-09', '၁/ကမန(နိုင်)၀၀၈၃၁၂', '', 'ကချင်ပြည်နယ်', 'ဖားကန့်', 'ကျောက်လုပ်ငန်း', 'ဖားကန့်', '09797600719', 'မနတ-၂၂၁၃', '2014', 'အထက-၁ မန္တလေး', 'ဦးစိန်ထွန်း', 'အဘ', 'ကျောက်လုပ်ငန်း', 'ဖားကန့်', '09402524961', '431', 'Reject');
INSERT INTO `studentdetail` VALUES ('18', null, '2015', 'မဖူးပွင့်သော်', 'Ma Phoo Pwint Thaw', 'ဗမာ', 'ဗုဒ္ဓ', '1997-06-09', '၁၀/ကထန(နိုင်)၂၄၆၃၇', 'ပြင်ဦးလွင်', 'ပြင်ဦးလွင်', 'ပြင်ဦးလွင်', 'ပြင်ဦးလွင်', '09256284663', 'phoo@gmail.com', '', '', '', 'ဦးလှဌေး', 'U Sein Tun', 'ဗမာ', 'ဗုဒ္ဓ', '1965-11-09', '၁၂/တမနန(နိုင်)၀၅၆၂၀၉', '', 'ပြင်ဦးလွင်', 'ပြင်ဦးလွင်', 'ခြံလုပ်ငန်း', 'ပြင်ဦးလွင်', '09402524962', 'ဒေါ်မာမာလွင်', 'Daw Mar Mar Lwin', 'ဗမာ', 'ဗုဒ္ဓ', '1968-02-07', '၁၂/ကမန(နိုင်)၀၅၆၂၀၉', '', 'ပြင်ဦးလွင်', 'ပြင်ဦးလွင်', 'ခြံလုပ်ငန်း', 'ပြင်ဦးလွင်', '09797600720', 'မမ-၁၇၅၇', '2014', 'အထက-၁ မန္တလေး', 'ဦးလှဌေး', 'အဘ', 'ခြံလုပ်ငန်း', 'ပြင်ဦးလွင်', '09402524962', '430', 'Reject');
INSERT INTO `studentdetail` VALUES ('18', null, '2015', 'မောင်ကျော်ဇင်သန့်', 'Mg Kyaw Zin Thant', 'ဗမာ', 'ဗုဒ္ဓ', '1999-02-11', '၁၃/ထကန(နိုင်)၂၄၉၆၀၉', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ချမ်းအေးသာစံ မန္တလေးမြို့', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09256284664', 'thant@gmail.com', '', '', '', 'ဦးသန့်ဇင်', 'U Thant Zin', 'ဗမာ', 'ဗုဒ္ဓ', '1959-07-10', '၁၃/ထကန(နိုင်)၁၂၉၂၉၂', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'အရောင်းအဝယ်', 'မန္တလေး', '09402524963', 'ဒေါ်ယုယုလှိုင်', 'Daw Yu Yu Hlaing', 'ဗမာ', 'ဗုဒ္ဓ', '1968-07-28', '၁၃/ထကန(နိုင်)၂၉၇၄၈၈', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မှီခို', 'မန္တလေး', '09797600721', 'မနတ-၈၅၇', '2014', 'အထက-၁ မန္တလေး', 'ဦးသန့်ဇင်', 'အဘ', 'အရောင်းအဝယ်', 'မန္တလေး', '09402524963', '429', 'Reject');
INSERT INTO `studentdetail` VALUES ('19', null, '2015', 'မနီလာ', 'Ma Nilar', 'ဗမာ', 'ဗုဒ္ဓ', '1999-07-23', '၉/ပကခ(နိုင်)၀၃၇၆၃၉', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', '09256284665', 'nilar2@gmail.com', '', '', '', 'ဦးဝင်းနိုင်', 'U Win Naing', 'ဗမာ', 'ဗုဒ္ဓ', '1969-09-07', '၅/မမန(နိုင်)၂၅၀၆၆၁', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ပန်းတိမ်လုပ်ငန်း', 'မန္တလေး', '09402524964', 'ဒေါ်အေးသင်းနိုင်', 'Daw Aye Thin Naing', 'ဗမာ', 'ဗုဒ္ဓ', '1967-11-01', '၅/မမန(နိုင်)၀၀၁၉၇၃', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မှီခို', 'မန္တလေး', '09797600722', 'မရမ-၈၅၇', '2014', 'အထက-၁ မန္တလေး', 'ဦးဝင်းနိုင်', 'အဘ', 'ပန်းတိမ်လုပ်ငန်း', 'မန္တလေး', '09402524964', '428', 'Reject');
INSERT INTO `studentdetail` VALUES ('20', null, '2016', 'မပိုးအိအိအောင်', 'Ma Poe Ei Ei Aung', 'ဗမာ', 'ဗုဒ္ဓ', '1997-07-25', '၉/မဟမ(နိုင်)၀၃၄၄၅၆', 'မြင်းခြံ', 'မြင်းခြံ', 'မြင်းခြံ', 'မြင်းခြံ', '09256284666', 'poeei@gmail.co ', '', '', '', 'ဦးအောင်ကျော်ထူ', 'U Aung Kyaw Htoo', 'ဗမာ', 'ဗုဒ္ဓ', '1963-09-20', '၉/မရတ(နိုင်)၁၁၃၁၉၄', '', 'မြင်းခြံမြို့', 'မြင်းခြံမြို့', 'တောင်သူ', 'မြင်းခြံမြို့', '09402524965', 'ဒေါ်အိအိထွန်း', 'Daw Ei Ei Htun', 'ဗမာ', 'ဗုဒ္ဓ', '1958-05-22', '၉/မရတ(နိုင်)၁၁၃၁၉၃', '', 'မြင်းခြံမြို့', 'မြင်းခြံမြို့', 'တောင်သူ', 'မြင်းခြံ', '09797600723', 'မရမ-၁၇၈', '2015', 'မြင်းခြံ-အထက', 'ဒေါ်အိအိထွန်း', 'အမိ', 'တောင်သူ', 'မြင်းခြံမြို့', '09402524965', '427', 'Reject');
INSERT INTO `studentdetail` VALUES ('21', null, '2016', 'မသန့်ဇင်ဦး', 'Ma Thant Zin Oo', 'ဗမာ', 'ဗုဒ္ဓ', '1997-09-19', '၈/အအမ(နိုင်)၂၀၈၇၂၉', 'မြစ်သားမြို့', 'မြစ်သားမြို့', 'မြစ်သားမြို့', 'မြစ်သားမြို့', '09256284667', 'thantzinoo@gmail.com', '', '', '', 'ဦးမျိုးလှိုင်', 'U Myo Hlaing', 'ဗမာ', 'ဗုဒ္ဓ', '1961-04-06', '၈/မမန(နိုင်)၁၂၄၃၉၀', '', 'မြစ်သားမြို့', 'မြစ်သားမြို့', 'ခြံလုပ်ငန်း', 'မြစ်သားမြို့', '09402524966', 'ဒေါ်သန်းနု', 'Daw Than Nu', 'ဗမာ', 'ဗုဒ္ဓ', '1964-07-18', '၈/မမန(နိုင်)၁၂၁၂၉၇', '', 'မြစ်သားမြို့', 'မြစ်သားမြို့', 'ခြံလုပ်ငန်း', 'မြစ်သားမြို့', '09797600724', 'မနတ-၁၉၅၆', '2015', 'အထက၁-မြစ်သား', 'ဒေါ်သန်းနု', 'အမိ', 'ခြံလုပ်ငန်း', 'မြစ်သားမြို့', '09402524966', '426', 'Reject');
INSERT INTO `studentdetail` VALUES ('22', null, '2016', 'မောင်ဝေမောင်မောင်', 'Mg Wai Mg Mg', 'ဗမာ', 'ဗုဒ္ဓ', '1996-02-22', '၉/အမရ(နိုင်)၁၃၉၆၀၉', 'တံတားဦး', 'တံတားဦး', 'တံတားဦး', 'တံတားဦး', '09256284668', 'waimgmg@gmail.com', '', '', '', 'ဦးအောင်ကျော်ဝင်း', 'U Aung Kyaw Win', 'ဗမာ', 'ဗုဒ္ဓ', '1958-07-18', '၉/အမရ(နိုင်)၀၁၁၅၆၃', '', 'တံတားဦး', 'တံတားဦး', 'အိုးလုပ်ငန်း', 'တံတားဦး', '09402524967', 'ဒေါ်မြင့်နု', 'Daw Myint Nu', 'ဗမာ', 'ဗုဒ္ဓ', '1954-09-19', '၅/ငဇန(နိုင်)၀၃၉၆၆၄', '', 'တံတားဦး', 'တံတားဦး', 'အိုးလုပ်ငန်း', 'အိုးလုပ်ငန်း', '09797600725', 'မတမ-၁၆၁', '2015', 'အထက-တံတားဦး', 'ဦးအောင်ကျော်ဝင်း', 'အဘ', 'အိုးလုပ်ငန်း', 'တံတားဦး', '09402524967', '427', 'Reject');
INSERT INTO `studentdetail` VALUES ('23', null, '2017', 'မောင်ခိုင်မျိုးသိန်း', 'Mg Khaing Myo Thein', 'ကချင်', 'ခရစ္စယာန်', '1996-08-26', '၉/ပမန(နိုင်)၀၄၁၆၉၈', 'မြစ်ကြီးနား', 'မြစ်ကြီးနား', 'မြစ်ကြီးနား', 'မြစ်ကြီးနား', '09256284669', 'khaingmyo@gmail.com', '', '', '', 'ဦးမောင်မောင်အေး', 'U Khaing Myo Thein', 'ကချင်', 'ခရစ္စယာန်', '1963-07-02', '၉/ပမန(နိုင်)၀၄၁၆၉၃', '', 'မြစ်ကြီးနားမြို့', 'မြစ်ကြီးနားမြို့', 'ကျောက်လုပ်ငန်း', 'မြစ်ကြီးနားမြို့', '09402524968', 'ဒေါ်ခင်စန်း', 'Daw Khin San', 'ကချင်', 'ခရစ္စယာန်', '1962-03-21', '၁၃/ကမန(နိုင်)၀၀၀၅၂၇', '', 'မြစ်ကြီးနား', 'မြစ်ကြီးနား', 'ကျောက်လုပ်ငန်း', 'မြစ်ကြီးနားမြို့', '09797600726', 'မန-၃၆၁', '2015', 'အထက-၁ မန္တလေး', 'ဦးမောင်မောင်အေး', 'အဘ', 'ကျောက်လုပ်ငန်း', 'မြစ်ကြီးနား', '09402524968', '426', 'Reject');
INSERT INTO `studentdetail` VALUES ('24', null, '2017', 'မအိဆုသန်းထွန်းအောင်', 'Ma Ei Su Than Htun Aung', 'ဗမာ', 'ဗုဒ္ဓ', '1997-07-18', '၉/မဟမ(နိုင်)၀၃၉၅၀၂', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', '09256284670', 'eisu@gmail.co', '', '', '', 'ဦးသန်းထွန်းအောင်', 'U Than Htun Aung', 'ဗမာ', 'ဗုဒ္ဓ', '1964-04-26', '၉/မနမ(နိုင်)၀၅၆၄၇၃', '', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', 'ခြံလုပ်ငန်း', 'ခြံလုပ်ငန်း', '09402524969', 'ဒေါ်သီတာဝင်း', 'Daw Thida Win', 'ဗမာ', 'ဗုဒ္ဓ', '1961-05-13', '၉/မရမ(နိုင်)၀၁၅၀၈၅', '', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', 'ခြံလုပ်ငန်း', 'ကျောက်ဆည်မြို့', '09797600727', 'မနတ-၁၇၁၄', '2016', 'အထက-၁ ကျောက်ဆည်', 'ဦးသန်းထွန်းအောင်', 'အဘ', 'ခြံလုပ်ငန်း', 'ကျောက်ဆည်မြို့', '09402524969', '424', 'Reject');
INSERT INTO `studentdetail` VALUES ('25', null, '2017', 'မောင်နေလင်းအောင်', 'Mg Nay Lin Aung', 'ဗမာ', 'ဗုဒ္ဓ', '1996-02-03', '၉/အမဇ(နိုင်)၀၅၈၁၉၈', 'မိုးကုတ်', 'မိုးကုတ်', 'မိုးကုတ်', 'မိုးကုတ်', '09256284671', 'naylin@gmail.com', '', '', '', 'ဦးသိန်းမြင့်', 'U Thein Myint', 'ဗမာ', 'ဗုဒ္ဓ', '1957-07-05', '၉/မရမ(နိုင်)၀၉၀၈၁၀', '', 'မိုးကုတ်မြို့', 'မိုးကုတ်မြို့', 'ကျောက်လုပ်ငန်း', 'မိုးကုတ်မြို့', '09402524970', 'ဒေါပြုံးကြည်', 'Daw Pyone Kyi', 'ဗမာ', 'ဗုဒ္ဓ', '1960-04-15', '၁၃/ပရန(နိုင်)၀၅၄၁၇၆', '', 'မိုးကုတ်မြို့', 'မိုးကုတ်မြို့', 'မှီခို', 'မိုးကုတ်မြို့', '09797600728', 'မနတ-၅၉၉', '2016', 'အထက၁-မိုးကုတ်', 'ဦးသိန်းမြင့်', 'အဘ', 'ကျောက်လုပ်ငန်း', 'မိုးကုတ်မြို့', '09402524970', '423', 'Reject');
INSERT INTO `studentdetail` VALUES ('26', null, '2017', 'မမွန်မွန်ချို', 'Ma Mon Mon Cho', 'ချင်း', 'ခရစ္စယာန်', '1997-01-10', '၉/အမဇ(နိုင်)၀၃၁၃၅၇', 'ကလေးမြို့', 'ကလေးမြို့', 'ကလေးမြို့', 'ကလေးမြို့', '09256284672', 'monmon@gmail.com', '', '', '', 'ဦးချိုမောင်သန်း', 'U Cho Maung Than', 'ချင်း', 'ခရစ္စယာန်', '1959-01-26', '၉/မရမ(နိုင်)၀၂၆၆၁၇', '', 'ကလေးမြို့', 'ကလေးမြို့', 'အရောင်းအဝယ်', 'ကလေးမြို့', '09402524971', 'ဒေါ်ခင်စန်းနွဲ့', 'Daw Khin San Nyaet', 'ဗမာ', 'ဗုဒ္ဓ', '1963-06-19', '၅/ရဘန(နိုင်)၀၂၀၄၉၄', '', 'ကလေးမြို့', 'ကလေးမြို့', 'မှီခို', 'ကလေးမြို့', '09797600729', 'မနမ-၄၁၆', '2016', 'အထက၁-ကလေး', 'ဦးချိုမောင်သန်း', 'အဘ', 'အရောင်းအဝယ်', 'ကလေးမြို့', '09402524971', '422', 'Reject');
INSERT INTO `studentdetail` VALUES ('27', null, '2018', 'မောင်ဟိန်းထွေးမောင်', 'Mg Hein Htwe Mg', 'ဗမာ', 'ဗုဒ္ဓ', '2001-03-22', '၉/မဟမ(နိုင်)၀၃၉၀၉၉', 'စစ်ကိုင်း', 'စစ်ကိုင်း', 'စစ်ကိုင်းမြို့', 'စစ်ကိုင်းမြို့', '09256284673', 'htwemg@gmail.com', '', '', '', 'ဦးမောင်မောင်ထွေး', 'U Mg Mg Htwe', 'ဗမာ', 'ဗုဒ္ဓ', '1959-09-05', '၉/မရတ(နိုင်)၀၅၂၅၇၃', '', 'စစ်ကိုင်းမြို့', 'စစ်ကိုင်းမြို့', 'အရောင်းအဝယ်', 'စစ်ကိုင်းမြို့', '09402524972', 'ဒေါ်နီနီအောင်', 'Daw Ni Ni Aung', 'ဗမာ', 'ဗုဒ္ဓ', '1963-07-15', '၉/မရတ(နိုင်)၀၅၂၅၆၇', '', 'စစ်ကိုင်းမြို့', 'စစ်ကိုင်းမြို့', 'ဈေးသည်', 'စစ်ကိုင်းမြို့', '09797600730', 'မရမ-၉၈၁', '2017', 'အထက၂-စစ်ကိုင်း', 'ဦးမောင်မောင်းထွေး', 'အဘ', 'အရောင်းအဝယ်', 'စစ်ကိုင်းမြို့', '09402524972', '421', 'Reject');
INSERT INTO `studentdetail` VALUES ('28', null, '2018', 'မဇင်မာဖြိုး', 'Ma Zin Mar Phyo', 'ဗမာ', 'ဗုဒ္ဓ', '2002-07-12', '၁၄/ဖပန(နိုင်)၂၀၄၉၂၂', 'ဧရာဝတီတိုင်း', 'ဖျာပုံမြို့', 'ဖျာပုံမြို့', 'ဖျာပုံမြို့', '09256284674', 'zinmar@gmail.com', '', '', '', 'ဦးတင်', 'U Tin', 'ဗမာ', 'ဗုဒ္ဓ', '1968-07-04', '၁၄/ဖပန(နိုင်)၂၀၄၉၂၃', '', 'ဧရာဝတီတိုင်း', 'ဖျာပုံမြို့', 'တောင်သူ', 'ဖျာပုံမြို့', '09402524973', 'ဒေါ်စန်းမူ', 'Daw San Mu', 'ဗမာ', 'ဗုဒ္ဓ', '1970-08-03', '၁၄/ဖပန(နိုင်)၀၆၀၁၃၀', '', 'ဧရာဝတီတိုင်း', 'ဖျာပုံမြို့', 'မှီခို', 'ဖျာပုံမြို့', '09797600731', 'မမ-၂၃၅', '2017', 'အထက-၁ ဖျာပုံ', 'ဦးတင်', 'အဘ', 'တောင်သူ', 'ဖျာပုံမြို့', '09402524973', '420', 'Reject');
INSERT INTO `studentdetail` VALUES ('29', null, '2018', 'မောင်မင်းထက်အောင်', 'Mg Min Htet Aung', 'ဗမာ', 'ဗုဒ္ဓ', '2002-07-31', '၉/မရမ(နိုင်)၀၃၄၂၃၁', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', '09256284675', 'minhtet@gmil.com', '', '', '', 'ဦးမောင်မောင်', 'U Mg Mg', 'ဗမာ', 'ဗုဒ္ဓ', '1970-07-02', '၉/မရမ(နိုင်)၀၂၀၄၆၆', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ကုန်သည်', 'မန္တလေး', '09402524974', 'ဒေါ်ခင်ခင်', 'Daw Khin Knhin', 'ဗမာ', 'ဗုဒ္ဓ', '1971-08-08', '၉/မရမ(နိုင်)၀၂၀၄၆၆', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မှီခို', 'မန္တလေး', '09797600732', 'မနတ-၇၇၅', '2017', 'အထက-၂ မန္တလေး', 'ဦးမောင်မောင်', 'အဘ', 'ကုန်သည်', 'မန္တလေး', '09402524974', '419', 'Reject');
INSERT INTO `studentdetail` VALUES ('30', null, '2018', 'မောင်သီဟစိုး', 'Mg Thiha Soe', 'ဗမာ', 'ဗုဒ္ဓ', '2002-06-11', '၉/ထသန(နိုင်)၁၉၆၄၅၉', 'စစ်ကိုင်း', 'စစ်ကိုင်း', 'စစ်ကိုင်း', 'စစ်ကိုင်း', '09256284676', 'thihasoe@gmail.com', '', '', '', 'ဦးဝင်း', 'U Win', 'ဗမာ', 'ဗုဒ္ဓ', '1970-09-07', '၉/မရမ(နိုင်)၀၂၀၇၈၉', '', 'စစ်ကိုင်းမြို့', 'စစ်ကိုင်းမြို့', 'အိုးလုပ်ငန်း', 'စစ်ကိုင်းမြို့', '09402524975', 'ဒေါ်နွယ်အေး', 'Daw Nwe Aye', 'ဗမာ', 'ဗုဒ္ဓ', '1971-07-04', '၉/ထဆန(နိုင်)၀၅၇၈၃၇', '', 'စစ်ကိုင်းမြို့', 'စစ်ကိုင်းမြို့', 'မှီခို', 'စစ်ကိုင်းမြို့', '09797600733', 'မဖ-၁၉၂', '2017', 'အထက-၁ မန္တလေး', 'ဦးဝင်း', 'အဘ', 'အိုးလုပ်ငန်း', 'စစ်ကိုင်းမြို့', '09402524975', '418', 'Reject');
INSERT INTO `studentdetail` VALUES ('31', null, '2017', 'မနှင်းဝတ်ရည်', 'Ma Hnin Wutt Yee', 'ဗမာ', 'ဗုဒ္ဓ', '2000-06-06', '၉/ထသန(နိုင်)၅၈၄၇၆၉', 'စစ်ကိုင်း', 'စစ်ကိုင်း', 'စစ်ကိုင်း', 'စစ်ကိုင်း', '09793675467', 'wuttyee@gmail.com', '', '', '', 'ဦးအေး', 'U Aye', 'ဗမာ', 'ဗုဒ္ဓ', '1958-05-08', '၉/မရမ(နိုင်)၀၂၀၇၃၈', '', 'စစ်ကိုင်းမြို့', 'စစ်ကိုင်းမြို့', 'အိုးလုပ်ငန်း', 'စစ်ကိုင်းမြို့', '09786885447', 'ဒေါ်ခင်', 'Daw Khin', 'ဗမာ', 'ဗုဒ္ဓ', '1960-08-09', '၉/ထဆန(နိုင်)၀၅၇၉၆၈', '', 'စစ်ကိုင်းမြို့', 'စစ်ကိုင်းမြို့', 'မှီခို', 'စစ်ကိုင်းမြို့', '09785466467', 'မဖ-၅၆', '2017', 'စဉ့်ကိုင်-အထက', 'ဦးအေး', 'အဘ', 'အိုးလုပ်ငန်း', 'စစ်ကိုင်းမြို့', '09783635678', '520', 'Reject');
INSERT INTO `studentdetail` VALUES ('32', null, '2017', 'မထက်ထက်လင်း', 'Ma Htet Htet Lin', 'ဗမာ', 'ဗုဒ္ဓ', '2000-07-02', '၉/စကတ(နိုင်)၂၇၃၆၈၂', 'စဉ့်ကိုင်', 'စဉ့်ကိုင်', 'စဉ့်ကိုင်', 'စဉ့်ကိုင်', '09784534527', 'htethtet@gmail.com', '', '', '', 'ဦးတင်မောင်', 'U Tin Maung', 'ချင်း', 'ခရစ္စယာန်', '1959-09-04', '၉/ကဆန(နိုင်)၁၁၆၁၆၈', '', 'ကလေးမြို့', 'ကလေးမြို့', 'ကျောက်လုပ်ငန်း', 'ကလေးမြို့', '09795745749', 'ဒေါ်ဝေမိုး', 'Daw Wai Moe', 'ဗမာ', 'ဗုဒ္ဓ', '1963-07-11', '၉/ကဆန(နိုင်)၀၂၆၃၉၀', '', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', 'ကျောင်းဆရာမ', 'ကလေးမြို့', '၉/မတမ(နိုင်)၃၅၉၇၉၂', 'မဆ-၃၆၇', '2017', 'အထက-၁ ကျောက်ဆည်', 'ဦးတင်မောင်', 'အဘ', 'ကျောက်လုပ်ငန်း', 'ကလေးမြို့', '09402568890', '540', 'Reject');
INSERT INTO `studentdetail` VALUES ('33', null, '2017', 'မခင်သန္တာအောင်', 'Ma Khin Thandar Aung', 'ဗမာ', 'ဗုဒ္ဓ', '2000-07-24', '၉/မတထ(နိုင်)၂၇၅၄၃၈', 'တံတားဦး', 'တံတားဦး', 'တံတားဦး', 'တံတားဦး', '09783435546', 'thandar@gmail.com', '', '', '', 'ဦးကြည်သာ', 'U Kyi Thar', 'ဗမာ', 'ဗုဒ္ဓ', '1963-03-26', '၁/ကမန(နိုင်)၇၅၇၇၃၇', '', 'တံတားဦး', 'တံတားဦး', 'ခြံလုပ်ငန်း', 'တံတားဦး', '09791848425', 'ဒေါ်ခင်မာ', 'Daw Khin Mar', 'ဗမာ', 'ဗုဒ္ဓ', '1958-07-25', '၁/ကမန(နိုင်)၀၀၈၅၇၉', '', 'တံတားဦး', 'တံတားဦး', 'ကျောင်းဆရာမ', 'တံတားဦး', '09402688379', 'မတမ-၁၄၆', '2017', 'အထက-တံတားဦး', 'ဦကြည်သာ', 'အဘ', 'ခြံလုပ်ငန်း', 'တံတားဦး', '09784425678', '437', 'Reject');
INSERT INTO `studentdetail` VALUES ('34', null, '2017', 'မခိုင်အေးမွန်ဗိုလ်', 'Ma Khine Aye Mon Bo', 'ဗမာ', 'ဗုဒ္ဓ', '2000-07-26', '၉/မတထ(နိုင်)၂၇၅၄၈၃', 'မေမြို့', 'မေမြို့', 'မေမြို့', 'မေမြို့', '09794653569', 'mon@gmail.com', '', '', '', 'ဦးထွန်းမြင့်', 'U Htun Myint', 'ဗမာ', 'ဗုဒ္ဓ', '1959-03-18', '၁/ကမန(နိုင်)၀၄၉၈၈၉', '', 'မေမြို့', 'မေမြို့', 'ကုန်သည်', 'မေမြို့', '09257886489', 'ဒေါ်ခင်မြင့်', 'Daw Khine Myint', 'ဗမာ', 'ဗုဒ္ဓ', '1967-09-26', '၁/ကမန(နိုင်)၀၁၀၈၆၇', '', 'မေမြို့', 'မေမြို့', 'ကျောင်းဆရာမ', 'မေမြို့', '09794674789', 'မတမ-၇၄၇', '2017', 'အထက-၁ မေမြို့', 'ဦးထွန်းမြင့်', 'အဘ', 'ကုန်သည်', 'မေမြို့', '09974754832', '449', 'Reject');
INSERT INTO `studentdetail` VALUES ('35', null, '2017', 'မမေဇင်ဦး', 'Ma May Zin Oo', 'ဗမာ', 'ဗုဒ္ဓ', '2000-08-16', '၉/မတထ(နိုင်)၂၇၅၂၄၃၅', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', '09793554675', 'mayzin@gmail.com', '', '', '', 'ဦးကျော်မြင့်', 'U Kyaw Myint', 'ဗမာ', 'ဗုဒ္ဓ', '1960-08-28', '၁/ကမန(နိုင်)၀၄၉၈၄၅', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ကားပွဲစား', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09796556463', 'ဒေါ်တင်မာလွင်', 'Daw Tin Mar Lwin', 'ဗမာ', 'ဗုဒ္ဓ', '1962-07-29', '၁/ကမန(နိုင်)၀၇၆၃၁၂', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မှီခို', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09420885468', 'မန-၆၄၆', '2017', 'အထက-၂ မန္တလေး', 'ဦးကျော်မြင့်', 'အဘ', 'ကားပွဲစား', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09785646367', '443', 'Reject');
INSERT INTO `studentdetail` VALUES ('36', null, '2017', 'မသိင်္ဂီထွန်း', 'Ma Theingi Tun', 'ဗမာ', 'ဗုဒ္ဓ', '2000-04-27', '၉/မတထ(နိုင်)၂၇၅၄၆၃၅', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'မန္တလေးမြို့', '09786525674', 'tun@gmail.com', '', '', '', 'ဦးခင်ဇော်', 'U Khin Zaw', 'ဗမာ', 'ဗုဒ္ဓ', '1958-04-12', '၁/ကမန(နိုင်)၀၅၉၈၈၉', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ဆရာဝန်', 'မန္တလေး', '09794355258', 'ဒေါ်စန်းဝေ', 'Daw San Wai', 'ဗမာ', 'ဗုဒ္ဓ', '1958-03-15', '၁/ကမန(နိုင်)၂၂၀၈၆၇', '', 'မန္တလေးမြို့', 'မန္တလေးမြို့', 'ကျောင်းဆရာမ', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09420864653', 'မဇသ-၁၇', '2017', 'မြင်းခြံ-အထက', 'ဦးခင်ဇော်', 'အဘ', 'ဆရာဝန်', 'ချမ်းအေးသာစံ မန္တလေးမြို့', '09974256456', '438', 'Reject');
INSERT INTO `studentdetail` VALUES ('37', null, '2017', 'မသင်းသင်းစိုး', 'Ma Thin Thin Soe', 'ဗမာ', 'ဗုဒ္ဓ', '2000-05-26', '၉/ကဆန(နိုင်)၀၉၉၆၅၁', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', '09420757866', 'soe@gmail.com', '', '', '', 'ဦးဖေမြင့်', 'U Phay Myint', 'ဗမာ', 'ဗုဒ္ဓ', '1957-07-11', '၁/ကမန(နိုင်)၀၄၇၅၈၉', '', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', 'စာရေးဆရာ', 'ကြက်မင်းတွန်ရပ် ကျောက်ဆည်မြို့', '09785574736', 'ဒေါ်ထွေးပြုံး', 'Daw Htwe Pyone', 'ဗမာ', 'ဗုဒ္ဓ', '1959-04-11', '၁/ကမန(နိုင်)၀၆၄၅၇၉', '', 'ကျောက်ဆည်မြို့', 'ကျောက်ဆည်မြို့', 'ကျောင်းဆရာမ', 'ကျောက်ဆည်မြို့', '094026984359', 'မဆ-၃၂၃', '2017', 'အထက-၁ ကျောက်ဆည်', 'ဦးဖေမြင့်', 'အဘ', 'စာရေးဆရာ', 'ကျောက်ဆည်မြို့', '09785635649', '443', 'Reject');
INSERT INTO `studentdetail` VALUES ('38', null, '2017', 'မသင်းသင်းစိုး', 'Ma Thin Thin Soe', 'ဗမာ', 'ဗုဒ္ဓ', '2000-07-17', '၉/မတထ(နိုင်)၂၇၅၉၃၅', 'ကျောက်ပန်းတောင်း', 'ကျောက်ပန်းတောင်း', 'ကျောက်ပန်းတောင်း', 'ကျောက်ပန်းတောင်း', '09785635538', 'thin@gmail.com', '', '', '', 'ဦးမြင့်ဝေ', 'U Myint Wai', 'ဗမာ', 'ဗုဒ္ဓ', '1964-05-05', '၉/တဆန(နိုင်)၁၃၃၃၁၉', '', 'ကျောက်ပန်းတောင်း', 'ကျောက်ပန်းတောင်း', 'ထန်းလျက်လုပ်ငန်း', 'ကျောက်ပန်းတောင်း', '09784756667', 'ဒေါ်သန်းမြင့်', 'Daw Than Myint', 'ဗမာ', 'ဗုဒ္ဓ', '1961-07-05', '၉/ကဆန(နိုင်)၀၂၃၈၆၄', '', 'ကျောက်ပန်းတောင်း', 'ကျောက်ပန်းတောင်း', 'တောင်သူ', 'ကျောက်ပန်းတောင်း', '09420846465', 'မတမ-၁၉၁', '2017', 'ကျောက်ပန်းတောင်း( အထက)', 'ဦးမြင့်ဝေ', 'အဘ', 'ထန်းလျက်လုပ်ငန်း', 'ကျောက်ပန်းတောင်း', '09795646231', '430', 'Reject');
INSERT INTO `studentdetail` VALUES ('39', null, '2017', 'မသီရိထိန်', 'Ma Thiri Htein', 'ဗမာ', 'ဗုဒ္ဓ', '2000-07-14', '၉/မတထ(နိုင်)၂၇၅၂၃၅', 'ခင်ဦး', 'ခင်ဦး', 'ခင်ဦး', 'ခင်ဦး', '09784658473', 'thiri@gmail.com', '', '', '', 'ဦးဇော်', 'U Zaw', 'ဗမာ', 'ဗုဒ္ဓ', '1959-07-19', '၉/တဆန(နိုင်)၁၃၃၈၁၉', '', 'ခင်ဦး', 'ခင်ဦး', 'ခြံလုပ်ငန်း', 'ခင်ဦး', '09796546466', 'ဒေါ်တင့်', 'Daw Tint', 'ဗမာ', 'ဗုဒ္ဓ', '1957-03-24', '၉/ကဆန(နိုင်)၀၂၃၅၆၄', '', 'ခင်ဦး', 'ခင်ဦး', 'ခြံလုပ်ငန်း', 'ခင်ဦး', '09977675768', 'မဖ-၃၉၀', '2017', 'အထက-ခင်ဦး', 'ဦးဇော်', 'အဘ', 'ခြံလုပ်ငန်း', 'ခင်ဦး', '09785643537', '428', 'Reject');
INSERT INTO `studentdetail` VALUES ('11111', null, '2012', 'မနီလာ', 'Ma Nilar Soe', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'Reject');

-- ----------------------------
-- Table structure for subjectinformation
-- ----------------------------
DROP TABLE IF EXISTS `subjectinformation`;
CREATE TABLE `subjectinformation` (
  `Serial_No` int(8) NOT NULL AUTO_INCREMENT,
  `SubCode` varchar(5) NOT NULL,
  `Year_ID` varchar(8) NOT NULL,
  `Subject_Division_ID` int(11) NOT NULL,
  PRIMARY KEY (`Serial_No`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subjectinformation
-- ----------------------------
INSERT INTO `subjectinformation` VALUES ('1', 'Myan', '1', '0');
INSERT INTO `subjectinformation` VALUES ('2', 'Eng', '1', '0');
INSERT INTO `subjectinformation` VALUES ('3', 'Phy', '1', '0');
INSERT INTO `subjectinformation` VALUES ('4', '101', '1', '0');
INSERT INTO `subjectinformation` VALUES ('5', '102', '1', '0');
INSERT INTO `subjectinformation` VALUES ('6', '103', '1', '0');
INSERT INTO `subjectinformation` VALUES ('7', '104', '1', '0');
INSERT INTO `subjectinformation` VALUES ('8', 'Eng', '2', '0');
INSERT INTO `subjectinformation` VALUES ('9', '201', '2', '0');
INSERT INTO `subjectinformation` VALUES ('10', '202', '2', '0');
INSERT INTO `subjectinformation` VALUES ('11', '203', '2', '0');
INSERT INTO `subjectinformation` VALUES ('12', '204', '2', '0');
INSERT INTO `subjectinformation` VALUES ('13', '205', '2', '0');
INSERT INTO `subjectinformation` VALUES ('14', '206', '2', '0');
INSERT INTO `subjectinformation` VALUES ('15', 'Eng', '3', '0');
INSERT INTO `subjectinformation` VALUES ('16', '301', '3', '0');
INSERT INTO `subjectinformation` VALUES ('17', '302', '3', '0');
INSERT INTO `subjectinformation` VALUES ('18', '303', '3', '0');
INSERT INTO `subjectinformation` VALUES ('19', '304', '3', '0');
INSERT INTO `subjectinformation` VALUES ('20', '305', '3', '0');
INSERT INTO `subjectinformation` VALUES ('21', '306', '3', '0');
INSERT INTO `subjectinformation` VALUES ('22', 'Eng', '4', '0');
INSERT INTO `subjectinformation` VALUES ('23', '401', '4', '0');
INSERT INTO `subjectinformation` VALUES ('24', '402', '4', '0');
INSERT INTO `subjectinformation` VALUES ('25', '403', '4', '0');
INSERT INTO `subjectinformation` VALUES ('26', '404', '4', '0');
INSERT INTO `subjectinformation` VALUES ('27', '405', '4', '0');
INSERT INTO `subjectinformation` VALUES ('28', '406', '4', '0');
INSERT INTO `subjectinformation` VALUES ('29', 'Eng', '5', '0');
INSERT INTO `subjectinformation` VALUES ('30', '501', '5', '0');
INSERT INTO `subjectinformation` VALUES ('31', '502', '5', '0');
INSERT INTO `subjectinformation` VALUES ('32', '503', '5', '0');
INSERT INTO `subjectinformation` VALUES ('33', '504', '5', '0');
INSERT INTO `subjectinformation` VALUES ('34', '505', '5', '0');

-- ----------------------------
-- Table structure for subject_division
-- ----------------------------
DROP TABLE IF EXISTS `subject_division`;
CREATE TABLE `subject_division` (
  `ID` varchar(8) NOT NULL,
  `Subject_Division_ID` varchar(8) NOT NULL,
  `Major_ID` varchar(8) DEFAULT NULL,
  `Elastic_Name` varchar(50) NOT NULL,
  `First_Term_Percent` float DEFAULT NULL,
  `Second_Term_Percent` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subject_division
-- ----------------------------
INSERT INTO `subject_division` VALUES ('', '', null, '', null, null);
INSERT INTO `subject_division` VALUES ('1', '1', '2', 'AA', '0.6', '0.4');
INSERT INTO `subject_division` VALUES ('10', '1', '2', 'AI', '0.8', '0');
INSERT INTO `subject_division` VALUES ('2', '1', '2', 'CG', '0.7', '0');
INSERT INTO `subject_division` VALUES ('3', '2', '2', 'Web', '0.7', '0');
INSERT INTO `subject_division` VALUES ('4', '2', '2', 'Mining', '0.7', '0');
INSERT INTO `subject_division` VALUES ('5', '1', '3', 'Embedded', '0.8', '0');
INSERT INTO `subject_division` VALUES ('6', '1', '3', 'Network', '0.8', '0');
INSERT INTO `subject_division` VALUES ('7', '2', '3', 'Digital', '0.8', '0');
INSERT INTO `subject_division` VALUES ('8', '2', '3', 'Image', '0.8', '0');

-- ----------------------------
-- Table structure for subject_percent
-- ----------------------------
DROP TABLE IF EXISTS `subject_percent`;
CREATE TABLE `subject_percent` (
  `Percent_ID` varchar(8) NOT NULL,
  `Serial_No` varchar(5) DEFAULT NULL,
  `First_Term_Percent` float DEFAULT NULL,
  `Second_Term_Percent` float DEFAULT NULL,
  `Major_ID` varchar(8) DEFAULT NULL,
  `Subject_Division_ID` varchar(8) DEFAULT NULL,
  UNIQUE KEY `Percent_ID` (`Percent_ID`),
  KEY `Percent_ID_2` (`Percent_ID`),
  KEY `Percent_ID_3` (`Percent_ID`),
  KEY `Serial_No` (`Serial_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject_percent
-- ----------------------------
INSERT INTO `subject_percent` VALUES ('1', '1', '0.4', '0.4', '1', null);
INSERT INTO `subject_percent` VALUES ('10', '9', '0.3', '0.3', '1', null);
INSERT INTO `subject_percent` VALUES ('11', '9', '0.3', '0.3', '3', null);
INSERT INTO `subject_percent` VALUES ('12', '10', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('13', '10', '0.4', '0.4', '3', null);
INSERT INTO `subject_percent` VALUES ('14', '11', '0.4', '0.35', '2', null);
INSERT INTO `subject_percent` VALUES ('15', '11', '0.4', '0.35', '3', null);
INSERT INTO `subject_percent` VALUES ('16', '12', '0.3', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('17', '12', '0.3', '0.4', '3', null);
INSERT INTO `subject_percent` VALUES ('18', '13', '0.3', '0.3', '2', null);
INSERT INTO `subject_percent` VALUES ('19', '13', '0.2', '0.35', '3', null);
INSERT INTO `subject_percent` VALUES ('2', '2', '0.4', '0.4', '1', null);
INSERT INTO `subject_percent` VALUES ('20', '14', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('21', '14', '0.4', '0.35', '3', null);
INSERT INTO `subject_percent` VALUES ('22', '15', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('23', '15', '0.4', '0.4', '3', null);
INSERT INTO `subject_percent` VALUES ('24', '16', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('25', '16', '0.4', '0.4', '3', null);
INSERT INTO `subject_percent` VALUES ('26', '17', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('27', '17', '0.4', '0.4', '3', null);
INSERT INTO `subject_percent` VALUES ('28', '18', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('29', '18', '0.4', '0.4', '3', null);
INSERT INTO `subject_percent` VALUES ('3', '3', '0.4', '0.4', '1', null);
INSERT INTO `subject_percent` VALUES ('30', '19', '0.4', '0.3', '2', null);
INSERT INTO `subject_percent` VALUES ('31', '19', '0.4', '0.35', '3', null);
INSERT INTO `subject_percent` VALUES ('32', '20', '0.3', '0.3', '2', null);
INSERT INTO `subject_percent` VALUES ('33', '20', '0.35', '0.35', '3', null);
INSERT INTO `subject_percent` VALUES ('34', '21', '0.3', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('35', '21', '0.35', '0.35', '3', null);
INSERT INTO `subject_percent` VALUES ('36', '22', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('37', '22', '0.4', '0.4', '3', null);
INSERT INTO `subject_percent` VALUES ('38', '23', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('39', '23', '0.4', '0.3', '3', null);
INSERT INTO `subject_percent` VALUES ('4', '4', '0.35', '0.4', '1', null);
INSERT INTO `subject_percent` VALUES ('40', '24', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('41', '24', '0.4', '0.4', '3', null);
INSERT INTO `subject_percent` VALUES ('42', '25', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('43', '25', '0.35', '0.35', '3', null);
INSERT INTO `subject_percent` VALUES ('44', '26', '0.3', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('45', '26', '0.4', '0.35', '3', null);
INSERT INTO `subject_percent` VALUES ('46', '27', '0.4', '0.3', '2', null);
INSERT INTO `subject_percent` VALUES ('47', '27', '0.35', '0.4', '3', null);
INSERT INTO `subject_percent` VALUES ('48', '28', '0.4', '0.3', '2', null);
INSERT INTO `subject_percent` VALUES ('49', '28', '0.35', '0.35', '3', null);
INSERT INTO `subject_percent` VALUES ('5', '5', '0.4', '0.4', '1', null);
INSERT INTO `subject_percent` VALUES ('50', '29', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('51', '29', '0.4', '0.4', '3', null);
INSERT INTO `subject_percent` VALUES ('52', '30', '0.8', '0', '2', null);
INSERT INTO `subject_percent` VALUES ('53', '30', '0.8', '0', '3', null);
INSERT INTO `subject_percent` VALUES ('54', '31', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('55', '31', '0.4', '0.4', '3', null);
INSERT INTO `subject_percent` VALUES ('56', '32', '0.4', '0', '2', null);
INSERT INTO `subject_percent` VALUES ('57', '32', '0.4', '0.3', '3', null);
INSERT INTO `subject_percent` VALUES ('58', '33', null, null, '2', '1');
INSERT INTO `subject_percent` VALUES ('59', '33', null, null, '3', '1');
INSERT INTO `subject_percent` VALUES ('6', '6', '0.3', '0.4', '1', '');
INSERT INTO `subject_percent` VALUES ('60', '34', null, null, '2', '2');
INSERT INTO `subject_percent` VALUES ('61', '34', null, null, '3', '2');
INSERT INTO `subject_percent` VALUES ('7', '7', '0.4', '0.3', '1', null);
INSERT INTO `subject_percent` VALUES ('8', '8', '0.4', '0.4', '2', null);
INSERT INTO `subject_percent` VALUES ('9', '8', '0.4', '0.4', '3', null);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `Sr_No` int(3) NOT NULL,
  `Teacher_ID` varchar(10) NOT NULL,
  `Teacher_Name` varchar(30) NOT NULL,
  `Position` varchar(20) NOT NULL,
  `Department_ID` varchar(5) NOT NULL,
  `Salary` varchar(10) DEFAULT NULL,
  `Position_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Sr_No`),
  FULLTEXT KEY `Foreign` (`Teacher_ID`,`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('101', 'MOST_101', 'U Kyaw Swar Soe', 'Rector', 'D001', null, null);
INSERT INTO `teacher` VALUES ('102', 'MOST_102', 'Daw Ohmar', 'Lecturer', 'D002', null, null);
INSERT INTO `teacher` VALUES ('103', 'MOST_103', 'Dr. Saw Thandar Myint', 'Professor', 'D003', null, null);
INSERT INTO `teacher` VALUES ('104', 'MOST_104', 'Daw Myo Ma Ma', 'Lecturer', 'D003', null, null);
INSERT INTO `teacher` VALUES ('105', 'MOST_105', 'Daw Si Si Mar Win', 'Lecturer', 'D003', null, null);
INSERT INTO `teacher` VALUES ('106', 'MOST_106', 'Daw Nyunt Nyunt Sein', 'Assistant Lecturer', 'D003', null, null);
INSERT INTO `teacher` VALUES ('107', 'MOST_107', 'Daw Myo Thandar Htun', 'Assistant Lecturer', 'D003', null, null);
INSERT INTO `teacher` VALUES ('108', 'MOST_108', 'Dr. Theingi Htike', 'Assistant Lecturer', 'D003', null, null);
INSERT INTO `teacher` VALUES ('109', 'MOST_109', 'Daw Tin Mar Myint', 'Assistant Lecturer', 'D003', null, null);
INSERT INTO `teacher` VALUES ('110', 'MOST_110', 'Daw Wine Moh Moh Htun', 'Tutor', 'D003', null, null);
INSERT INTO `teacher` VALUES ('111', 'MOST_111', 'Daw Thuzar Aung', 'Tutor', 'D003', null, null);
INSERT INTO `teacher` VALUES ('112', 'MOST_112', 'Daw Cho Zin Win', 'Tutor', 'D003', null, null);
INSERT INTO `teacher` VALUES ('113', 'MOST_113', 'Daw Shwe Zin Phyo', 'Tutor', 'D003', null, null);
INSERT INTO `teacher` VALUES ('114', 'MOST_114', 'U Sann Linn Aung', 'Lecturer', 'D004', null, null);
INSERT INTO `teacher` VALUES ('115', 'MOST_115', 'U Thein Htay Zaw', 'Lecturer', 'D004', null, null);
INSERT INTO `teacher` VALUES ('116', 'MOST_116', 'U Soe Moe Aung', 'Tutor', 'D004', null, null);
INSERT INTO `teacher` VALUES ('117', 'MOST_117', 'U Win Thu', 'Tutor', 'D004', null, null);
INSERT INTO `teacher` VALUES ('118', 'MOST_118', 'Daw Thwe Thwe Aung', 'Tutor', 'D004', null, null);
INSERT INTO `teacher` VALUES ('119', 'MOST_119', 'Daw Win Thandar Linn', 'Tutor', 'D004', null, null);
INSERT INTO `teacher` VALUES ('120', 'MOST_120', 'Daw Thin Thin Yu', 'Assistant Lecturer', 'D005', null, null);
INSERT INTO `teacher` VALUES ('121', 'MOST_121', 'Daw Khin Moe Lwin', 'Assistant Lecturer', 'D005', null, null);
INSERT INTO `teacher` VALUES ('122', 'MOST_122', 'Daw Aye Aye', 'Assistant Lecturer', 'D005', null, null);
INSERT INTO `teacher` VALUES ('123', 'MOST_123', 'Daw Nyo Nyo Soe', 'Assistant Lecturer', 'D005', null, null);
INSERT INTO `teacher` VALUES ('124', 'MOST_124', 'Dr. Aye Aye Chaw', 'Professor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('125', 'MOST_125', 'Dr. Thi Thi Soe', 'Professor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('126', 'MOST_126', 'Dr. Thidar Oo', 'Professor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('127', 'MOST_127', 'Dr. Ei Ei Mon ', 'Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('128', 'MOST_128', 'Daw Thwe', 'Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('129', 'MOST_129', 'Daw Yin Min Htun', 'Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('130', 'MOST_130', 'Dr. Tin Ei Kyaw', 'Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('131', 'MOST_131', 'Dr. Nwe Nwe Hlaing', 'Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('132', 'MOST_132', 'Daw Htwe Htwe Pyone', 'Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('133', 'MOST_133', 'Daw Hnin Yu Yu Win', 'Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('134', 'MOST_134', 'Daw Zar Zar Hnin', 'Assistant Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('135', 'MOST_135', 'Daw Mar Mar Soe', 'Assistant Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('136', 'MOST_136', 'Daw Khin Myat Nwe Win', 'Assistant Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('137', 'MOST_137', 'Daw Khin Khin Oo', 'Assistant Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('138', 'MOST_138', 'Daw Kyi Pyar Zaw', 'Assistant Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('139', 'MOST_139', 'Daw Tin Moe Khaing', 'Assistant Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('140', 'MOST_140', 'Daw Tin Aye Lwin', 'Assistant Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('141', 'MOST_141', 'Daw Ei Ei Mon', 'Assistant Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('142', 'MOST_142', 'Daw Hnin Su Phyu', 'Assistant Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('143', 'MOST_143', 'Daw Su Mon Linn', 'Assistant Lecturer', 'D006', null, null);
INSERT INTO `teacher` VALUES ('144', 'MOST_144', 'Dr. Su Nandar Aung', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('145', 'MOST_145', 'Daw Su Su Win', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('146', 'MOST_146', 'Daw Khaing Phyo Wai', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('147', 'MOST_147', 'Daw Htet Htet Linn', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('148', 'MOST_148', 'Daw Hnin Mya Aye', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('149', 'MOST_149', 'U Khaing Myint', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('150', 'MOST_150', 'Daw May Phyu Htun', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('151', 'MOST_151', 'Daw Myat Mon Oo', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('152', 'MOST_152', 'Daw Yie Yie Aung', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('153', 'MOST_153', 'Daw Ei Ei Thu', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('154', 'MOST_154', 'Daw Yu Mon Aye', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('155', 'MOST_155', 'Daw Thiri Malar Swe', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('156', 'MOST_156', 'Daw Khin Su Wai', 'Tutor', 'D006', null, null);
INSERT INTO `teacher` VALUES ('157', 'MOST_157', 'Dr. Sann Sann Tint', 'Professor', 'D007', null, null);
INSERT INTO `teacher` VALUES ('158', 'MOST_158', 'Dr. Mya Thet Saw', 'Professor', 'D007', null, null);
INSERT INTO `teacher` VALUES ('159', 'MOST_159', 'Dr. Zarni Sann', 'Professor', 'D007', null, null);
INSERT INTO `teacher` VALUES ('160', 'MOST_160', 'Daw Shane Thawdar Oo', 'Lecturer', 'D007', null, null);
INSERT INTO `teacher` VALUES ('161', 'MOST_161', 'Dr. Nu War', 'Lecturer', 'D007', null, null);
INSERT INTO `teacher` VALUES ('162', 'MOST_162', 'Dr. Thandar Htwe', 'Lecturer', 'D007', null, null);
INSERT INTO `teacher` VALUES ('163', 'MOST_163', 'Dr. Wai Wai Zin', 'Lecturer', 'D007', null, null);
INSERT INTO `teacher` VALUES ('164', 'MOST_164', 'Dr. Ei Ei Khin ', 'Assistant Lecturer', 'D007', null, null);
INSERT INTO `teacher` VALUES ('165', 'MOST_165', 'Dr.Thwe Thwe Htun', 'Assistant Lecturer', 'D007', null, null);
INSERT INTO `teacher` VALUES ('166', 'MOST_166', 'Daw Myo Thidar Win', 'Assistant Lecturer', 'D007', null, null);
INSERT INTO `teacher` VALUES ('167', 'MOST_167', 'Daw Khaing Myat Nwe', 'Assistant Lecturer', 'D007', null, null);
INSERT INTO `teacher` VALUES ('168', 'MOST_168', 'Daw Kaythi Wutt Hmone Khin', 'Assistant Lecturer', 'D007', null, null);
INSERT INTO `teacher` VALUES ('169', 'MOST_169', 'Daw Htate Htate Kyaw', 'Assistant Lecturer', 'D007', null, null);
INSERT INTO `teacher` VALUES ('170', 'MOST_170', 'Daw May Thiri Win', 'Assistant Lecturer', 'D007', null, null);
INSERT INTO `teacher` VALUES ('171', 'MOST_171', 'Daw Aye Aye Mar', 'Tutor', 'D007', null, null);
INSERT INTO `teacher` VALUES ('172', 'MOST_172', 'U Win Htun', 'Tutor', 'D007', null, null);
INSERT INTO `teacher` VALUES ('173', 'MOST_173', 'Daw Lae Lae Htun', 'Tutor', 'D007', null, null);
INSERT INTO `teacher` VALUES ('174', 'MOST_174', 'Daw Win Pa Pa San', 'Tutor', 'D007', null, null);
INSERT INTO `teacher` VALUES ('175', 'MOST_175', 'Daw Mayri Oo', 'Tutor', 'D007', null, null);
INSERT INTO `teacher` VALUES ('176', 'MOST_176', 'Daw Thein Tshan Soe', 'Tutor', 'D007', null, null);
INSERT INTO `teacher` VALUES ('177', 'MOST_177', 'Daw Yie Yie Aung', 'Tutor', 'D007', null, null);
INSERT INTO `teacher` VALUES ('178', 'MOST_178', 'Daw Hnin Pwint Myue Wai', 'Tutor', 'D007', null, null);
INSERT INTO `teacher` VALUES ('179', 'MOST_179', 'Dr. Thin Thin Naing', 'Professor', 'D008', null, null);
INSERT INTO `teacher` VALUES ('180', 'MOST_180', 'Daw Ank Phyu Win', 'Lecturer', 'D008', null, null);
INSERT INTO `teacher` VALUES ('181', 'MOST_181', 'Daw Khin Aye Mar', 'Lecturer', 'D008', null, null);
INSERT INTO `teacher` VALUES ('182', 'MOST_182', 'Daw Nilar Shwe', 'Lecturer', 'D008', null, null);
INSERT INTO `teacher` VALUES ('183', 'MOST_183', 'Daw May Thet Aung', 'Assistant Lecturer', 'D008', null, null);
INSERT INTO `teacher` VALUES ('184', 'MOST_184', 'Daw Nyein Chan Win', 'Assistant Lecturer', 'D008', null, null);
INSERT INTO `teacher` VALUES ('185', 'MOST_185', 'Daw Tin Tin Soe', 'Assistant Lecturer', 'D008', null, null);
INSERT INTO `teacher` VALUES ('186', 'MOST_186', 'Dr. Thae Naw Naw Kyaw', 'Assistant Lecturer', 'D008', null, null);
INSERT INTO `teacher` VALUES ('187', 'MOST_187', 'Daw Cho Cho Lwin', 'Assistant Lecturer', 'D008', null, null);
INSERT INTO `teacher` VALUES ('188', 'MOST_188', 'Daw Kyawt Kyawt Htun', 'Assistant Lecturer', 'D008', null, null);
INSERT INTO `teacher` VALUES ('189', 'MOST_189', 'U Nyein Min Oo', 'Tutor', 'D008', null, null);
INSERT INTO `teacher` VALUES ('190', 'MOST_190', 'Daw Moe Moe Myint', 'Tutor', 'D008', null, null);
INSERT INTO `teacher` VALUES ('191', 'MOST_191', 'Daw Kay Zin Htun', 'Tutor', 'D008', null, null);
INSERT INTO `teacher` VALUES ('192', 'MOST_192', 'Daw Zue Zue Aung', 'Tutor', 'D008', null, null);
INSERT INTO `teacher` VALUES ('193', 'MOST_193', 'Daw Haymar Cho', 'Tutor', 'D008', null, null);
INSERT INTO `teacher` VALUES ('194', 'MOST_194', 'Daw Khaing Zin Thant', 'Tutor', 'D008', null, null);
INSERT INTO `teacher` VALUES ('195', 'MOST_195', 'Daw Moe Htay', 'Tutor', 'D008', null, null);
INSERT INTO `teacher` VALUES ('196', 'MOST_196', 'Daw Sann Sann Hla', 'Tutor', 'D008', null, null);
INSERT INTO `teacher` VALUES ('197', 'MOST_197', 'Daw Su Myat Sandar Win', 'Tutor', 'D008', null, null);
INSERT INTO `teacher` VALUES ('198', 'MOST_198', 'U Thaung Kyaw', 'Associate Professor', 'D009', null, null);
INSERT INTO `teacher` VALUES ('199', 'MOST_199', 'Daw Win Min Soe', 'Lecturer', 'D009', null, null);
INSERT INTO `teacher` VALUES ('200', 'MOST_200', 'Daw Kyi Kyi Mon', 'Lecturer', 'D009', null, null);
INSERT INTO `teacher` VALUES ('201', 'MOST_201', 'Daw Chit Su Win', 'Tutor', 'D009', null, null);
INSERT INTO `teacher` VALUES ('202', 'MOST_202', 'Daw Wai Wai Myint', 'Tutor', 'D009', null, null);
INSERT INTO `teacher` VALUES ('203', 'MOST_203', 'Daw Toe Toe Wai Kyaw', 'Tutor', 'D009', null, null);
INSERT INTO `teacher` VALUES ('204', 'MOST_204', 'Daw Yie Mon Thaw', 'Tutor', 'D009', null, null);
INSERT INTO `teacher` VALUES ('205', 'MOST_205', 'Daw May Thet Aung', 'Tutor', 'D009', null, null);
INSERT INTO `teacher` VALUES ('206', 'MOST_206', 'Daw Thiri Soe Win', 'Tutor', 'D009', null, null);
INSERT INTO `teacher` VALUES ('207', 'MOST_207', 'Daw Linn Linn Htet', 'Tutor', 'D009', null, null);
INSERT INTO `teacher` VALUES ('208', 'MOST_208', 'Dr. Thandar Aung', 'Professor', 'D010', null, null);
INSERT INTO `teacher` VALUES ('209', 'MOST_209', 'Dr. Than Than Nwe', 'Professor', 'D010', null, null);
INSERT INTO `teacher` VALUES ('210', 'MOST_210', 'Dr. Nyein Nyein Myo', 'Professor', 'D010', null, null);
INSERT INTO `teacher` VALUES ('211', 'MOST_211', 'Dr. Mya Thidar Kyaw', 'Professor', 'D010', null, null);
INSERT INTO `teacher` VALUES ('212', 'MOST_212', 'Daw Thet Thet Khaing', 'Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('213', 'MOST_213', 'Daw Aye Aye Lwin', 'Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('214', 'MOST_214', 'Daw Khin Mu Aye', 'Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('215', 'MOST_215', 'Daw Thein Thein', 'Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('216', 'MOST_216', 'Dr. Swe Swe Nyein', 'Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('217', 'MOST_217', 'Daw Sandar Aung', 'Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('218', 'MOST_218', 'Daw Lae Lae Yie', 'Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('219', 'MOST_219', 'Daw Moh Moh', 'Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('220', 'MOST_220', 'Daw Yin Min Htwe', 'Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('221', 'MOST_221', 'Daw Thuzar Hnin', 'Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('222', 'MOST_222', 'Daw Toe Toe', 'Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('223', 'MOST_223', 'Daw Khin Myo Myat', 'Assistant Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('224', 'MOST_224', 'Daw Aye Aye Maw', 'Assistant Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('225', 'MOST_225', 'Daw Zin Mar Win ', 'Assistant Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('226', 'MOST_226', 'Dr. Lwin Mar Thin', 'Assistant Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('227', 'MOST_227', 'Daw Mar Mar Nwe', 'Assistant Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('228', 'MOST_228', 'Daw Khaing Zarchi Htun', 'Assistant Lecturer', 'D010', null, null);
INSERT INTO `teacher` VALUES ('229', 'MOST_229', 'Daw Nway Htet Htet Aung', 'Tutor', 'D010', null, null);
INSERT INTO `teacher` VALUES ('230', 'MOST_230', 'Daw Wai Hnin Phyu', 'Tutor', 'D010', null, null);
INSERT INTO `teacher` VALUES ('231', 'MOST_231', 'Daw Phyu Sin Phway', 'Tutor', 'D010', null, null);
INSERT INTO `teacher` VALUES ('232', 'MOST_232', 'Daw Aye Chan Wai', 'Tutor', 'D010', null, null);
INSERT INTO `teacher` VALUES ('233', 'MOST_233', 'Daw Pyi Phyo Thu', 'Tutor', 'D010', null, null);
INSERT INTO `teacher` VALUES ('234', 'MOST_234', 'Daw Tin Tin Sann', 'Tutor', 'D010', null, null);
INSERT INTO `teacher` VALUES ('235', 'MOST_235', 'Daw Thi Thi Shane', 'Tutor', 'D010', null, null);
INSERT INTO `teacher` VALUES ('236', 'MOST_236', 'Dr. Ei Ei Min', 'Professor', 'D011', null, null);
INSERT INTO `teacher` VALUES ('237', 'MOST_237', 'Daw Cho Cho Myint', 'Lecturer', 'D011', null, null);
INSERT INTO `teacher` VALUES ('238', 'MOST_238', 'Daw Yamin Thawdar Aung', 'Assistant Lecturer', 'D011', null, null);
INSERT INTO `teacher` VALUES ('239', 'MOST_239', 'Daw Naw Kue Ma', 'Assistant Lecturer', 'D011', null, null);
INSERT INTO `teacher` VALUES ('240', 'MOST_240', 'Daw Aye Aye Soe', 'Assistant Lecturer', 'D011', null, null);
INSERT INTO `teacher` VALUES ('241', 'MOST_241', 'Daw Su Su Win', 'Tutor', 'D011', null, null);
INSERT INTO `teacher` VALUES ('12345', 'MOST_12345', 'Daw Mar Mar Tinn', 'Registra', '', null, null);

-- ----------------------------
-- Table structure for teacher_attendance
-- ----------------------------
DROP TABLE IF EXISTS `teacher_attendance`;
CREATE TABLE `teacher_attendance` (
  `Sr_No` int(5) NOT NULL,
  `Teacher_ID` varchar(10) DEFAULT NULL,
  `Janauary` int(20) DEFAULT NULL,
  `February` int(20) DEFAULT NULL,
  `March` int(20) DEFAULT NULL,
  `April` int(20) DEFAULT NULL,
  `June` int(20) DEFAULT NULL,
  `July` int(20) DEFAULT NULL,
  `August` int(20) DEFAULT NULL,
  `September` int(20) DEFAULT NULL,
  `October` int(20) DEFAULT NULL,
  `November` int(20) DEFAULT NULL,
  `December` int(5) DEFAULT NULL,
  `Year` int(5) NOT NULL,
  PRIMARY KEY (`Sr_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teacher_attendance
-- ----------------------------
INSERT INTO `teacher_attendance` VALUES ('1', 'MOST_103', null, null, null, null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for teacher_details
-- ----------------------------
DROP TABLE IF EXISTS `teacher_details`;
CREATE TABLE `teacher_details` (
  `Teacher_ID` varchar(10) NOT NULL,
  `Qualification` varchar(30) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `Nationality` varchar(15) DEFAULT NULL,
  `Religion` varchar(10) DEFAULT NULL,
  `Birthplace` varchar(20) NOT NULL,
  `NRC` varchar(20) DEFAULT NULL,
  `Father_Name` varchar(20) NOT NULL,
  `Father_Job` varchar(30) DEFAULT NULL,
  `Marrital_Status` varchar(10) NOT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `User_Level` varchar(32) NOT NULL,
  `St_D_Job` date DEFAULT NULL,
  `St_D_Pos` date DEFAULT NULL,
  `St_D_Uni` date DEFAULT NULL,
  `Contract` varchar(40) DEFAULT NULL,
  `Foreign_Exp` varchar(40) NOT NULL,
  `Dep_Action` varchar(40) NOT NULL,
  `Job_Training` varchar(40) DEFAULT NULL,
  `Past_Posting` varchar(30) DEFAULT NULL,
  `Per_Address` varchar(50) DEFAULT NULL,
  `Email_Address` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Teacher_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teacher_details
-- ----------------------------
INSERT INTO `teacher_details` VALUES ('MOST_101', 'Mc.Sc', '2/1/1967', 'Bamar', 'Buddhist', 'Yangon', null, 'U Kaung Myat', null, 'Married', 'rector101', 'Rector', null, null, null, null, 'England', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_102', 'Mc.Sc', '28/5/1968', 'Shan/Bamar', 'Buddhist', 'Lashio', null, 'U Bo', null, 'Single', 'dean102', 'MDean', null, null, null, null, 'Singapore', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_103', 'Mc.Sc,Ph.D', '10/8/1972', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Htun Wai', null, 'Single', 'dean103', 'Dean', null, null, null, null, 'Japan', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_104', 'Mc.Sc', '7/9/1973', 'Bamar', 'Buddhist', 'Sintgaing', null, 'U Wai Linn', null, 'Single', 'teacher104', 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_105', 'Mc.Sc', '12/11/1977', 'Bamar', 'Buddhist', 'Monywa', null, 'U Naing', null, 'Single', 'teacher105', 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_106', 'Mc.Sc', '30/6/1976', 'Bamar', 'Buddhist', 'Singaing', null, 'U Thaung', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_107', 'Mc.Sc', '25/9/1974', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Naing Linn', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_108', 'Mc.Sc,Ph.D', '6/1/1981', 'Bamar', 'Buddhist', 'Pathein', null, 'U Soe Moe', null, 'Single', null, 'Teacher', null, null, null, null, 'Japan', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_109', 'Mc.Sc', '14/9/1981', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Aung', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_110', 'Mc.Sc', '30/12/1981', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Myint Han', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_111', 'Mc.Sc', '9/4/1982', 'Bamar', 'Buddhist', 'Hmawbe', null, 'U Soe Thu', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_112', 'Mc.Sc', '24/6/1984', 'Bamar', 'Buddhist', 'Magway', null, 'U Ko Gyi', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_113', 'Mc.Sc', '11/3/1985', 'Bamar', 'Buddhist', 'Pyi', null, 'U Hla Myint', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_114', 'Mc.Tech', '5/10/1971', 'Bamar', 'Buddhist', 'Kyaut Phyu', null, 'U Sann Win', null, 'Married', null, 'Dean', null, null, null, null, 'Singapore', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_115', 'Mc.Tech', '20/5/1972', 'Bamar', 'Buddhist', 'Myit Thar', null, 'U Win Tint', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_116', 'Mc.Tech', '28/11/1974', 'Bamar', 'Buddhist', 'Muse', null, 'U Myat Khaing', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_117', 'Mc.Tech', '16/8/1977', 'Bamar', 'Buddhist', 'Kyaukse', null, 'U Thein Htay', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_118', 'Mc.Tech', '4/12/1973', 'Bamar', 'Buddhist', 'Pyin Oo Lwin', null, 'U Latt', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_119', 'Mc.Tech', '29/1/1975', 'Bamar', 'Buddhist', 'Pakhoku', null, 'U Thurein', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_120', 'M.A(Myanmar)', '3/5/1967', 'Bamar', 'Buddhist', 'Shwe Bo', null, 'U Thein Htay', null, 'Married', null, 'Dean', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_121', 'M.A(Myanmar)', '21/5/1968', 'Bamar', 'Buddhist', 'Banmaw', null, 'U Min Wai', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_122', 'M.A(Myanmar)', '24/8/1967', 'Bamar', 'Buddhist', 'Palake', null, 'U Win Ko', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_123', 'M.A(Myanmar)', '16/10/1969', 'Bamar', 'Buddhist', 'Pakhoku', null, 'U Htay Lwin', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_124', 'Mc.Sc,Ph.D', '18/9/1969', 'Bamar', 'Buddhist', 'Kyaukse', null, 'U Thein Htun', null, 'Married', null, 'Dean', null, null, null, null, 'India', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_125', 'Mc.Sc,Ph.D', '20/1/1972', 'Bamar', 'Buddhist', 'Yangon', null, 'U Maung Maung', null, 'Married', null, 'Teacher', null, null, null, null, 'Japan', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_126', 'Mc.Sc,Ph.D', '12/4/1980', 'Bamar', 'Buddhist', 'Kyauk Myaung', null, 'U Aung Khaing', null, 'Married', null, 'Teacher', null, null, null, null, 'Japan', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_127', 'Mc.Sc,Ph.D', '27/11/1977', 'Bamar', 'Buddhist', 'Taunggyi', null, 'U Soe Kyaw', null, 'Single', null, 'Teacher', null, null, null, null, 'Japan', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_128', 'Mc.Sc', '17/8/1970', 'Bamar', 'Buddhist', 'Bago', null, 'U Hla Maung', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_129', 'Mc.Sc', '10/5/1971', 'Bamar', 'Buddhist', 'Myit Thar', null, 'U Aye Maung', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_130', 'Mc.Sc,Ph.D', '2/8/1971', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Myint Maung', null, 'Married', null, 'Teacher', null, null, null, null, 'Singapore', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_131', 'Mc.Sc,Ph.D', '23/12/1974', 'Bamar', 'Buddhist', 'Shwe Bo', null, 'U Aye Kyaw', null, 'Single', null, 'Teacher', null, null, null, null, 'Singapore', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_132', 'Mc.Sc', '18/6/1973', 'Bamar', 'Buddhist', 'Kyaukse', null, 'U Thet Htun', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_133', 'Mc.Sc', '29/7/1972', 'Bamar', 'Buddhist', 'Kalaw', null, 'U Hein Khant', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_134', 'Mc.Sc', '15/3/1978', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Kyaw Maung', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_135', 'Mc.Sc', '21/8/1970', 'Bamar', 'Buddhist', 'Meikhtilar', null, 'U Kyaw Soe', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_136', 'Mc.Sc', '10/7/1977', 'Bamar', 'Buddhist', 'Hopin', null, 'U Tint Swe', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_137', 'Mc.Sc', '30/7/1982', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Thaun Htike', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_138', 'Mc.Sc', '5/10/1982', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Zaw Khaing', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_139', 'Mc.Sc', '19/2/1982', 'Islam', 'Islam', 'Mandalay', null, 'U Han', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_140', 'Mc.Sc', '11/3/1977', 'Bamar', 'Buddhist', 'Meikhtilar', null, 'U Mya Thin', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_141', 'Mc.Sc', '8/11/1983', 'Bamar', 'Buddhist', 'Myit Nge', null, 'U Naung Naung', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_142', 'Mc.Sc', '26/5/1981', 'Shan', 'Buddhist', 'Taunggyi', null, 'U Sai Linn', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_143', 'Mc.Sc', '23/4/1985', 'Bamar', 'Buddhist', 'Yangon', null, 'U Naing Win', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_144', 'Mc.Sc,Ph.D', '7/8/1984', 'Shan/Bamar', 'Buddhist', 'Kyine Tone', null, 'U Zaw Khant', null, 'Single', null, 'Teacher', null, null, null, null, 'Japan', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_145', 'Mc.Sc', '19/10/1984', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Win Thant', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_146', 'Mc.Sc', '17/9/1983', 'Bamar', 'Buddhist', 'Magway', null, 'U Than Zaw', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_147', 'Mc.Sc', '8/1/1986', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Zaw Khaing', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_148', 'Mc.Sc', '27/6/1981', 'Bamar', 'Buddhist', 'Nay Pyi Daw', null, 'U Myint Oo', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_149', 'Mc.Sc', '10/5/1982', 'Bamar', 'Buddhist', 'Kyaukse', null, 'U Khain Zaw', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_150', 'Mc.Sc', '2/12/1981', 'Bamar', 'Buddhist', 'Meikhtilar', null, 'U Htun Linn', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_151', 'Mc.Sc', '15/8/1984', 'Bamar', 'Buddhist', 'Sintgaing', null, 'U Aung Min', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_152', 'Mc.Sc', '27/1/1978', 'Bamar', 'Buddhist', 'Sagaing', null, 'U Ba Zaw', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_153', 'Mc.Sc', '8/9/1983', 'Bamar', 'Buddhist', 'Pyin Oo Lwin', null, 'U Win Hlaing', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_154', 'Mc.Sc', '18/7/1980', 'Bamar', 'Buddhist', 'Shwe Bo', null, 'U Myint Han', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_155', 'Mc.Sc', '3/8/1982', 'Islam', 'Islam', 'Mandalay', null, 'U Zaw Zaw', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_156', 'Mc.Sc', '21/1/1980', 'Bamar', 'Buddhist', 'Myit Nge', null, 'U Aung Ko', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_157', 'Mc.Tech,Ph.D', '9/4/1973', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Than Htun', null, 'Single', null, 'Dean', null, null, null, null, 'Japan', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_158', 'Mc.Tech,Ph.D', '27/10/1972', 'Bamar', 'Buddhist', 'Yangon', null, 'U Kyaw Sann', null, 'Single', null, 'Teacher', null, null, null, null, 'Singapore', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_159', 'Mc.Tech,Ph.D', '4/12/1973', 'Bamar', 'Buddhist', 'Naung Cho', null, 'U Hein Ko', null, 'Single', null, 'Teacher', null, null, null, null, 'Japan', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_160', 'Mc.Tech', '23/8/1976', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Tin Htun', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_161', 'Mc.Tech,Ph.D', '15/4/1977', 'Bamar', 'Buddhist', 'Bago', null, 'U Htay Naing', null, 'Single', null, 'Teacher', null, null, null, null, 'Singapore', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_162', 'Mc.Tech,Ph.D', '25/9/1977', 'Bamar', 'Buddhist', 'Banmaw', null, 'U Nay Myo', null, 'Single', null, 'Teacher', null, null, null, null, 'Singapore', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_163', 'Mc.Tech,Ph.D', '12/4/1975', 'Bamar', 'Buddhist', 'Myitkyi Nar', null, 'U Sein Tin', null, 'Single', null, 'Teacher', null, null, null, null, 'Singapore', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_164', 'Mc.Tech,Ph.D', '27/5/1974', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Myo Naing', null, 'Single', null, 'Teacher', null, null, null, null, 'Singapore', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_165', 'Mc.Tech', '31/10/1975', 'Bamar', 'Buddhist', 'Pyi', null, 'U Sitt Aung', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_166', 'Mc.Tech', '6/1/1973', 'Bamar', 'Buddhist', 'Yangon', null, 'U Kyi Maung', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_167', 'Mc.Tech', '10/7/1984', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Khaing Min', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_168', 'Mc.Tech', '3/6/1983', 'Bamar', 'Buddhist', 'Kyaukse', null, 'U Hla Htwe', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_169', 'Mc.Tech', '5/11/1981', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Aung Min', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_170', 'Mc.Tech', '14/5/1982', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Soe Myint', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_171', 'Mc.Tech', '20/9/1979', 'Bamar', 'Buddhist', 'Pathein', null, 'U Zaw Linn', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_172', 'Mc.Tech', '3/12/1978', 'Bamar', 'Buddhist', 'Kyaut Phyu', null, 'U Htun Htun', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_173', 'Mc.Tech', '10/10/1977', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Kyaw Myint', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_174', 'Mc.Tech', '25/2/1976', 'Bamar', 'Buddhist', 'Mawlamyine', null, 'U Than Htike', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_175', 'Mc.Tech', '11/8/1976', 'Bamar', 'Buddhist', 'Shwe Bo', null, 'U Lwin Maung', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_176', 'Mc.Tech', '22/7/1976', 'Bamar', 'Buddhist', 'Yangon', null, 'U Tshan Linn', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_177', 'Mc.Tech', '19/4/1973', 'Bamar', 'Buddhist', 'Hmawbe', null, 'U Khant Ko', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_178', 'Mc.Tech', '6/8/1976', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Soe Htike', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_179', 'M.Sc(Maths),Ph.D', '3/12/1972', 'Bamar', 'Buddhist', 'Magway', null, 'U Yan Naung', null, 'Married', null, 'Dean', null, null, null, null, 'Singapore', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_180', 'M.Sc(Maths)', '15/9/1968', 'Bamar', 'Buddhist', 'Kyaukse', null, 'U Ank Maung', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_181', 'M.Sc(Maths)', '21/10/1972', 'Bamar', 'Buddhist', 'Naung Cho', null, 'U Khin Zaw', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_182', 'M.Sc(Maths)', '4/12/1971', 'Bamar', 'Buddhist', 'Taunggyi', null, 'U Shwe', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_183', 'M.Sc(Maths)', '16/1/1978', 'Bamar', 'Buddhist', 'Meikhtilar', null, 'U Soe Thet', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_184', 'M.Sc(Maths)', '18/3/1977', 'Bamar', 'Buddhist', 'Kyaukse', null, 'U Htun Oo', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_185', 'M.Sc(Maths)', '8/7/1970', 'Bamar', 'Buddhist', 'Kyaukse', null, 'U Tin Soe', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_186', 'M.Sc(Maths),Ph.D', '20/2/1983', 'Bamar', 'Buddhist', 'Mogok', null, 'U Kyaw Kyaw', null, 'Single', null, 'Teacher', null, null, null, null, 'Japan', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_187', 'M.Sc(Maths)', '16/3/1980', 'Bamar', 'Buddhist', 'Myitkyi Nar', null, 'U Lwin', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_188', 'M.Sc(Maths)', '22/6/1982', 'Bamar', 'Buddhist', 'Myit Thar', null, 'U Sein Htun', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_189', 'M.Sc(Maths)', '29/4/1981', 'Bamar', 'Buddhist', 'Kyaukse', null, 'U Nyein Min', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_190', 'M.Sc(Maths)', '5/7/1981', 'Bamar', 'Buddhist', 'Pyi', null, 'U Myint Moe', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_191', 'M.Sc(Maths)', '7/12/1982', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Htun Zin', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_192', 'M.Sc(Maths)', '2/9/1983', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Myo Myint', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_193', 'M.Sc(Maths)', '14/10/1984', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Htun Cho', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_194', 'M.Sc(Maths)', '8/1/1983', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Htun Khaing', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_195', 'M.Sc(Maths)', '21/7/1981', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Moe', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_196', 'M.Sc(Maths)', '18/6/1975', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Kyaw Hla', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_197', 'M.Sc(Maths)', '7/12/1981', 'Bamar', 'Buddhist', 'Magway', null, 'U Ba Htay', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_198', 'M.E', '29/5/1966', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Kyaw Thaung', null, 'Married', null, 'Dean', null, null, null, null, 'America', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_199', 'M.E', '26/9/1967', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Soe Min', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_200', 'M.E', '11/3/1970', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Kyi Soe', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_201', 'M.E', '17/11/1987', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Hein Zaw', null, 'Married', null, 'Teacher', null, null, null, null, 'Singapore', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_202', 'M.E', '8/10/1985', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Myint Wai', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_203', 'M.E', '14/8/1987', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Toe ', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_204', 'M.E', '24/11/1985', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Thaw Htun', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_205', 'M.E', '12/6/1987', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Thet Aung', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_206', 'M.E', '24/7/1987', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Soe Win', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_207', 'M.E', '10/2/1987', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Paing', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_208', 'Mc.Sc,Ph.D', '4/1/1972', 'Bamar', 'Buddhist', 'Kyaukse', null, 'U Aung Myint', null, 'Married', null, 'Dean', null, null, null, null, 'India', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_209', 'Mc.Sc,Ph.D', '14/4/1974', 'Bamar', 'Buddhist', 'Mogok', null, 'U Than Hlaing', null, 'Married', null, 'Teacher', null, null, null, null, 'India', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_210', 'Mc.Sc,Ph.D', '9/7/1972', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Myo Nyein', null, 'Married', null, 'Teacher', null, null, null, null, 'India', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_211', 'Mc.Sc,Ph.D', '9/10/1969', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Mya Kyaw', null, 'Married', null, 'Teacher', null, null, null, null, 'India', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_212', 'Mc.Sc', '2/6/1970', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Thet Khaing', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_213', 'Mc.Sc', '12/5/1971', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Lwin ', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_214', 'Mc.Sc', '9/10/1971', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Thein Lwin', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_215', 'Mc.Sc', '1/5/1970', 'Bamar', 'Buddhist', 'Kyauk Myaung', null, 'U Maung Aye', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_216', 'Mc.Sc,Ph.D', '5/11/1973', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Nyein Swe', null, 'Married', null, 'Teacher', null, null, null, null, 'India', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_217', 'Mc.Sc', '21/8/1976', 'Islam', 'Islam', 'Mandalay', null, 'U Hlaing', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_218', 'Mc.Sc', '24/1/1974', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Htun Yie', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_219', 'Mc.Sc', '1/12/1974', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Moe ', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_220', 'Mc.Sc', '12/9/1973', 'Bamar', 'Buddhist', 'Sintgaing', null, 'U Hla Thaung', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_221', 'Mc.Sc', '17/1/1971', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Phyo Thant', null, '', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_222', 'Mc.Sc', '5/10/1972', 'Bamar', 'Buddhist', 'Bago', null, 'U Toe Hlaing', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_223', 'Mc.Sc', '23/6/1972', 'Islam', 'Islam', 'Mandalay', null, 'U John', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_224', 'Mc.Sc', '11/9/1971', 'Bamar', 'Buddhist', 'Kyaukse', null, 'U Aung Myat', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_225', 'Mc.Sc', '31/12/1972', 'Bamar', 'Buddhist', 'Nay Pyi Daw', null, 'U Khin Zaw', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_226', 'Mc.Sc,Ph.D', '3/3/1973', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Zaw Lwin', null, 'Married', null, 'Teacher', null, null, null, null, 'India', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_227', 'Mc.Sc', '16/4/1973', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Wai Phyo', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_228', 'Mc.Sc', '19/2/1977', 'Bamar', 'Buddhist', 'Mandalay', null, 'U So Ni', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_229', 'Mc.Sc', '22/10/1980', 'Bamar', 'Buddhist', 'Yangon', null, 'U Aung Htet', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_230', 'Mc.Sc', '23/8/1980', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Myint Wai', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_231', 'Mc.Sc', '15/7/1982', 'Bamar', 'Buddhist', 'Myit Thar', null, 'U Than Myint', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_232', 'Mc.Sc', '8/3/1985', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Htun Paing', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_233', 'Mc.Sc', '30/4/1981', 'Bamar', 'Buddhist', 'Mawlamyine', null, 'U Pyae Phyo', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_234', 'Mc.Sc', '3/10/1972', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Tin Sann', null, 'Married', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_235', 'Mc.Sc', '17/1/1978', 'Bamar', 'Buddhist', 'Mandalay', null, 'U Htun Shane', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_236', 'M.Sc(Physics)', '20/12/1977', 'Bamar', 'Buddhist', 'Yangon', null, 'U Zwe Naung', null, 'Single', null, 'Teacher', null, null, null, null, 'India', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_237', 'M.Sc(Physics)', '4/11/1978', 'Bamar', 'Buddhist', 'Lashio', null, 'U Pyay Aung', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_238', 'M.Sc(Physics)', '28/12/1980', 'Bamar', 'Buddhist', 'Monywa', null, 'U Chane Myae', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_239', 'M.Sc(Physics)', '1/9/1979', 'Bamar', 'Buddhist', 'Naung Cho', null, 'U Thura', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_240', 'M.Sc(Physics)', '9/2/1976', 'Bamar', 'Buddhist', 'Palake', null, 'U Soe Aye', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');
INSERT INTO `teacher_details` VALUES ('MOST_241', 'M.Sc(Physics)', '15/6/1981', 'Bamar', 'Buddhist', 'Hmawbe', null, 'U Si Thu', null, 'Single', null, 'Teacher', null, null, null, null, 'No', 'No', null, null, null, '');

-- ----------------------------
-- Table structure for teacher_timetable
-- ----------------------------
DROP TABLE IF EXISTS `teacher_timetable`;
CREATE TABLE `teacher_timetable` (
  `Table_ID` varchar(5) NOT NULL,
  `Sr_No` int(3) NOT NULL,
  `Day` varchar(10) NOT NULL,
  `Time1` varchar(10) DEFAULT NULL,
  `Time2` varchar(10) DEFAULT NULL,
  `Time3` varchar(10) DEFAULT NULL,
  `Time4` varchar(10) DEFAULT NULL,
  `Time5` varchar(10) DEFAULT NULL,
  `Time6` varchar(10) DEFAULT NULL,
  `Time7` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Table_ID`),
  KEY `Foreign` (`Sr_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_timetable
-- ----------------------------
INSERT INTO `teacher_timetable` VALUES ('', '0', '', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T201', '103', 'Monday', null, null, null, null, null, '4CS-D', '4CS-D');
INSERT INTO `teacher_timetable` VALUES ('T202', '103', 'Tuesday', null, '4CS-D', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T203', '103', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T204', '103', 'Thursday', '4CS-D', '4CS-D', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T205', '103', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T206', '104', 'Monday', null, '3CS-D', '3CS-B', '3CS-B', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T207', '104', 'Tuesday', null, null, '3CS-A', '3CS-A', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T208', '104', 'Wednesday', null, null, '3CS-E', '3CS-E', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T209', '104', 'Thursday', null, null, '5CS-C', '5CS-C', '5CS-A', null, null);
INSERT INTO `teacher_timetable` VALUES ('T210', '104', 'Friday', '3CS-D', '3CS-D', null, null, '3CS-B', '3CS-C', null);
INSERT INTO `teacher_timetable` VALUES ('T211', '198', 'Monday', '3CS-D', null, '3CT', '3CT', null, '3CS-D', '3CS-D');
INSERT INTO `teacher_timetable` VALUES ('T212', '198', 'Tuesday', null, null, null, null, null, '3CS-B', null);
INSERT INTO `teacher_timetable` VALUES ('T213', '198', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T214', '198', 'Thursday', '3CS-D', '3CS-D', null, null, null, '3CT', '3CT');
INSERT INTO `teacher_timetable` VALUES ('T215', '198', 'Friday', null, null, null, null, '3CS-A', null, '3CT');
INSERT INTO `teacher_timetable` VALUES ('T216', '205', 'Monday', null, null, null, null, null, '1CST-C', '1CST-C');
INSERT INTO `teacher_timetable` VALUES ('T217', '205', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T218', '205', 'Wednesday', null, null, null, null, null, null, '1CST-C');
INSERT INTO `teacher_timetable` VALUES ('T219', '205', 'Thursday', null, null, null, null, null, '1CST-C', '1CST-C');
INSERT INTO `teacher_timetable` VALUES ('T220', '205', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T221', '159', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T222', '159', 'Tuesday', null, null, null, null, '3CT', '3CT', null);
INSERT INTO `teacher_timetable` VALUES ('T223', '159', 'Wednesday', null, null, '3CT', '3CT', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T224', '159', 'Thursday', null, null, null, null, '3CT', null, null);
INSERT INTO `teacher_timetable` VALUES ('T225', '159', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T226', '163', 'Monday', '4CT', '4CT', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T227', '163', 'Tuesday', null, null, null, null, null, null, '4CT');
INSERT INTO `teacher_timetable` VALUES ('T228', '163', 'Wednesday', null, null, '4CT', '4CT', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T229', '163', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T230', '163', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T231', '209', 'Monday', '4CS-B', '4CS-B', null, null, '4CS-E', '4CS-E', null);
INSERT INTO `teacher_timetable` VALUES ('T232', '209', 'Tuesday', null, null, '4CS-E', '4CS-E', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T233', '209', 'Wednesday', null, null, null, '4CS-B', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T234', '209', 'Thursday', null, null, null, null, '4CS-B', null, null);
INSERT INTO `teacher_timetable` VALUES ('T235', '209', 'Friday', null, null, null, null, '4CS-E', null, null);
INSERT INTO `teacher_timetable` VALUES ('T236', '208', 'Monday', '4CS-D', '4CS-D', null, null, '4CS-B', null, null);
INSERT INTO `teacher_timetable` VALUES ('T237', '208', 'Tuesday', null, null, '4CS-G', '4CS-G', '4CS-B', null, '4CS-D');
INSERT INTO `teacher_timetable` VALUES ('T238', '208', 'Wednesday', null, null, null, null, '4CS-B', null, null);
INSERT INTO `teacher_timetable` VALUES ('T239', '208', 'Thursday', '4CS-G', '4CS-G', '4CS-D', null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T240', '208', 'Friday', null, null, null, null, '4CS-D', '4CS-B', '4CS-B');
INSERT INTO `teacher_timetable` VALUES ('T241', '193', 'Monday', null, null, null, null, null, null, '2CS-B');
INSERT INTO `teacher_timetable` VALUES ('T242', '193', 'Tuesday', null, null, '2CS-B', '2CS-B', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T243', '193', 'Wednesday', '2CS-B', '2CS-B', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T244', '193', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T245', '193', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T246', '188', 'Monday', '4CS-G', '4CS-G', null, null, '4CS-A', null, null);
INSERT INTO `teacher_timetable` VALUES ('T247', '188', 'Tuesday', null, null, null, null, null, '4CS-A', '4CS-A');
INSERT INTO `teacher_timetable` VALUES ('T248', '188', 'Wednesday', null, null, '4CS-G', null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T249', '188', 'Thursday', '4CS-A', '4CS-A', null, null, null, '4CS-G', '4CS-G');
INSERT INTO `teacher_timetable` VALUES ('T250', '188', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T251', '122', 'Monday', '1CST-C', null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T252', '122', 'Tuesday', '1CS-A', null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T253', '122', 'Wednesday', '1CST-B', null, '1CST-D', null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T254', '122', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T255', '122', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T256', '121', 'Monday', null, null, null, '1CST-C', '1CST-A', null, null);
INSERT INTO `teacher_timetable` VALUES ('T257', '121', 'Tuesday', null, null, null, null, '1CST-D', null, null);
INSERT INTO `teacher_timetable` VALUES ('T258', '121', 'Wednesday', null, '1CST-B', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T259', '121', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T260', '121', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T261', '240', 'Monday', '1CST-B', '1CST-B', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T262', '240', 'Tuesday', null, null, null, null, '1CST-B', null, null);
INSERT INTO `teacher_timetable` VALUES ('T263', '240', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T264', '240', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T265', '240', 'Friday', null, null, null, null, null, '1CST-B', '1CST-B');
INSERT INTO `teacher_timetable` VALUES ('T266', '236', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T267', '236', 'Tuesday', null, null, null, null, null, '1CST-A', '1CST-A');
INSERT INTO `teacher_timetable` VALUES ('T268', '236', 'Wednesday', null, null, null, null, '1CST-A', '1CST-A', null);
INSERT INTO `teacher_timetable` VALUES ('T269', '236', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T270', '236', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T271', '124', 'Monday', null, null, null, null, '4CS-G', '4CS-A', '4CS-A');
INSERT INTO `teacher_timetable` VALUES ('T272', '124', 'Tuesday', null, null, '1CST-B', null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T273', '124', 'Wednesday', null, null, null, '4CS-G', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T274', '124', 'Thursday', null, null, '4CS-G', null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T275', '124', 'Friday', '4CS-G', '4CS-G', null, null, '4CS-A', null, null);
INSERT INTO `teacher_timetable` VALUES ('T276', '144', 'Monday', null, null, null, null, '3CS-B', '3CS-B', null);
INSERT INTO `teacher_timetable` VALUES ('T277', '144', 'Tuesday', '2CS-C', '2CS=C', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T278', '144', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T279', '144', 'Thursday', null, null, '2CS-C', '2CS-C', null, null, '3CS-B');
INSERT INTO `teacher_timetable` VALUES ('T280', '144', 'Friday', null, null, '3CS-B', '3CS-B', null, '2CS-C', '2CS-C');
INSERT INTO `teacher_timetable` VALUES ('T281', '238', 'Monday', null, null, null, '1CST-D', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T282', '238', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T283', '238', 'Wednesday', '1CST-D', '1CST-D', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T284', '238', 'Thursday', null, null, null, null, null, '1CST-D', '1CST-D');
INSERT INTO `teacher_timetable` VALUES ('T285', '238', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T286', '239', 'Monday', null, null, '1CST-C', '1CST-C', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T287', '239', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T288', '239', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T289', '239', 'Thursday', null, null, null, null, '1CST-C', null, null);
INSERT INTO `teacher_timetable` VALUES ('T290', '239', 'Friday', null, null, null, null, null, '1CST-C', '1CST-C');
INSERT INTO `teacher_timetable` VALUES ('T291', '206', 'Monday', null, null, null, null, '1CST-B', '1CST-B', null);
INSERT INTO `teacher_timetable` VALUES ('T292', '206', 'Tuesday', null, null, null, null, null, '', '');
INSERT INTO `teacher_timetable` VALUES ('T293', '206', 'Wednesday', null, null, null, null, null, '', '');
INSERT INTO `teacher_timetable` VALUES ('T294', '206', 'Thursday', null, null, null, null, '1CST-B', null, null);
INSERT INTO `teacher_timetable` VALUES ('T295', '206', 'Friday', null, null, null, null, null, '', '');
INSERT INTO `teacher_timetable` VALUES ('T296', '199', 'Monday', '1CST-A', '1CST-A', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T297', '199', 'Tuesday', '', null, null, null, null, '', '');
INSERT INTO `teacher_timetable` VALUES ('T298', '199', 'Wednesday', null, null, '4CS-D', '4CS-D', null, '', '');
INSERT INTO `teacher_timetable` VALUES ('T299', '199', 'Thursday', '4CS-E', '4CS-E', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T300', '199', 'Friday', '4CS-E', null, '1CST-A', '1CST-A', null, '4CS-D', '4CS-D');
INSERT INTO `teacher_timetable` VALUES ('T301', '200', 'Monday', null, '2CS-B', '2CS-B', null, '4CS-C', null, null);
INSERT INTO `teacher_timetable` VALUES ('T302', '200', 'Tuesday', null, null, '', '', '2CS-C', '', null);
INSERT INTO `teacher_timetable` VALUES ('T303', '200', 'Wednesday', '2CS-B', '2CS-B', null, null, null, '4CS-A', null);
INSERT INTO `teacher_timetable` VALUES ('T304', '200', 'Thursday', null, null, '4CS-C', '4CS-C', null, '2CS-C', null);
INSERT INTO `teacher_timetable` VALUES ('T305', '200', 'Friday', '4CS-C', null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T306', '202', 'Monday', '2CS-B', '2CS-B', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T307', '202', 'Tuesday', null, null, null, null, null, null, '2CS-B');
INSERT INTO `teacher_timetable` VALUES ('T308', '202', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T309', '202', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T310', '202', 'Friday', null, null, '2CS-B', '2CS-B', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T311', '203', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T312', '203', 'Tuesday', null, null, null, null, '2CS-C', '2CS-C', null);
INSERT INTO `teacher_timetable` VALUES ('T313', '203', 'Wednesday', null, null, null, null, null, '4CS-B', '4CS-B');
INSERT INTO `teacher_timetable` VALUES ('T314', '203', 'Thursday', '4CS-B', '4CS-B', null, null, '2CS-C', null, null);
INSERT INTO `teacher_timetable` VALUES ('T315', '203', 'Friday', '2CS-C', '2CS-C', null, null, '4CS-B', null, null);
INSERT INTO `teacher_timetable` VALUES ('T316', '204', 'Monday', '4CS-C', '4CS-C', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T317', '204', 'Tuesday', '4CS-C', '4CS-C', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T318', '204', 'Wednesday', '4CS-A', '4CS-A', null, null, null, '4CS-C', '4CS-C');
INSERT INTO `teacher_timetable` VALUES ('T319', '204', 'Thursday', null, null, null, '4CS-A', null, '4CT', '4CT');
INSERT INTO `teacher_timetable` VALUES ('T320', '204', 'Friday', null, null, null, '4CS-C', null, '4CS-A', '4CS-A');
INSERT INTO `teacher_timetable` VALUES ('T321', '207', 'Monday', null, null, '4CS-F', null, null, null, '2CT');
INSERT INTO `teacher_timetable` VALUES ('T322', '207', 'Tuesday', null, null, null, null, null, '', '');
INSERT INTO `teacher_timetable` VALUES ('T333', '207', 'Wednesday', null, null, '2CT', '2CT', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T334', '207', 'Thursday', null, null, null, null, '2CT', '2CT', null);
INSERT INTO `teacher_timetable` VALUES ('T335', '207', 'Friday', '4CS-F', '4CS-F', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T336', '201', 'Monday', null, null, null, null, null, '1CST-D', '1CST-D');
INSERT INTO `teacher_timetable` VALUES ('T337', '201', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T338', '201', 'Wednesday', null, null, null, null, '1CST-D', null, null);
INSERT INTO `teacher_timetable` VALUES ('T339', '201', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T340', '201', 'Friday', '1CST-D', '1CST-D', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T341', '120', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T342', '120', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T343', '120', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T344', '120', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T345', '120', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T346', '237', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T347', '237', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T348', '237', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T349', '237', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T350', '237', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T351', '241', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T352', '241', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T353', '241', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T354', '241', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T355', '241', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T356', '107', 'Monday', null, '2CS-A', null, null, null, '4CS-B', '4CS-B');
INSERT INTO `teacher_timetable` VALUES ('T357', '107', 'Tuesday', null, '3CS-C', '4CS-B', '4CS-B', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T358', '107', 'Wednesday', null, null, '4CS-B', null, '3CS-C', null, '3CS-A');
INSERT INTO `teacher_timetable` VALUES ('T359', '107', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T360', '107', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T361', '108', 'Monday', null, null, '4CS-A', '4CS-A', null, '4CS-G', '4CS-G');
INSERT INTO `teacher_timetable` VALUES ('T362', '108', 'Tuesday', '4CS-G', '4CS-G', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T363', '108', 'Wednesday', null, null, null, null, null, null, '4CS-F');
INSERT INTO `teacher_timetable` VALUES ('T364', '108', 'Thursday', '4CS-F', '4CS-F', null, null, '4CS-G', null, '4CS-A');
INSERT INTO `teacher_timetable` VALUES ('T365', '108', 'Friday', '4CS-A', '4CS-A', '4CS-F', '4CS-F', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T366', '110', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T367', '110', 'Tuesday', '4CS-E', '4CS-E', null, null, null, '4CS-C', null);
INSERT INTO `teacher_timetable` VALUES ('T368', '110', 'Wednesday', null, null, null, null, '4CS-E', '4CS-E', null);
INSERT INTO `teacher_timetable` VALUES ('T369', '110', 'Thursday', '4CS-C', '4CS-C', null, null, null, null, '4CS-E');
INSERT INTO `teacher_timetable` VALUES ('T370', '110', 'Friday', null, null, null, null, null, '4CS-C', '4CS-C');
INSERT INTO `teacher_timetable` VALUES ('T371', '111', 'Monday', '2CS-A', '2CS-A', null, null, '3CS-C', null, null);
INSERT INTO `teacher_timetable` VALUES ('T372', '111', 'Tuesday', null, null, '', '', null, '', null);
INSERT INTO `teacher_timetable` VALUES ('T373', '111', 'Wednesday', null, null, null, null, null, '4CS-F', '4CS-F');
INSERT INTO `teacher_timetable` VALUES ('T374', '111', 'Thursday', '3CS-C', null, '2CS-A', null, '4CS-F', null, null);
INSERT INTO `teacher_timetable` VALUES ('T375', '111', 'Friday', null, null, '4CS-C', '4CS-C', null, null, '4CS-F');
INSERT INTO `teacher_timetable` VALUES ('T376', '105', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T377', '105', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T378', '105', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T379', '105', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T380', '105', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T381', '106', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T382', '106', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T383', '106', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T384', '106', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T385', '106', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T386', '109', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T387', '109', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T388', '109', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T389', '109', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T390', '109', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T391', '113', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T392', '113', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T393', '113', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T394', '113', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T395', '113', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T396', '186', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T397', '186', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T398', '186', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T399', '186', 'Thursday', '1CST-B', '1CST-B', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T400', '186', 'Friday', '1CST-B', '1CST-B', null, null, '1CST-B', null, null);
INSERT INTO `teacher_timetable` VALUES ('T401', '192', 'Monday', '4CS-E', '4CS-E', null, null, '4CS-D', null, null);
INSERT INTO `teacher_timetable` VALUES ('T402', '192', 'Tuesday', null, null, '', '', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T403', '192', 'Wednesday', null, null, '4CS-E', null, null, '4CS-D', '4CS-D');
INSERT INTO `teacher_timetable` VALUES ('T404', '192', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T405', '192', 'Friday', null, null, null, null, null, '4CS-E', '4CS-E');
INSERT INTO `teacher_timetable` VALUES ('T406', '179', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T407', '179', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T408', '179', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T409', '179', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T410', '179', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T411', '164', 'Monday', '3CT', '3CT', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T412', '164', 'Tuesday', null, null, null, null, null, null, '3CT');
INSERT INTO `teacher_timetable` VALUES ('T413', '164', 'Wednesday', '3CT', '3CT', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T414', '164', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T415', '164', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T416', '172', 'Monday', null, null, null, '1CST-A', null, '1CST-A', '1CST-A');
INSERT INTO `teacher_timetable` VALUES ('T417', '172', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T418', '172', 'Wednesday', '1CST-A', '1CST-A', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T419', '172', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T420', '172', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T421', '158', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T422', '158', 'Tuesday', '', '', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T423', '158', 'Wednesday', '', '', null, null, null, '1CST-D', '1CST-D');
INSERT INTO `teacher_timetable` VALUES ('T424', '158', 'Thursday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T425', '158', 'Friday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T426', '225', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T427', '225', 'Tuesday', null, null, '3CS-E', null, '3CS-D', null, '3CS-B');
INSERT INTO `teacher_timetable` VALUES ('T428', '225', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T429', '225', 'Thursday', '3CS-B', null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T430', '225', 'Friday', null, null, null, '3CS-E', '3CS-D', null, null);
INSERT INTO `teacher_timetable` VALUES ('T431', '229', 'Monday', null, null, null, null, '3CS-D', null, null);
INSERT INTO `teacher_timetable` VALUES ('T432', '229', 'Tuesday', null, null, '', '', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T433', '229', 'Wednesday', null, null, null, null, null, '3CS-B', '3CS-B');
INSERT INTO `teacher_timetable` VALUES ('T434', '229', 'Thursday', null, '3CS-B', '3CS-D', '3CS-D', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T435', '229', 'Friday', null, null, '3CS-D', '3CS-D', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T436', '212', 'Monday', null, null, null, '4CS-F', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T437', '212', 'Tuesday', null, null, null, null, '4CS-A', null, null);
INSERT INTO `teacher_timetable` VALUES ('T438', '212', 'Wednesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T439', '212', 'Thursday', '3CS-B', null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T440', '212', 'Friday', null, null, null, '3CS-E', '3CS-D', null, null);
INSERT INTO `teacher_timetable` VALUES ('T441', '128', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T442', '128', 'Tuesday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T443', '128', 'Wednesday', null, null, null, null, '4CS-G', '4CS-G', null);
INSERT INTO `teacher_timetable` VALUES ('T444', '128', 'Thursday', null, null, null, '4CS-G', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T445', '128', 'Friday', null, null, '4CS-G', '4CS-G', null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T446', '134', 'Monday', null, null, null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T447', '134', 'Tuesday', null, null, '3CS-D', '3CS-D', '1CST-A', null, null);
INSERT INTO `teacher_timetable` VALUES ('T448', '134', 'Wednesday', '3CS-D', '3CS-D', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T449', '134', 'Thursday', null, null, '1CST-A', '1CST-A', '3CS-D', null, null);
INSERT INTO `teacher_timetable` VALUES ('T450', '134', 'Friday', null, null, null, null, '1CST-A', null, null);
INSERT INTO `teacher_timetable` VALUES ('T451', '125', 'Monday', '4CS-A', '4CS-A', null, null, '3CS-E', null, null);
INSERT INTO `teacher_timetable` VALUES ('T452', '125', 'Tuesday', '', '', null, null, null, null, null);
INSERT INTO `teacher_timetable` VALUES ('T453', '125', 'Wednesday', null, null, null, null, '4CS-A', '4CS-A', null);
INSERT INTO `teacher_timetable` VALUES ('T454', '125', 'Thursday', null, '', '3CS-E', '3CS-E', '4CS-A', '4CS-A', null);
INSERT INTO `teacher_timetable` VALUES ('T455', '125', 'Friday', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for term
-- ----------------------------
DROP TABLE IF EXISTS `term`;
CREATE TABLE `term` (
  `Term_ID` varchar(8) NOT NULL,
  `Term` varchar(20) NOT NULL,
  PRIMARY KEY (`Term_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of term
-- ----------------------------
INSERT INTO `term` VALUES ('1', 'First Term');
INSERT INTO `term` VALUES ('2', 'Second Term');

-- ----------------------------
-- Table structure for thesis
-- ----------------------------
DROP TABLE IF EXISTS `thesis`;
CREATE TABLE `thesis` (
  `Thesis_ID` varchar(225) NOT NULL,
  `PaperID` varchar(45) NOT NULL,
  `ThesisBookTitle` varchar(225) NOT NULL,
  `Supervisor` varchar(100) NOT NULL,
  `Year` varchar(45) NOT NULL,
  `PaperTitle` varchar(225) NOT NULL,
  `PaperAcceptDate` varchar(225) NOT NULL,
  `Conference` varchar(100) NOT NULL,
  `PresentationType` varchar(225) NOT NULL,
  `Field` varchar(225) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `PaperPDF` varchar(1000) NOT NULL,
  `PaperAbstract` varchar(10000) NOT NULL,
  `Student_ID` varchar(225) NOT NULL,
  `Photo` varchar(225) NOT NULL,
  `ExternalName` varchar(225) NOT NULL,
  `DefenceDate` varchar(225) NOT NULL,
  `ResultDate` varchar(225) NOT NULL,
  `SecondAuthor1` varchar(225) NOT NULL,
  `SecondAuthor2` varchar(225) NOT NULL,
  `Seminar1` varchar(25) NOT NULL,
  `Seminar2` varchar(25) NOT NULL,
  `Seminar3` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of thesis
-- ----------------------------
INSERT INTO `thesis` VALUES ('01', '001', 'Home Electricity Decoration By Using The Contract Net Protocol', 'Dr. Thandar Aung', '2011', 'Home Electricity Decoration By Using The Contract Net Protocol', '1.1.2010', 'Mandalay', 'Poster', 'AA', 'hninwootyee@gmail.com', 'pdf/hninwootyee.pdf', 'Nowadays, people become interested in home electricity decoration for the modern living.\r\nSo, people negotiate with agents for the design, quality and cost of the user’s want.\r\nIn this system, the homeowners can find the best contractor to decorate the electricity at a given time, quality and cost availability.\r\nThe basis of contract net protocol(CNET) is a formal model for making announcing, bidding, awarding decision based on marginal cost calculation.\r\nModern CNET allows for autonomous agents and has the primary benefit that is a global optimum can be ensured.\r\n', '01', 'hnin.jpg', 'Dr.Nu Nu Hlaing', '3/2/2011', '-', 'Hnin Woot Yee', '-', '11.2.2010', '18.5.2010', '25.8.2010');
INSERT INTO `thesis` VALUES ('02', '002', 'Applying Genetic Neural Network In Case Analysis of Police Office', 'Dr. Thin Thin Naing', '2011', 'Applying Genetic Neural Network In Case Analysis of Police Office', '21.5.2010', 'Mandalay', 'Poster', 'AA', 'htethtet@gmail.com', 'htethtetlin.pdf', 'The data-mining model based on genetic neural network has been widely applied to the procedure of data mining on case information in the command centre of police office. \r\nThis system uses a method that combines the learning algorithm of Backpropagation (BP) neural network with genetic algorithm to train BP network and optimize the weight values of the network.\r\nThe system uses a single hidden layer. \r\nInput for the system is training data set of police office data.', '02', 'htethtetlin.jpg', 'Dr.Thin Nu Htwe', '5/2/2011', '-', 'Htet Htet Lin', '-', '10.2.2010', '17.5.2010', '24.8.2010');
INSERT INTO `thesis` VALUES ('03', '003', 'Personalized Parallel Information Retrieval Based on Mobile Agent', 'Daw Myint Myint Maw', '2011', 'Personalized Parallel Information Retrieval Based on Mobile Agent', '18.5.2010', 'Mandalay', 'Oral', 'Parallel And Distributed Computing', 'khinthandar@gmail.com', 'khinthandaraung.pdf', 'Nowadays, Mobile agent is emerging technology attracting interest field of information retrieval applications.\r\nMobile agent technology has the ability to travel from one host   to another in a network.\r\nIn this thesis, we present mobile agent-based personalized parallel information retrieval system that describes the user’s desired item-related information from distributed sites/shops concurrently on behalf of a user.\r\nDistributed query is processed parallel on each site when the user gives the input.\r\nThis system intends not only shops to publish their product catalogue information simultaneously according to the user’s request but also to find the preference shop in a shorter to make his/her purchases by using parallel mobile agent. \r\nIn this application, java based aglet software is used', '03', 'khinthandaraung.jpg', 'Daw Hlaing Hlaing Myint ', '20/2/2011', '-', 'Khin Thandar Aung', '-', '22.2.2010', '21.5.2010', '30.8.2010');
INSERT INTO `thesis` VALUES ('04', '004', 'Searching Motif Pattern In A Protein Sequence Using Fuzzy Pattern Searching Algorithm', 'Dr.Thi Thi Soe', '2011', 'paper/Searching Motif Pattern In A Protein Sequence Using Fuzzy Pattern Searching Algorithm', '9.5.2010', 'Mandalay', 'Poster', 'Data mining', 'khineaye@gmail.com', 'khineayemonbo.pdf', 'The analysis of protein and DNA sequence data has been one of the most active research areas in the field of computational biology.\r\nIn protein sequence, often two sequence that share similar substring have similar functional properties.\r\nLearning the characteristics and properties of an unknown protein is much easier if its function can be predicted by finding the substring already known f', '04', 'khineayemonbo.jpg', 'Dr.Lae Lae Cho', '15/2/2011', '-', 'Khine Aye Mon Bo', '-', '18.2.2010', '31.5.2010', '8.9.2010');
INSERT INTO `thesis` VALUES ('05', '005', 'Hierarchical Clustering for Fruits Using Agglomerative Clustering', 'Dr.Saw Thandar Myint', '2011', 'paper/Hierarchical Clustering for Fruits Using Agglomerative Clustering', '15.5.2010', 'Mandalay', 'Poster', 'AI', 'mayzin@gmail.com', 'mayzinoo.pdf', 'This thesis deals with the clustering of hierarchical method in data mining.\r\nClustering is the process of grouping the data into classes of similar objects.\r\nA hierarchical clustering methods work by grouping data objects into tree of clusters.\r\nThe system is intended to cluster fruits by using agglomerative hierarchical clustering method.\r\nThe system can be used to known various fruits with same features.\r\nThe system can be applied to find information quickly and less time-consuming about fruits that the user requests.\r\n', '05', 'mayzinoo.jpg', 'Dr.Honey Htun', '3/2/2011', '-', 'May Zin Oo', '-', '18.2.2010', '25.5.2010', '3.9.2010');
INSERT INTO `thesis` VALUES ('06', '006', 'A Secure Banking System Based On Client/Server Architecture', 'Dr.Tin Mar Kyi', '2011', 'paper/A Secure Banking System Based On Client/Server Architecture', '26.5.2010', 'Mandalay', 'Oral', 'IS', 'theingi@gmail.com', 'theingioo.pdf', '\r\nOnline banking has made it easy to carry out the personal or business financial transaction without going to bank and at any suitable time.\r\nThis facility enables to transfer money to other accounts and checking current balance alongside the status of any financial transaction made in the account.\r\nIn order to maintain privacy and to avoid any misuse of transactions, it is necessary to follow a secured architecture model which ensures the privacy and integrity of the transactions.\r\nSo, this system is developed by using Hash function named Message Digest Function (MD5) and RSA algorithm.\r\n\r\n', '06', 'theingioo.jpg', 'Dr.Myint Myint ', '3/2/2011', '-', 'Tin Mar Kyi', '-', '18.2.2010', '24.5.2010', '6.8.2010');
INSERT INTO `thesis` VALUES ('07', '007', 'Simulated Annealing for Solving      				Agricultural Mechanization Departments(AMD) Routing Problem\r\n', 'Dr.Thin Thin Naing', '2011', 'paper/Simulated Annealing for Solving      				Agricultural Mechanization Departments (AMD) Routing Problem\r\n', '28.5.2010', 'Mandalay', 'Oral', 'AA', 'thinthinsoe@gmail.com', 'thinthinsoe.pdf', 'Combinatorial optimization is the process of finding an optimal solution for problems with a large discrete set of possible solutions.\r\nSuch optimizations can be used to solve problems in resources management, operations management, and quality control, such as routing, scheduling, packing, production management, and resources assignment.\r\nMeta-heuristic algorithms have proved to be good solvers for combinatorial optimization problems, in a way that they provide good optimal solutions in a bounded (usually short) time.\r\nIn this system, Simulated Annealing, one of meta-heuristic algorithms, is used for solving the Traveling Salesman Problem (TSP).\r\nThis system will be implemented by using C# programming language.\r\n', '07', 'thinthinsoe.jpg', 'Dr.Khaing Thin Swe', '15/2/2011', '-', 'Thin Thin Soe', '-', '22.2.2010', '25.5.2010', '26.8.2010');
INSERT INTO `thesis` VALUES ('08', '008', 'Classification System for Incomplete Information Using Rout set Approch', 'Dr.Thi Thi Soe', '2011', 'paper/Classification System for Incomplete Information Using Rout set Approch', '29.5.2010', 'Mandalay', 'Poster', 'AA', 'thinthin@gmail.com', 'thinthinsoe.pdf', 'The incomplete information about attribute values may be the greatest obstacle to performing learning from examples. \r\nRough set theory provides a powerful mathematical tool to deal with uncertainty and vagueness. \r\nBased on rough set theory, this system describes an approach for the classification and rule induction of incomplete information systems. \r\nIn this system, attribute-value pair blocks are used as the main tool and these blocks are applied to construct characteristic sets, lower and upper approximations. \r\n\r\n', '08', 'thinthinoo.jpg', 'Dr.Thi Thi Hla', '15/2/2011', '-', 'Thin Thin Oo', '-', '23.2.2010', '28.5.2010', '26.8.2010');
INSERT INTO `thesis` VALUES ('09', '009', 'Associative Classification Using CBA Algorithm', 'Dr.Mar Mar Thin', '2010', 'paper/Associative Classification Using CBA Algorithm', '6.5.2010', 'Mandalay', 'Poster', 'AA', 'thiri@gmail.com', 'thirihtein.pdf', ' Association rules have proved to be useful in     building both partial and complete classification models. Classification models can be directly build from traditional association rules. To integrate the classification and association rule mining .The system intends to implement classification models by using CBA (classification based on association) algorithms. An algorithm is presented to generate all class association rules (CARs) and to build an accurate classifier. The System is implemented by using Java Programming Language and MySQL.  \r\n', '09', 'thirihtein.jpg', 'Dr.Cho Cho Tun', '13/5/2010', '-', 'Thiri Htein', '-', '11.8.2009', '11.8.2009', '24.11.2009');
INSERT INTO `thesis` VALUES ('10\r\n', '010', 'Scaling Up Native Bayesian Classification By Using Decision Tree For Statistical Information', 'Dr.Nandar Lin', '2006-2007', 'paper/paper/Scaling Up Native Bayesian Classification By Using Decision Tree For Statistical Information', '1.1.2006', 'Mandalay', 'Oral', 'AA', 'phyomin@gmail.com', 'phyominzaw.pdf', '-', '10', 'phyominzaw.jpg', 'Dr.Aye Aye', '3.2.2006', '5.7.2006', 'Phyo Min Zaw', '-', '3.7.2007', '31.7.2007', '9.8.2007');
INSERT INTO `thesis` VALUES ('11', '011', 'Prototyping A Schedule For Information Service On Grid Environment', 'Dr.Zar Zar Htet', '2006-2007', 'paper/Prototyping A Schedule For Information Service On Grid Environment', '2.1.2006', 'Yangon', 'Oral', 'Data Mining', 'eiei@gmail.com', 'eieimon.pdf', '-', '11', 'eieimon.jpg', 'Dr.Ma Ma', '5.3.2006', '-', 'Ei Ei Mon', '-', '8.7.2007', '29.7.2007', '15.8.2007');
INSERT INTO `thesis` VALUES ('12', '012', 'Image Enhancement By Histogram Equalization ', 'Dr.Thi Thi Soe', '2006-2007', 'paper/Image Enhancement By Histogram Equalization ', '5.10.2007', 'Mandalay', 'Oral', 'AI', 'mayme@gmail.com', 'maymekhin.pdf', '-', '12', 'maymekhin.jpg', 'Dr.Htet Htet', '7.11.2007', '-', 'May Me Khin', '-', '11.7.2007', '27.7.2007', '9.8.2007');
INSERT INTO `thesis` VALUES ('13', '013', 'Information Agent-Based Job Agency System', 'Dr.Myat Sandy', '2006-2007', 'paper/Information Agent-Based Job Agency System', '11.9.2007', 'Mandalay', 'Oral', 'CG', 'sansan@gmail.com', 'sansan.pdf', '-', '13', 'sansan.jpg', 'Dr.May Oo', '8.10.2007', '-', 'San San', '-', '12.6.2007', '15.7.2007', '22.8.2007');
INSERT INTO `thesis` VALUES ('14', '014', 'Classification Of Butterfly\'s Sub Families System Using Fuzzy Bayesion Decision Method', 'Dr.Saw Thandar Myint', '2006-2007', 'paper/Classification Of Butterfly\'s Sub Families System Using Fuzzy Bayesion Decision Method', '15.7.2007', 'Mandalay', 'Oral', 'Decision Support System', 'nwayyu@gmail.com', 'nwayyuaung.pdf', '-', '14', 'nwayyu.jpg', 'Dr.Khin Su', '30.8.2007', '-', 'Nway Yu Aung', '-', '3.7.2007', '31.7.2007', '9.8.2007');
INSERT INTO `thesis` VALUES ('15', '015', 'Online Transaction Processing System', 'Dr.Lin Lin Htet', '2006-2007', 'paper/Online Transaction Processing System', '12.5.2007', 'Yangon', 'Oral', 'NLP', 'nawsu@gmail.com', 'nawsumyittar.pdf', '-', '15', 'nawsumyittar.jpg', 'Dr.ThinThin Nu', '21.6.2007', '-', 'Naw Su Myittar', '-', '18.7.2007', '19.8.2007', '25.9.2007');
INSERT INTO `thesis` VALUES ('16', '016', 'Language Translation From Myanmar To Japan By Removing Myanmar Stop Words ', 'Dr.May Su ', '2006-2007', 'paper/Language Translation From Myanmar To Japan By Removing Myanmar Stop Words ', '8.7.2007', 'Mandalay', 'Oral', 'NLP', 'thandar@gmail.com', 'thandaraung.pdf', '-', '16', 'thandaraung.jpg', 'Dr.Sandar', '12.8.2007', '-', 'Thandar Aung', '-', '19.6.2007', '7.7.2007', '13.8.2007');
INSERT INTO `thesis` VALUES ('17', '017', 'Authentication And Access Control System For Distributed Database', 'Dr.Dway Aung', '2006-2007', 'Authentication And Access Control System For Distributed Database', '27.10.2007', 'Mandalay', 'Oral', 'Parallel And Distributed Computing', 'myintmyint@gmail.com', 'myintmyint.pdf', '-', '17', 'myintmyint.jpg', 'Dr.Hnin Wai', '10.11.2007', '-', 'Myint Myint', '-', '12.6.2007', '15.7.2007', '22.8.2007');
INSERT INTO `thesis` VALUES ('18', '018', 'Collaborative System Based On Virtual Corporation Concepts', 'Dr.Su Su San', '2006-2007', 'Collaborative System Based On Virtual Corporation Concepts', '6.11.2007', 'Yangon', 'Oral', 'Virtualization', 'thidar@gmail.com', 'nyeinthidarswe.pdf', '-', '18', 'nyeinthidarswe.jpg', 'Dr.Thi Thi', '23.12.2007', '-', 'Nyein Thidar Swe', '-', '8.7.2007', '29.7.2007', '15.8.2007');
INSERT INTO `thesis` VALUES ('19', '019', 'Image Retrieving Based On Ontology ', 'Dr.Nwe Nwe Aung', '2006-2007', 'Image Retrieving Based On Ontology ', '26.10.2017', 'Mandalay', 'Oral', 'Image Processing', 'yelin@gmail.com', 'yelinoo.pdf', '-', '19', 'yelinoo.jpg', 'Dr.Mya Thandar', '18.11.2007', '-', 'Ye Lin Oo', '-', '11.7.2007', '27.7.2007', '9.8.2007');
INSERT INTO `thesis` VALUES ('20', '020', 'Developing Next-State Myanmar Syallable Boundary Identification System', 'Dr.Aye Chan May', '2006-2007', 'Developing Next-State Myanmar Syallable Boundary Identification System', '19.11.2007', 'Mandalay', 'Oral', 'Geographical Information Systems', 'thetnaing@gmail.com', 'thetnaingmyint.pdf', '-', '20', 'thetnaingmyint.jpg', 'Dr.Phyo Phyo Wai', '23.12.2007', '-', 'Thet Naing Myint', '-', '14.8.2007', '15.9.2007', '31.9.2007');
INSERT INTO `thesis` VALUES ('21', '021', 'Ontology-Based Information Retrieval System', 'Dr.Myint Myint Kyaw', '2006-2007', 'Ontology-Based Information Retrieval System', '13.9.2007', 'Mandalay', 'Oral', 'Information Retrieval', 'yemon@gmail.com', 'yemontun.pdf', '-', '21', 'yemontun.jpg', 'Dr.Thin Mya', '22.10.2007', '-', 'Ye Mon Tun', '-', '5.6.2007', '8.7.2007', '10.8.2007');
INSERT INTO `thesis` VALUES ('22', '022', 'Nurse Rostering Problem Using Genetic Algorithm', 'Dr.Thandar Aung', '2006-2007', 'Nurse Rostering Problem Using Genetic Algorithm', '12.9.2007', 'Mandalay', 'Oral', 'AA', 'myatmon@gmail.com', 'myatmonoo.pdf', '-', '22', 'myatmonoo.jpg', 'Dr.Zay Ya Tu', '8.10.2007', '-', 'Myat Mon Oo', '-', '13.6.2007', '4.7.2007', '13.8.2007');
INSERT INTO `thesis` VALUES ('23', '023', 'Translation Of Class Information By Using ODL And UML Class Diagram', 'Dr.Chit Su', '2006-2007', 'Translation Of Class Information By Using ODL And UML Class Diagram', '9.9.2007', 'Yangon', 'Oral', 'Simulation, Modeling And Computing', 'ayeaye@gmail.com', 'ayeayekyaw.pdf', '-', '23', 'ayeayekyaw.jpg', 'Dr.Aye Thin', '11..10.2007', '-', 'Aye Aye Kyaw', '-', '15.6.2007', '3.7.2007', '10.8.2007');
INSERT INTO `thesis` VALUES ('24', '024', 'Developing Office Administration System On Client/Server Architecture ', 'Daw Su Su Lwin', '2006-2007', 'Developing Office Administration System On Client/Server Architecture ', '17.8.2007', 'Mandalay', 'Oral', 'AA', 'khinsu@gmail.com', 'khinsuhan.pdf', '-', '24', 'khinsuhan.jpg', 'Daw Ei EI Khaing', '8.9.2007', '-', 'Khin Su Han', '-', '8.7.2007', '29.7.2007', '15.8.2007');
INSERT INTO `thesis` VALUES ('25', '025', 'Concurrency Control For Car Ticket Reservation System Using Two-Phase Locking Mechanism', 'Daw Phyu Sin', '2006-2007', 'Concurrency Control For Car Ticket Reservation System Using Two-Phase Locking Mechanism', '11.7.2007', 'Mandalay', 'Oral', 'Decision Suppport Systems', 'eimon@gmail.com', 'eimonthandarwint.pdf', '-', '25', 'eimonthandarwint.jpg', 'Daw Thet Thet', '5.8.2007', '-', 'Ei Mon Thandar Wint', '-', '11.7.2007', '27.7.2007', '9.8.2007');
INSERT INTO `thesis` VALUES ('26', '026', 'Decisioin Making System For Meal Aspect Of Nutrient Factors', 'Daw Nilar', '2006-2007', 'Decisioin Making System For Meal Aspect Of Nutrient Factors', '13.8.2007', 'Mandalay', 'Oral', 'Decision Support Systems', 'marmar@gmail.com', 'marmarnwe.pdf', '-', '26', 'marmarnwe.jpg', 'Daw KhinThan', '21.9.2007', '-', 'Mar Mar Nwe', '-', '11.7.2007', '27.7.2007', '9.8.2007');
INSERT INTO `thesis` VALUES ('27', '027', 'Investigatioin Of Syntax Errors In The Program By Using Top-Down Parsing', 'Daw Cho Zin', '2006-2007', 'Investigatioin Of Syntax Errors In The Program By Using Top-Down Parsing', '16.9.2007', 'Mandalay', 'Oral', 'AA', 'khinkhin@gmail.com', 'khinkhinoo.pdf', '-', '27', 'khinkhinoo.jpg', 'Daw Mar Thin', '1.10.2007', '-', 'Khin Khin Oo', '-', '12.6.2007', '15.7.2007', '22.8.2007');
INSERT INTO `thesis` VALUES ('28', '028', 'Building Knowledge Repository:Ontology Approach ', 'Daw Su Mon', '2006-2007', 'Building Knowledge Repository:Ontology Approach ', '27.8.2007', 'Mandalay', 'Oral', 'Cryptography', 'khinmyo@gmail.com', 'khinmyohtet.pdf', '-', '28', 'khinmyohtet.jpg', 'Daw May Thu', '15.9.2007', '-', 'Khin Myo Htet', '-', '16.6.2007', '18.7.2007', '20.8.2007');
INSERT INTO `thesis` VALUES ('29', '029', 'Natural Language Translation Based On NLP:Japan-Myanmar Translation Process', 'Daw Thuzar', '2006-2007', 'Natural Language Translation Based On NLP:Japan-Myanmar Translation Process', '8.9.2007', 'Mandalay', 'Oral', 'Natural Language  Processing', 'myat@gmail.com', 'myatwuttyephyo.pdf', '-', '29', 'myatwuttyephyo.jpg', 'Daw Hnin Hnin Oo', '12.10.2007', '-', 'Myat Wutt Ye Phyo', '-', '11.7.2007', '27.7.2007', '9.8.2007');
INSERT INTO `thesis` VALUES ('30', '030', 'Distributed Query Processing System', 'Daw Hnin Aye', '2006-2007', 'Distributed Query Processing System', '18.10.2007', 'Mandalay', 'Oral', 'Database System', 'thandar@gmail.com', 'thandarswe.pdf', '-', '30', 'thandarswe.jpg', 'Daw Yu Yu', '20.10.2007', '-', 'Thandar Swe', '-', '14.8.2007', '15.9.2007', '31.9.2007');
INSERT INTO `thesis` VALUES ('31', '031', 'Computerized Diagonsis System For Nutrient Deficiencies Of Wheat', 'Daw Aye Mon', '2006-2007', 'Computerized Diagonsis System For Nutrient Deficiencies Of Wheat', '3.9.2007', 'Mandalay', 'Oral', 'Natural Language Processing', 'khinsandar@gmail.com', 'khinsandarwin.pdf', '-', '31', 'khinsandarwin.jpg', 'Daw Mar Sein', '16.10.2007', '-', 'Khin Sandar Win', '-', '28.6.2007', '12.7.2007', '16.8.2007');
INSERT INTO `thesis` VALUES ('32', '032', 'Web-Based Selling System', 'Dr.Thandar Aung', '2006-2007', 'Web-Based Selling System', '25.10.2007', 'Mandalay', 'Oral', 'Web Engineering', 'ohnmar@gmail.com', 'ohnmarmyint.pdf', 'Myanmar is an agricultural country and agricultural sector  is the backbone of the economy of Myanmar. In this section, the role of information is important. In the system, data warehouse and online analytical processing (OLAP) are used for information processing, analytical processing and datamining. On-line  analytical processing( OLAP) has  become a fundamental component of  contemporary decision support systems and represents  a means by which knowledge workers can efficiently analyze vast amount of organizational data. This system will serve as the reporting information systems for agricultural division.', '32', 'masterpicture/ohnmarmyint.jpg', 'Daw Aye Thaung', '22.11.2007', '-', 'Ohnmar Myint', '-', '23.6.2007', '12.7.2007', '16.8.2007');
INSERT INTO `thesis` VALUES ('33', '033', 'Enhancing Student Information System By Using OLAP Online Analytical Processing ', 'Dr.Sein Sein', '2006-2007', 'Enhancing Student Information System By Using OLAP Online Analytical Processing ', '13.10.2017', 'Mandalay', 'Oral', 'Information Systems', 'zarni@gmail.com', 'zarnimaung.pdf', '-', '33', 'zarnimaung.jpg', 'Dr.Mya Mya', '15.11.2007', '-', 'Zar Ni Maung', '-', '13.6.2007', '19.7.2007', '5.8.2007');
INSERT INTO `thesis` VALUES ('34', '034', 'Query Process For School Based On SQL Translation ', 'Daw Kyi Kyi Khin', '2006-2007', 'Query Process For School Based On SQL Translation ', '18.9.2007', 'Mandalay', 'Oral', 'Database Systems', 'thawthaw@gmail.com', 'thawthawoo.pdf', '-', '34', 'thawthawoo.jpg', 'Daw Khin Mar Oo', '31.10.2007', '-', 'Thaw Thaw Oo', '-', '11.6.2007', '15.7.2007', '24.8.2007');
INSERT INTO `thesis` VALUES ('35', '035', 'Schema Matching For Query Processing By Using Linguistic And Structure Matching', 'Dr.Htwe Htwe', '2006-2007', 'Schema Matching For Query Processing By Using Linguistic And Structure Matching', '16.11.2007', 'Yangon', 'Oral', 'Database Systems', 'thanthan@gmail.com', 'thanthannu.pdf', ' Today, Information and communication  technology  are rapidly growing  and organization can not stand alone. Schema matching is the problem of finding mapping between the attributes of two semantically related database schemas. Schema matching is a  critical step in many application domains such as integration, e-business, data  warehousing and query processing. This paper intends  to develop a schema  matching system for query processing in a relational database under the same business environment. This system use linguistic and structure matching that discovers mappings between schema based on their names, data types and schema structure.', '35', 'thanthannu.jpg', 'Dr.Khin Kyi', '20.12.2007', '-', 'Than Than Nu', '-', '12.6.2007', '15.7.2007', '22.8.2007');
INSERT INTO `thesis` VALUES ('36', '036', 'XML-Based Online Job Scheduling System', 'Daw Cho Mar', '2006-2007', 'XML-Based Online Job Scheduling System', '23.8.2007', 'Mandalay', 'Oral', 'Web Engineering ', 'nyome@gmail.com', 'nyometun.pdf', '-', '36', 'nyometun.jpg', 'Daw Hnin Hnin Aye', '29.9.2007', '-', 'Nyo Me Tun', '-', '8.7.2007', '29.7.2007', '15.8.2007');
INSERT INTO `thesis` VALUES ('37', '037', 'Cost Estimation System For Home Construction ', 'Dr.Saw Thandar Myint', '2006-2007', 'Cost Estimation System For Home Construction ', '1.9.2007', 'Mandalay', 'Oral', 'Data Warehousing', 'kyipyar@gmail.com', 'nwekyipyarthein.pdf', '-', '37', 'nwekyipyarthein.jpg', 'Daw Kyi Pyar', '10.10.2007', '-', 'Nwe Kyi Pyar Thein', '-', '11.7.2007', '27.7.2007', '9.8.2007');
INSERT INTO `thesis` VALUES ('38', '038', 'Decision Support System For Protection Estimation Of A Chicken Meal Factory ', 'Daw Htet Htet Hlaing', '2006-2007', 'Decision Support System For Protection Estimation Of A Chicken Meal Factory ', '8.8.2007', 'Yangon', 'Oral', 'Decision Support System', 'sithu@gmail.com', 'sithukyawsan.pdf', 'Decision making plays an important role in today\'s rapidly changing business environment. Computerized decision support system(DSS) can provide supportive and precious information for person in managerial level in a timely manner. Because of this most firms  have made significant investments  in their information technology infrastructure to enhance  their capability and to take competitive advantage over competitors. This paper is intended  to develop a DSS for production management of a chicken  meal factory using accounting models.', '38', 'sithukyawsan.jpg', 'Daw Hnin Yu', '22.9.2007', '-', 'Si Thu Kyaw San', '-', '14.8.2007', '15.9.2007', '31.9.2007');
INSERT INTO `thesis` VALUES ('39', '039', 'Development Of Clustering System Using K-Means Method', 'Daw Aye Aye Mya', '2006-2007', 'Development Of Clustering System Using K-Means Method', '6.10.2007', 'Mandalay', 'Oral', 'AA', 'wuttyi@gmail.com', 'myawuttyiwin.pdf', '-', '39', 'masterpicture/myatwuttyiwin.jpg', 'Daw Mar Mar Oo', '14.11.2007', '-', 'Mya Wutt Yi Win', '-', '6.6.2007', '12.7.2007', '29.8.2007');
INSERT INTO `thesis` VALUES ('40', '040', 'Identifying Abbreviation And Its Definition From Text String By Using NLP', 'Daw Lin Latt', '2006-2007', 'Identifying Abbreviation And Its Definition From Text String By Using NLP', '21.10.2007', 'Yangon', 'Oral', 'Natural Language Processing', 'khinmyo@gmail.com', 'khinmyohan.pdf', 'Decision Tree algorithms are the most popular algorithms for classification in data mining field. The main of classification is prediction of the categorical labels(classes). In this system, ID3  algorithm is used to prediction of  infection of malaria disease on patients by selecting training data, construction  decision decision  model and adjust the model based on testing data. The constructed model is represented in the form of decision tree and classification rules. The choice of suitable model to predict malaria infection on patient can decide against the correctness of model. To get the bast classifier accuracy, this system premits selecting no of records to train the system and remove unnecessary branches of tree.', '40', 'khinmyohan.jpg', 'Daw Pyone Cho', '12.11.2007', '-', 'Khin Myo Han', '-', '13.6.2007', '15.7.2007', '20.8.2007');
INSERT INTO `thesis` VALUES ('41', '041', 'Recommendation System For Site Visiting Using Transition Matrix Compression', 'Daw Han Thar', '2006-2007', 'Recommendation System For Site Visiting Using Transition Matrix Compression', '18.11.2007', 'Mandalay', 'Oral', 'AA', 'theinttheint@gmail.com', 'eitheinttheintthu.pdf', '-', '41', 'eitheinttheintthu.jpg', 'Daw Shwe Yi', '23.12.2007', '-', 'Ei Theint Theint Thu', '-', '11.7.2007', '27.7.2007', '9.8.2007');
INSERT INTO `thesis` VALUES ('42', '042', 'Analysis Of Fractal Image Compression ', 'Dr.May Lwin', '2006-2007', 'Analysis Of Fractal Image Compression ', '27.8.2007', 'Yangon', 'Oral', 'Image Processing', 'thinzar@gmail.com', 'myathinzarwai.pdf', '-', '42', 'myathinzarwai.jpg', 'Dr.Thu Thu Nyein', '25.9.2007', '-', 'Mya Thinzar Wai', '-', '11.7.2007', '27.7.2007', '9.8.2007');
INSERT INTO `thesis` VALUES ('43', '043', 'Myanmar Directory System For Interesting Places Based On Mobile Agent', 'Dr.Nyunt Sein', '2007-2008', 'Myanmar Directory System For Interesting Places Based On Mobile Agent', '11.7.2008', 'Mandalay', 'Oral', 'Data Mining', 'thidar@gmail.com', 'khinthidaraung.pdf', '-', '43', 'masterpicture/khinthidaraung.jpg', 'Dr. Sein Sein Myint', '25.8.2008', '-', 'Khin Thidar Aung', '-', '16.6.2008', '18.7.2008', '20.8.2008');
INSERT INTO `thesis` VALUES ('44', '044', 'Evaluation Of Scheduling Policies Using Queuing Analysis Model', 'Dr.Ngwe Thawdar', '2007-2008', 'Evaluation Of Scheduling Policies Using Queuing Analysis Model', '11.9.2008', 'Mandalay', 'Oral', 'AA', 'myintmyat@gmail.com', 'myintmyatmyo.pdf', '-', '44', 'masterpicture/myintmyatmyo.jpg', 'Dr.Shin Shin', '20.10.2008', '-', 'Myint Myat Myo', '-', '11.7.2008', '27.7.2008', '9.8.2008');
INSERT INTO `thesis` VALUES ('45', '045', 'Information Security Using RC4 And Blowfish', 'Dr.Myat Mon Aye', '2007-2008', 'Information Security Using RC4 And Blowfish', '15.8.2008', 'Mandalay', 'Oral', 'Information Systems', 'ayeaye@gmail.com', 'ayeaye.pdf', 'Interpolation analysis is a statistical methodology that utilizes the relation between two or more quantitative variables so that  one variable can be predicted from the other or others. This methodology is widely used in  business, the social and behavioral  science, the biological science , and many other disciplines. The prediction of inter  range continuous  value can be modeled by statistical  techniques of interpolation. The interpolation line is used for purposes of estimation, prediction  or forecasting. This paper can predict one variable from another dependent variable by using the method of linear interpolation for any datasets. The user chooses the predictor variable, x and the response variable, y.', '45', 'masterpicture/ayeaye.jpg', 'Dr.Ye Ye Myint', '20.9.2008', '-', 'Aye Aye', '-', '14.8.2008', '15.9.2008', '31.9.2008');
INSERT INTO `thesis` VALUES ('46', '046', 'Comparison Of Accuracy Based On Two Classification Method', 'Dr.Than Than Yu', '2007-2008', 'Comparison Of Accuracy Based On Two Classification Method', '23.7.2008', 'Yangon', 'Oral', 'Simulation And Modeling', 'myatsu@gmail.com', 'myatsumon.pdf', '-', '46', 'masterpicture/myatsumon.jpg', 'Dr.Nan Su', '15.8.2008', '-', 'Myat Su Mon', '-', '28.6.2008', '12.7.2008', '16.8.2008');
INSERT INTO `thesis` VALUES ('47', '047', 'Search Engine For Retireving Document By Using Inverted Index', 'Daw Than Than Soe', '2007-2008', 'Search Engine For Retireving Document By Using Inverted Index', '8.10.2008', 'Mandalay', 'Oral', 'AA', 'thanthan@gmail.com', 'thanthanaye.pdf', '-', '47', 'masterpicture/thanthanaye.jpg', 'Dr.Tin Mar Win', '22.11.2008', '-', 'Than Than Aye', '-', '23.6.2008', '12.7.2008', '16.8.2008');
INSERT INTO `thesis` VALUES ('48', '048', 'Web Service Based HelpDesk System For Choosing Desire Hotel ', 'Dr.Phyo Thet Zay', '2007-2008', 'Web Service Based HelpDesk System For Choosing Desire Hotel ', '27.8.2008', 'Mandalay', 'Oral', 'Web Engineering', 'khinmar@gmail.com', 'khinmaraye.pdf', '-', '48', 'masterpicture/khinmaraye.jpg', 'Dr.Than Sit', '21.9.2008', '-', 'Khin Mar Aye', '-', '26.6.2008', '3.7.2008', '12.8.2008');
INSERT INTO `thesis` VALUES ('49', '049', 'Histogram-Based Texture Defect Dection', 'Dr.Thi Thi Soe', '2007-2008', 'Histogram-Based Texture Defect Dection', '24.7.2008', 'Mandalay', 'Oral', 'AI', 'yuyu@gmail.com', 'yuyuhlaing.pdf', '-', '49', 'masterpicture/yuyuhlaing.jpg', 'Dr.Mar San', '21.8.2008', '-', 'Yu Yu Hlaing', '-', '30.6.2008', '31.7.2007', '18.8.2008');
INSERT INTO `thesis` VALUES ('50', '050', 'RTP Based Multimedia Stemming Over IP', 'Dr.Win Win Zaw', '2007-2008', 'RTP Based Multimedia Stemming Over IP', '18.9.2008', 'Mandalay', 'Oral', 'Web Networking', 'zay@gmail.com', 'zaysoe.pdf', '-', '50', 'masterpicture/zaysoe.jpg', 'Dr.Than Than Su', '10.10.2008', '-', 'Zay Soe', '-', '14.6.2008', '17.7.2008', '28.8.2008');
INSERT INTO `thesis` VALUES ('51', '051', 'Indexing Based Database Warehouse For Online Analytical Processing', 'Dr.Thuzar Lwin', '2007-2008', 'Indexing Based Database Warehouse For Online Analytical Processing', '7.7.2008', 'Mandalay', 'Oral', 'Data Mining', 'minthu@gmail.com', 'minthuaung.pdf', '-', '51', 'masterpicture/minthuaung.jpg', 'Dr.Tin Tin Tun', '31.8.2008', '-', 'Min Thu Aung', '-', '8.7.2008', '29.7.2008', '15.8.2008');
INSERT INTO `thesis` VALUES ('52', '052', 'Plan Mining-Based Tracking Information System', 'Dr.Mar Su Wai', '2007-2008', 'Plan Mining-Based Tracking Information System', '19.10.2008', 'Yangon', 'Oral', 'Data Mining', 'haymar@gmail.com', 'haymarhlathein.pdf', '-', '52', 'masterpicture/haymarhlathein.jpg', 'Dr.Kaung Sett', '30.11.2008', '-', 'Hay Mar Hla Thein', '-', '11.7.2008', '27.7.2008', '9.8.2008');
INSERT INTO `thesis` VALUES ('53', '053', 'Creating Web Services Function For Air Ticket Reservation System', 'Dr.Myint Myint Kyu', '2007-2008', 'Creating Web Services Function For Air Ticket Reservation System', '15.8.2008', 'Mandalay', 'Oral', 'Web Engineering', 'thidark@gmail.com', 'thidarkyawsoe.pdf', '-', '53', 'masterpicture/thidarkyawsoe.jpg', 'Dr.Than Htay', '26.9.2008', '-', 'Thidar Kyaw Soe', '-', '14.8.2008', '15.9.2008', '31.9.2008');
INSERT INTO `thesis` VALUES ('54', '054', 'K-means Clustering Based Web Recommendation System', 'Dr.San Yathaw Nan', '2007-2008', 'K-means Clustering Based Web Recommendation System', '18.9.2008', 'Yangon', 'Oral', 'Data Mining', 'kaykhaing@gmail.com', 'kaykhaingwin.pdf', '-', '54', 'kaykhaingwin.jpg', 'Dr.Wint War', '12.10.2008', '-', 'Kay Khaing Win', '-', '5.6.2008', '8.7.2008', '10.8.2008');
INSERT INTO `thesis` VALUES ('55', '055', 'Retrieving Information Based On Ontology Approach', 'Dr.Soe Thu', '2007-2008', 'Retrieving Information Based On Ontology Approach', '8.9.2008', 'Mandalay', 'Oral', 'Information Extraction/Retrieval', 'aungthu@gmail.com', 'aungthukyaw.pdf', '-', '55', 'masterpicture/aungthukyaw.jpg', 'Dr.Thunder Thaw', '19.10.2008', '-', 'Aung Thu Kyaw', '-', '13.6.2008', '4.7.2008', '13.8.2008');
INSERT INTO `thesis` VALUES ('56', '056', 'Implementation Of Nim Game Base On Minimax Algorithm', 'Dr.Thin Thin Khaing', '2007-2008', 'Implementation Of Nim Game Base On Minimax Algorithm', '1.11.2008', 'Mandalay', 'Oral', 'AA', 'nyeinsan@gmail.com', 'nyeinsanthu.pdf', '-', '56', 'masterpicture/nyeinsanthu.jpg', 'Dr.Thae Su Naing', '12.12.2008', '-', 'Nyein San Thu', '-', '15.6.2008', '3.7.2008', '10.8.2008');
INSERT INTO `thesis` VALUES ('57', '057', 'Clustering-Based Dictionary For Myanmar Medical Plants', 'Dr.Thet Thet Su', '2007-2008', 'Clustering-Based Dictionary For Myanmar Medical Plants', '2.7.2008', 'Mandalay', 'Oral', 'AI', 'nwenwe1@gmail.com', 'nwenwenuyin.pdf', '-', '57', 'masterpicture/nwenwenuyin.jpg', 'Dr.Kabyar Cho', '26.8.2008', '-', 'Nwe Nwe Nu Yin', '-', '26.6.2008', '3.7.2008', '12.8.2008');
INSERT INTO `thesis` VALUES ('58', '058', 'Wordflow Management System For Passport Applying Using Multi-Agent System', 'Dr.Shwe Sin', '2007-2008', 'Wordflow Management System For Passport Applying Using Multi-Agent System', '23.9.2008', 'Mandalay', 'Oral', 'CG', 'myopa@gmial.com', 'myopapakhaing.pdf', '-', '58', 'masterpicture/myopapakhaing.jpg', 'Dr.La Yaung ', '17.10.2008', '-', 'Myo Pa Pa Khaing', '-', '30.6.2008', '31.7.2007', '18.8.2008');
INSERT INTO `thesis` VALUES ('59', '059', 'Forecasting Model Tool By Using Interpolation Method', 'Dr.Nyunt Si', '2007-2008', 'Forecasting Model Tool By Using Interpolation Method', '6.8.2008', 'Yangon', 'Oral', 'CG', 'hsumon@gmail.com', 'hsumonye.pdf', '-', '59', 'masterpicture/hsumonye.jpg', 'Dr.Nandar Oo Maw', '29.9.2008', '-', 'Hsu Mon Ye', '-', '14.6.2008', '17.7.2008', '28.8.2008');
INSERT INTO `thesis` VALUES ('60', '060', 'Constructing Frequent Pattern Tree For Mini Marked By Using Pattern Tree ', 'Dr.Paing Thu Ta', '2007-2008', 'Constructing Frequent Pattern Tree For Mini Marked By Using Pattern Tree ', '31.8.2008', 'Mandalay', 'Oral', 'AI', 'maythu@gmail.com', 'maythuaung.pdf', '-', '60', 'maythuaung.jpg', 'Dr.May Pyone', '28.9.2008', '-', 'May Thu Aung', '-', '10.7.2008', '18.8.2008', '8.9.2008');
INSERT INTO `thesis` VALUES ('61', '061', 'Classification Of Market Survey Data By Using Naive Bayesion Classifier', 'Dr.Shwe Soe', '2007-2008', 'Classification Of Market Survey Data By Using Naive Bayesion Classifier', '3.7.2008', 'Mandalay', 'Oral', 'Data Mining', 'mayzin@gmail.com', 'mayzinmyint.pdf', '-', '61', 'masterpicture/mayzinmyint.jpg', 'Dr.May Cho', '22.8.2008', '-', 'May Zin Myint', '-', '4.6.2008', '14.7.2008', '21.8.2008');
INSERT INTO `thesis` VALUES ('62', '062', 'Farm Planning System Using Linear Programming', 'Dr.Thet Nwe Soe', '2007-2008', 'Farm Planning System Using Linear Programming', '19.7.2008', 'Yangon', 'Oral', 'AA', 'khinphyo@gmail.com', 'khinphyowai.pdf', 'This paper introduces farm planning decision support system for solving farm planning problems. The planning horizon  is one year and the manager\'s goal is to determine how much land should be planted in each crop and how many heads of each livestock should be kept in order to maximize its net  cash income. The numbers of crops and livestock  types as well as  the number of specific constraints  are the parameters of this system. The number of these parameters  can be varying. This system firstly produces a linear programming model  for solving farm planning problems.', '62', 'masterpicture/khinphyowai.jpg', 'Dr.Nandar Lin Htun', '21.8.2008', '-', 'Khin Phyo Wai', '-', '5.6.2008', '23.7.2008', '20.8.2008');
INSERT INTO `thesis` VALUES ('63', '063', 'Implementing Software Agent For Travel Planning', 'Dr.Saw Thandar Myint', '2007-2008', 'Implementing Software Agent For Travel Planning', '10.9..2008', 'Mandalay', 'Oral', 'AI', 'ayesu@gmail.com', 'ayesumon.pdf', '-', '63', 'masterphoto/ayesumon.jpg', 'Dr.San San Win', '21.10.2008', '-', 'Aye Su Mon', '-', '3.6.2008', '22.7.2008', '16.8.2008');
INSERT INTO `thesis` VALUES ('64', '064', 'Edge Detection In Two Dimensional Images Using Fuzzy Inference System', 'Dr.Thi Thi Soe', '2007-2008', 'Edge Detection In Two Dimensional Images Using Fuzzy Inference System', '12.10.2008', 'Mandalay', 'Oral', 'CG', 'yinmin@gmail.com', 'yinminhtet.pdf', '-', '64', 'masterpicture/yinminhtet.jpg', 'Dr.Moh Moh San', '20.11.2008', '-', 'Yin Min Htet', '-', '10.7.2008', '18.8.2008', '8.9.2008');
INSERT INTO `thesis` VALUES ('65', '065', 'Building Domain Ontology For Computer Technology', 'Dr.Win Nu', '2007-2008', 'Building Domain Ontology For Computer Technology', '18.10.2008', 'Mandalay', 'Oral', 'Web Engineering', 'naytoe@gmail.com', 'naytoeko.pdf', '-', '65', 'masterpicture/naytoeko.jpg', 'Dr.Thway Thit', '21.11.2008', '-', 'Nay Toe Ko', '-', '4.6.2008', '14.7.2008', '21.8.2008');
INSERT INTO `thesis` VALUES ('66', '066', 'Material Requirement Planning System For Plant Production', 'Dr.Hnin Si', '2007-2008', 'Material Requirement Planning System For Plant Production', '9.9.2008', 'Mandalay', 'Oral', 'Data Mining', 'susu@gmail.com', 'susukhaing.pdf', '-', '66', 'susukhaing.jpg', 'Dr.Thuzar Hnin', '27.10.2008', '-', 'Su Su Khaing', '-', '11.7.2008', '27.7.2008', '9.8.2008');
INSERT INTO `thesis` VALUES ('67', '067', 'Efficient Frequent Pattern Mining With Apriori Algorithm', 'Daw Su Hlaing', '2007-2008', 'Efficient Frequent Pattern Mining With Apriori Algorithm', '4.11.2008', 'Mandalay', 'Oral', 'Data Mining', 'lwinlwin@gmail.com', 'lwinlwinmaw.pdf', '-', '67', 'masterpicture/lwinlwinmaw.jpg', 'Dr.Thant Thiri', '19.12.2008', '-', 'Lwin Lwin Maw', '-', '14.8.2008', '15.9.2008', '31.9.2008');
INSERT INTO `thesis` VALUES ('68', '068', 'University Logo Classification System Using Artificial Neural Network', 'Dr.Thi Thi Soe', '2007-2008', 'University Logo Classification System Using Artificial Neural Network', '21.11.2008', 'Mandalay', 'Oral', 'AI', 'thaemar@gmail.com', 'thaemarlwin.pdf', '-', '68', 'masterpicture/thaemarlwin.jpg', 'Dr.Thit Sar Ni', '31.12.2008', '-', 'Thae Mar Lwin', '-', '5.6.2008', '8.7.2008', '10.8.2008');
INSERT INTO `thesis` VALUES ('69', '069', 'Interpretation Of Climate Data Using Linear And Multilinear Regression', 'Dr.San Pwint', '2007-2008', 'Interpretation Of Climate Data Using Linear And Multilinear Regression', '13.7.2008', 'Yangon', 'Oral', 'NLP', 'phyuphyu@gmail.com', 'phyuphyumyint.pdf', '-', '69', 'masterpicture/phyuphyumyint.jpg', 'Dr.Ei Ei Nyein', '5.10.2008', '-', 'Phyu Phyu Myint', '-', '13.6.2008', '4.7.2008', '13.8.2008');
INSERT INTO `thesis` VALUES ('70', '070', 'Decision Making System For Job Selection Using AHP', 'Daw Mi Mi ', '2007-2008', 'Decision Making System For Job Selection Using AHP', '18.8.2008', 'Mandalay', 'Oral', 'Data Mining', 'honey@gmail.com', 'honeyeisan.pdf', 'The varieties of job are increasing rapidly nowadays and  we are having more and more jobs. Similarly, the numbers  of people have finished any  graduate increases every year. It is necessary for them to find the job that is suitable for them. Computer-based decision support systems are widely deployed on the varieties of jobs. Job selection can be viewed as a complex decision structure with multiple criteria. The method of Multi Criteria Decision Making (MCDM) is used  that is the theory of Analytic Hierarchy Process (AHP). The AHP appears to be a flexible decision making tool for multi-criteria problems such as selection of the best job.', '70', 'masterpicture/haneisan.jpg', 'Dr.Moe Ma Ma', '19.9.2008', '-', 'Honey Ei San', '-', '15.6.2008', '3.7.2008', '10.8.2008');
INSERT INTO `thesis` VALUES ('71', '071', 'Cost Estimation Of Bandage Production Using Simplex Method', 'Dr.Myo Ma', '2007-2008', 'Cost Estimation Of Bandage Production Using Simplex Method', '21.8.2008', 'Mandalay', 'Oral', 'AA', 'mohmoh@gmail.com', 'mohmoh.pdf', 'A key problem faced by managers is how to allocate scarce resources among activities or projects. Linear  programming, or LP, is a method of allocating resources in an optimal way. It is one of the most widely used Operations Research(OR) tools. Using LP, the system helps the managements to decide how to allocate the limited resources to maximize profits. This paper will support the bandage  production for a factory by using simple methods, sensitivity analysis and dual simplex method .', '71', 'masterpicture/mohmoh.jpg', 'Dr.San Kyi', '17.9.2008', '-', 'Moh Moh', '-', '2.6.2008', '7.7.2008', '9.8.2008');
INSERT INTO `thesis` VALUES ('72', '072', 'Investigation Of Hydro-power Project Based On Decision Support System', 'Dr.Thin Aye', '2007-2008', 'Investigation Of Hydro-power Project Based On Decision Support System', '6.9.2008', 'Yangon', 'Oral', 'AI', 'thinshwe@gmail.com', 'thinshwewarthaung.pdf', '-', '72', 'thinshwewarthaung.jpg', 'Dr.Khant Paing', '28.10.2008', '-', 'Thin Shwe War Thaung', '-', '1.6.2008', '23.7.2008', '9.8.2008');
INSERT INTO `thesis` VALUES ('73', '073', 'Text Area Extraction From Web Images', 'Dr.Thi Thi Soe', '2007-2008', 'Text Area Extraction From Web Images', '1.11.2008', 'Mandalay', 'Oral', 'Web Engineering', 'suwai@gmail.com', 'suwaitun.pdf', '-', '73', 'masterpicture/suwaihtun.jpg', 'Dr.Myat Su Ye', '20.12.2008', '-', 'Su Wai Tun', '-', '3.6.2008', '22.7.2008', '16.8.2008');
INSERT INTO `thesis` VALUES ('74', '074', 'Decision Support System For Personal Information Using Datawarehouse', 'Dr.Aye Sandar', '2007-2008', 'Decision Support System For Personal Information Using Datawarehouse', '19.11.2008', 'Mandalay', 'Oral', 'NLP', 'kyi@gmail.com', 'kyipyar.pdf', '-', '74', 'masterpicture/kyipyar.jpg', 'Dr.Linn Lat', '25.12.2008', '-', 'Kyi Pyar', '-', '24.6.2008', '16.7.2008', '20.8.2008');
INSERT INTO `thesis` VALUES ('75', '075', 'A Comprehensive Study On Ant-Miner', 'Dr.Thandar Aung', '2008-2009', 'A Comprehensive Study On Ant-Miner', '30.5.2009', 'Yangon', 'Oral', 'Data Mining', 'saung@gmial.com', 'saunghninpwintoo.pdf', '-', '75', 'saunghninpwintoo.jpg', 'Dr.Cho Zin Thwe', '29.6.2008', '-', 'Saung Hnin Pwint Oo', '-', '14.8.2009', '15.9.2009', '31.9.2009');
INSERT INTO `thesis` VALUES ('76', '076', 'Distributed Computing Using Mobile Agents Migration Over FIPA ACL', 'Daw Nandar Lwin', '2008-2009', 'Distributed Computing Using Mobile Agents Migration Over FIPA ACL', '17.7.2009', 'Mandalay', 'Oral', 'AI', 'kyawthu@gmial.com', 'kyawthuwin.pdf', '-', '76', 'kyawthuwin.jpg', 'Dr.Thet Htar', '21.8.2009', '-', 'Kyaw Thu Win', '-', '28.6.2009', '12.7.2009', '16.8.2009');
INSERT INTO `thesis` VALUES ('77', '077', 'Building A Small New Interpreter For Pseudo Language', 'Dr.Kyaw Swar', '2008-2009', 'Building A Small New Interpreter For Pseudo Language', '22.8.2009', 'Mandalay', 'Oral', 'NLP', 'sumyat@gmail.com', 'sumyatthu.pdf', '-', '77', 'sumyatthu.jpg', 'Dr.Nway Oo', '18.9.2009', '-', 'Su Myat Thu', '-', '23.6.2009', '12.7.2009', '16.8.2009');
INSERT INTO `thesis` VALUES ('78', '078', 'An Efficient Error Control Scheme For TCP Segments', 'Dr.Myat Noe', '2008-2009', 'An Efficient Error Control Scheme For TCP Segments', '30.8.3009', 'Mandalay', 'Oral', 'Networking', 'toe@gmail.com', 'toenaingwin.pdf', '-', '78', 'toenaingwin.jpg', 'Dr.Khin Yu Par', '16.10.2009', '-', 'Toe Naing Win', '-', '13.6.2009', '19.7.2009', '5.8.2009');
INSERT INTO `thesis` VALUES ('79', '079', 'Recommendation System Based On Hybrid Approach', 'Dr.Nu Nu ', '2008-2009', 'Recommendation System Based On Hybrid Approach', '8.9.2009', 'Mandalay', 'Oral', 'Web Engineering', 'myatmon@gmail.com', 'myatmonaye.pdf', '-', '79', 'myatmonaye.jpg', 'Dr.May Moe', '17.10.2009', '-', 'Myat Mon Aye', '-', '11.6.2009', '15.7.2009', '24.8.2009');
INSERT INTO `thesis` VALUES ('80', '080', 'Information Retrieval Using Crawling Method On Web', 'Dr.Saw Thandar Myint', '2008-2009', 'Information Retrieval Using Crawling Method On Web', '27.10.2009', 'Yangon', 'Oral', 'Web Engineering', 'thaenu@gmail.com', 'thaenuaung.pdf', '-', '80', 'thaenuaung.jpg', 'Dr.Soe Win', '27.11.2009', '-', 'Thae Nu Aung', '-', '12.6.2009', '15.7.2009', '22.8.2009');
INSERT INTO `thesis` VALUES ('81', '081', 'Implementing Divisive Hierarchical Document Clustering With New Frequent Term\'s Patterns-Based Clustering Approach', 'Daw Thin Khaing', '2008-2009', 'Implementing Divisive Hierarchical Document Clustering With New Frequent Term\'s Patterns-Based Clustering Approach', '21.10.2009', 'Mandalay', 'Oral', 'Data Mining', 'ohnmar@gmail.com', 'ohnmar.pdf', '-', '81', 'ohnmar.jpg', 'Dr.Khin San Aye', '18.11.2009', '-', 'Ohnmar', '-', '8.7.2009', '29.7.2009', '15.8.2009');
INSERT INTO `thesis` VALUES ('82', '082', 'Mining Association Rules Based On Eclat Algorithm For Online Bookshop System', 'Dr.Saw Thandar Myint', '2008-2009', 'Mining Association Rules Based On Eclat Algorithm For Online Bookshop System', '16.11.2009', 'Mandalay', 'Oral', 'Data Mining', 'latlat@gmail.com', 'latlatbonekyawe.pdf', '-', '82', 'latlatbonekyawe.jpg', 'Dr.Aye Thiri', '25.12.2009', '-', 'Lat Lat Bone Kyawe', '-', '11.7.2009', '27.7.2009', '9.8.2009');
INSERT INTO `thesis` VALUES ('83', '083', 'Online Air Ticket Reservation System By Using Software Agents', 'Dr.Thin Soe', '2008-2009', 'Online Air Ticket Reservation System By Using Software Agents', '7.11.2009', 'Mandalay', 'Oral', 'AI', 'thaeseint@gmail.com', 'thaeseintaye.pdf', '-', '83', 'thaeseintaye.jpg', 'Dr.Zin Moe Thu', '23.12.2009', '-', 'Thae Seint Aye', '-', '14.8.2009', '15.9.2009', '31.9.2009');
INSERT INTO `thesis` VALUES ('84', '084', 'Reassembling Fragments In Image Reconstruction', 'Dr.Thin Thin', '2008-2009', 'Reassembling Fragments In Image Reconstruction', '1.10.2009', 'Yangon', 'Oral', 'Image Processing', 'tinnilar@gmail.com', 'tinnilaroo.pdf', '-', '84', 'tinnilaroo.jpg', 'Dr.Zar Chi Lin', '28.11.2009', '-', 'Tin Nilar Oo', '-', '6.6.2009', '12.7.2009', '29.8.2009');
INSERT INTO `thesis` VALUES ('85', '085', 'Decision Making System For Loan In Bank Using Analytical Hierarchy Process(AHP) And Fuzzy Bayesian', 'Dr.Saw Thandar Myint', '2008-2009', 'Decision Making System For Loan In Bank Using Analytical Hierarchy Process(AHP) And Fuzzy Bayesian', '10.8.2009', 'Mandalay', 'Oral', 'Fuzzy Logic And Control System', 'thinzar@gmail.com', 'thinzartun.pdf', '-', '85', 'thinzartun.jpg', 'Daw Tint  Tint', '22.9.2009', '-', 'Thin Zar Tun', '-', '19.6.2009', '7.7.2009', '13.8.2009');
INSERT INTO `thesis` VALUES ('86', '086', 'Classification Of Water Pollution With Feature Selections', 'Dr.Saw Thandar Myint', '2008-2009', 'Classification Of Water Pollution With Feature Selections', '2.9.2009', 'Mandalay', 'Oral', 'Data Mining', 'pwintmar@gmail.com', 'pwintmarnainngwin.pdf', '-', '86', 'pwintmarnwingwin.jpg', 'Daw Thidar Nwe', '10.10.2009', '-', 'Pwint Mar Naing Win', '-', '12.6.2009', '15.7.2009', '22.8.2009');
INSERT INTO `thesis` VALUES ('87', '087', 'Retrieving The Best Voted Page Using Pagerank Method', 'Daw Myat Thandar', '2008-2009', 'Retrieving The Best Voted Page Using Pagerank Method', '12.9.1009', 'Yangon', 'Oral', 'Decision Support Systems', 'kaythi@gmail.com', 'kaythinwe.pdf', '-', '87', 'kaythinwe.jpg', 'Daw Su Myat', '30.10.2009', '-', 'Kay Thi Nwe', '-', '8.7.2009', '29.7.2009', '15.8.2009');
INSERT INTO `thesis` VALUES ('88', '088', 'Memory-Based Personalized Movie Recommender System', 'Daw Thi Mar', '2008-2009', 'Memory-Based Personalized Movie Recommender System', '5.10.2009', 'Mandalay', 'Oral', 'Data Mining', 'khaing@gmial.com', 'khaingmarlarmyint.pdf', 'The World Wide Web information grows explosively in the Internet and people encounter problem to pick some correct things from the overwhelming set of choice. The recommender systems help then choose something they actually want or need. Therefore, the recommender systems  get the vital role in the Internet. One of the most successful technologies  for recommender systems  is called collaborative filtering. In  this movie recommender system, we used memory-based collaborative filtering and firstly, the user has to give rating what he likes in the  movie he has seen.', '88', 'khaingmarlarmyint.jpg', 'Daw Phoo Myat', '20.11.2009', '-', 'Khaing Mar Lar Myint', '-', '11.7.2009', '27.7.2009', '9.8.2009');
INSERT INTO `thesis` VALUES ('89', '089', 'Image Retrieval System Based On Terms Document', 'Dr.Thi Thi Soe', '2008-2009', 'Image Retrieval System Based On Terms Document', '3.10.2009', 'Mandalay', '`oral', 'Image Processing', 'maythet@gmial.com', 'maythetnwe.pdf', '-', '89', 'maythetnwe.jpg', 'Daw Chaw Su', '221.11.2009', '-', 'May Thet Nwe', '-', '14.8.2009', '15.9.2009', '31.9.2009');
INSERT INTO `thesis` VALUES ('90', '090', 'Parallel Searching Of E-Books using Remote Method Invocation Over Internet Inter Object Request Protocol(RMI-IIOP)', 'Dr.Su Thein ', '2008-2009', 'Parallel Searching Of E-Books using Remote Method Invocation Over Internet Inter Object Request Protocol(RMI-IIOP)', '26.10.2009', 'Mandalay', 'Oral', 'Parallel And Distributed Computing ', 'aung@gmail.com', 'aungaung.pdf', '-', '90', 'aungaung.jpg', 'Daw Win San', '19.11.2009', '-', 'Aung Aung', '-\r\n', '5.6.2009', '8.7.2009', '10.8.2009');
INSERT INTO `thesis` VALUES ('91', '091', 'A Comparative Study Of Apriori And FP-Growth Algorithms', 'Daw Than Than Win', '2008-2009', 'A Comparative Study Of Apriori And FP-Growth Algorithms', '8.10.2009', 'Mandalay', 'Oral', 'AA', 'eiphyu@gmail.com', 'eiphyuphyusoe.pdf', 'The market basket is defined as an itemset  bought together by a customer on a single visit to a store. Especially in retailing it is essential to discover large baskets,  since it deals with thousands of items. The  aim of this paper is to present the algorithms( The Apriori and FP- Growth Algorihtm) to discover large itemsets  patterns and then extract  strong rules for the market basket analysis. Apriori algorithm can be used in large itemsets  property with easily parallelized and easy to implement. FP-rowth algorithm can be used compact data-structured and eliminate  repeated database scan.', '91', 'eiphyuphyusoe.jpg', 'Daw Myint Myint Khin', '24.11.2009', '-', 'Ei Phyu Phyu Soe', '-', '13.6.2009', '4.7.2009', '13.8.2009');
INSERT INTO `thesis` VALUES ('92', '092', 'Web Content Security Based On Member\'Password', 'Dr.Thi Thi Soe', '2008-2009', 'Web Content Security Based On Member\'Password', '4.9.2009', 'Mandalay', 'Oral', 'Web Engineering', 'mayzon@gmail.com', 'mayzonzaw.pdf', '-', '92', 'mayzonzaw.jpg', 'Dr. Thet Naing', '20.10.2009', '-', 'May Zon Zaw', '-', '15.6.2009', '3.7.2009', '10.8.2009');
INSERT INTO `thesis` VALUES ('93', '093', 'Keyword Search-Based Information Retrieval System In Relational Database', 'Dr.Nilar Htay', '2008-2009', 'Keyword Search-Based Information Retrieval System In Relational Database', '29.10.2009', 'Mandalay', 'Oral', 'Database Systems', 'eingwe@gmail.com', 'eingwesin.pdf', '-', '93', 'eingwesin.jpg', 'Dr.Hnin Nu Mon', '19.11.2009', '-', 'Ei Ngwe Sin', '-', '8.7.2009', '29.7.2009', '15.8.2009');
INSERT INTO `thesis` VALUES ('94', '094', 'Implementation Of Case-Based Reasoning System For Abalone ', 'Dr.Ye Lwin', '2008-2009', 'Implementation Of Case-Based Reasoning System For Abalone ', '16.11.2009', 'Yangon', 'Oral', 'Case-Based Reasoning', 'laemon@gmail.com', 'laemonko.pdf', '-', '94', 'laemonko.jpg', 'Dr.Myat Myat Phyo', '29.12.2009', '-', 'Lae Mon Ko', '-', '14.6.2009', '11.7.2009', '28.8.2009');
INSERT INTO `thesis` VALUES ('95', '095', 'Copyright Detection System For Color-Based Image Retrieval', 'Dr.Thet Nwe Soe', '2008-2009', 'Copyright Detection System For Color-Based Image Retrieval', '7.10.2009', 'Mandalay', 'Oral', 'Image Processing', 'ngenge@gmail.com', 'zinwinngengehtwe.pdf', 'Nowadays, a logo is the visual representation and forms the foundation of company and organization. Most of the companies want their logos are private and detect copyright rules. They do not want the logos of their companies duplicated. All the logos that have been registered are stored in a image database. This system intends to see if the new logo of an organization is very similar to any of the existing logos in the image database in order to avoid copyright infringements.', '95', 'zinwinngengehtwe.jpg', 'Dr.Mya Mya Win', '12.11.2009', '-', 'Zin Win Nge Nge Htwe', '-', '3.6.2009', '10.7.2009', '13.8.2009');
INSERT INTO `thesis` VALUES ('96', '096', 'Optimal ASEAN Universities Selection Based On Multi-Agent System', 'Dr.Lwin Mar Oo', '2008-2009', 'Optimal ASEAN Universities Selection Based On Multi-Agent System', '3.10.2009', 'Mandalay', 'Oral', 'AI', 'theint@gmail.com', 'theint.pdf', '-', '96', 'theint.jpg', 'Dr.thin Myat Win', '13.11.2009', '-', 'Theint', '-', '16.6.2009', '19.7.2009', '23.8.2009');
INSERT INTO `thesis` VALUES ('97', '097', 'Case-Based Reasoning Based Diagnosis System', 'Dr.Ni Ni Sint', '2008-2009', 'Case-Based Reasoning Based Diagnosis System', '28.9.2009', 'Mandalay', 'Oral', 'Case-Based Reasoning', 'thinmyat@gmail.com', 'thinmyatnwe.pdf', '-', '97', 'thinmyatnwe.jpg', 'Dr.Htay Htay Hlaing', '19.10.2009', '-', 'Thin Myat Nwe', '-', '20.6.2009', '9.7.2009', '18.8.2009');
INSERT INTO `thesis` VALUES ('98', '098', 'Associative Classification Using CBA Algorithm', 'Daw Mar Hlaing', '2008-2009', 'Associative Classification Using CBA Algorithm', '9.10.209', 'Mandalay', 'Oral', 'AA', 'thiri@gmial.com', 'thirhtain.pdf', '-', '98', 'thirihtain.jpg', 'Daw Shwe Toe', '27.11.2009', '-', 'Thiri Htain', '-', '13.6.2009', '15.7.2009', '20.8.2009');
INSERT INTO `thesis` VALUES ('99', '099', 'GIS-Based Travelers Guided Information System', 'Dr.Thi Thi Soe', '2008-2009', 'GIS-Based Travelers Guided Information System', '18.10.2009', 'Mandalay', 'Oral', 'Information Systems', 'myatmonkyaw@gmila.com', 'myatmonkyaw.pdf', '-', '99', 'myatmonkyaw.jpg', 'Daw Shwe Yi Myint', '20.12.2009', '-', 'Myat Mon Kyaw', '-', '6.6.2009', '12.7.2009', '29.8.2009');
INSERT INTO `thesis` VALUES ('100', '100', 'Item-Based Personalized Recommendation System For Restaurant', 'Daw Sandar Myint', '2008-2009', 'Item-Based Personalized Recommendation System For Restaurant', '21.10.2009', 'Yangon', 'Oral', 'Database Systems', 'khinmay@gmial.com', 'khinmayhtoo.pdf', '-', '100', 'khinmayhtoo.jpg', 'Daw Yadanar', '19.11.2009', '-', 'Khin May Htoo', '-', '19.6.2009', '7.7.2009', '13.8.2009');
INSERT INTO `thesis` VALUES ('101', '101', 'Breast Cancer Recurrence Prediction With Backpropagation', 'Daw Aye Mya Win', '2008-2009', 'Breast Cancer Recurrence Prediction With Backpropagation', '30.10.2009', 'Mandalay', 'Oral', 'Virtualization', 'ayemyatthu@gmail.com', 'ayemyatthu.pdf', '-', '101', 'ayemyatthu.jpg', 'Daw Ngu War', '21.11.2009', '-', 'Aye Myat Thu', '-', '12.6.2009', '15.7.2009', '22.8.2009');
INSERT INTO `thesis` VALUES ('102', '102', 'Access Internet Protocol(IP)  Address And Media Access Control(MAC) Address Through Address Resolution Protocol(ARP)', 'Daw Sandy Su Mon', '2008-2009', 'Access Internet Protocol(IP)  Address And Media Access Control(MAC) Address Through Address Resolution Protocol(ARP)', '7.11.2009', 'Mandalay', 'Oral', 'Networking And Security', 'papa@gmail.com', 'winpapatun.pdf', '-', '102', 'winpapatun.jpg', 'Daw Kay Zin', '12.12.2009', '-', 'Win Pa Pa Tun', '-', '8.7.2009', '29.7.2009', '15.8.2009');
INSERT INTO `thesis` VALUES ('103', '103', 'Clustering Documents By Using Harmony K-means Algorithm', 'Dr.Jue Jue Wai', '2008-2009', 'Clustering Documents By Using Harmony K-means Algorithm', '1.10.2009', 'Mandalay', 'Oral', 'AA', 'nwewar@gmial.com', 'nwewarwin.pdf', '-', '103', 'nwewarwin.jpg', 'Dr.Khin Wint War\r\n', '2.11.2009', '-', 'Nwe War Win', '-', '11.7.2009', '27.7.2009', '9.8.2009');
INSERT INTO `thesis` VALUES ('104', '104', 'Restoring The Blur Image', 'Dr.Thi Thi Soe', '2008-2009', 'Restoring The Blur Image', '27.11.2009', 'Mandalay', 'Oral', 'Image Processing', 'tinsu@gmail.com', 'tinsuwai.pdf', '-', '104', 'tinsuwai.jpg', 'Dr.Pan Nu', '21.12.2009', '-', 'Tin Su Wai', '-', '13.6.2009', '15.7.2009', '20.8.2009');
INSERT INTO `thesis` VALUES ('105', '105', 'Building Item-Based Recommender System For Ladies\' Wear Personalization Service', 'Dr.Ei Ei Myo', '2008-2009', 'Building Item-Based Recommender System For Ladies\' Wear Personalization Service', '12.10.2009', 'Yangon', 'Oral', 'Data Warehousing', 'nwenwe@gmial.com', 'nwenwewin.pdf', 'In recent years, the need for personalized service has been increased. However, personalization  services must be improved to lighten user\'s burden in the process of personalization and produce results that are more adaptable. As one of the most promising approaches to improve the current personalized  services, recommender systems have emerged in  domains such  as E-commerce, digital libraries. In our work, we firstly attempted  to apply a recommender system in the field of E-commerce applications. Then ,we decide to build a recommender system for ladies\' wear personalization services to make it more  user-friendly and user-adaptive. One of the most successful technologies for recommender system is collaborative filtering.', '105', 'nwenwewin.jpg', 'Dr.Thin Thin Hlaing', '13.11.2009', '-', 'Nwe Nwe Win', '-', '11.7.2009', '27.7.2009', '9.8.2009');
INSERT INTO `thesis` VALUES ('106', '106', 'Implementation Of Computing And Media Dictionary By Using Web Ontology Language(OWL)', 'Dr.Thandar Aung', '2008-2009', 'Implementation Of Computing And Media Dictionary By Using Web Ontology Language(OWL)', '4.10.2009', 'Mandalay', 'Oral', 'Web Engineering', 'nandar@gmail.com', 'nunandarlin.pdf', '-', '106', 'nunandarlin.jpg', 'Dr. Thu Zar Hlaing', '10.11.2009', '-\r\n', 'Nu Nandar Lin', '-', '11.7.2009', '27.7.2009', '9.8.2009');
INSERT INTO `thesis` VALUES ('107', '107', 'Extaction Of Information Using Virtual Information Processing Agent Research (VIPAR)', 'Daw Lae Lae Win', '2008-2009', 'Extaction Of Information Using Virtual Information Processing Agent Research (VIPAR)', '14.11.2009', 'Mandalay', 'Oral', 'AI', 'honey@gmail.com', 'honeylat.pdf', '-', '107', 'honeylat.jpg', 'Daw Thandar Tun', '16.12.2009', '-', 'Honey Lat', '-', '16.6.2009', '18.7.2009', '20.8.2009');
INSERT INTO `thesis` VALUES ('108', '108', 'Agent-Based Bidding Style In Multiple Online Auctions', 'Dr.Min Min Htet', '2008-2009', 'Agent-Based Bidding Style In Multiple Online Auctions', '20.11.2009', 'Mandalay', 'Oral', 'AI', 'nweye@gmail.com', 'nweyelin.pdf', '-', '108', 'nweyelin.jpg', 'Dr.Tin Oo', '15.12.2009', '-', 'Nwe Ye Lin', '-', '11.7.2009', '27.7.2009', '9.8.2009');
INSERT INTO `thesis` VALUES ('109', '109', 'Building Business Framework For Centers And Sale Centers Using Web Services', 'Daw Tin Tin Moe', '2008-2009', 'Building Business Framework For Centers And Sale Centers Using Web Services', '15.11.2009', 'Mandalay', 'Oral', 'Web Engineering', 'zarzar@gmail.com', 'zarzarhlaing.pdf', '-', '109', 'zarzarhlaing.jpg', 'Dr.Myo Myo', '20.12.2009', '-', 'Zar Zar Hlaing', '-', '14.8.2009', '15.9.2009', '31.9.2009');
INSERT INTO `thesis` VALUES ('110', '110', 'Optimal Route Finding For Famous Places In Mandalay By Using A Method based On GIS ', 'Dr.Sandar Aung', '2008-2009', 'Optimal Route Finding For Famous Places In Mandalay By Using A Method based On GIS ', '9.11.2009', 'Mandalay', 'Oral', 'Geographical Information Systems', 'eimon@gmail.com', 'eimoncho.pdf', '-', '110', 'eimoncho.jpg', 'Dr.War War Khaing', '17.12.2009', '-', 'Ei Mon Cho', '-', '28.6.2009', '12.7.2009', '16.8.2009');
INSERT INTO `thesis` VALUES ('111', '111', 'Precednce Network Analysis For Project Time Estimation ', 'Dr.Thandar Bo', '2008-2009', 'Precednce Network Analysis For Project Time Estimation ', '5.11.2009', 'Mandalay', 'Oral', 'AA', 'waimi@gmail.com', 'waimiaung.pdf', '-', '111', 'waimiaung.jpg', 'Dr.Kaung Pyae', '10.12.2009', '-', 'Wai Mi Aung', '-', '23.6.2009', '12.7.2009', '16.8.2009');
INSERT INTO `thesis` VALUES ('112', '112', 'Database Security Using MARS Symmetric  Key  Encryption Algorithm', 'Dr.Pan Myat', '2008-2009', 'Database Security Using MARS Symmetric  Key  Encryption Algorithm', '4.11.2009', 'Mandalay', 'Oral', 'AA', 'swezin@gmail.com', 'swezinmoe.pdf', '-', '112', 'swezinmoe.jpg', 'Dr.Hnin Ei Lwin', '6.12.2009', '-', 'Swe Zin Moe', '-', '26.6.2009', '3.7.2009', '12.8.2009');
INSERT INTO `thesis` VALUES ('113`', '113', 'Trip Planning System Based On GIS(Case Study:Chan Aye Thar Zan Township)', 'Daw Thi Soe Win ', '2008-2009', 'Trip Planning System Based On GIS(Case Study:Chan Aye Thar Zan Township)', '5.10.2009', 'Mandalay', 'Oral', 'Geographical Information Systems', 'phyophyowai@gmail.com', 'phyophyowai.pdf', '-', '113', 'phyophyowai.jpg', 'Daw Mon Mon Aung', '20.11.2009', '-', 'Phyo Phyo Wai', '-', '30.6.2009', '31.7.2009', '18.8.2009');
INSERT INTO `thesis` VALUES ('114', '114', 'Outlier Detection Based On Partitioning Around Medioids', 'Dr.Thandar Aung', '2008-2009', 'Outlier Detection Based On Partitioning Around Medioids', '8.11.2009', 'Mandalay', 'Oral', 'Data Warehousing', 'eieihtwe@gmial.com', 'eieihtwe.pdf', '-', '114', 'eieihtwe.jpg', 'Dr.Thant Zin', '10.12.2009', '-', 'Ei Ei Htwe', '-', '13.6.2009', '15.7.2009', '20.8.2009');
INSERT INTO `thesis` VALUES ('115', '115', 'Text-Based Student Image Related Information Retrieval System', 'Dr.Shwe Moe', '2008-2009', 'Text-Based Student Image Related Information Retrieval System', '11.9.2009', 'Yangon', 'Poster', 'Information Extraction/Retrieval ', 'kyawzinoo@gmail.com', 'kyawzinoo.pdf', '-', '115', 'kyawzinoo.jpg', 'Dr.Zar Li Aung', '20.10.2009', '-', 'Kyaw Zin Oo', '-', '6.6.2009', '12.7.2009', '29.8.2009');
INSERT INTO `thesis` VALUES ('116', '116', 'Concurrency Control Using Basic Timestamp Ordering(Thomas Write Rule)', 'Daw Mya Sein Ei', '2008-2009', 'Concurrency Control Using Basic Timestamp Ordering(Thomas Write Rule)', '2.10.2009', 'Yangon', 'Poster', 'Fuzzy Logic And Control Systems', 'hninsu@gmail.com', 'hninsukhaing.pdf', '-', '116', 'hninsukhaing.jpg', 'Daw Zar Min Aye', '3.11.2009', '-', 'Hnin Su Khaing', '-', '19.6.2009', '7.7.2009', '13.8.2009');
INSERT INTO `thesis` VALUES ('117', '117', 'Outlier Detection  By Using Statistical Approach', 'Dr.Saw Thandar Myint', '2008-2009', 'Outlier Detection  By Using Statistical Approach', '23.10.2009', 'Mandalay', 'Oral', 'Data Mining', 'nannkhaing@gmail.com', 'nannkhaingpwintphyu.pdf', '-', '117', 'nannkhaingpwintphyu.jpg', 'Daw Phyu Phyu', '8.11.2009', '-', 'Nann Khaing Pwint Phyu', '-', '14.6.2009', '20.7.2009', '13.8.2009');
INSERT INTO `thesis` VALUES ('118', '118', 'Discovery Of Association Rule On DNA Sequence Using FP-growth Algorithm', 'Dr.Thi Thi Soe', '2008-2009', 'Discovery Of Association Rule On DNA Sequence Using FP-growth Algorithm', '15.10.2009', 'Mandalay', 'Oral', 'AA', 'tintin@gmail.com', 'tintinnwe.pdf', '-', '118', 'tintinnwe.jpg', 'Daw Pwint Phyu', '9.11.2009', '-', 'Tin Tin Nwe', '-', '7.6.2009', '11.7.2009', '19.8.2009');
INSERT INTO `thesis` VALUES ('119', '119', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `thesis` VALUES ('009', '001', 'Applying Genetic Neural Network In Case Analysis Of Police Office', 'Dr. Win Aye', '2010', 'Applying Genetic Neural Network In Case Analysis Of Police Office', '22/1/2017', 'Yangon', 'Oral', 'AI', 'koko@gmail.com', 'C:UsersE5-475GDesktopPaperpdfkhinthandaraung.pdf', 'hdjdmdhdjd', '030', 'C:UsersE5-475GDesktopmasterpictureAung Thu Kyaw.JPG', 'myo myo', '2017-10-31', '2017-10-31', 'Aung Aung', 'Kaung Kaung', '2018-08-01', '2017-09-30', '2017-10-31');

-- ----------------------------
-- Table structure for timetable
-- ----------------------------
DROP TABLE IF EXISTS `timetable`;
CREATE TABLE `timetable` (
  `Timetable_ID` varchar(8) NOT NULL DEFAULT '',
  `Term_ID` varchar(10) NOT NULL,
  `Period` int(5) NOT NULL,
  `Start_Time` varchar(10) NOT NULL,
  `End_Time` varchar(10) NOT NULL,
  `Day` varchar(10) NOT NULL,
  `Sr_No` int(3) NOT NULL,
  `Sub_ID` int(8) NOT NULL,
  `Year_ID` varchar(8) NOT NULL,
  `Section_ID` varchar(8) NOT NULL,
  `Room_ID` varchar(10) NOT NULL,
  `Major_ID` varchar(8) NOT NULL,
  `Academic_Year_ID` varchar(8) NOT NULL,
  PRIMARY KEY (`Timetable_ID`),
  KEY `Term_ID` (`Term_ID`),
  KEY `Sr_No` (`Sr_No`),
  KEY `Subject_ID` (`Sub_ID`),
  KEY `Year_ID` (`Year_ID`),
  KEY `Section_ID` (`Section_ID`),
  KEY `Room_ID` (`Room_ID`),
  KEY `Academic_Year_ID` (`Academic_Year_ID`),
  KEY `Major_ID` (`Major_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of timetable
-- ----------------------------
INSERT INTO `timetable` VALUES ('', '', '0', '', '', '', '104', '45', '3', '21', '', '', '');
INSERT INTO `timetable` VALUES (' T1', '1', '1', '9:00 am', '9:45 am', 'Monday', '103', '9', '1', '1', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T10', '1', '3', '10:40 am', '11:25 am', 'Tuesday', '195', '8', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T100', '1', '2', '9:50 am', '10:35 am', 'Friday', '229', '18', '2', '5', 'MachineD', '2', '05');
INSERT INTO `timetable` VALUES ('T10077', '', '0', '', '', '', '116', '22', '2', '6', '', '', '');
INSERT INTO `timetable` VALUES ('T101', '1', '3', '10:40 am', '11:25 am', 'Friday', '191', '16', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T102', '1', '4', '11:30 am', '12:15 pm', 'Friday', '191', '16', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T103', '1', '5', '1:15 pm', '2:00 pm', 'Friday', '203', '14', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T104', '1', '6', '2:05 pm', '2:50 pm', 'Friday', '104', '19', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T105', '1', '7', '2:05 pm', '3:40 pm', 'Friday', '104', '19', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T106', '1', '1', '9:00 am', '9:45 am', 'Monday', '104', '28', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T107', '1', '2', '9:50 am', '10:35 am', 'Monday', '104', '28', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T108', '1', '3', '10:40 am', '11:25 am', 'Monday', '202', '14', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T109', '1', '4', '11:30 am', '12:15 pm', 'Monday', '202', '14', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T11', '1', '4', '11:30 am', '12:15 pm', 'Tuesday', '195', '8', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T110', '1', '5', '1:15 pm', '2:00 pm', 'Monday', '229', '18', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T111', '1', '6', '2:05 pm', '2:50 pm', 'Monday', '229', '18', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T112', '1', '7', '2:55 pm', '3:40 pm', 'Monday', '110', '17', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T113', '1', '1', '9:00 am', '9:45 am', 'Tuesday', '161', '28', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T114', '1', '2', '9:50 am', '10:35 am', 'Tuesday', '161', '28', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T115', '1', '3', '10:40 am', '11:25 am', 'Tuesday', '191', '16', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T116', '1', '4', '11:30 am', '12:15 am', 'Tuesday', '191', '16', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T117', '1', '5', '1:15 pm', '2:00 pm', 'Tuesday', '104', '27', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T118', '1', '6', '2:05 pm', '2:50 pm', 'Tuesday', '136', '15', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T119', '1', '7', '2:55 pm', '3:40 pm', 'Tuesday', '136', '15', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T12', '1', '5', '1:15 pm', '2:00 pm', 'Tuesday', '103', '9', '1', '1', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T120', '1', '1', '9:00 am', '9:45 am', 'Wednesday', '161', '28', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T121', '1', '2', '9:50 am', '10:35 am', 'Wednesday', '161', '28', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T122', '1', '3', '10:40 am', '11:25 am', 'Wednesday', '229', '18', '2', '21', 'R102', '3', '05');
INSERT INTO `timetable` VALUES ('T123', '1', '4', '11:30 am', '12:15 pm', 'Wednesday', '229', '18', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T124', '1', '5', '1:15 pm', '2:00 pm', 'Wednesday', '136', '15', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T125', '1', '6', '2:05 pm', '2:50 pm', 'Wednesday', '136', '15', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T126', '1', '7', '2:55 pm', '3:40 pm', 'Wednesday', '110', '17', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T127', '1', '1', '9:00 am', '9:45 am', 'Thursday', '202', '14', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T128', '1', '2', '9:50 am', '10:35 am', 'Thursday', '136', '15', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T129', '1', '3', '10:40 am', '11:25 am', 'Thursday', '104', '27', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T13', '1', '6', '2:05 pm', '2:50 pm', 'Tuesday', '103', '9', '1', '1', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T130', '1', '4', '11:30 am', '12:15 pm', 'Thursday', '104', '27', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T131', '1', '5', '1:15 pm', '2:00 pm', 'Thursday', '161', '28', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T132', '1', '6', '2:05 pm', '2:50 pm', 'Thursday', '191', '16', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T133', '1', '7', '2:55 pm', '3:40 pm', 'Thursday', '191', '16', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T134', '1', '1', '9:00 am', '9:45 am', 'Friday', '229', '18', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T135', '1', '2', '9:50 am', '10:35 am', 'Friday', '229', '18', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T136', '1', '3', '10:40 am', '11:25 am', 'Friday', '110', '17', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T137', '1', '4', '11:30 am', '12:15 pm', 'Friday', '110', '17', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T138', '1', '5', '1:15 pm', '2:00 pm', 'Friday', '191', '16', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T139', '1', '6', '2:05 pm', '2:50 pm', 'Friday', '202', '14', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T14', '1', '7', '2:55 pm', '3:40 pm', 'Tuesday', '237', '6', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T140', '1', '7', '2:55 pm', '3:40 pm', 'Friday', '202', '14', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T141', '2', '1', '9:00 am', '9:45 am', 'Monday', '199', '4', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T142', '2', '2', '9:50 am', '10:35 am', 'Monday', '199', '4', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T143', '2', '3', '10:40 am', '11:25 am', 'Monday', '195', '8', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T144', '2', '4', '11:30 am', '12:15 pm', 'Monday', '172', '11', '1', '1', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T145', '2', '5', '1:15 pm', '2:00 pm', 'Monday', '120', '1', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T146', '2', '6', '2:05 pm', '2:50 pm', 'Monday', '172', '11', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T147', '2', '7', '2:55 pm', '3:40 pm', 'Monday', '172', '11', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T148', '2', '1', '9:00 am', '9:45 am', 'Tuesday', '121', '2', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T149', '2', '2', '9:50 am', '10:35 am', 'Tuesday', '122', '3', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T15', '1', '1', '9:00 am', '9:45 am', 'Wednesday', '156', '7', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T150', '2', '3', '10:40 am', '11:25 am', 'Tuesday', '195', '8', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T151', '2', '4', '11:30 am', '12:15 pm', 'Tuesday', '195', '8', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T152', '2', '5', '1:15 pm', '2:00 pm', 'Tuesday', '236', '6', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T153', '2', '6', '2:05 pm', '2:50 pm', 'Tuesday', '236', '6', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T154', '2', '7', '2:55 pm', '3:40 pm', 'Tuesday', '156', '13', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T155', '2', '1', '9:00 am', '9:45 am', 'Wednesday', '172', '11', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T156', '2', '2', '9:50 am', '10:35 am', 'Wednesday', '172', '11', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T157', '2', '3', '10:40 am', '11:25 am', 'Wednesday', '156', '13', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T158', '2', '4', '11:30 am', '12:15 pm', 'Wednesday', '156', '13', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T159', '2', '5', '1:15 pm', '2:00 pm', 'Wednesday', '236', '6', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T16', '1', '2', '9:50 am', '10:35 am', 'Wednesday', '156', '7', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T160', '2', '6', '2:05 pm', '2:50 pm', 'Wednesday', '236', '6', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T161', '2', '7', '2:55 pm', '3:40 pm', 'Wednesday', '199', '5', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T162', '2', '1', '9:00 am', '9:45 am', 'Thursday', '236', '6', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T163', '2', '2', '9:50 am', '10:35 am', 'Thursday', '236', '6', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T164', '2', '3', '10:40 am', '11:25 am', 'Thursday', '134', '12', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T165', '2', '4', '11:30 am', '12:15 pm', 'Thursday', '134', '12', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T166', '2', '5', '1:15 pm', '2:00 pm', 'Thursday', '156', '13', '1', '1', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T167', '2', '6', '2:05 pm', '2:50 pm', 'Thursday', '156', '13', '1', '1', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T168', '2', '7', '2:55 pm', '3:40 pm', 'Thursday', '156', '13', '1', '1', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T169', '2', '1', '9:00 am', '9:45 am', 'Friday', '195', '8', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T17', '1', '3', '10:40 am', '11:25 am', 'Wednesday', '103', '9', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T170', '2', '2', '9:50 am', '10:35 am', 'Friday', '195', '8', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T171', '2', '3', '10:40 am', '11:25 am', 'Friday', '199', '5', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T172', '2', '4', '11:30 am', '12:15 pm', 'Friday', '199', '5', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T173', '2', '5', '1:15 pm', '2:00 pm', 'Friday', '134', '12', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T174', '2', '6', '2:05 pm', '2:50 pm', 'Friday', '156', '13', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T175', '2', '7', '2:55 pm', '3:40 pm', 'Friday', '156', '13', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T176', '2', '1', '9:00 am', '9:45 am', 'Monday', '240', '6', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T177', '2', '2', '9:50 am', '10:35 am', 'Monday', '240', '6', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T178', '2', '3', '10:40 am', '11:25 am', 'Monday', '166', '11', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T179', '2', '4', '11:30 am', '12:15 pm', 'Monday', '166', '11', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T18', '1', '4', '10:40 am', '11:25 am', 'Wednesday', '103', '9', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T180', '2', '5', '1:15 pm', '2:00 pm', 'Monday', '206', '4', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T181', '2', '6', '2:05 pm', '2:50 pm', 'Monday', '206', '4', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T182', '2', '7', '2:55 pm', '3:40 pm', 'Monday', '120', '1', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T183', '2', '1', '9:00 am', '9:45 am', 'Tuesday', '140', '13', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T184', '2', '2', '9:50 am', '10:35 am', 'Tuesday', '140', '13', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T185', '2', '3', '10:40 am', '11:25 am', 'Tuesday', '124', '12', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T186', '2', '4', '11:30 am', '12:15 pm', 'Tuesday', '166', '11', '1', '2', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T187', '2', '5', '1:15 pm', '2:00 pm', 'Tuesday', '206', '5', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T188', '2', '6', '2:05 pm', '2:50 pm', 'Tuesday', '206', '5', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T189', '2', '7', '2:55 pm', '3:40 pm', 'Tuesday', '240', '6', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T19', '1', '5', '1:15 pm', '2:00 pm', 'Wednesday', '226', '10', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T190', '2', '1', '9:00 am', '9:45 am', 'Wednesday', '121', '2', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T191', '2', '2', '9:50 am', '10:35 am', 'Wednesday', '122', '3', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T192', '2', '3', '10:40 am', '11:25 am', 'Wednesday', '124', '12', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T193', '2', '4', '11:30 am', '12:15 pm', 'Wednesday', '124', '12', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T194', '2', '5', '1:15 pm', '2:00 pm', 'Wednesday', '140', '13', '1', '2', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T195', '2', '6', '2:05 pm', '2:50 pm', 'Wednesday', '140', '13', '1', '2', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T196', '2', '7', '2:55 pm', '3:40 pm', 'Wednesday', '140', '13', '1', '2', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T197', '2', '1', '9:00 am', '9:45 am', 'Thursday', '186', '8', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T198', '2', '2', '9:50 am', '10:35 am', 'Thursday', '186', '8', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T199', '2', '3', '10:40 am', '11:25 am', 'Thursday', '124', '12', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T2', '1', '2', '9:50 am', '10:35 am', 'Monday', '103', '9', '1', '1', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T20', '1', '6', '2:05 pm', '2:50 pm', 'Wednesday', '199', '5', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T200', '2', '4', '11:30 am', '12:15 pm', 'Thursday', '124', '12', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T201', '2', '5', '1:15 pm', '2:00 pm', 'Thursday', '206', '4', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T202', '2', '6', '2:05 pm', '2:50 pm', 'Thursday', '166', '11', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T203', '2', '7', '2:55 pm', '3:40 pm', 'Thursday', '166', '11', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T204', '2', '1', '9:00 am', '9:45 am', 'Friday', '186', '8', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T205', '2', '2', '9:50 am', '10:35 am', 'Friday', '186', '8', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T206', '2', '3', '10:40 am', '11:25 am', 'Friday', '140', '13', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T207', '2', '4', '11:30 am', '12:15 pm', 'Friday', '140', '13', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T208', '2', '5', '1:15 pm', '2:00 pm', 'Friday', '186', '8', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T209', '2', '6', '2:05 pm', '2:50 pm', 'Friday', '240', '6', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T21', '1', '7', '2:55 pm', '3:40 pm', 'Wednesday', '199', '5', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T210', '2', '7', '2:55 pm', '3:40 pm', 'Friday', '240', '6', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T211', '2', '1', '9:00 am', '9:45 am', 'Monday', '139', '23', '2', '5', 'Machine_D', '2', '05');
INSERT INTO `timetable` VALUES ('T212', '2', '2', '9:50 am', '10:35 am', 'Monday', '139', '23', '2', '5', 'Machine_D', '2', '05');
INSERT INTO `timetable` VALUES ('T213', '2', '3', '10:40 am', '11:25 am', 'Monday', '190', '16', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T214', '2', '4', '11:30 am', '12:15 pm', 'Monday', '190', '16', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T215', '2', '5', '1:15 pm', '2:00 pm', 'Monday', '149', '24', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T216', '2', '6', '2:05 pm', '2:50 pm', 'Monday', '149', '24', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T217', '2', '7', '2:55 pm', '3:40 pm', 'Monday', '149', '25', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T218', '2', '1', '9:00 am', '9:45 am', 'Tuesday', '203', '14', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T219', '2', '2', '9:50 am', '10:35 am', 'Tuesday', '203', '14', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T22', '1', '1', '9:00 am', '9:45 am', 'Thursday', '237', '6', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T220', '2', '3', '10:40 am', '11:25 am', 'Tuesday', '218', '25', '2', '5', 'Machine_D', '2', '05');
INSERT INTO `timetable` VALUES ('T221', '2', '4', '11:30 am', '12:15 pm', 'Tuesday', '218', '25', '2', '5', 'Machine_D', '2', '05');
INSERT INTO `timetable` VALUES ('T222', '2', '5', '1:15 pm', '2:00 pm', 'Tuesday', '149', '24', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T2222', '', '0', '', '', '', '116', '2', '1', '1', '', '', '');
INSERT INTO `timetable` VALUES ('T223', '2', '6', '2:05 pm', '2:50 pm', 'Tuesday', '191', '16', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T224', '2', '7', '2:55 pm', '3:40 pm', 'Tuesday', '191', '16', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T225', '2', '1', '9:00 am', '9:45 am', 'Wednesday', '104', '20', '2', '5', 'Machine_D', '2', '05');
INSERT INTO `timetable` VALUES ('T226', '2', '2', '9:50 am', '10:35 am', 'Wednesday', '104', '20', '2', '5', 'Machine_D', '2', '05');
INSERT INTO `timetable` VALUES ('T227', '2', '3', '10:40 am', '11:25 am', 'Wednesday', '149', '24', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T228', '2', '4', '11:30 am', '12:15 pm', 'Wednesday', '149', '24', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T229', '2', '5', '1:15 pm', '2:00 pm', 'Wednesday', '230', '22', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T23', '1', '2', '9:50 am', '10:35 am', 'Thursday', '237', '6', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T230', '2', '6', '2:05 pm', '2:50 pm', 'Wednesday', '139', '23', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T231', '2', '7', '2:55 pm', '3:40 pm', 'Wednesday', '139', '23', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T232', '2', '1', '9:00 am', '9:45 am', 'Thursday', '139', '23', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T233', '2', '2', '9:50 am', '10:35 am', 'Thursday', '139', '23', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T234', '2', '3', '10:40 am', '11:25 am', 'Thursday', '218', '25', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T235', '2', '4', '11:30 am', '12:15 pm', 'Thursday', '218', '25', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T236', '2', '5', '1:15 pm', '2:00 pm', 'Thursday', '104', '26', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T237', '2', '6', '2:05 pm', '2:50 pm', 'Thursday', '104', '26', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T238', '2', '7', '2:55 pm', '3:40 pm', 'Thursday', '203', '14', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T239', '2', '1', '9:00 am', '9:45 am', 'Friday', '224', '21', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T24', '1', '3', '10:40 am', '11:25 am', 'Thursday', '199', '4', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T240', '2', '2', '9:50 am', '10:35 am', 'Friday', '224', '21', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T241', '2', '3', '10:40 am', '11:25 am', 'Friday', '203', '14', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T242', '2', '4', '11:30 am', '12:15 pm', 'Friday', '203', '14', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T243', '2', '5', '1:15 pm', '2:00 pm', 'Friday', '191', '16', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T244', '2', '6', '2:05 pm', '2:50 pm', 'Friday', '230', '22', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T245', '2', '7', '2:55 pm', '3:40 pm', 'Friday', '104', '20', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T246', '2', '1', '9:00 am', '9:45 am', 'Monday', '190', '16', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T247', '2', '2', '9:50 am', '10:35 am', 'Monday', '190', '16', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T248', '2', '3', '10:40 am', '11:25 am', 'Monday', '171', '31', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T249', '2', '4', '11:30 am', '12:15 pm', 'Monday', '171', '31', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T25', '1', '4', '11:30 am', '12:15 pm', 'Thursday', '199', '4', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T250', '2', '5', '1:15 pm', '2:00 pm', 'Monday', '230', '30', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T251', '2', '6', '2:05 pm', '2:50 pm', 'Monday', '230', '30', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T252', '2', '7', '2:55 pm', '3:40 pm', 'Monday', '207', '14', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T253', '2', '1', '9:00 am', '9:45 am', 'Tuesday', '130', '29', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T254', '2', '2', '9:50 am', '10:35 am', 'Tuesday', '130', '29', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T255', '2', '3', '10:40 am', '11:25 am', 'Tuesday', '161', '28', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T256', '2', '4', '11:30 am', '12:15 pm', 'Tuesday', '230', '30', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T257', '2', '5', '1:15 pm', '2:00 pm', 'Tuesday', '133', '23', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T258', '2', '6', '2:05 pm', '2:50 pm', 'Tuesday', '133', '23', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T259', '2', '7', '2:55 pm', '3:40 pm', 'Tuesday', '193', '16', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T26', '1', '5', '1:15 pm', '2:00 pm', 'Thursday', '195', '8', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T260', '2', '1', '9:00 am', '9:45 am', 'Wednesday', '161', '28', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T261', '2', '2', '9:50 am', '10:35 am', 'Wednesday', '161', '28', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T262', '2', '3', '10:40 am', '11:25 am', 'Wednesday', '207', '14', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T263', '2', '4', '11:30 am', '12:15 pm', 'Wednesday', '207', '14', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T264', '2', '5', '1:15 pm', '2:00 pm', 'Wednesday', '133', '23', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T265', '2', '6', '2:05 pm', '2:50 pm', 'Wednesday', '133', '23', '2', '21', 'Machine_D', '3', '05');
INSERT INTO `timetable` VALUES ('T266', '2', '7', '2:55 pm', '3:40 pm', 'Wednesday', '130', '29', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T267', '2', '1', '9:00 am', '9:45 am', 'Thursday', '230', '30', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T268', '2', '2', '9:50 am', '10:35 am', 'Thursday', '133', '23', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T269', '2', '3', '10:40 am', '11:25 am', 'Thursday', '161', '28', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T27', '1', '6', '2:05 pm', '2:50 pm', 'Thursday', '156', '7', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T270', '2', '4', '11:30 am', '12:15 pm', 'Thursday', '161', '28', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T271', '2', '5', '1:15 pm', '2:00 pm', 'Thursday', '207', '14', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T272', '2', '6', '2:05 pm', '2:50 pm', 'Thursday', '207', '14', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T273', '2', '7', '2:55 pm', '3:40 pm', 'Thursday', '171', '31', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T274', '2', '1', '9:00 am', '9:45 am', 'Friday', '193', '16', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T275', '2', '2', '9:50 am', '10:35 am', 'Friday', '193', '16', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T276', '2', '3', '10:40 am', '11:25 am', 'Friday', '130', '29', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T277', '2', '4', '11:30 am', '12:15 pm', 'Friday', '130', '29', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T278', '2', '5', '1:15 pm', '2:00 pm', 'Friday', '230', '30', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T279', '2', '6', '2:05 pm', '2:50 pm', 'Friday', '171', '31', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T28', '1', '7', '2:55 pm', '3:40 pm', 'Thursday', '122', '3', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T280', '2', '7', '2:55 pm', '3:40 pm', 'Friday', '171', '31', '2', '21', 'R103', '3', '05');
INSERT INTO `timetable` VALUES ('T29', '1', '1', '9:00 am', '9:45 am', 'Friday', '195', '8', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T3', '1', '3', '10:40 am', '11:25 am', 'Monday', '226', '10', '1', '11', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T30', '1', '2', '9:50 am', '10:35 am', 'Friday', '195', '8', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T31', '1', '3', '10:40 am', '11:25 am', 'Friday', '237', '6', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T32', '1', '4', '11:30 am', '12:15 pm', 'Friday', '237', '6', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T33', '1', '5', '1:15 pm', '2:00 pm', 'Friday', '103', '9', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T34', '1', '6', '2:05 pm', '2:50 pm', 'Friday', '226', '10', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T35', '1', '7', '2:55 pm', '3:40 pm', 'Friday', '226', '10', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T36', '1', '1', '9:00 am', '9:45 am', 'Monday', '195', '8', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T37', '1', '2', '9:50 am', '10:35 am', 'Monday', '195', '8', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T38', '1', '3', '10:40 am', '11:25 am', 'Monday', '206', '4', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T39', '1', '4', '11:30 am', '12:15 pm', 'Monday', '206', '5', '1', '2', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T4', '1', '4', '11:30 am', '12:15 pm', 'Monday', '226', '10', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T40', '1', '5', '1:15 pm', '2:00 pm', 'Monday', '108', '9', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T41', '1', '6', '2:05 pm', '2:50 pm', 'Monday', '162', '7', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T42', '1', '7', '2:55 pm', '3:40 pm', 'Monday', '162', '7', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T43', '1', '1', '9:00 am', '9:45 am', 'Tuesday', '108', '9', '1', '2', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T44', '1', '2', '9:50 am', '10:35 am', 'Tuesday', '108', '9', '1', '2', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T45', '1', '3', '10:40 am', '11:25 am', 'Tuesday', '102', '10', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T46', '1', '4', '11:30 am', '12:15 pm', 'Tuesday', '102', '10', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T47', '1', '5', '1:15 pm', '2:00 pm', 'Tuesday', '195', '8', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T48', '1', '6', '2:05 pm', '2:50 pm', 'Tuesday', '145', '6', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T49', '1', '7', '2:55 pm', '3:40 pm', 'Tuesday', '145', '6', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T5', '1', '5', '1:15 pm', '2:00 pm', 'Monday', '199', '4', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T50', '1', '1', '9:00 am', '9:45 am', 'Wednesday', '120', '1', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T51', '1', '2', '9:50 am', '10:35 am', 'Wednesday', '121', '2', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T52', '1', '3', '10:40 am', '11:25 am', 'Wednesday', '162', '7', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T53', '1', '4', '11:30 am', '12:15 pm', 'Wednesday', '162', '7', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T54', '1', '5', '1:15 pm', '2:00 pm', 'Wednesday', '108', '9', '1', '2', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T55', '1', '6', '2:05 pm', '2:50 pm', 'Wednesday', '108', '9', '1', '2', 'Machine_H', '1', '05');
INSERT INTO `timetable` VALUES ('T56', '1', '7', '2:55 pm', '3:40 pm', 'Wednesday', '122', '3', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T57', '1', '1', '9:00 am', '9:45 am', 'Thursday', '206', '4', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T58', '1', '2', '9:50 am', '10:35 am', 'Thursday', '206', '4', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T59', '1', '3', '10:40 am', '11:25 am', 'Thursday', '145', '6', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T6', '1', '6', '2:05 pm', '2:50 am', 'Monday', '156', '7', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T60', '1', '4', '11:30 am', '12:15 pm', 'Thursday', '145', '6', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T61', '1', '5', '1:15 pm', '2:00 pm', 'Thursday', '162', '7', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T62', '1', '6', '2:05 pm', '2:50 pm', 'Thursday', '195', '8', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T63', '1', '7', '2:55 pm', '3:40 pm', 'Thursday', '195', '8', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T64', '1', '1', '9:00 am', '9:45 am', 'Friday', '108', '9', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T65', '1', '2', '9:50 am', '10:35 am', 'Friday', '108', '9', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T66', '1', '3', '10:40 am', '11:25 am', 'Friday', '206', '5', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T67', '1', '4', '11:30 am', '12:15 pm', 'Friday', '102', '10', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T68', '1', '5', '1:15 pm', '2:00 pm', 'Friday', '145', '6', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T69', '1', '6', '2:05 pm', '2:50 pm', 'Friday', '102', '10', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T7', '1', '7', '2:55 pm', '3:40 pm', 'Monday', '156', '7', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T70', '1', '7', '2:55 pm', '3:40 pm', 'Friday', '102', '10', '1', '2', 'R101', '1', '05');
INSERT INTO `timetable` VALUES ('T71', '1', '1', '9:00 am', '9:45 am', 'Monday', '144', '15', '2', '5', 'Machine_D', '2', '05');
INSERT INTO `timetable` VALUES ('T72', '1', '2', '9:50 am', '10:35 am', 'Monday', '144', '15', '2', '5', 'Machine_D', '2', '05');
INSERT INTO `timetable` VALUES ('T73', '1', '3', '10:40 am', '11:25 am', 'Monday', '191', '16', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T74', '1', '4', '11:30 am', '12:15 pm', 'Monday', '191', '16', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T75', '1', '5', '1:15 pm', '2:00 pm', 'Monday', '166', '17', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T76', '1', '6', '2:05 pm', '2:50 pm', 'Monday', '203', '14', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T77', '1', '7', '2:55 pm', '3:40 pm', 'Monday', '203', '14', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T78', '1', '1', '9:00 am', '9:45 am', 'Tuesday', '224', '21', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T79', '1', '2', '9:50 am', '10:35 am', 'Tuesday', '224', '21', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T8', '1', '1', '9:00 am', '9:45 am', 'Tuesday', '120', '1', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T80', '1', '3', '10:40 am', '11:25 am', 'Tuesday', '144', '15', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T81', '1', '4', '11:30 am', '12:15 pm', 'Tuesday', '144', '15', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T82', '1', '5', '1:15 pm', '2:00 pm', 'Tuesday', '107', '20', '2', '5', 'Machine_D', '2', '05');
INSERT INTO `timetable` VALUES ('T83', '1', '6', '2:05 pm', '2:50 pm', 'Tuesday', '107', '20', '2', '5', 'Machine_D', '2', '05');
INSERT INTO `timetable` VALUES ('T84', '1', '7', '2:55 pm', '3:40 pm', 'Tuesday', '229', '18', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T85', '1', '1', '9:00 am', '9:45 am', 'Wednesday', '166', '17', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T86', '1', '2', '9:50 am', '10:35 am', 'Wednesday', '166', '17', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T87', '1', '3', '10:40 am', '11:25 am', 'Wednesday', '203', '14', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T88', '1', '4', '11:30 am', '12:15 pm', 'Wednesday', '203', '14', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T89', '1', '5', '1:15 pm', '2:00 pm', 'Wednesday', '224', '22', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T9', '1', '2', '9:50 am', '10:35 am', 'Tuesday', '121', '2', '1', '1', 'R100', '1', '05');
INSERT INTO `timetable` VALUES ('T90', '1', '6', '2:05 pm', '2:50 pm', 'Wednesday', '107', '20', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T91', '1', '7', '2:55 pm', '3:40 pm', 'Wednesday', '191', '16', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T92', '1', '1', '9:00 am', '9:45 am', 'Thursday', '229', '18', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T93', '1', '2', '9:50 am', '10:35 am', 'Thursday', '229', '18', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T94', '1', '3', '10:40 am', '11:25 am', 'Thursday', '166', '17', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T95', '1', '4', '11:30 am', '12:15 pm', 'Thursday', '166', '17', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T96', '1', '5', '1:15 pm', '2:00 pm', 'Thursday', '224', '22', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T97', '1', '6', '2:05 pm', '2:50 pm', 'Thursday', '144', '15', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T98', '1', '7', '2:55 pm', '3:40 pm', 'Thursday', '144', '15', '2', '5', 'R102', '2', '05');
INSERT INTO `timetable` VALUES ('T99', '1', '1', '9:00 am', '9:45 am', 'Friday', '229', '18', '2', '5', 'Machine_D', '2', '05');

-- ----------------------------
-- Table structure for town
-- ----------------------------
DROP TABLE IF EXISTS `town`;
CREATE TABLE `town` (
  `TownID` varchar(8) NOT NULL,
  `Name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`TownID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of town
-- ----------------------------
INSERT INTO `town` VALUES ('1', 'Mandalay');
INSERT INTO `town` VALUES ('2', 'SinKaing');
INSERT INTO `town` VALUES ('3', 'Kyautse');
INSERT INTO `town` VALUES ('4', 'Myittar');
INSERT INTO `town` VALUES ('5', 'Sagaing');

-- ----------------------------
-- Table structure for training
-- ----------------------------
DROP TABLE IF EXISTS `training`;
CREATE TABLE `training` (
  `Tran_ID` varchar(5) NOT NULL,
  `Teacher_ID` varchar(10) DEFAULT NULL,
  `Uni_Name` varchar(30) DEFAULT NULL,
  `Location` varchar(30) DEFAULT NULL,
  `Tran_Name` varchar(25) DEFAULT NULL,
  `Duration` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Tran_ID`),
  FULLTEXT KEY `Foreign` (`Teacher_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of training
-- ----------------------------
INSERT INTO `training` VALUES ('T_103', 'MOST_103', null, null, 'Ph.D(IT)', null);
INSERT INTO `training` VALUES ('T_108', 'MOST_108', null, null, 'Ph.D(IT)', null);
INSERT INTO `training` VALUES ('T_124', 'MOST_124', null, null, 'PGDSD', null);
INSERT INTO `training` VALUES ('T_125', 'MOST_125', null, null, 'PGDSD', null);
INSERT INTO `training` VALUES ('T_126', 'MOST_126', null, null, 'PGDSD', null);
INSERT INTO `training` VALUES ('T_127', 'MOST_127', null, null, 'PGDSD', null);
INSERT INTO `training` VALUES ('T_130', 'MOST_130', null, null, 'PGDSD', null);
INSERT INTO `training` VALUES ('T_157', 'MOST_157', null, null, 'ICTTI', null);
INSERT INTO `training` VALUES ('T_158', 'MOST_158', null, null, 'ICTTI', null);
INSERT INTO `training` VALUES ('T_159', 'MOST_159', null, null, 'ICTTI', null);
INSERT INTO `training` VALUES ('T_161', 'MOST_161', null, null, 'ICTTI', null);
INSERT INTO `training` VALUES ('T_162', 'MOST_162', null, null, 'ICTTI', null);
INSERT INTO `training` VALUES ('T_163', 'MOST_163', null, null, 'ICTTI', null);
INSERT INTO `training` VALUES ('T_164', 'MOST_164', null, null, 'ICTTI', null);
INSERT INTO `training` VALUES ('T_179', 'MOST_179', null, null, 'Ph.D(Mathematics)', null);
INSERT INTO `training` VALUES ('T_186', 'MOST_186', null, null, 'Ph.D(Mathematics)', null);
INSERT INTO `training` VALUES ('T_208', 'MOST_208', null, null, 'IMCEITS', null);
INSERT INTO `training` VALUES ('T_209', 'MOST_209', null, null, 'IMCEITS', null);
INSERT INTO `training` VALUES ('T_210', 'MOST_210', null, null, 'IMCEITS', null);
INSERT INTO `training` VALUES ('T_211', 'MOST_211', null, null, 'IMCEITS', null);
INSERT INTO `training` VALUES ('T_216', 'MOST_216', null, null, 'IMCEITS', null);
INSERT INTO `training` VALUES ('T_226', 'MOST_226', null, null, 'IMCEITS', null);
INSERT INTO `training` VALUES ('T_236', 'MOST_236', null, null, 'Ph.D(Physics)', null);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `Type_ID` varchar(10) NOT NULL,
  `Type_Name` varchar(20) NOT NULL,
  `Remark` varchar(60) DEFAULT NULL,
  `Date` varchar(10) NOT NULL,
  PRIMARY KEY (`Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('T_001', 'Football', null, '1.2.2017');
INSERT INTO `type` VALUES ('T_002', 'Table Tennis', null, '30.6.2017');
INSERT INTO `type` VALUES ('T_003', 'Basketball', null, '15.5.2017');
INSERT INTO `type` VALUES ('T_004', 'Fresher Welcome', null, '12.1.2017');
INSERT INTO `type` VALUES ('T_005', 'Programming', null, '1.3.2017');
INSERT INTO `type` VALUES ('T_006', 'E-speaking', null, '14.7.2017');
INSERT INTO `type` VALUES ('T_007', 'Debate', null, '30.5.2017');
INSERT INTO `type` VALUES ('T_008', 'Water Festival', null, '7.3.2017');
INSERT INTO `type` VALUES ('T_010', 'Warso', null, '11.7.2017');
INSERT INTO `type` VALUES ('T_011', 'Fareware', null, '21.8.2017');
INSERT INTO `type` VALUES ('T_012', 'Arsaria Puzaw Pwae', null, '16.8.2017');
INSERT INTO `type` VALUES ('T_013', 'Graduation ceremony', null, '19.2.2017');

-- ----------------------------
-- Table structure for virtualtable
-- ----------------------------
DROP TABLE IF EXISTS `virtualtable`;
CREATE TABLE `virtualtable` (
  `Code` int(11) DEFAULT NULL,
  `Date` int(11) DEFAULT NULL,
  `Attendance_Times` int(11) NOT NULL DEFAULT '0',
  `Attendance_Percentage` int(11) DEFAULT NULL,
  `Month` varchar(30) DEFAULT NULL,
  `TotalTime` int(11) NOT NULL DEFAULT '0',
  `Year` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=144;

-- ----------------------------
-- Records of virtualtable
-- ----------------------------
INSERT INTO `virtualtable` VALUES (null, null, '0', null, '1', '142', '2017');
INSERT INTO `virtualtable` VALUES (null, null, '0', null, '2', '144', '2017');
INSERT INTO `virtualtable` VALUES (null, null, '0', null, '3', '138', '2017');
INSERT INTO `virtualtable` VALUES (null, null, '0', null, '4', '0', '2017');
INSERT INTO `virtualtable` VALUES (null, null, '0', null, '5', '0', '2017');
INSERT INTO `virtualtable` VALUES (null, null, '0', null, '6', '132', '2017');
INSERT INTO `virtualtable` VALUES (null, null, '0', null, '7', '140', '2017');
INSERT INTO `virtualtable` VALUES (null, null, '0', null, '8', '150', '2017');
INSERT INTO `virtualtable` VALUES (null, null, '0', null, '9', '144', '2017');
INSERT INTO `virtualtable` VALUES (null, null, '0', null, '10', '0', '2017');
INSERT INTO `virtualtable` VALUES (null, null, '0', null, '11', '0', '2017');
INSERT INTO `virtualtable` VALUES (null, null, '0', null, '0', '140', '2017');
INSERT INTO `virtualtable` VALUES ('5001', '7', '528', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5002', '7', '539', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5003', '7', '728', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5004', '7', '728', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5005', '7', '528', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5006', '7', '728', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5007', '7', '728', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5008', '7', '739', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5009', '7', '539', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5010', '7', '539', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5011', '7', '540', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5012', '7', '728', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5013', '7', '728', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5014', '7', '728', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5015', '7', '728', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5016', '7', '529', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5017', '7', '530', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5018', '7', '728', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5019', '7', '728', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5020', '7', '528', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5021', '7', '528', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5022', '7', '528', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5023', '7', '528', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5024', '7', '528', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5025', '7', '537', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5026', '7', '535', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5027', '7', '534', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5028', '7', '737', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5029', '7', '728', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5030', '7', '739', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5031', '7', '740', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5032', '7', '741', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5033', '7', '742', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5034', '7', '743', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5035', '7', '744', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5036', '7', '529', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5037', '7', '530', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5038', '7', '515', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5039', '7', '516', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5040', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5041', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5042', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5043', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5044', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5045', '7', '512', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5046', '7', '512', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5047', '7', '512', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5048', '7', '512', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5049', '7', '512', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5050', '7', '521', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5051', '7', '720', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5052', '7', '717', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5053', '7', '715', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5054', '7', '716', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5055', '7', '512', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5056', '7', '512', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5057', '7', '512', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5058', '7', '512', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5059', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5060', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5061', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5062', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5063', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5064', '7', '516', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5065', '7', '517', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5066', '7', '519', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5067', '7', '520', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5068', '7', '521', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5069', '7', '532', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5070', '7', '542', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5071', '7', '811', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5072', '7', '812', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5073', '7', '813', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5074', '7', '819', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5075', '7', '821', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5076', '7', '844', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5077', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5078', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5079', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5080', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5081', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5082', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5083', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5084', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5085', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5086', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5087', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5088', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5089', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5090', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5091', '7', '712', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5092', '7', '616', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5093', '7', '638', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5094', '7', '659', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5095', '7', '690', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5096', '7', '707', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5097', '7', '812', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5098', '7', '812', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5099', '7', '812', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('5100', '7', '812', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('4500', '7', '8', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('12', null, '0', null, null, '0', '0');
INSERT INTO `virtualtable` VALUES ('12', null, '0', null, null, '0', '0');

-- ----------------------------
-- Table structure for vtable
-- ----------------------------
DROP TABLE IF EXISTS `vtable`;
CREATE TABLE `vtable` (
  `Code` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Times` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=431;

-- ----------------------------
-- Records of vtable
-- ----------------------------
INSERT INTO `vtable` VALUES ('4500', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5001', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5002', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5003', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5004', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5005', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5006', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5007', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5008', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5009', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5010', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5011', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5012', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5013', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5014', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5015', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5016', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5017', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5018', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5019', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5020', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5021', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5022', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5023', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5024', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5025', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5026', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5027', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5028', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5029', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5030', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5031', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5032', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5033', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5034', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5035', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5036', '2017-07-13', '4');
INSERT INTO `vtable` VALUES ('5037', '2017-07-13', '4');

-- ----------------------------
-- Table structure for year
-- ----------------------------
DROP TABLE IF EXISTS `year`;
CREATE TABLE `year` (
  `Year_ID` varchar(8) NOT NULL,
  `Year` varchar(15) NOT NULL,
  PRIMARY KEY (`Year_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of year
-- ----------------------------
INSERT INTO `year` VALUES ('1', 'First Year');
INSERT INTO `year` VALUES ('2', 'Second Year');
INSERT INTO `year` VALUES ('3', 'Third Year');
INSERT INTO `year` VALUES ('4', 'Fourth Year');
INSERT INTO `year` VALUES ('5', 'Fifth Year');
INSERT INTO `year` VALUES ('6', 'Master');
SET FOREIGN_KEY_CHECKS=1;
