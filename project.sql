-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: user
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accused_details`
--

DROP TABLE IF EXISTS `accused_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accused_details` (
  `accused_name` varchar(45) NOT NULL,
  `accused_phoneno` varchar(45) DEFAULT NULL,
  `type_of_crime` varchar(45) NOT NULL,
  `loc_of_crime` varchar(45) DEFAULT NULL,
  `date_of_crime` date NOT NULL,
  `crime_incident_desc` varchar(500) NOT NULL,
  `user_id` int NOT NULL,
  `accused_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`accused_id`),
  UNIQUE KEY `accused_phoneno_UNIQUE` (`accused_phoneno`),
  KEY `user_id_fk` (`user_id`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accused_details`
--

LOCK TABLES `accused_details` WRITE;
/*!40000 ALTER TABLE `accused_details` DISABLE KEYS */;
INSERT INTO `accused_details` VALUES ('Rohini sharma','7546812395','Hit and Run','Near Dugri main market, Ludhiana','2021-06-10','Was going to the office for work a person hit me with his rod taken away all my money.',31,12,'Investigating');
/*!40000 ALTER TABLE `accused_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminlogin` (
  `username` varchar(40) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogin`
--

LOCK TABLES `adminlogin` WRITE;
/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` VALUES ('Adarsh','Adarsh1234'),('Alok','Alok12');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_info`
--

DROP TABLE IF EXISTS `news_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_info` (
  `news_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `desc_event` varchar(1500) NOT NULL,
  `image` varchar(30) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_info`
--

LOCK TABLES `news_info` WRITE;
/*!40000 ALTER TABLE `news_info` DISABLE KEYS */;
INSERT INTO `news_info` VALUES (10,'Quick police action after cyber fraud; Rs 4.5 Lakh restored to bank account','Devalla Damodara Rao, an employee at Bharat Heavy Water Plant in Manuguru, received a message to link his Aadhar number to the cell phone number. Rao clicked the link. Cyber fraudsters urged him to send Rs 10 to find out whether the phone number was linked to the Aadhaar number. He did so from his account via net-banking. He was surprised that, soon, a deposit of Rs 6.10 lakh was transferred from his bank account number.','Crime Reporting/crime1.jpg','2021-06-07'),(11,'Man orders black fungus drug online; duped of Rs 8 lakh.','A man who tried to buy medicine online for black fungus disease was cheated of Rs 8 lakh. This is just one of several such cases where the public are being cheated by cyber fraudsters. Fraudsters are posting bogus advertisements on various websites and social media platforms in the name of providing medicine for black fungus and Covid-19. They are deceiving the public by giving fake assurances of delivering drugs within hours of ordering.','Crime Reporting/crime2.jpg','2021-06-07'),(12,'Private hospital staff arrested in AP for sale of remdesivir in black. ','A few employees of a private hospital were caught red-handed while selling remdesivir injections in black market. It was shocking more so as the vials were meant to be administrated to some patients. But they misled the patients into believing that the entire 6-vial course was completed. The incident came to light on Sunday when the Two Town police nabbed four members and seized 6 remdesivir injection vials.','Crime Reporting/4.jpg','2021-06-07'),(13,'lksjdkjfdlsjfkdljg','kdlfjskjfklsdjf fddfg,gfgfgfghgh dfhmkdhfg hfkdjhfghf ghkfhjfg hkljhjjfkgh gfhjkhyuwsdwna sdgasyudgsa fdsjfhuidkhf dgjkhgjkhdmg khgkjdshgm fkhgjdhghf dhgshdgmdgiugem,nsdkjfdsng sndjkhkjgsdkjhjskndkjds shdghsedgnkjdg nhgmsdndfslkdjflsdkjffss','Crime Reporting/photo1.webp','2021-06-10'),(14,'133 people booked for illegal sale of COVID-19 drugs, FDA tells Bombay HC','            In the last few months, the Food and Drug Administration (FDA) of Maharashtra has lodged complaints against 133 people for their alleged involvement in the illegal sale of COVID-19 treatment drugs, including Remdesivir and Tocilizumab injections, among others. The information was shared by the FDA in an affidavit submitted in the Bombay High Court in response to a petition alleging that the executive was not acting against people involved in black-marketing of COVID-19 treatment drugs.            ','Crime Reporting/photo2.webp','2021-06-10');
/*!40000 ALTER TABLE `news_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) NOT NULL,
  `phno` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pass1` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `phno_UNIQUE` (`phno`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (31,'Adarsh ','7901880808','nmae@gmail.com','Adarsh1','Phase 1, Dugri, Urban Estate Dugri, Ludhiana, Punjab, India\r\n1055'),(32,'Alok','9915674382','hello@gmail.com','Alok1234','sdakljdlksjad'),(33,'Saksham Sharma','7123456732','saksham@gmail.com','Saksham12','daksldaf lskadhflkjsdhaf sadlkfjlksafj'),(34,'Rohan Grover','9567345783','rohan@gmail.com','Rohan1','kljsflkjslkdfd'),(35,'Rohit Sharma','8765342860','rohit@gmail.com','Rohit12','kljaskdjas'),(36,'Ankush verma','8982892833','ankush12@gmail.com','Ankush12','ekwhgekjhrjka fsdflk'),(37,'Raunak Grover','9898787887','Raunak@gmail.com','Raunak12','sdkhlslkjfnksdng'),(39,'Sakshi Sharma','8360777931','Sakshi@gmail.com','Sakshi1','sakjshdjahkj kjfhaj');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-11 20:43:06
