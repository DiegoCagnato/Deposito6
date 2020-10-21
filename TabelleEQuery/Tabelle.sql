/*
SQLyog Community v12.09 (64 bit)
MySQL - 10.4.14-MariaDB : Database - corsiinglese
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`corsiinglese` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `corsiinglese`;

/*Table structure for table `allievo` */

DROP TABLE IF EXISTS `allievo`;

CREATE TABLE `allievo` (
  `IdAllievo` char(3) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `DataNascita` date NOT NULL DEFAULT '2000-01-01',
  `Recapito` varchar(20) NOT NULL,
  `CorsoFrequentato` int(11) NOT NULL,
  `DataIscrizione` date NOT NULL,
  `CittaResidenza` varchar(50) NOT NULL DEFAULT 'NotInserted',
  PRIMARY KEY (`IdAllievo`),
  KEY `CorsoFrequentato` (`CorsoFrequentato`),
  CONSTRAINT `allievo_ibfk_1` FOREIGN KEY (`CorsoFrequentato`) REFERENCES `corso` (`CodiceProgressivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `allievo` */

insert  into `allievo`(`IdAllievo`,`Nome`,`Cognome`,`DataNascita`,`Recapito`,`CorsoFrequentato`,`DataIscrizione`,`CittaResidenza`) values ('A01','Andrea','Casati','1988-12-08','123',4,'2020-10-01','Lissone'),('A02','Daniele','Naja','1987-12-02','321',3,'2020-09-28','Bologna'),('A03','Elena','Cipolla','1989-11-04','456',2,'2020-09-03','Bologna'),('A04','Denise','Alta','1979-09-04','654',2,'2020-09-28','Bologna'),('A05','Gabriele','Rivolo','1988-09-17','789',1,'2020-10-02','Pechino'),('A06','Stefano','Battaglia','1988-04-15','987',1,'2020-10-01','Lissone'),('A07','Luisa','Corna','1975-02-15','111',5,'2020-10-03','Genova'),('A08','Giulia','Buongiorno','1969-02-22','222',1,'2020-09-29','Ginevra'),('A09','Luigi','Sole','1978-02-22','333',2,'2020-10-08','Milano'),('A10','Gaia','Luna','1998-07-22','444',3,'2020-09-29','Roma'),('A11','Paolo','Bonolis','1998-09-05','519',5,'2020-09-23','Roma'),('A12','Luca','Laurenti','1999-09-05','296',5,'2020-09-12','Roma'),('A13','Raul','Cremona','1993-09-05','196',1,'2020-08-12','Milano'),('A14','Simona','Ventura','1993-09-05','871',3,'2020-05-12','Milano'),('A15','Carlo','Conti','1986-09-05','271',3,'2020-08-12','Roma'),('A16','Luca','Nervi','1979-07-05','270',4,'2020-09-12','Genova'),('A17','Paolo','Bitta','1978-07-05','271',5,'2020-06-29','Genova'),('A18','Piero','Chiambretti','1956-07-05','201',1,'2020-07-29','Aosta'),('A19','Mago','Forest','1961-02-22','010',2,'2020-09-29','Nicosia'),('A20','Gialappas','Band','1961-02-22','000',4,'2020-08-27','Milano');

/*Table structure for table `conferenza` */

DROP TABLE IF EXISTS `conferenza`;

CREATE TABLE `conferenza` (
  `IdConferenza` char(3) NOT NULL,
  `GiornoEOra` datetime NOT NULL,
  `NomeConferenziere` varchar(50) NOT NULL,
  `Argomento` varchar(50) NOT NULL,
  PRIMARY KEY (`IdConferenza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `conferenza` */

insert  into `conferenza`(`IdConferenza`,`GiornoEOra`,`NomeConferenziere`,`Argomento`) values ('C01','2020-10-20 17:50:00','Gordon','Cucina Inglese'),('C02','2020-10-27 17:50:00','Roger','Musica Inglese');

/*Table structure for table `corso` */

DROP TABLE IF EXISTS `corso`;

CREATE TABLE `corso` (
  `IdLivello` char(3) NOT NULL,
  `CodiceProgressivo` int(11) NOT NULL AUTO_INCREMENT,
  `LibroTesto` varchar(50) DEFAULT NULL,
  `EsameFinale` char(2) NOT NULL,
  `DataAttivazione` date DEFAULT NULL,
  `NumeroIscritti` int(11) NOT NULL,
  `Insegnante` char(3) DEFAULT NULL,
  PRIMARY KEY (`CodiceProgressivo`),
  KEY `CodiceProgressivo` (`CodiceProgressivo`),
  KEY `Insegnante` (`Insegnante`),
  KEY `IdLivello` (`IdLivello`),
  CONSTRAINT `corso_ibfk_1` FOREIGN KEY (`Insegnante`) REFERENCES `insegnante` (`IdInsegnante`),
  CONSTRAINT `corso_ibfk_2` FOREIGN KEY (`IdLivello`) REFERENCES `livello` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `corso` */

insert  into `corso`(`IdLivello`,`CodiceProgressivo`,`LibroTesto`,`EsameFinale`,`DataAttivazione`,`NumeroIscritti`,`Insegnante`) values ('L01',1,'English For Beginners','No','2020-10-19',5,'I01'),('L02',2,'Intermediate English','No','2020-10-20',4,'I02'),('L03',3,'Muzy in Gondoland','Si','2020-10-26',4,'I02'),('L04',4,'AdvancedTopics','Si','2020-10-15',3,'I03'),('L05',5,'SuperEnglish','Si','2020-10-28',4,'I04');

/*Table structure for table `film` */

DROP TABLE IF EXISTS `film`;

CREATE TABLE `film` (
  `IdFilm` char(3) NOT NULL,
  `GiornoEOra` datetime NOT NULL,
  `NomeRegista` varchar(50) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `AnnoUscita` year(4) DEFAULT NULL,
  PRIMARY KEY (`IdFilm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `film` */

insert  into `film`(`IdFilm`,`GiornoEOra`,`NomeRegista`,`nome`,`AnnoUscita`) values ('F01','2020-10-16 17:30:00','Dario Argento','profondo rosso',1975),('F03','2020-10-30 17:30:00','Spike Lee','Jungle fever',1991),('F04','2020-11-07 17:30:00','Francis Ford Coppola','Apocalipse Now',1979),('F06','2020-11-21 17:30:00','Quentin Tarantino','Pulp Fiction',1994),('F07','2020-11-28 17:30:00','Stanley Kubrick','Full Metal Jacket',1987);

/*Table structure for table `insegnante` */

DROP TABLE IF EXISTS `insegnante`;

CREATE TABLE `insegnante` (
  `IdInsegnante` char(3) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL DEFAULT 'Not Inserted',
  `DataNascita` date NOT NULL DEFAULT '1990-01-01',
  `Indirizzo` varchar(50) NOT NULL,
  `CittaResidenza` varchar(50) NOT NULL DEFAULT 'New York',
  `Nazione` varchar(30) NOT NULL,
  PRIMARY KEY (`IdInsegnante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `insegnante` */

insert  into `insegnante`(`IdInsegnante`,`Nome`,`Cognome`,`DataNascita`,`Indirizzo`,`CittaResidenza`,`Nazione`) values ('I01','Albert','Zack','1965-02-09','Via Milano','Liverpool','Inghilterra'),('I02','Silvia','Penny','1966-09-09','Via Torino','Wellington','Nuova Zelanda'),('I03','Alexander','McTommy','1969-09-12','Via Trieste','Galway','Irlanda'),('I04','Sarah','Parker','1983-01-12','Via Roma','Seattle','USA'),('I05','Natasha','Stefanenko','1966-03-05','Via Mosca','San Pietroburgo','Russia');

/*Table structure for table `iscrizione` */

DROP TABLE IF EXISTS `iscrizione`;

CREATE TABLE `iscrizione` (
  `CodiceIscrizione` int(11) NOT NULL AUTO_INCREMENT,
  `Allievo` char(3) NOT NULL,
  `Film` char(3) DEFAULT NULL,
  `Conferenza` char(3) DEFAULT NULL,
  PRIMARY KEY (`CodiceIscrizione`),
  KEY `Attivita` (`Film`),
  KEY `Conferenza` (`Conferenza`),
  KEY `Allievo` (`Allievo`),
  CONSTRAINT `iscrizione_ibfk_2` FOREIGN KEY (`Film`) REFERENCES `film` (`IdFilm`),
  CONSTRAINT `iscrizione_ibfk_3` FOREIGN KEY (`Conferenza`) REFERENCES `conferenza` (`IdConferenza`),
  CONSTRAINT `iscrizione_ibfk_4` FOREIGN KEY (`Allievo`) REFERENCES `allievo` (`IdAllievo`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `iscrizione` */

insert  into `iscrizione`(`CodiceIscrizione`,`Allievo`,`Film`,`Conferenza`) values (1,'A01',NULL,'C01'),(11,'A04','F01',NULL),(12,'A07','F01',NULL),(13,'A08','F06',NULL),(14,'A11','F07',NULL),(15,'A12','F07',NULL),(16,'A20','F04',NULL),(17,'A19','F03',NULL),(18,'A14','F03',NULL),(19,'A03',NULL,'C02'),(20,'A02',NULL,'C02'),(21,'A05',NULL,'C02');

/*Table structure for table `lezioniprivate` */

DROP TABLE IF EXISTS `lezioniprivate`;

CREATE TABLE `lezioniprivate` (
  `IdLezioniPrivate` char(3) NOT NULL,
  `Allievo` char(3) NOT NULL,
  `Insegnante` char(3) NOT NULL,
  `Data` date NOT NULL,
  `Durata` varchar(10) DEFAULT NULL,
  `DurataLezione` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdLezioniPrivate`),
  KEY `Allievo` (`Allievo`),
  KEY `Insegnante` (`Insegnante`),
  CONSTRAINT `lezioniprivate_ibfk_1` FOREIGN KEY (`Allievo`) REFERENCES `allievo` (`IdAllievo`),
  CONSTRAINT `lezioniprivate_ibfk_2` FOREIGN KEY (`Insegnante`) REFERENCES `insegnante` (`IdInsegnante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `lezioniprivate` */

insert  into `lezioniprivate`(`IdLezioniPrivate`,`Allievo`,`Insegnante`,`Data`,`Durata`,`DurataLezione`) values ('L01','A02','I02','2020-10-31',NULL,2),('L02','A05','I04','2020-11-04',NULL,1),('L03','A04','I01','2020-10-23',NULL,3),('L04','A08','I05','2020-10-20',NULL,3),('L05','A18','I05','2020-10-21',NULL,2),('L06','A10','I05','2020-10-15',NULL,3),('l07','A08','I05','2020-10-27',NULL,3);

/*Table structure for table `livello` */

DROP TABLE IF EXISTS `livello`;

CREATE TABLE `livello` (
  `Id` char(3) NOT NULL,
  `Livello` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `livello` */

insert  into `livello`(`Id`,`Livello`) values ('L01','Elementary'),('L02','Intermediate'),('L03','First Certificate'),('L04','Advanced'),('L05','Proficiency');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
