-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 10:17 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id_question` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer_1` varchar(255) DEFAULT NULL,
  `answer_2` varchar(255) DEFAULT NULL,
  `answer_3` varchar(255) DEFAULT NULL,
  `answer_4` varchar(255) DEFAULT NULL,
  `theme` varchar(255) NOT NULL,
  `correct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id_question`, `question`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `theme`, `correct`) VALUES
(1, 'What is the \'Sea\' to the west of the North-West Malaysian Peninsula?', 'Bengal Sea', 'Andaman Sea', 'Macassar Sea', 'Malacca Sea', 'Geography', 2),
(2, 'Which of these \'Regions\' lies in the Southern Hemisphere?', 'Kamchatka', 'Prince Edward Island', 'Tierra del Fuego', 'Moray', 'Geography', 3),
(3, 'Which of these 4 countries is the largest in area ?', 'Kazakhtan', 'Algeria', 'Mexico', 'Iran', 'Geography', 1),
(4, 'The White and Blue Nile meet at which Sudanese City?', 'Juba', 'Khartoum', 'Aswan', 'Wadi Halfa', 'Geography', 2),
(5, 'Which Caribbean Country\'s Flag shows black and yellow triangles representing its volcanic mountains?', 'Saint Lucia', 'Antigua and Barmuda', 'Grenada', 'Trinidad and Tobago', 'Geography', 1),
(6, 'What is the \'Radius\' of the Earth (in kilometres)?', '6,371 km', '8284 km', '12,228 km', '4,772 km', 'Geography', 1),
(7, 'What 3 Countries have the 1st 2nd & 3rd Longest Coastlines?', 'Canada/Greenland/ Norway', 'Canada/Norway/ Indonesia', 'Norway/Indonesia/ Greenland', 'Canada/ Russia Indonesia', 'Geography', 2),
(8, 'The largest lake in the UK is?', 'Lake Windermere', 'Loch Lomond', 'Lough Neagh', 'Loch Ness', 'Geography', 3),
(9, 'Vilnius is the Capital City of which Country?', 'Liechtenstein', 'Moldova', 'Macedon', 'Lithuania', 'Geography', 4),
(10, 'Which large City is on an island off the Southern Tip of the Malay Peninsula', 'Macau', 'Hong Kong', 'Manila', 'Singapore', 'Geography', 4),
(11, 'The Capital of Pakistan is?', 'Karachi', 'Islamabad', 'Lahore', 'Quetta', 'Geography', 2),
(12, 'Only 2 of the 13 countries of South America have no coastline, they are?', 'Colombia and Bolivia', 'Uruguay and Ecuador', 'Paraguay and Guyana', 'Bolivia and Paraguay', 'Geography', 4),
(13, 'With 135 million inhabitants, what is the most populous Island?', 'Great Britain', 'Sri Lanka', 'Java', 'Autralia', 'Geography', 3),
(14, '\'Mariana Trench\' is the deepest ocean location: How deep is it in kilometres?', '7.64 km', '10.92 km', '8.5 km', '6.90km', 'Geography', 2),
(15, 'What is the Capital of Tanzania?', 'Kampala', 'Maputo', 'Malabo', 'Dodoma', 'Geography', 4),
(16, 'The British Island of \'Tristan da Cunha\' is located in which Ocean?', 'Indian Ocean', 'Pacific Ocean', 'Atlantic Ocean', 'Southern Ocean', 'Geography', 3),
(17, 'In which 3 Countries is the \'Kalahari Desert\' located?', 'Botwana/ Angola /Gabon', 'Namibia / Botwana /Angola', 'South Africa / Botwana / Namibia', 'Namibia / Angola / South Africa', 'Geography', 3),
(18, 'Which UK City has a bigger \'Canal System\' than Venice?', 'Birmingham', 'London', 'Manchester', 'Edinburgh', 'Geography', 1),
(19, 'The Capital City of New Zealand is the World\'s most Southern City, What is it?', 'Auckland', 'Wellington', 'Nelson', 'Christchurch', 'Geography', 2),
(20, 'The \'Taj Mahal\' sits on the bank of which river?', 'Yamuna', 'Genges', 'Indus', 'Irrawady', 'Geography', 1),
(21, 'Who was the top scorer in the 2019/20 Premier League season?', 'Lionell Messi', 'Daniel Drinkwater', 'Jamie Vardy', 'Raphael Benitez', 'Sports', 3),
(22, 'Jurgen Klopp began his manegeral career at which German club?', 'Mainz 05', 'VfL 07 Bremen', 'DJK Ammerthal', 'Arminia Bielefeld', 'Sports', 1),
(23, 'Which female tennis player has won the highest number of Grand Slams?', 'Serena Williams', 'Margaret Court', 'Venus Williams', 'Roger Federer', 'Sports', 2),
(24, 'Tiger Woods won his first major in over a decade at which 2019 tournament?', 'Turkish Opens', 'US Opens', 'French opens', 'The Masters', 'Sports', 4),
(25, 'Which footballer has scored the most goals in World Cup history?', 'Miroslav Klose', 'Samuel Eto\'o', 'Jayjay Okocha', 'Ronaldinho', 'Sports', 1),
(26, 'In which year did Roger Federer win his first Wimbledon title?', 'Year 2001', 'Year 2003', 'Year 2010', 'Year 2013', 'Sports', 2),
(27, 'Who is the only player to have scored in the Premier League, Championship, League 1, League 2, Conference, FA Cup, League Cup, Football League Trophy, FA Trophy, Champions League, Europa League, Scottish Premier League, Scottish Cup, and Scottish League C', 'Gary Hooper', 'Sunderland Gary', 'Hooper Sunderland', 'Sunderland Thomas', 'Sports', 1),
(28, 'Lewis Hamilton won the Formula One World Driver’s title in 2020, but what is the name of his Mercedes teammate who came second?', 'Lewis Hamilton', 'George Rusell', 'Valtteri Bottas', 'Nico Rosberge', 'Sports', 3),
(29, 'Who is the highest run-scorer of all time in International cricket?', 'Sachin Tendulkar', 'Tiktak Raymond', 'Sahdine Welling', 'Muhman Fray', 'Sports', 1),
(30, 'What does WWE stand for?', 'World Wrestling Enterprise', 'Wrestling World Entertainment', 'World Wrestling Entertainment', 'Wrestling World Enterprise', 'Sports', 3),
(31, 'Who stepped down as manager of the England Women’s national football team in January 2021?', 'Phil Neville', 'Phil Nedved', 'Philamon Skin', 'Ville Phil', 'Sports', 1),
(32, 'What sport has been played by Eve Muirhead and David Murdoch?', 'Bowling', 'Curling', 'Tennis', 'Racing', 'Sports', 2),
(33, 'Frankie Dettori won seven races out of seven races at which UK horse racing course in 1995?', 'Ascot', 'Castllo', 'Wascot', 'Toraid', 'Sports', 1),
(34, 'In which sport do teams compete to win the Stanley Cup?', 'Badmington', 'Skatting', 'Ice hockey (NHL)', 'Tennis', 'Sports', 3),
(35, 'What is Usain Bolt’s blistering 100m world record time?', '8.59 seconds', '4.57 seconds', '6.79 seconds', '9.58 seconds', 'Sports', 4),
(36, 'Which famous football manager once said: “I wouldn\'t say I was the best manager in the business. But I was in the top one”?', 'Brian Clough', 'Arsen Vwenger', 'Jose Mourinho', 'Jorgen Clopp', 'Sports', 1),
(37, 'Did Team GB win more medals in total at London 2012 or Rio 2016?', 'Year 2012', 'It was both 65 medals', 'It was both 67 medals', 'Year 2016', 'Sports', 4),
(38, 'The first FIFA World Cup was held in which year?', 'Year 1926', 'Year 1930', 'Year 1934', 'Year 1938', 'Sports', 2),
(39, 'England won the 2003 Rugby World Cup thanks to an iconic drop goal from Jonny Wilkinson. How many points did England score in the match?', 'Fifteen', 'Twenty five', 'Twenty', 'Thirty', 'Sports', 3),
(40, 'How many MMA fights has UFC star Conor McGregor lost during his career?', 'Two', 'Three', 'Four', 'Five', 'Sports', 3),
(41, 'In which part of your body would you find the cruciate ligament?', 'Knee', 'Ankle', 'Shoulder', 'Elbow', 'General Knowledge', 1),
(42, 'What is the name of the main antagonist in the Shakespeare play Othello?', 'Jago', 'Fago', 'Lago', 'Rago', 'General Knowledge', 3),
(43, 'What element is denoted by the chemical symbol Sn in the periodic table?', 'Sodium', 'Tin', 'Sulphur', 'Zync', 'General Knowledge', 2),
(44, 'What is the name of the 1976 film about the Watergate scandal, starring Robert Redford and Dustin Hoffman?', 'President of Presidents', 'Mr President and his men', 'All the President\'s Men', 'Who is the President', 'General Knowledge', 3),
(45, 'How many of Henry VIII\'s wives were called Catherine?', 'Six', 'Five', 'Seven', 'Three', 'General Knowledge', 4),
(46, 'What was the most popular girls name in the UK in 2019?', 'Olivia', 'Sandra', 'Queeneth', 'Sophia', 'General Knowledge', 1),
(47, 'Which comedian was the second permanent host of Never Mind the Buzzcocks after Mark Lamarr?', 'Will Smith', 'Trevor Noah', 'Simon Amstell', 'Simon Sales', 'General Knowledge', 3),
(48, 'Which popular video game franchise has released games with the subtitles World At War and Black Ops?', 'Call of Duty', 'Grand Theft Auto', 'PES', 'None of the Above', 'General Knowledge', 1),
(49, 'In what US State is the city Nashville?', 'New York', 'Tennessee', 'Dallas', 'Hamilton', 'General Knowledge', 2),
(50, 'Which rock band was founded by Trent Reznor in 1988?', 'Nails Inch', 'Inch nails', 'Nine nails', 'Nine Inch Nails', 'General Knowledge', 4),
(51, 'What is the currency of Denmark?', 'Dollars', 'Lira', 'Krone', 'Naira', 'General Knowledge', 3),
(52, 'Which Tennis Grand Slam is played on a clay surface?', 'Thre French open', 'The Australlia Open', 'The Us Open', 'The Turkish Open', 'General Knowledge', 1),
(53, 'In which European country would you find the Rijksmuseum?', 'Finland', 'Netherlands', 'Scotland', 'Holand', 'General Knowledge', 2),
(54, 'How many films have Al Pacino and Robert De Niro appeared in together?', 'Six', 'Eight', 'Five', 'Four', 'General Knowledge', 4),
(55, 'What was the old name for a Snickers bar before it changed in 1990?', 'Marathon', 'Tournament', 'Race', 'Tour', 'General Knowledge', 1),
(56, 'Who was the head of state in Japan during the second world war?', 'Emperor Hoe', 'Emperor Hirohito', 'Emperor Trojan', 'Emperor Ray', 'General Knowledge', 2),
(57, 'What is the smallest planet in our solar system?', 'Mars', 'Earth', 'Uranus', 'Mercury', 'General Knowledge', 4),
(58, 'Who wrote the novels Gone Girl and Sharp Objects?', 'John Grisham', 'Gillian Flynn', 'Charles Knowels', 'Chimamnda Adichie', 'General Knowledge', 2),
(59, 'Which legendary surrealist artist is famous for painting melting clocks?', 'Picasso', 'Da Vinci', 'Salvador Dali', 'Dele Giwa', 'General Knowledge', 3),
(60, 'Which football club plays its home games at Loftus Road', 'Queen\'s Park Rangers', 'Enugu Rangers', 'Leg Rangers', 'Wolves Rangers', 'General Knowledge', 1),
(61, 'The fastest-running terrestrial animal is?', 'Lion', 'Cheetah', 'Antelope', 'Dog', 'Basic Science', 2),
(62, 'Which of the following is the male part of a flower?', 'Stamen', 'Stigma', 'Egg', 'Pollen', 'Basic Science', 1),
(63, 'What is the chemical formula for water?', 'W20', 'HO', 'H20', 'O2H', 'Basic Science', 3),
(64, 'The rotation of the Earth is responsible for what phenomenon?', 'Months of the year', 'Leap year', 'Day & Night', 'Solar system', 'Basic Science', 3),
(65, 'Who is regarded as the \"Father of Evolution\"?', 'Charles Darwin', 'Micheal Faraday', 'Martin Luther King', 'Charles Babbage', 'Basic Science', 1),
(66, 'What is the gestation period for cows?', '365 days', '220 days', '55 days', '283 days', 'Basic Science', 4),
(67, 'Zea Mays', 'Banana', 'Maize', 'Cassava', 'Plantain', 'Basic Science', 2),
(68, 'Who invented the first computer?', 'Charles Darwin', 'Micheal Faraday', 'Martin Luther King', 'Charles Babbage', 'Basic Science', 4),
(69, 'Which of the following elements are Halogens?', 'Oxygen', 'Chlorine', 'Pottassium', 'Sodium', 'Basic Science', 2),
(70, 'Where does fertilization take place in humans?', 'Ovary', 'Fallopian Tube', 'Zygote', 'Spermatozoa', 'Basic Science', 2),
(71, 'By default, AutoCAD has the following workspaces.', '\n2D Drafting & Annotation', '3D Modeling', 'My workspace', 'AutoCAD Classic', 'Computer', 3),
(72, 'Which Key do you press to cycle through the available snap points?', '\nCtrl', 'Shift', '\nTab', 'Alt', 'Computer', 3),
(73, 'One of the below options is wrong about the type of AutoCad drawing units. Which one is it?', 'Architectural', 'Engineering', 'Decimal', '\nMillimeter', 'Computer', 4),
(74, 'Object snap tracking works in combination with object snaps to enable you to temporarily acquire and track up to how many points?', 'One', 'Two', 'Five', 'Seven', 'Computer', 4),
(75, 'If you need the text to be reversed, when you mirror the text, then you need to set:', 'MIRRTEXT to 0', 'MIRRTEXT to 1', '\nTEXTMIRR to 0', '\nTEXTMIRR to 1', 'Computer', 2),
(76, 'By selecting which one of the following, the objects on the layer are not visible and are not considered when the drawing is regenerated?', 'When you off the layer', 'When you froze the layer', 'When you lock the layer', 'None', 'Computer', 2),
(77, 'With a hot grip, which of these editing tasks can you perform?', 'Move', 'Offset', 'Rotate', 'Scale', 'Computer', 3),
(78, 'You can set viewport scale factor by', 'Typing vscale', 'Typing vscale', '\nTyping viewportscale', 'None', 'Computer', 4),
(79, 'The following are some of the properties and settings that you can save in a layout, except', 'Plot Scale', 'Paper size', 'Line weight', 'Drawing orientation', 'Computer', 3),
(80, 'Which is not a type of cyberbully?', '\"Mean Girls\"', 'Power Hungry or Revenge of the Nerds', 'Big, Bad Bully', 'The Vengeful Angel', 'Computer', 3),
(81, 'Which of the following is NOT a rule listed in Computer Discovery\'s Ten Commandments of Computer Ethics?', 'Thou Shalt not use a computer to lie.', 'Thou shalt not copy copyrighted software and materials.', '\nThou shalt not let others borrow your computer.', 'Thou shalt not use a computer to plagiarize.', 'Computer', 3),
(82, 'Thou shalt not copy ___________________________ software or materials.', 'Public-domain', '\n\nCopyrighted', 'Self-created', 'Self-published', 'Computer', 2),
(83, 'Which is NOT a consequence of plagiarism?', '\nYou could get a warning from your college professor.\n', 'You can get fired from your job.', 'You can make a zero on your assignment.', 'You can get kicked out of college.', 'Computer', 1),
(84, 'Which is NOT a consequence of copying or distributing copyrighted software?', '\nCommunity Service', 'Imprisonment', 'Up to $10,000 in legal fees', 'Up to $50,000 in civil fees', 'Computer', 1),
(85, 'Thou shalt not create ______________________ software or games.', '\nDifficult', 'Copyrighted', 'Easy', 'Harmful', 'Computer', 4),
(86, 'Which is an example of plagiarism?', '\nTyping a paper in your own words', '\nCopying and pasting a sentence from the Internet into your paper.', '\nReading a paragraph online and retyping it in your own words.', '\nCopying and pasting someone else\'s work into your paper using quotation marks and citing the author', 'Computer', 2),
(87, '________ is used to communicate from one city to another.', 'WAN', 'LAN', 'MAN', 'All of the above', 'Computer', 1),
(88, 'Speedometer is an example of ____________ computers.', 'Hybrid', 'Digital', 'Analog', 'None of the Above', 'Computer', 3),
(89, 'Which of the following animals are non-ruminant animals?', 'Antelope', 'Rabbit', 'Goat', 'Ram', 'Basic Science', 2),
(90, 'In which part of the eye is the pupil located?', 'Cornea', 'Iris', 'Upper eye lid', 'Sclera', 'Basic Science', 2),
(91, 'Which of these hormones increases the body’s metabolic rate?', 'Aldosterone', 'Hydrocortisone', 'Calcitonin', 'Thyroid', 'Basic Science', 4),
(92, 'Which of these diseases can be contracted through impure drinking water?', 'Measles', 'Scabies', 'Tuberculosis', 'Malaria', 'Basic Science', 2),
(93, 'An agent that passes pathogen from one living organism to another is?', 'Malaria', 'Parasite', 'Vector', 'Parasite', 'Basic Science', 3),
(94, 'In which form is excess sugar stored in the body?', 'Glycogen', 'Glucose', 'Lactose', 'Sucrose', 'Basic Science', 1),
(95, 'The following factors affect only aquatic habitat EXCEPT', 'Salinity', 'Turbidity', 'Soil type', 'Temperature', 'Basic Science', 3),
(96, 'Deficiency in vitamin A causes', 'Night blindness', 'Anaemia', 'Abdominal Pains', 'Ricket', 'Basic Science', 1),
(97, 'In the female reproductive organ, eggs are stored in the', 'Clitoris', 'Vulva', 'Uterus', 'ovaries', 'Basic Science', 4),
(98, 'The part of a respiratory system that carries air directly to the lung is the', 'Bronchi', 'Trachea', 'Diaphragm', 'Larynx', 'Basic Science', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` enum('admin','teacher','student') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'braincode', '1234', 'admin'),
(2, 'z-draw', '123456', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id_question`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
