-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2024 at 09:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fep_bsu`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_subject`
--

CREATE TABLE `assigned_subject` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `S_time_id` int(11) NOT NULL,
  `E_time_id` int(11) NOT NULL,
  `day_id_2` int(11) NOT NULL,
  `S_time_id_2` int(11) NOT NULL,
  `E_time_id_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assigned_subject`
--

INSERT INTO `assigned_subject` (`id`, `subject_id`, `faculty_id`, `section_id`, `day_id`, `S_time_id`, `E_time_id`, `day_id_2`, `S_time_id_2`, `E_time_id_2`) VALUES
(17, 1, 1, 16, 1, 4, 7, 0, 0, 0),
(18, 52, 13, 1, 4, 1, 3, 0, 0, 0),
(19, 50, 5, 1, 4, 4, 6, 0, 0, 0),
(20, 1, 1, 37, 1, 1, 4, 0, 0, 0),
(21, 9, 12, 16, 1, 1, 3, 0, 0, 0),
(22, 10, 8, 16, 1, 8, 10, 2, 2, 3),
(23, 6, 11, 16, 1, 11, 12, 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `classroomcategories`
--

CREATE TABLE `classroomcategories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classroomcategories`
--

INSERT INTO `classroomcategories` (`id`, `categories`) VALUES
(21, 'CONTENT ORGANIZATION '),
(22, 'PRESENTATION'),
(23, 'INSTRUCTIONS/STUDENT INTERACTIONS '),
(24, 'INSTRUCTIONAL MATERIALS AND ENVIRONMENT '),
(25, 'CONTENT KNOWLEDGE AND RELEVANCE ');

-- --------------------------------------------------------

--
-- Table structure for table `classroomcriteria`
--

CREATE TABLE `classroomcriteria` (
  `id` int(11) NOT NULL,
  `classroomCategories` varchar(255) NOT NULL,
  `classroomCriteria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classroomcriteria`
--

INSERT INTO `classroomcriteria` (`id`, `classroomCategories`, `classroomCriteria`) VALUES
(64, 'DSADAS', 'dsfasdf'),
(65, 'SDF', 'dsfgsdfg'),
(68, 'CONTENT ORGANIZATION ', 'Made clear statement of the purpose of the lesson.'),
(69, 'CONTENT ORGANIZATION ', 'Define relationship of this lesson to previous lesson '),
(70, 'CONTENT ORGANIZATION ', 'Presented overview of the lesson '),
(71, 'CONTENT ORGANIZATION ', 'Presented topic with logical sequence '),
(72, 'CONTENT ORGANIZATION ', 'Paced lesson appropriately '),
(73, 'CONTENT ORGANIZATION ', 'Summarized major points of lesson '),
(74, 'CONTENT ORGANIZATION ', 'Responded to problems raised during lesson '),
(75, 'CONTENT ORGANIZATION ', 'Related today\'s lesson to future lessons '),
(76, 'PRESENTATION', 'Projected voice so easily heard '),
(77, 'PRESENTATION', 'Used intonation to vary emphasis '),
(78, 'PRESENTATION', 'Explain things with clarity '),
(79, 'PRESENTATION', 'Maintained eye contact with students '),
(80, 'PRESENTATION', 'Listen to student’s questions and comments '),
(81, 'PRESENTATION', 'Projected non-verbal gestures consistent with intentions '),
(82, 'PRESENTATION', 'Defined unfamiliar terms, concepts and principle '),
(83, 'PRESENTATION', 'Presented examples to clarify points'),
(84, 'PRESENTATION', 'Related important ideas to familiar concepts  '),
(85, 'PRESENTATION', 'Restated important ideas at appropriate times  '),
(86, 'PRESENTATION', 'varied explanation for complex and difficult material '),
(87, 'PRESENTATION', 'Used humor appropriately to strengthen retention and interest '),
(88, 'PRESENTATION', 'Limited use of repetitive phrases and hanging articles  '),
(89, 'INSTRUCTIONS/STUDENT INTERACTIONS ', 'Encourage student questions '),
(90, 'INSTRUCTIONS/STUDENT INTERACTIONS ', 'Encourage student discussion '),
(91, 'INSTRUCTIONS/STUDENT INTERACTIONS ', 'Maintained student attention '),
(92, 'INSTRUCTIONS/STUDENT INTERACTIONS ', 'Monitor student\'s progress '),
(93, 'INSTRUCTIONS/STUDENT INTERACTIONS ', 'Gave satisfactory answers to questions  '),
(94, 'INSTRUCTIONS/STUDENT INTERACTIONS ', 'Responded to nonverbal clues of confusion, boredom, and curiosity  '),
(95, 'INSTRUCTIONS/STUDENT INTERACTIONS ', 'Paced lesson to allow time for note taking '),
(96, 'INSTRUCTIONS/STUDENT INTERACTIONS ', 'Encourage students to answer difficult questions '),
(97, 'INSTRUCTIONS/STUDENT INTERACTIONS ', 'Asked probing questions when necessary '),
(98, 'INSTRUCTIONS/STUDENT INTERACTIONS ', 'Restated questions and answers when necessary '),
(99, 'INSTRUCTIONS/STUDENT INTERACTIONS ', 'Suggested questions of limited interest to be handled outside class '),
(100, 'INSTRUCTIONAL MATERIALS AND ENVIRONMENT ', 'Maintained adequate classroom facilities '),
(101, 'INSTRUCTIONAL MATERIALS AND ENVIRONMENT ', 'Prepared students for the lesson with appropriate assigned readings  '),
(102, 'INSTRUCTIONAL MATERIALS AND ENVIRONMENT ', 'Supported lesson with useful classroom discussion and exercises '),
(103, 'INSTRUCTIONAL MATERIALS AND ENVIRONMENT ', 'Presented helpful audio-visual material to support lesson organization and major points.  '),
(104, 'INSTRUCTIONAL MATERIALS AND ENVIRONMENT ', 'Provide relevant written assignments '),
(105, 'CONTENT KNOWLEDGE AND RELEVANCE ', 'Presented material worth knowing '),
(106, 'CONTENT KNOWLEDGE AND RELEVANCE ', 'Presented material appropriate to student knowledge and background '),
(107, 'CONTENT KNOWLEDGE AND RELEVANCE ', 'Cited authorities to support statements '),
(108, 'CONTENT KNOWLEDGE AND RELEVANCE ', 'Presented materials appropriate to stated purpose of the course '),
(109, 'CONTENT KNOWLEDGE AND RELEVANCE ', 'Made discussion between fact and opinion '),
(110, 'CONTENT KNOWLEDGE AND RELEVANCE ', 'Presented divergent viewpoints when appropriate '),
(111, 'CONTENT KNOWLEDGE AND RELEVANCE ', 'Demonstrate command of subject matter ');

-- --------------------------------------------------------

--
-- Table structure for table `classroomobservation`
--

CREATE TABLE `classroomobservation` (
  `id` int(11) NOT NULL,
  `toFacultyID` int(11) NOT NULL,
  `fromFacultyID` int(11) NOT NULL,
  `toFaculty` varchar(255) NOT NULL,
  `courseTitle` varchar(255) NOT NULL,
  `lengthOfCourse` varchar(255) NOT NULL,
  `lengthOfObservation` varchar(255) NOT NULL,
  `subjectMatter` text NOT NULL,
  `fromFaculty` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `doneStatus` int(11) NOT NULL,
  `DSADAS64` varchar(255) DEFAULT NULL,
  `SDF65` varchar(255) DEFAULT NULL,
  `commentCONTENTORGANIZATION21` varchar(255) DEFAULT NULL,
  `CONTENTORGANIZATION68` varchar(255) DEFAULT NULL,
  `CONTENTORGANIZATION69` varchar(255) DEFAULT NULL,
  `CONTENTORGANIZATION70` varchar(255) DEFAULT NULL,
  `CONTENTORGANIZATION71` varchar(255) DEFAULT NULL,
  `CONTENTORGANIZATION72` varchar(255) DEFAULT NULL,
  `CONTENTORGANIZATION73` varchar(255) DEFAULT NULL,
  `CONTENTORGANIZATION74` varchar(255) DEFAULT NULL,
  `CONTENTORGANIZATION75` varchar(255) DEFAULT NULL,
  `commentPRESENTATION22` varchar(255) DEFAULT NULL,
  `PRESENTATION76` varchar(255) DEFAULT NULL,
  `PRESENTATION77` varchar(255) DEFAULT NULL,
  `PRESENTATION78` varchar(255) DEFAULT NULL,
  `PRESENTATION79` varchar(255) DEFAULT NULL,
  `PRESENTATION80` varchar(255) DEFAULT NULL,
  `PRESENTATION81` varchar(255) DEFAULT NULL,
  `PRESENTATION82` varchar(255) DEFAULT NULL,
  `PRESENTATION83` varchar(255) DEFAULT NULL,
  `PRESENTATION84` varchar(255) DEFAULT NULL,
  `PRESENTATION85` varchar(255) DEFAULT NULL,
  `PRESENTATION86` varchar(255) DEFAULT NULL,
  `PRESENTATION87` varchar(255) DEFAULT NULL,
  `PRESENTATION88` varchar(255) DEFAULT NULL,
  `commentINSTRUCTIONSSTUDENTINTERACTIONS23` varchar(255) DEFAULT NULL,
  `INSTRUCTIONSSTUDENTINTERACTIONS89` varchar(255) DEFAULT NULL,
  `INSTRUCTIONSSTUDENTINTERACTIONS90` varchar(255) DEFAULT NULL,
  `INSTRUCTIONSSTUDENTINTERACTIONS91` varchar(255) DEFAULT NULL,
  `INSTRUCTIONSSTUDENTINTERACTIONS92` varchar(255) DEFAULT NULL,
  `INSTRUCTIONSSTUDENTINTERACTIONS93` varchar(255) DEFAULT NULL,
  `INSTRUCTIONSSTUDENTINTERACTIONS94` varchar(255) DEFAULT NULL,
  `INSTRUCTIONSSTUDENTINTERACTIONS95` varchar(255) DEFAULT NULL,
  `INSTRUCTIONSSTUDENTINTERACTIONS96` varchar(255) DEFAULT NULL,
  `INSTRUCTIONSSTUDENTINTERACTIONS97` varchar(255) DEFAULT NULL,
  `INSTRUCTIONSSTUDENTINTERACTIONS98` varchar(255) DEFAULT NULL,
  `INSTRUCTIONSSTUDENTINTERACTIONS99` varchar(255) DEFAULT NULL,
  `commentINSTRUCTIONALMATERIALSANDENVIRONMENT24` varchar(255) DEFAULT NULL,
  `INSTRUCTIONALMATERIALSANDENVIRONMENT100` varchar(255) DEFAULT NULL,
  `INSTRUCTIONALMATERIALSANDENVIRONMENT101` varchar(255) DEFAULT NULL,
  `INSTRUCTIONALMATERIALSANDENVIRONMENT102` varchar(255) DEFAULT NULL,
  `INSTRUCTIONALMATERIALSANDENVIRONMENT103` varchar(255) DEFAULT NULL,
  `INSTRUCTIONALMATERIALSANDENVIRONMENT104` varchar(255) DEFAULT NULL,
  `commentCONTENTKNOWLEDGEANDRELEVANCE25` varchar(255) DEFAULT NULL,
  `CONTENTKNOWLEDGEANDRELEVANCE105` varchar(255) DEFAULT NULL,
  `CONTENTKNOWLEDGEANDRELEVANCE106` varchar(255) DEFAULT NULL,
  `CONTENTKNOWLEDGEANDRELEVANCE107` varchar(255) DEFAULT NULL,
  `CONTENTKNOWLEDGEANDRELEVANCE108` varchar(255) DEFAULT NULL,
  `CONTENTKNOWLEDGEANDRELEVANCE109` varchar(255) DEFAULT NULL,
  `CONTENTKNOWLEDGEANDRELEVANCE110` varchar(255) DEFAULT NULL,
  `CONTENTKNOWLEDGEANDRELEVANCE111` varchar(255) DEFAULT NULL,
  `QUESTIONNO10` varchar(255) DEFAULT NULL,
  `QUESTIONNO11` varchar(255) DEFAULT NULL,
  `QUESTIONNO12` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classroomobservation`
--

INSERT INTO `classroomobservation` (`id`, `toFacultyID`, `fromFacultyID`, `toFaculty`, `courseTitle`, `lengthOfCourse`, `lengthOfObservation`, `subjectMatter`, `fromFaculty`, `date`, `doneStatus`, `DSADAS64`, `SDF65`, `commentCONTENTORGANIZATION21`, `CONTENTORGANIZATION68`, `CONTENTORGANIZATION69`, `CONTENTORGANIZATION70`, `CONTENTORGANIZATION71`, `CONTENTORGANIZATION72`, `CONTENTORGANIZATION73`, `CONTENTORGANIZATION74`, `CONTENTORGANIZATION75`, `commentPRESENTATION22`, `PRESENTATION76`, `PRESENTATION77`, `PRESENTATION78`, `PRESENTATION79`, `PRESENTATION80`, `PRESENTATION81`, `PRESENTATION82`, `PRESENTATION83`, `PRESENTATION84`, `PRESENTATION85`, `PRESENTATION86`, `PRESENTATION87`, `PRESENTATION88`, `commentINSTRUCTIONSSTUDENTINTERACTIONS23`, `INSTRUCTIONSSTUDENTINTERACTIONS89`, `INSTRUCTIONSSTUDENTINTERACTIONS90`, `INSTRUCTIONSSTUDENTINTERACTIONS91`, `INSTRUCTIONSSTUDENTINTERACTIONS92`, `INSTRUCTIONSSTUDENTINTERACTIONS93`, `INSTRUCTIONSSTUDENTINTERACTIONS94`, `INSTRUCTIONSSTUDENTINTERACTIONS95`, `INSTRUCTIONSSTUDENTINTERACTIONS96`, `INSTRUCTIONSSTUDENTINTERACTIONS97`, `INSTRUCTIONSSTUDENTINTERACTIONS98`, `INSTRUCTIONSSTUDENTINTERACTIONS99`, `commentINSTRUCTIONALMATERIALSANDENVIRONMENT24`, `INSTRUCTIONALMATERIALSANDENVIRONMENT100`, `INSTRUCTIONALMATERIALSANDENVIRONMENT101`, `INSTRUCTIONALMATERIALSANDENVIRONMENT102`, `INSTRUCTIONALMATERIALSANDENVIRONMENT103`, `INSTRUCTIONALMATERIALSANDENVIRONMENT104`, `commentCONTENTKNOWLEDGEANDRELEVANCE25`, `CONTENTKNOWLEDGEANDRELEVANCE105`, `CONTENTKNOWLEDGEANDRELEVANCE106`, `CONTENTKNOWLEDGEANDRELEVANCE107`, `CONTENTKNOWLEDGEANDRELEVANCE108`, `CONTENTKNOWLEDGEANDRELEVANCE109`, `CONTENTKNOWLEDGEANDRELEVANCE110`, `CONTENTKNOWLEDGEANDRELEVANCE111`, `QUESTIONNO10`, `QUESTIONNO11`, `QUESTIONNO12`) VALUES
(35, 4, 2, 'Donna Garcia', 'IT - 111', '3 hours', '1 hour', 'This is a sentence.', 'Johnrey Manzanal', 'October 1, 2024', 0, NULL, NULL, 'This is a comment for Content Organization category', '5', '5', '4', '5', '4', '5', '4', '4', 'This is a comment for Presentaion category', '5', '4', '5', '4', '5', '5', '5', '5', '4', '5', '5', '5', '4', 'This is a comment for Instruction / Student Interaction category', '4', '5', '5', '4', '4', '5', '5', '4', '4', '5', '5', 'This is a comment for INSTRUCTIONAL MATERIALS AND ENVIRONMENT category', '4', '4', '5', '5', '5', 'This is a comment for CONTENT KNOWLEDGE AND RELEVANCE category', '5', '5', '4', '4', '4', '5', '5', 'What overall impressions do you think the students left this lesson with in terms of content or style?', 'What were the instructor\'s major strengths as demonstrated in this observations?', 'What suggestions do you have for improving upon this instructor\'s skills?'),
(36, 12, 2, 'Nino Eusebio', 'IT - 555', '5 hours', '2 hours', 'This is a subject matter in lesson.', 'Johnrey Manzanal', 'October 1, 2024', 0, NULL, NULL, 'Comment Content Organization.', '5', '4', '5', '4', '5', '4', '5', '4', 'Comment Presentation.', '5', '4', '5', '4', '5', '4', '5', '4', '5', '4', '5', '4', '5', 'Comment Instructions / Student Interactions.', '5', '4', '5', '4', '5', '4', '5', '4', '5', '4', '5', 'Comment Instructional Materials and Environment.', '5', '4', '5', '4', '5', 'Comment Knowledge and Relevance', '5', '4', '5', '4', '5', '4', '5', 'Answer for \"What overall impressions do you think the students left this lesson with in terms of content or style?\".', 'Answer for \"What were the instructor\'s major strengths as demonstrated in this observations?\".', 'Answer for \"What suggestions do you have for improving upon this instructor\'s skills?\".'),
(37, 10, 2, 'Menard Canoy', 'IT - 423', '1 hour', '1 hour', 'Subject Matter', 'Johnrey Manzanal', 'October 1, 2024', 0, NULL, NULL, 'CONTENT ORGANIZATION', '5', '5', '5', '5', '5', '5', '5', '5', 'PRESENTATION', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'INSTRUCTIONS/STUDENT INTERACTIONS', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'INSTRUCTIONAL MATERIALS AND ENVIRONMENT', '5', '5', '5', '5', '5', 'CONTENT KNOWLEDGE AND RELEVANCE', '5', '5', '5', '5', '5', '5', '5', 'overall impressions do you think the students left this lesson with in terms of content or style', 'the instructor\'s major strengths as demonstrated in this observations', 'improving upon this instructor\'s skills');

-- --------------------------------------------------------

--
-- Table structure for table `classroomquestions`
--

CREATE TABLE `classroomquestions` (
  `id` int(11) NOT NULL,
  `questions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classroomquestions`
--

INSERT INTO `classroomquestions` (`id`, `questions`) VALUES
(10, 'What overall impressions do you think the students left this lesson with in terms of content or style? '),
(11, 'What were the instructor\'s major strengths as demonstrated in this observations? '),
(12, 'What suggestions do you have for improving upon this instructor\'s skills? ');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `day_id` int(11) NOT NULL,
  `days` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`day_id`, `days`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_student`
--

CREATE TABLE `enrolled_student` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `sr_code` varchar(30) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrolled_student`
--

INSERT INTO `enrolled_student` (`id`, `subject_id`, `sr_code`, `section_id`, `subject_status`) VALUES
(15, 1, '19-61072', 16, 1),
(16, 1, '21-60268', 16, 0),
(17, 9, '21-60268', 16, 0),
(18, 10, '21-60268', 16, 0),
(19, 9, '19-61072', 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `sr_code` varchar(20) NOT NULL,
  `faculty_id` varchar(30) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`id`, `question_id`, `sr_code`, `faculty_id`, `rate`) VALUES
(49, 1, '19-61072', '3', 5),
(50, 2, '19-61072', '3', 4),
(51, 3, '19-61072', '3', 5),
(52, 4, '19-61072', '3', 4),
(53, 5, '19-61072', '3', 5),
(54, 6, '19-61072', '3', 4),
(55, 7, '19-61072', '3', 5),
(56, 8, '19-61072', '3', 4),
(57, 9, '19-61072', '3', 5),
(58, 10, '19-61072', '3', 4),
(59, 11, '19-61072', '3', 5),
(60, 12, '19-61072', '3', 4),
(61, 13, '19-61072', '3', 5),
(62, 14, '19-61072', '3', 4),
(63, 15, '19-61072', '3', 5),
(64, 16, '19-61072', '3', 4),
(65, 17, '19-61072', '3', 5),
(66, 18, '19-61072', '3', 4),
(67, 19, '19-61072', '3', 5),
(68, 20, '19-61072', '3', 4),
(69, 21, '19-61072', '3', 5),
(70, 22, '19-61072', '3', 4),
(71, 23, '19-61072', '3', 5),
(72, 24, '19-61072', '3', 4);

-- --------------------------------------------------------

--
-- Table structure for table `facultycategories`
--

CREATE TABLE `facultycategories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultycategories`
--

INSERT INTO `facultycategories` (`id`, `categories`) VALUES
(1, 'PROFESSIONALISM'),
(2, 'INTERPERSONAL BEHAVIOR'),
(5, 'WORK HABITS'),
(6, 'TEAMWORK');

-- --------------------------------------------------------

--
-- Table structure for table `facultycriteria`
--

CREATE TABLE `facultycriteria` (
  `id` int(11) NOT NULL,
  `facultyCategories` text NOT NULL,
  `facultyCriteria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultycriteria`
--

INSERT INTO `facultycriteria` (`id`, `facultyCategories`, `facultyCriteria`) VALUES
(27, 'PROFESSIONALISM', 'Consistently adheres to professional standards in behavior, dress, and communication, setting a positive example for colleagues and students.'),
(28, 'PROFESSIONALISM', 'Demonstrates integrity in all professional interactions, ensuring that actions align with the ethical standards of the institution.'),
(29, 'PROFESSIONALISM', 'Manages time effectively by meeting deadlines, being punctual to meetings, and responding to communication in a timely manner.'),
(30, 'PROFESSIONALISM', 'Upholds the institution’s policies and procedures, and encourages others to do the same, contributing to a respectful and orderly work environment.'),
(31, 'PROFESSIONALISM', 'Provides constructive feedback to colleagues in a respectful manner, aiming to help them improve their professional practice.'),
(33, 'INTERPERSONAL BEHAVIOR', 'Interacts with colleagues in a respectful and supportive manner, fostering a warm atmosphere where all members feel valued and appreciated.'),
(34, 'INTERPERSONAL BEHAVIOR', 'Listens actively during conversations, showing genuine interest in the perspectives of others and responding thoughtfully.'),
(35, 'INTERPERSONAL BEHAVIOR', 'Demonstrates empathy and understanding in interactions, especially during discussions of sensitive or challenging topics.'),
(36, 'INTERPERSONAL BEHAVIOR', 'Provides encouragement and support to colleagues, helping to build their confidence and motivate them to succeed.'),
(37, 'INTERPERSONAL BEHAVIOR', 'Maintains positive relationships with all colleagues, even when there are differences of opinion or approach.'),
(38, 'WORK HABITS', 'Displays a strong work ethic by consistently meeting deadlines, producing high-quality work, and taking initiative in tasks and projects.'),
(39, 'WORK HABITS', 'Prioritizes tasks effectively, managing time and resources to ensure that all responsibilities are fulfilled to a high standard.'),
(40, 'WORK HABITS', 'Demonstrates reliability by following through on commitments and being dependable in completing assigned duties.'),
(41, 'WORK HABITS', 'Maintains a high level of organization in managing tasks, documentation, and communication, ensuring that all work is completed efficiently.'),
(42, 'WORK HABITS', 'Adapts to changes in work assignments or schedules with a positive attitude and a willingness to adjust as needed.'),
(43, 'TEAMWORK', 'Demonstrates a strong commitment to collaborative work and consistently contributes valuable ideas during team meetings and discussions.'),
(44, 'TEAMWORK', 'Works effectively with colleagues by actively participating in group tasks, showing respect for diverse perspectives, and supporting team decisions.'),
(45, 'TEAMWORK', 'Takes on an equitable share of the workload in group projects and assists team members when needed to ensure project success.'),
(46, 'TEAMWORK', 'Maintains open lines of communication with colleagues, fostering a collaborative environment where information and resources are shared freely.'),
(47, 'TEAMWORK', 'Addresses conflicts within the team constructively, seeking to resolve issues through dialogue and compromise.'),
(48, 'PROFESSIONALISM', 'Remains composed and professional in challenging situations, maintaining a calm attitude and making decisions based on sound judgment.');

-- --------------------------------------------------------

--
-- Table structure for table `facultylogin`
--

CREATE TABLE `facultylogin` (
  `id` int(11) NOT NULL,
  `gsuite` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultylogin`
--

INSERT INTO `facultylogin` (`id`, `gsuite`, `password`, `type`) VALUES
(1, 'faculty', 'faculty', 'faculty'),
(2, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `faculty_Id` int(11) NOT NULL,
  `usertype` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gsuite` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`faculty_Id`, `usertype`, `first_name`, `last_name`, `image`, `gsuite`, `password`) VALUES
(1, 'admin', 'Shiela Marie', 'Garcia', '../public/picture/facultyMembers/202409261727329156.jpg', 'shielamarie.garcia@g.batstate-u.edu.ph', 'GARCIA'),
(2, 'admin', 'Johnrey', 'Manzanal', '../public/picture/facultyMembers/202409261727329186.jpg', 'johnrey.manzanal@g.batstate-u.edu.ph', 'MANZANAL'),
(3, 'admin', 'Joseph Rizalde', 'Guillo', '../public/picture/facultyMembers/202409261727329212.jpg', 'josephrizalde.guillo@g.batstate-u.edu.ph', 'GUILLO'),
(4, 'faculty', 'Donna', 'Garcia', '../public/picture/facultyMembers/202409261727329239.jpg', 'donna.garcia@g.batstate-u.edu.ph', 'GARCIA'),
(5, 'faculty', 'Eddie Jr.', 'Bucad', '../public/picture/facultyMembers/202409261727329256.jpg', 'eddiejr.bucad@g.batstate-u.edu.ph', 'BUCAD'),
(6, 'faculty', 'Erwin', 'De Castro', '../public/picture/facultyMembers/202409261727329275.jpg', 'erwin.decastro@g.batstate-u.edu.ph', 'DE CASTRO'),
(7, 'faculty', 'Miguel Edward', 'Rosal', '../public/picture/facultyMembers/202409261727329294.jpg', 'migueledward.rosal@g.batstate-u.edu.ph', 'ROSAL'),
(8, 'faculty', 'Mary Jean', 'Abejuela', '../public/picture/facultyMembers/202409261727329310.jpg', 'maryjean.abejuela@g.batstate-u.edu.ph', 'ABEJUELA'),
(9, 'faculty', 'Melvin', 'Babol', '../public/picture/facultyMembers/202409261727329328.jpg', 'melvin.babol@g.batstate-u.edu.ph', 'BABOL'),
(10, 'faculty', 'Menard', 'Canoy', '../public/picture/facultyMembers/202409261727329342.jpg', 'menard.canoy@g.batstate-u.edu.ph', 'CANOY'),
(11, 'faculty', 'Cruzette', 'Calzo', '../public/picture/facultyMembers/202409261727329370.jpg', 'cruzette.calzo@g.batstate-u.edu.ph', 'CALZO'),
(12, 'faculty', 'Nino', 'Eusebio', '../public/picture/facultyMembers/202409261727329392.jpg', 'nino.eusebio@g.batstate-u.edu.ph', 'EUSEBIO'),
(13, 'faculty', 'Val Juniel', 'Biscocho', '../public/picture/facultyMembers/202409261727329411.jpg', 'valjuniel.biscocho@g.batstate-u.edu.ph', 'BISCOCHO');

-- --------------------------------------------------------

--
-- Table structure for table `peertopeerform`
--

CREATE TABLE `peertopeerform` (
  `id` int(11) NOT NULL,
  `toFacultyID` int(11) NOT NULL,
  `fromFacultyID` int(11) NOT NULL,
  `toFaculty` varchar(255) NOT NULL,
  `fromFaculty` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `academic_year` varchar(255) NOT NULL,
  `commentText` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `doneStatus` int(11) NOT NULL,
  `PROFESSIONALISM27` varchar(255) DEFAULT NULL,
  `PROFESSIONALISM28` varchar(255) DEFAULT NULL,
  `PROFESSIONALISM29` varchar(255) DEFAULT NULL,
  `PROFESSIONALISM30` varchar(255) DEFAULT NULL,
  `PROFESSIONALISM31` varchar(255) DEFAULT NULL,
  `INTERPERSONALBEHAVIOR33` varchar(255) DEFAULT NULL,
  `INTERPERSONALBEHAVIOR34` varchar(255) DEFAULT NULL,
  `INTERPERSONALBEHAVIOR35` varchar(255) DEFAULT NULL,
  `INTERPERSONALBEHAVIOR36` varchar(255) DEFAULT NULL,
  `INTERPERSONALBEHAVIOR37` varchar(255) DEFAULT NULL,
  `WORKHABITS38` varchar(255) DEFAULT NULL,
  `WORKHABITS39` varchar(255) DEFAULT NULL,
  `WORKHABITS40` varchar(255) DEFAULT NULL,
  `WORKHABITS41` varchar(255) DEFAULT NULL,
  `WORKHABITS42` varchar(255) DEFAULT NULL,
  `TEAMWORK43` varchar(255) DEFAULT NULL,
  `TEAMWORK44` varchar(255) DEFAULT NULL,
  `TEAMWORK45` varchar(255) DEFAULT NULL,
  `TEAMWORK46` varchar(255) DEFAULT NULL,
  `TEAMWORK47` varchar(255) DEFAULT NULL,
  `PROFESSIONALISM48` varchar(255) DEFAULT NULL,
  `INTERPERSONALBEHAVIOR59` varchar(255) DEFAULT NULL,
  `WORKHABITS61` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peertopeerform`
--

INSERT INTO `peertopeerform` (`id`, `toFacultyID`, `fromFacultyID`, `toFaculty`, `fromFaculty`, `semester`, `academic_year`, `commentText`, `date`, `doneStatus`, `PROFESSIONALISM27`, `PROFESSIONALISM28`, `PROFESSIONALISM29`, `PROFESSIONALISM30`, `PROFESSIONALISM31`, `INTERPERSONALBEHAVIOR33`, `INTERPERSONALBEHAVIOR34`, `INTERPERSONALBEHAVIOR35`, `INTERPERSONALBEHAVIOR36`, `INTERPERSONALBEHAVIOR37`, `WORKHABITS38`, `WORKHABITS39`, `WORKHABITS40`, `WORKHABITS41`, `WORKHABITS42`, `TEAMWORK43`, `TEAMWORK44`, `TEAMWORK45`, `TEAMWORK46`, `TEAMWORK47`, `PROFESSIONALISM48`, `INTERPERSONALBEHAVIOR59`, `WORKHABITS61`) VALUES
(19, 3, 1, 'Joseph Rizalde Guillo', 'shielamarie.garcia@g.batstate-u.edu.ph', '2nd', '2024-2025', 'This is a comment for Peer to peer', '2024-10-02', 1, '4', '5', '4', '5', '4', '5', '4', '5', '4', '5', '5', '4', '5', '4', '5', '5', '4', '5', '4', '5', '5', NULL, NULL),
(20, 4, 1, 'Donna Garcia', 'shielamarie.garcia@g.batstate-u.edu.ph', '2nd', '2024-2025', 'This is a comment', '2024-10-02', 1, '5', '4', '5', '4', '5', '5', '4', '5', '4', '5', '5', '4', '5', '4', '5', '5', '4', '5', '4', '5', '4', NULL, NULL),
(21, 4, 12, 'Donna Garcia', 'nino.eusebio@g.batstate-u.edu.ph', '2nd', '2024-2025', 'This is a comment', '2024-10-02', 1, '5', '4', '5', '4', '5', '5', '4', '5', '4', '5', '5', '4', '5', '4', '5', '5', '4', '5', '4', '5', '4', NULL, NULL),
(22, 1, 12, 'Shiela Marie Garcia', 'nino.eusebio@g.batstate-u.edu.ph', '2nd', '2024-2025', 'Comment', '2024-10-02', 1, '5', '4', '5', '4', '5', '5', '4', '5', '4', '5', '5', '5', '5', '5', '5', '4', '5', '5', '5', '5', '4', NULL, NULL),
(23, 4, 11, 'Donna Garcia', 'CruzetteCalzo', '2nd', '2024-2025', 'this is a comment', '2024-10-02', 1, '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', NULL, NULL),
(24, 4, 8, 'Donna Garcia', 'Mary Jean Abejuela', '2nd', '2024-2025', 'comment for all', '2024-10-02', 1, '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '1', NULL, NULL),
(25, 4, 2, 'Donna Garcia', 'Johnrey Manzanal', '2nd', '2024-2025', 'dsf', '2024-10-02', 1, '1', '2', '3', '4', '5', '1', '2', '3', '4', '5', '1', '2', '3', '4', '5', '1', '2', '3', '4', '5', '4', NULL, NULL),
(26, 1, 4, 'Shiela Marie Garcia', 'Donna Garcia', '2nd', '2024-2025', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus at erat volutpat, suscipit ex eget, pellentesque libero. Aliquam consectetur tortor erat, at placerat neque tincidunt non. Vestibulum eleifend ac ipsum vitae aliquam.', '2024-10-04', 1, '5', '5', '4', '5', '5', '5', '5', '5', '5', '5', '5', '4', '5', '4', '5', '5', '5', '4', '5', '4', '5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `q_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `q_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `description`, `q_group`) VALUES
(1, 'Demonstrates a strong knowledge of the\nsubject and answers questions accurately\nand confidently.', 1),
(2, 'Stays updated with the latest\r\ndevelopments and trends in the subject\r\nmatter.', 1),
(3, 'Explains topics clearly and makes them\r\neasy to understand, so I can follow the\r\nlessons without confusion.', 1),
(4, 'Provides relevant examples that help me\r\ngrasp difficult concepts more easily.', 1),
(5, 'Connects what we are learning to real-life\r\nsituations, showing how it applies outside\r\nof class.', 1),
(6, 'Adapts their teaching methods to different\r\nlearning styles, helping me understand the\r\nmaterial better', 1),
(7, 'Starts and ends classes on time, respecting\r\nmy schedule and keeping things\r\norganized.', 2),
(8, 'Keeps the class focused on the topic and\r\nminimizes distractions.', 2),
(9, 'Handles any disruptions in the classroom\r\nquickly and effectively, maintaining a positive learning environment.', 2),
(10, 'Makes classroom environment positive\r\nand encouraging, making it easier for me\r\nto participate and learn.', 2),
(11, 'Manages classroom time well, balancing\r\ndifferent activities and covering all\r\nnecessary topics.', 2),
(12, 'Encourages me to participate in class\r\ndiscussions and activities.', 3),
(13, 'Learning activities are enjoyable and help\r\nkeep me interested in the subject matter.', 3),
(14, 'Activities used in class help me\r\nunderstand and remember the material\r\nbetter.', 3),
(15, 'The instructor shows genuine concern for\r\nmy progress and provides support to help\r\nme succeed.', 3),
(16, 'The instructor motivates me to do my best\r\nthrough encouragement and positive\r\nreinforcement.', 3),
(17, 'Clearly explains what is expected in the\r\ncourse, including goals and grading\r\ncriteria.', 4),
(18, 'Answers my questions promptly and\r\nprovides clear explanations.', 4),
(19, 'Lessons are explained in a straightforward\r\nway that is easy for me to understand.', 4),
(20, 'There is effective communication\r\nbetween the instructor and me, allowing\r\nfor open discussion and feedback.', 4),
(21, 'Feedback on my assignments and exams\r\nis given in a helpful manner, guiding me\r\non how to improve.', 4),
(22, 'The instructor handles their emotions\r\neffectively, creating a calm and stable\r\nclassroom environment.', 5),
(23, 'The instructor is approachable and\r\nrespectful, making me feel valued and\r\nheard.', 5),
(24, 'The classroom atmosphere is warm and\r\nsupportive, contributing to a positive\r\nlearning experience.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `randomfaculty`
--

CREATE TABLE `randomfaculty` (
  `id` int(255) NOT NULL,
  `faculty_Id` int(255) NOT NULL,
  `random_Id` int(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `academic_year` varchar(255) NOT NULL,
  `doneStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `instructor` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `selected_date` date NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `evaluation_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `course`, `instructor`, `room`, `selected_date`, `start_time`, `end_time`, `slot`, `evaluation_status`) VALUES
(11, 'paks', 'admin', 'paks', '2024-09-29', 7, 10, 1, 0),
(12, 'sss', 'admin', 'sss', '2024-09-29', 7, 10, 1, 0),
(13, 'a', 'admin', 'a', '2024-09-29', 7, 8, 1, 0),
(14, 'a', 'admin', 'a', '2024-09-29', 7, 10, 1, 0),
(15, 'inangyan', 'admin', 'inangyan', '2024-09-29', 7, 10, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `section` varchar(30) NOT NULL,
  `year_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `section`, `year_id`, `sem_id`) VALUES
(1, 'IT-1101', 1, 1),
(2, 'IT-1102', 1, 1),
(3, 'IT-1103', 1, 1),
(4, 'IT-1201', 1, 2),
(5, 'IT-1202', 1, 2),
(6, 'IT-1203', 1, 2),
(7, 'IT-2101', 2, 1),
(8, 'IT-2102', 2, 1),
(9, 'IT-2103', 2, 1),
(10, 'IT-2201', 2, 2),
(11, 'IT-2202', 2, 2),
(12, 'IT-2203', 2, 2),
(13, 'ITSM-3201', 3, 2),
(14, 'ITBA-3201', 3, 2),
(15, 'ITSM-4101', 4, 1),
(16, 'ITBA-4101', 4, 1),
(17, 'IT-1104', 1, 1),
(18, 'IT-1105', 1, 1),
(19, 'IT-1106', 1, 1),
(20, 'IT-1204', 1, 2),
(21, 'IT-1205', 1, 2),
(22, 'IT-1206', 1, 2),
(23, 'IT-2104', 2, 1),
(24, 'IT-2204', 2, 2),
(25, 'ITNT-3101', 3, 1),
(26, 'ITNT-3201', 3, 2),
(27, 'ITSM-3101', 3, 1),
(28, 'ITSM-3102', 3, 1),
(29, 'ITSM-3202', 3, 2),
(30, 'ITBA-3101', 3, 1),
(31, 'ITBA-3102', 3, 1),
(32, 'ITBA-3103', 3, 1),
(33, 'ITBA-3202', 3, 2),
(34, 'ITBA-3203', 3, 2),
(35, 'ITNT-4101', 4, 1),
(36, 'ITSM-4102', 4, 1),
(37, 'ITBA-4102', 4, 1),
(38, 'ITBA-4103', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `sem_id` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`sem_id`, `semester`) VALUES
(1, 'FIRST'),
(2, 'SECOND');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'Regular'),
(2, 'Irregular');

-- --------------------------------------------------------

--
-- Table structure for table `studentlogin`
--

CREATE TABLE `studentlogin` (
  `id` int(11) NOT NULL,
  `srcode` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentlogin`
--

INSERT INTO `studentlogin` (`id`, `srcode`, `password`) VALUES
(1, '21-69247', 'CORO'),
(2, '21-67450', 'REYES'),
(3, '21-63034', 'ESTILLER'),
(4, '21-01915', 'LICMO'),
(5, '21-65231', 'TOMBOCCON'),
(6, '21-60268', 'LOPEZ'),
(7, '21-67790', 'VILLAPANDO');

-- --------------------------------------------------------

--
-- Table structure for table `studentscategories`
--

CREATE TABLE `studentscategories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentscategories`
--

INSERT INTO `studentscategories` (`id`, `categories`) VALUES
(3, 'TEACHING EFFECTIVENESS'),
(4, 'CLASSROOM MANAGEMENT'),
(5, 'STUDENT ENGAGEMENT'),
(6, 'COMMUNICATION'),
(7, 'EMOTIONAL COMPETENCE');

-- --------------------------------------------------------

--
-- Table structure for table `studentscriteria`
--

CREATE TABLE `studentscriteria` (
  `id` int(11) NOT NULL,
  `studentsCategories` text NOT NULL,
  `studentsCriteria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentscriteria`
--

INSERT INTO `studentscriteria` (`id`, `studentsCategories`, `studentsCriteria`) VALUES
(3, 'TEACHING EFFECTIVENESS', 'Demonstrates a strong knowledge of the subject and answers questions accurately and confidently.'),
(4, 'TEACHING EFFECTIVENESS', 'Stays updated with the latest developments and trends in the subject matter'),
(5, 'TEACHING EFFECTIVENESS', 'Explains topics clearly and makes them easy to understand, so I can follow the lessons without confusion.'),
(6, 'TEACHING EFFECTIVENESS', 'Provides relevant examples that help me grasp difficult concepts more easily.'),
(7, 'TEACHING EFFECTIVENESS', 'Connects what we are learning to real-life situations, showing how it applies outside of class.'),
(8, 'TEACHING EFFECTIVENESS', 'Adapts their teaching methods to different learning styles, helping me understand the material better.'),
(9, 'CLASSROOM MANAGEMENT', 'Starts and ends classes on time, respecting my schedule and keeping things organized.'),
(11, 'CLASSROOM MANAGEMENT', 'Keeps the class focused on the topic and minimizes distractions.'),
(12, 'CLASSROOM MANAGEMENT', 'Handles any disruptions in the classroom quickly and effectively, maintaining a positive learning environment.'),
(13, 'CLASSROOM MANAGEMENT', 'Makes classroom environment positive and encouraging, making it easier for me to participate and learn.'),
(15, 'CLASSROOM MANAGEMENT', 'Manages classroom time well, balancing different activities and covering all necessary topics.'),
(17, 'STUDENT ENGAGEMENT', 'Encourages me to participate in class discussions and activities.'),
(18, 'STUDENT ENGAGEMENT', 'Learning activities are enjoyable and help keep me interested in the subject matter.'),
(19, 'STUDENT ENGAGEMENT', 'Activities used in class help me understand and remember the material better.'),
(20, 'STUDENT ENGAGEMENT', 'The instructor shows genuine concern for my progress and provides support to help me succeed.'),
(21, 'STUDENT ENGAGEMENT', 'The instructor motivates me to do my best through encouragement and positive reinforcement.'),
(22, 'COMMUNICATION', 'Clearly explains what is expected in the course, including goals and grading criteria.'),
(23, 'COMMUNICATION', 'Answers my questions promptly and provides clear explanations.'),
(24, 'COMMUNICATION', 'Lessons are explained in a straightforward way that is easy for me to understand.'),
(25, 'COMMUNICATION', 'There is effective communication between the instructor and me, allowing for open discussion and feedback.'),
(26, 'COMMUNICATION', 'Feedback on my assignments and exams is given in a helpful manner, guiding me on how to improve.'),
(27, 'EMOTIONAL COMPETENCE', 'The instructor handles their emotions effectively, creating a calm and stable classroom environment.'),
(28, 'EMOTIONAL COMPETENCE', 'The instructor is approachable and respectful, making me feel valued and heard.'),
(29, 'EMOTIONAL COMPETENCE', 'The classroom atmosphere is warm and supportive, contributing to a positive learning experience.');

-- --------------------------------------------------------

--
-- Table structure for table `studentsform`
--

CREATE TABLE `studentsform` (
  `id` int(11) NOT NULL,
  `toFaculty` varchar(255) NOT NULL,
  `fromStudents` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `TEACHINGEFFECTIVENESS3` varchar(255) DEFAULT NULL,
  `TEACHINGEFFECTIVENESS4` varchar(255) DEFAULT NULL,
  `TEACHINGEFFECTIVENESS5` varchar(255) DEFAULT NULL,
  `TEACHINGEFFECTIVENESS6` varchar(255) DEFAULT NULL,
  `TEACHINGEFFECTIVENESS7` varchar(255) DEFAULT NULL,
  `TEACHINGEFFECTIVENESS8` varchar(255) DEFAULT NULL,
  `CLASSROOMMANAGEMENT9` varchar(255) DEFAULT NULL,
  `TEACHINGEFFECTIVENESS10` varchar(255) DEFAULT NULL,
  `CLASSROOMMANAGEMENT11` varchar(255) DEFAULT NULL,
  `CLASSROOMMANAGEMENT12` varchar(255) DEFAULT NULL,
  `CLASSROOMMANAGEMENT13` varchar(255) DEFAULT NULL,
  `TEACHINGEFFECTIVENESS14` varchar(255) DEFAULT NULL,
  `CLASSROOMMANAGEMENT15` varchar(255) DEFAULT NULL,
  `TEACHINGEFFECTIVENESS16` varchar(255) DEFAULT NULL,
  `STUDENTENGAGEMENT17` varchar(255) DEFAULT NULL,
  `STUDENTENGAGEMENT18` varchar(255) DEFAULT NULL,
  `STUDENTENGAGEMENT19` varchar(255) DEFAULT NULL,
  `STUDENTENGAGEMENT20` varchar(255) DEFAULT NULL,
  `STUDENTENGAGEMENT21` varchar(255) DEFAULT NULL,
  `COMMUNICATION22` varchar(255) DEFAULT NULL,
  `COMMUNICATION23` varchar(255) DEFAULT NULL,
  `COMMUNICATION24` varchar(255) DEFAULT NULL,
  `COMMUNICATION25` varchar(255) DEFAULT NULL,
  `COMMUNICATION26` varchar(255) DEFAULT NULL,
  `EMOTIONALCOMPETENCE27` varchar(255) DEFAULT NULL,
  `EMOTIONALCOMPETENCE28` varchar(255) DEFAULT NULL,
  `EMOTIONALCOMPETENCE29` varchar(255) DEFAULT NULL,
  `TRY30` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_basic_info`
--

CREATE TABLE `student_basic_info` (
  `id` int(11) NOT NULL,
  `sr_code` varchar(20) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_basic_info`
--

INSERT INTO `student_basic_info` (`id`, `sr_code`, `lastname`, `firstname`, `middlename`, `birthday`, `gender`, `address`, `email`, `contact`) VALUES
(1, '19-61072', 'Lopez', 'John Kenneth', 'Moncayo', '10-20-2000', 'Male', 'Brgy. Mabini Tanauan City, Batangas', 'johnkenneth.lopez@g.batstate-u.edu.ph', '09771183520'),
(2, '21-60268', 'Lopez', 'Alyza Nicole', 'Moncayo', '07-10-2003', 'Female', 'Brgy. Mabini Tanauan City, Batangas', '21-60268@g.batstate-u.eddu.ph', '09771183520');

-- --------------------------------------------------------

--
-- Table structure for table `student_status`
--

CREATE TABLE `student_status` (
  `id` int(11) NOT NULL,
  `sr_code` varchar(20) NOT NULL,
  `year_level` varchar(20) NOT NULL,
  `status_id` int(11) NOT NULL,
  `section` varchar(20) NOT NULL,
  `course` varchar(100) NOT NULL,
  `sem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_status`
--

INSERT INTO `student_status` (`id`, `sr_code`, `year_level`, `status_id`, `section`, `course`, `sem_id`) VALUES
(1, '21-60268', '4', 1, 'ITSM-4101', 'Bachelor of Science in Information Technology', 1),
(2, '19-61072', '4', 2, 'ITSM-4103', 'Bachelor of Science in Information Technology', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(75) NOT NULL,
  `unit` int(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `subject_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject`, `unit`, `year`, `semester`, `subject_code`) VALUES
(1, 'Capstone Project 2', 3, '4', '1', 'IT 411'),
(2, 'Capstone Project 1', 3, '3', '2', 'IT 324'),
(4, 'Introduction to Computing', 3, '1', '1', 'IT 111'),
(6, 'Social Issues and Professional Practice', 3, '4', '1', 'CS 423'),
(7, 'Principles of System Thinking', 3, '4', '1', 'SMT 405'),
(8, 'Advanced Information Assurance and Security', 3, '4', '1', 'IT 413'),
(9, 'Platform Technologies', 3, '4', '1', 'IT 412'),
(10, 'Technopreneurship', 3, '4', '1', 'ENGG 405'),
(11, 'IT Internship Training', 6, '4', '2', 'IT 421'),
(12, 'Systems Quality Assurance', 3, '4', '1', 'IT 414'),
(13, 'Advanced Systems Integration and Architecture', 3, '3', '2', 'IT 322'),
(14, 'Fundamentals of Business Process Outsourcing 2', 3, '3', '2', 'SMT 403'),
(15, 'Human-Computer Interaction', 3, '3', '2', 'IT 321'),
(16, 'Information Assurance and Security', 3, '3', '2', 'IT 323'),
(17, 'IT Project Management', 3, '3', '2', 'IT 325'),
(18, 'Service Culture', 3, '3', '2', 'SMT 404'),
(19, 'Business Communication', 3, '3', '1', 'SMT 402'),
(20, 'Ethics', 3, '3', '1', 'GEd 107'),
(21, 'System Analysis and Design', 3, '3', '1', 'IT 313'),
(22, 'Systems Administration and Maintenance', 3, '3', '1', 'IT 311'),
(23, 'Systems Integration and Architecture', 3, '3', '1', 'IT 312'),
(24, 'Web Systems and Technologies', 3, '3', '1', 'IT 314'),
(25, 'Advanced Database Management System', 3, '2', '2', 'IT 222'),
(26, 'Computer Networking 2', 3, '2', '2', 'IT 223'),
(27, 'Data Analysis', 3, '2', '2', 'MATH 408'),
(28, 'Environmental Sciences', 3, '2', '2', 'ES 101'),
(29, 'Information Management', 3, '2', '2', 'IT 221'),
(30, 'Purposive Communication', 3, '2', '2', 'GEd 106'),
(31, 'Team Sports', 2, '2', '2', 'PE 104'),
(32, 'Understanding the Self', 3, '2', '2', 'GEd 101'),
(33, 'Advanced Computer Programming', 3, '2', '1', 'CS 121'),
(34, 'ASEAN Literature', 3, '2', '1', 'Litr 102'),
(35, 'Calculus-Based Physics', 3, '2', '1', 'Phy 101'),
(36, 'Computer Networking 1', 3, '2', '1', 'IT 212'),
(37, 'Database Management System', 3, '2', '1', 'IT 211'),
(38, 'Discrete Mathematics', 3, '2', '1', 'CpE 405'),
(39, 'Individual and Dual Sports', 2, '2', '1', 'PE 103'),
(40, 'Object-Oriented Programming', 3, '2', '1', 'CS 211'),
(41, 'Computer Programming', 3, '1', '2', 'CS 111'),
(42, 'Data Structures and Algorithms', 3, '1', '2', 'CS 131'),
(43, 'Filipino sa Ibat-ibang Disiplina', 3, '1', '2', 'Fili 102'),
(44, 'Linear Algebra', 3, '1', '2', 'MATH 111'),
(45, 'NSTP - Civic Welfare Training Service 2', 3, '1', '2', 'NSTP 121CW'),
(46, 'Readings in Philippine History', 3, '1', '2', 'GEd 105'),
(47, 'Rhythmic Activities', 2, '1', '2', 'PE 102'),
(48, 'Science, Technology and Society', 3, '1', '2', 'GEd 109'),
(49, 'Art Appreciation', 3, '1', '1', 'GEd 108'),
(50, 'Introduction to Computing', 3, '1', '1', 'IT 111'),
(51, 'Kontekstwalisadong Komunikasyon sa Filipino', 3, '1', '1', 'Fili 101'),
(52, 'Life and Works of Rizal', 3, '1', '1', 'GEd 103'),
(53, 'Mathematics in the Modern World', 3, '1', '1', 'GEd 102'),
(54, 'NSTP - Civic Welfare Training Service 1', 3, '1', '1', 'NSTP 111CW'),
(55, 'Physical Fitness, Gymnastics and Aerobics', 2, '1', '1', 'PE 101'),
(56, 'The Contemporary World', 3, '1', '1', 'GEd 104');

-- --------------------------------------------------------

--
-- Table structure for table `subject_status`
--

CREATE TABLE `subject_status` (
  `sub_stat_ID` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_status`
--

INSERT INTO `subject_status` (`sub_stat_ID`, `status`) VALUES
(1, 'ongoing'),
(2, 'completed'),
(3, 'Incomplete');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `time_id` int(11) NOT NULL,
  `time` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `time`) VALUES
(1, '7:00 AM'),
(2, '8:00 AM'),
(3, '9:00 AM'),
(4, '10:00 AM'),
(5, '11:00 AM'),
(6, '12:00 PM'),
(7, '1:00 PM'),
(8, '2:00 PM'),
(9, '3:00 PM'),
(10, '4:00 PM'),
(11, '5:00 PM'),
(12, '6:00 PM'),
(13, '7:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `year_level`
--

CREATE TABLE `year_level` (
  `year_id` int(11) NOT NULL,
  `year_level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `year_level`
--

INSERT INTO `year_level` (`year_id`, `year_level`) VALUES
(1, 'FIRST'),
(2, 'SECOND'),
(3, 'THIRD'),
(4, 'FOURTH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_subject`
--
ALTER TABLE `assigned_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classroomcategories`
--
ALTER TABLE `classroomcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classroomcriteria`
--
ALTER TABLE `classroomcriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classroomobservation`
--
ALTER TABLE `classroomobservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classroomquestions`
--
ALTER TABLE `classroomquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`day_id`);

--
-- Indexes for table `enrolled_student`
--
ALTER TABLE `enrolled_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facultycategories`
--
ALTER TABLE `facultycategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facultycriteria`
--
ALTER TABLE `facultycriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facultylogin`
--
ALTER TABLE `facultylogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`faculty_Id`);

--
-- Indexes for table `peertopeerform`
--
ALTER TABLE `peertopeerform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `randomfaculty`
--
ALTER TABLE `randomfaculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `studentlogin`
--
ALTER TABLE `studentlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentscategories`
--
ALTER TABLE `studentscategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentscriteria`
--
ALTER TABLE `studentscriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentsform`
--
ALTER TABLE `studentsform`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classroomcategories`
--
ALTER TABLE `classroomcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `classroomcriteria`
--
ALTER TABLE `classroomcriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `classroomobservation`
--
ALTER TABLE `classroomobservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `classroomquestions`
--
ALTER TABLE `classroomquestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `facultycategories`
--
ALTER TABLE `facultycategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `facultycriteria`
--
ALTER TABLE `facultycriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `facultylogin`
--
ALTER TABLE `facultylogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `faculty_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `peertopeerform`
--
ALTER TABLE `peertopeerform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `randomfaculty`
--
ALTER TABLE `randomfaculty`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3470;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `studentlogin`
--
ALTER TABLE `studentlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `studentscategories`
--
ALTER TABLE `studentscategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `studentscriteria`
--
ALTER TABLE `studentscriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `studentsform`
--
ALTER TABLE `studentsform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
