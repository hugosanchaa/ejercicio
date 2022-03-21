-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: bricoware
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(15) NOT NULL,
  `Description` longtext DEFAULT NULL,
  PRIMARY KEY (`CategoryID`),
  KEY `CategoryName` (`CategoryName`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Beverages','Soft drinks, coffees, teas, beers, and ales'),(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings'),(3,'Confections','Desserts, candies, and sweet breads'),(4,'Dairy Products','Cheeses'),(5,'Grains/Cereals','Breads, crackers, pasta, and cereal'),(6,'Meat/Poultry','Prepared meats'),(7,'Produce','Dried fruit and bean curd'),(8,'Seafood','Seaweed and fish');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `CustomerID` char(5) NOT NULL,
  `ContactName` varchar(30) DEFAULT NULL,
  `ContactTitle` varchar(30) DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `Phone` varchar(24) DEFAULT NULL,
  `Fax` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `City` (`City`),
  KEY `PostalCode` (`PostalCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('ALFKI','Maria Anders','Sales Representative','Obere Str. 57','Berlin','12209','Germany','030-0074321','030-0076545'),('ANATR','Ana Trujillo','Owner','Avda. de la Constituci?n 2222','M?xico D.F.','05021','Mexico','(5) 555-4729','(5) 555-3745'),('ANTON','Antonio Moreno','Owner','Mataderos  2312','M?xico D.F.','05023','Mexico','(5) 555-3932',NULL),('AROUT','Thomas Hardy','Sales Representative','120 Hanover Sq.','London','WA1 1DP','UK','(171) 555-7788','(171) 555-6750'),('BERGS','Christina Berglund','Order Administrator','Berguvsv?gen  8','Lule','S-958 22','Sweden','0921-12 34 65','0921-12 34 67'),('BLAUS','Hanna Moos','Sales Representative','Forsterstr. 57','Mannheim','68306','Germany','0621-08460','0621-08924'),('BLONP','Fr?d?rique Citeaux','Marketing Manager','24, place Kl?ber','Strasbourg','67000','France','88.60.15.31','88.60.15.32'),('BOLID','Mart?n Sommer','Owner','C/ Araquil, 67','Madrid','28023','Spain','(91) 555 22 82','(91) 555 91 99'),('BONAP','Laurence Lebihan','Owner','12, rue des Bouchers','Marseille','13008','France','91.24.45.40','91.24.45.41'),('BOTTM','Elizabeth Lincoln','Accounting Manager','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada','(604) 555-4729','(604) 555-3745'),('BSBEV','Victoria Ashworth','Sales Representative','Fauntleroy Circus','London','EC2 5NT','UK','(171) 555-1212',NULL),('CACTU','Patricio Simpson','Sales Agent','Cerrito 333','Buenos Aires','1010','Argentina','(1) 135-5555','(1) 135-4892'),('CENTC','Francisco Chang','Marketing Manager','Sierras de Granada 9993','M?xico D.F.','05022','Mexico','(5) 555-3392','(5) 555-7293'),('CHOPS','Yang Wang','Owner','Hauptstr. 29','Bern','3012','Switzerland','0452-076545',NULL),('COMMI','Pedro Afonso','Sales Associate','Av. dos Lus?adas, 23','Sao Paulo','05432-043','Brazil','(11) 555-7647',NULL),('CONSH','Elizabeth Brown','Sales Representative','Berkeley Gardens 12  Brewery','London','WX1 6LT','UK','(171) 555-2282','(171) 555-9199'),('DRACD','Sven Ottlieb','Order Administrator','Walserweg 21','Aachen','52066','Germany','0241-039123','0241-059428'),('DUMON','Janine Labrune','Owner','67, rue des Cinquante Otages','Nantes','44000','France','40.67.88.88','40.67.89.89'),('EASTC','Ann Devon','Sales Agent','35 King George','London','WX3 6FW','UK','(171) 555-0297','(171) 555-3373'),('ERNSH','Roland Mendel','Sales Manager','Kirchgasse 6','Graz','8010','Austria','7675-3425','7675-3426'),('FAMIA','Aria Cruz','Marketing Assistant','Rua Or?s, 92','Sao Paulo','05442-030','Brazil','(11) 555-9857',NULL),('FISSA','Diego Roel','Accounting Manager','C/ Moralzarzal, 86','Madrid','28034','Spain','(91) 555 94 44','(91) 555 55 93'),('FOLIG','Martine Ranc','Assistant Sales Agent','184, chauss?e de Tournai','Lille','59000','France','20.16.10.16','20.16.10.17'),('FOLKO','Maria Larsson','Owner','?kergatan 24','Br?cke','S-844 67','Sweden','0695-34 67 21',NULL),('FRANK','Peter Franken','Marketing Manager','Berliner Platz 43','M?nchen','80805','Germany','089-0877310','089-0877451'),('FRANR','Carine Schmitt','Marketing Manager','54, rue Royale','Nantes','44000','France','40.32.21.21','40.32.21.20'),('FRANS','Paolo Accorti','Sales Representative','Via Monte Bianco 34','Torino','10100','Italy','011-4988260','011-4988261'),('FURIB','Lino Rodriguez','Sales Manager','Jardim das rosas n. 32','Lisboa','1675','Portugal','(1) 354-2534','(1) 354-2535'),('GALED','Eduardo Saavedra','Marketing Manager','Rambla de Catalu?a, 23','Barcelona','08022','Spain','(93) 203 4560','(93) 203 4561'),('GODOS','Jos? Pedro Freyre','Sales Manager','C/ Romero, 33','Sevilla','41101','Spain','(95) 555 82 82',NULL),('GOURL','Andr? Fonseca','Sales Associate','Av. Brasil, 442','Campinas','04876-786','Brazil','(11) 555-9482',NULL),('GREAL','Howard Snyder','Marketing Manager','2732 Baker Blvd.','Eugene','97403','USA','(503) 555-7555',NULL),('GROSR','Manuel Pereira','Owner','5? Ave. Los Palos Grandes','Caracas','1081','Venezuela','(2) 283-2951','(2) 283-3397'),('HANAR','Mario Pontes','Accounting Manager','Rua do Pa?o, 67','Rio de Janeiro','05454-876','Brazil','(21) 555-0091','(21) 555-8765'),('HILAA','Carlos Hern?ndez','Sales Representative','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist?bal','5022','Venezuela','(5) 555-1340','(5) 555-1948'),('HUNGC','Yoshi Latimer','Sales Representative','City Center Plaza 516 Main St.','Elgin','97827','USA','(503) 555-6874','(503) 555-2376'),('HUNGO','Patricia McKenna','Sales Associate','8 Johnstown Road','Cork',NULL,'Ireland','2967 542','2967 3333'),('ISLAT','Helen Bennett','Marketing Manager','Garden House Crowther Way','Cowes','PO31 7PJ','UK','(198) 555-8888',NULL),('KOENE','Philip Cramer','Sales Associate','Maubelstr. 90','Brandenburg','14776','Germany','0555-09876',NULL),('LACOR','Daniel Tonini','Sales Representative','67, avenue de l\'Europe','Versailles','78000','France','30.59.84.10','30.59.85.11'),('LAMAI','Annette Roulet','Sales Manager','1 rue Alsace-Lorraine','Toulouse','31000','France','61.77.61.10','61.77.61.11'),('LAUGB','Yoshi Tannamuri','Marketing Assistant','1900 Oak St.','Vancouver','V3F 2K1','Canada','(604) 555-3392','(604) 555-7293'),('LAZYK','John Steel','Marketing Manager','12 Orchestra Terrace','Walla Walla','99362','USA','(509) 555-7969','(509) 555-6221'),('LEHMS','Renate Messner','Sales Representative','Magazinweg 7','Frankfurt a.M.','60528','Germany','069-0245984','069-0245874'),('LETSS','Jaime Yorres','Owner','87 Polk St. Suite 5','San Francisco','94117','USA','(415) 555-5938',NULL),('LILAS','Carlos Gonz?lez','Accounting Manager','Carrera 52 con Ave. Bol?var #65-98 Llano Largo','Barquisimeto','3508','Venezuela','(9) 331-6954','(9) 331-7256'),('LINOD','Felipe Izquierdo','Owner','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela','(8) 34-56-12','(8) 34-93-93'),('LONEP','Fran Wilson','Sales Manager','89 Chiaroscuro Rd.','Portland','97219','USA','(503) 555-9573','(503) 555-9646'),('MAGAA','Giovanni Rovelli','Marketing Manager','Via Ludovico il Moro 22','Bergamo','24100','Italy','035-640230','035-640231'),('MAISD','Catherine Dewey','Sales Agent','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgium','(02) 201 24 67','(02) 201 24 68'),('MEREP','Jean Fresni?re','Marketing Assistant','43 rue St. Laurent','Montr?al','H1J 1C3','Canada','(514) 555-8054','(514) 555-8055'),('MORGK','Alexander Feuer','Marketing Assistant','Heerstr. 22','Leipzig','04179','Germany','0342-023176',NULL),('NORTS','Simon Crowther','Sales Associate','South House 300 Queensbridge','London','SW7 1RZ','UK','(171) 555-7733','(171) 555-2530'),('OCEAN','Yvonne Moncada','Sales Agent','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires','1010','Argentina','(1) 135-5333','(1) 135-5535'),('OLDWO','Rene Phillips','Sales Representative','2743 Bering St.','Anchorage','99508','USA','(907) 555-7584','(907) 555-2880'),('OTTIK','Henriette Pfalzheim','Owner','Mehrheimerstr. 369','K?ln','50739','Germany','0221-0644327','0221-0765721'),('PARIS','Marie Bertrand','Owner','265, boulevard Charonne','Paris','75012','France','(1) 42.34.22.66','(1) 42.34.22.77'),('PERIC','Guillermo Fern?ndez','Sales Representative','Calle Dr. Jorge Cash 321','M?xico D.F.','05033','Mexico','(5) 552-3745','(5) 545-3745'),('PICCO','Georg Pipps','Sales Manager','Geislweg 14','Salzburg','5020','Austria','6562-9722','6562-9723'),('PRINI','Isabel de Castro','Sales Representative','Estrada da sa?de n. 58','Lisboa','1756','Portugal','(1) 356-5634',NULL),('QUEDE','Bernardo Batista','Accounting Manager','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brazil','(21) 555-4252','(21) 555-4545'),('QUEEN','L?cia Carvalho','Marketing Assistant','Alameda dos Can?rios, 891','Sao Paulo','05487-020','Brazil','(11) 555-1189',NULL),('QUICK','Horst Kloss','Accounting Manager','Taucherstra?e 10','Cunewalde','01307','Germany','0372-035188',NULL),('RANCH','Sergio Guti?rrez','Sales Representative','Av. del Libertador 900','Buenos Aires','1010','Argentina','(1) 123-5555','(1) 123-5556'),('RATTC','Paula Wilson','Assistant Sales Representative','2817 Milton Dr.','Albuquerque','87110','USA','(505) 555-5939','(505) 555-3620'),('REGGC','Maurizio Moroni','Sales Associate','Strada Provinciale 124','Reggio Emilia','42100','Italy','0522-556721','0522-556722'),('RICAR','Janete Limeira','Assistant Sales Agent','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brazil','(21) 555-3412',NULL),('RICSU','Michael Holz','Sales Manager','Grenzacherweg 237','Gen?ve','1203','Switzerland','0897-034214',NULL),('ROMEY','Alejandra Camino','Accounting Manager','Gran V?a, 1','Madrid','28001','Spain','(91) 745 6200','(91) 745 6210'),('SANTG','Jonas Bergulfsen','Owner','Erling Skakkes gate 78','Stavern','4110','Norway','07-98 92 35','07-98 92 47'),('SAVEA','Jose Pavarotti','Sales Representative','187 Suffolk Ln.','Boise','83720','USA','(208) 555-8097',NULL),('SEVES','Hari Kumar','Sales Manager','90 Wadhurst Rd.','London','OX15 4NB','UK','(171) 555-1717','(171) 555-5646'),('SIMOB','Jytte Petersen','Owner','Vinb?ltet 34','Kobenhavn','1734','Denmark','31 12 34 56','31 13 35 57'),('SPECD','Dominique Perrier','Marketing Manager','25, rue Lauriston','Paris','75016','France','(1) 47.55.60.10','(1) 47.55.60.20'),('SPLIR','Art Braunschweiger','Sales Manager','P.O. Box 555','Lander','82520','USA','(307) 555-4680','(307) 555-6525'),('SUPRD','Pascale Cartrain','Accounting Manager','Boulevard Tirou, 255','Charleroi','B-6000','Belgium','(071) 23 67 22 20','(071) 23 67 22 21'),('THEBI','Liz Nixon','Marketing Manager','89 Jefferson Way Suite 2','Portland','97201','USA','(503) 555-3612',NULL),('THECR','Liu Wong','Marketing Assistant','55 Grizzly Peak Rd.','Butte','59801','USA','(406) 555-5834','(406) 555-8083'),('TOMSP','Karin Josephs','Marketing Manager','Luisenstr. 48','M?nster','44087','Germany','0251-031259','0251-035695'),('TORTU','Miguel Angel Paolino','Owner','Avda. Azteca 123','M?xico D.F.','05033','Mexico','(5) 555-2933',NULL),('TRADH','Anabela Domingues','Sales Representative','Av. In?s de Castro, 414','Sao Paulo','05634-030','Brazil','(11) 555-2167','(11) 555-2168'),('TRAIH','Helvetius Nagy','Sales Associate','722 DaVinci Blvd.','Kirkland','98034','USA','(206) 555-8257','(206) 555-2174'),('VAFFE','Palle Ibsen','Sales Manager','Smagsloget 45','?rhus','8200','Denmark','86 21 32 43','86 22 33 44'),('VICTE','Mary Saveley','Sales Agent','2, rue du Commerce','Lyon','69004','France','78.32.54.86','78.32.54.87'),('VINET','Paul Henriot','Accounting Manager','59 rue de l\'Abbaye','Reims','51100','France','26.47.15.10','26.47.15.11'),('WANDK','Rita M?ller','Sales Representative','Adenauerallee 900','Stuttgart','70563','Germany','0711-020361','0711-035428'),('WARTH','Pirkko Koskitalo','Accounting Manager','Torikatu 38','Oulu','90110','Finland','981-443655','981-443655'),('WELLI','Paula Parente','Sales Manager','Rua do Mercado, 12','Resende','08737-363','Brazil','(14) 555-8122',NULL),('WHITC','Karl Jablonski','Owner','305 - 14th Ave. S. Suite 3B','Seattle','98128','USA','(206) 555-4112','(206) 555-4115'),('WILMK','Matti Karttunen','Owner/Marketing Assistant','Keskuskatu 45','Helsinki','21240','Finland','90-224 8858','90-224 8858');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregados`
--

DROP TABLE IF EXISTS `empregados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empregados` (
  `EmployeeID` int(11) NOT NULL AUTO_INCREMENT,
  `LastName` varchar(20) NOT NULL,
  `FirstName` varchar(10) NOT NULL,
  `BirthDate` datetime DEFAULT NULL,
  `HireDate` datetime DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `HomePhone` varchar(24) DEFAULT NULL,
  `Extension` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `LastName` (`LastName`),
  KEY `PostalCode` (`PostalCode`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregados`
--

LOCK TABLES `empregados` WRITE;
/*!40000 ALTER TABLE `empregados` DISABLE KEYS */;
INSERT INTO `empregados` VALUES (1,'Davolio','Nancy','1948-12-08 00:00:00','1992-05-01 00:00:00','507 - 20th Ave. E.\r\nApt. 2A','Seattle','98122','USA','(206) 555-9857','5467'),(2,'Fuller','Andrew','1952-02-19 00:00:00','1992-08-14 00:00:00','908 W. Capital Way','Tacoma','98401','USA','(206) 555-9482','3457'),(3,'Leverling','Janet','1963-08-30 00:00:00','1992-04-01 00:00:00','722 Moss Bay Blvd.','Kirkland','98033','USA','(206) 555-3412','3355'),(4,'Peacock','Margaret','1937-09-19 00:00:00','1993-05-03 00:00:00','4110 Old Redmond Rd.','Redmond','98052','USA','(206) 555-8122','5176'),(5,'Buchanan','Steven','1955-03-04 00:00:00','1993-10-17 00:00:00','14 Garrett Hill','London','SW1 8JR','UK','(71) 555-4848','3453'),(6,'Suyama','Michael','1963-07-02 00:00:00','1993-10-17 00:00:00','Coventry House\r\nMiner Rd.','London','EC2 7JR','UK','(71) 555-7773','428'),(7,'King','Robert','1960-05-29 00:00:00','1994-01-02 00:00:00','Edgeham Hollow\r\nWinchester Way','London','RG1 9SP','UK','(71) 555-5598','465'),(8,'Callahan','Laura','1958-01-09 00:00:00','1994-03-05 00:00:00','4726 - 11th Ave. N.E.','Seattle','98105','USA','(206) 555-1189','2344'),(9,'Dodsworth','Anne','1966-01-27 00:00:00','1994-11-15 00:00:00','7 Houndstooth Rd.','London','WG2 7LT','UK','(71) 555-4444','452');
/*!40000 ALTER TABLE `empregados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(40) NOT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `QuantityPerUnit` varchar(20) DEFAULT NULL,
  `UnitPrice` decimal(19,4) DEFAULT NULL,
  `UnitsInStock` smallint(6) DEFAULT NULL,
  `UnitsOnOrder` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `CategoriesProducts` (`CategoryID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `ProductName` (`ProductName`),
  KEY `SupplierID` (`SupplierID`),
  KEY `SuppliersProducts` (`SupplierID`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Chai',8,1,'10 boxes x 30 bags',18.0000,39,0),(2,'Chang',1,1,'24 - 12 oz bottles',19.0000,17,40),(3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10.0000,13,70),(4,'Chef Anton\'s Cajun Seasoning',2,2,'48 - 6 oz jars',22.0000,53,0),(5,'Chef Anton\'s Gumbo Mix',2,2,'36 boxes',21.3500,0,0),(6,'Grandma\'s Boysenberry Spread',3,2,'12 - 8 oz jars',25.0000,120,0),(7,'Uncle Bob\'s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30.0000,15,0),(8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40.0000,6,0),(9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97.0000,29,0),(10,'Ikura',4,8,'12 - 200 ml jars',31.0000,31,0),(11,'Queso Cabrales',5,4,'1 kg pkg.',21.0000,22,30),(12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38.0000,86,0),(13,'Konbu',6,8,'2 kg box',6.0000,24,0),(14,'Tofu',6,7,'40 - 100 g pkgs.',23.2500,35,0),(15,'Genen Shouyu',6,2,'24 - 250 ml bottles',13.0000,39,0),(16,'Pavlova',7,3,'32 - 500 g boxes',17.4500,29,0),(17,'Alice Mutton',7,6,'20 - 1 kg tins',39.0000,0,0),(18,'Carnarvon Tigers',7,8,'16 kg pkg.',62.5000,42,0),(19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.2000,25,0),(20,'Sir Rodney\'s Marmalade',8,3,'30 gift boxes',81.0000,40,0),(21,'Sir Rodney\'s Scones',8,3,'24 pkgs. x 4 pieces',10.0000,3,40),(22,'Gustaf\'s Kn?ckebr?d',9,5,'24 - 500 g pkgs.',21.0000,104,0),(23,'Tunnbr?d',9,5,'12 - 250 g pkgs.',9.0000,61,0),(24,'Guaran? Fant?stica',10,1,'12 - 355 ml cans',4.5000,20,0),(25,'NuNuCa Nu?-Nougat-Creme',11,3,'20 - 450 g glasses',14.0000,76,0),(26,'Gumb?r Gummib?rchen',11,3,'100 - 250 g bags',31.2300,15,0),(27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',43.9000,49,0),(28,'R?ssle Sauerkraut',12,7,'25 - 825 g cans',45.6000,26,0),(29,'Th?ringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.7900,0,0),(30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.8900,10,0),(31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.5000,0,70),(32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32.0000,9,40),(33,'Geitost',15,4,'500 g',2.5000,112,0),(34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14.0000,111,0),(35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18.0000,20,0),(36,'Inlagd Sill',17,8,'24 - 250 g  jars',19.0000,112,0),(37,'Gravad lax',17,8,'12 - 500 g pkgs.',26.0000,11,50),(38,'C?te de Blaye',18,1,'12 - 75 cl bottles',263.5000,17,0),(39,'Chartreuse verte',18,1,'750 cc per bottle',18.0000,69,0),(40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18.4000,123,0),(41,'Jack\'s New England Clam Chowder',19,8,'12 - 12 oz cans',9.6500,85,0),(42,'Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14.0000,26,0),(43,'Ipoh Coffee',20,1,'16 - 500 g tins',46.0000,17,10),(44,'Gula Malacca',20,2,'20 - 2 kg bags',19.4500,27,0),(45,'Rogede sild',21,8,'1k pkg.',9.5000,5,70),(46,'Spegesild',21,8,'4 - 450 g glasses',12.0000,95,0),(47,'Zaanse koeken',22,3,'10 - 4 oz boxes',9.5000,36,0),(48,'Chocolade',22,3,'10 pkgs.',12.7500,15,70),(49,'Maxilaku',23,3,'24 - 50 g pkgs.',20.0000,10,60),(50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16.2500,65,0),(51,'Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53.0000,20,0),(52,'Filo Mix',24,5,'16 - 2 kg boxes',7.0000,38,0),(53,'Perth Pasties',24,6,'48 pieces',32.8000,0,0),(54,'Tourti?re',25,6,'16 pies',7.4500,21,0),(55,'P?t? chinois',25,6,'24 boxes x 2 pies',24.0000,115,0),(56,'Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38.0000,21,10),(57,'Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.5000,36,0),(58,'Escargots de Bourgogne',27,8,'24 pieces',13.2500,62,0),(59,'Raclette Courdavault',28,4,'5 kg pkg.',55.0000,79,0),(60,'Camembert Pierrot',28,4,'15 - 300 g rounds',34.0000,19,0),(61,'Sirop d\'?rable',29,2,'24 - 500 ml bottles',28.5000,113,0),(62,'Tarte au sucre',29,3,'48 pies',49.3000,17,0),(63,'Vegie-spread',7,2,'15 - 625 g jars',43.9000,24,0),(64,'Wimmers gute Semmelkn?del',12,5,'20 bags x 4 pieces',33.2500,22,80),(65,'Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',21.0500,76,0),(66,'Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17.0000,4,100),(67,'Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14.0000,52,0),(68,'Scottish Longbreads',8,3,'10 boxes x 8 pieces',12.5000,6,10),(69,'Gudbrandsdalsost',15,4,'10 kg pkg.',36.0000,26,0),(70,'Outback Lager',7,1,'24 - 355 ml bottles',15.0000,15,10),(71,'Flotemysost',15,4,'10 - 500 g pkgs.',21.5000,26,0),(72,'Mozzarella di Giovanni',14,4,'24 - 200 g pkgs.',34.8000,14,0),(73,'R?d Kaviar',17,8,'24 - 150 g jars',15.0000,101,0),(74,'Longlife Tofu',4,7,'5 kg pkg.',10.0000,4,20),(75,'Rh?nbr?u Klosterbier',12,1,'24 - 0.5 l bottles',7.7500,125,0),(76,'Lakkalik??ri',23,1,'500 ml',18.0000,57,0),(77,'Original Frankfurter gr?ne So?e',12,2,'12 boxes',13.0000,32,0),(91,'testSP',NULL,NULL,NULL,0.0000,0,0),(92,'testSP',NULL,NULL,NULL,0.0000,0,0),(93,'testSP',NULL,NULL,NULL,0.0000,0,0),(94,'test',NULL,NULL,'3',4.0000,0,0);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provedores`
--

DROP TABLE IF EXISTS `provedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provedores` (
  `SupplierID` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(40) NOT NULL,
  `ContactName` varchar(30) DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `HomePage` longtext DEFAULT NULL,
  PRIMARY KEY (`SupplierID`),
  KEY `CompanyName` (`CompanyName`),
  KEY `PostalCode` (`PostalCode`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provedores`
--

LOCK TABLES `provedores` WRITE;
/*!40000 ALTER TABLE `provedores` DISABLE KEYS */;
INSERT INTO `provedores` VALUES (1,'Exotic Liquids','Charlotte Cooper','49 Gilbert St.','London','EC1 4SD','UK',NULL),(2,'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA','#CAJUN.HTM#'),(3,'Grandma Kelly\'s Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA',NULL),(4,'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tokyo','100','Japan',NULL),(5,'Cooperativa de Quesos \'Las Cabras\'','Antonio del Valle Saavedra','Calle del Rosal 4','Oviedo','33007','Spain',NULL),(6,'Mayumi\'s','Mayumi Ohno','92 Setsuko Chuo-ku','Osaka','545','Japan','Mayumi\'s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#'),(7,'Pavlova, Ltd.','Ian Devling','74 Rose St. Moonie Ponds','Melbourne','3058','Australia',NULL),(8,'Specialty Biscuits, Ltd.','Peter Wilson','29 King\'s Way','Manchester','M14 GSD','UK',NULL),(9,'PB Kn?ckebr?d AB','Lars Peterson','Kaloadagatan 13','G?teborg','S-345 67','Sweden',NULL),(10,'Refrescos Americanas LTDA','Carlos Diaz','Av. das Americanas 12.890','Sao Paulo','5442','Brazil',NULL),(11,'Heli S??waren GmbH & Co. KG','Petra Winkler','Tiergartenstra?e 5','Berlin','10785','Germany',NULL),(12,'Plutzer Lebensmittelgro?m?rkte AG','Martin Bein','Bogenallee 51','Frankfurt','60439','Germany','Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#'),(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Frahmredder 112a','Cuxhaven','27478','Germany',NULL),(14,'Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75','Ravenna','48100','Italy','#FORMAGGI.HTM#'),(15,'Norske Meierier','Beate Vileid','Hatlevegen 5','Sandvika','1320','Norway',NULL),(16,'Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue Suite 210','Bend','97101','USA',NULL),(17,'Svensk Sj?f?da AB','Michael Bj?rn','Brovallav?gen 231','Stockholm','S-123 45','Sweden',NULL),(18,'Aux joyeux eccl?siastiques','Guyl?ne Nodier','203, Rue des Francs-Bourgeois','Paris','75004','France',NULL),(19,'New England Seafood Cannery','Robb Merchant','Order Processing Dept. 2100 Paul Revere Blvd.','Boston','02134','USA',NULL),(20,'Leka Trading','Chandra Leka','471 Serangoon Loop, Suite #402','Singapore','0512','Singapore',NULL),(21,'Lyngbysild','Niels Petersen','Lyngbysild Fiskebakken 10','Lyngby','2800','Denmark',NULL),(22,'Zaanse Snoepfabriek','Dirk Luchte','Verkoop Rijnweg 22','Zaandam','9999 ZZ','Netherlands',NULL),(23,'Karkki Oy','Anne Heikkonen','Valtakatu 12','Lappeenranta','53120','Finland',NULL),(24,'G\'day, Mate','Wendy Mackenzie','170 Prince Edward Parade Hunter\'s Hill','Sydney','2042','Australia','G\'day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#'),(25,'Ma Maison','Jean-Guy Lauzon','2960 Rue St. Laurent','Montr?al','H1J 1C3','Canada',NULL),(26,'Pasta Buttini s.r.l.','Giovanni Giudici','Via dei Gelsomini, 153','Salerno','84100','Italy',NULL),(27,'Escargots Nouveaux','Marie Delamare','22, rue H. Voiron','Montceau','71300','France',NULL),(28,'Gai p?turage','Eliane Noz','Bat. B 3, rue des Alpes','Annecy','74000','France',NULL),(29,'For?ts d\'?rables','Chantal Goulet','148 rue Chasseur','Ste-Hyacinthe','J2S 7S8','Canada',NULL);
/*!40000 ALTER TABLE `provedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-21 12:39:38
