/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.27-MariaDB : Database - movie_recommendation
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`movie_recommendation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `movie_recommendation`;

/*Table structure for table `friend` */

DROP TABLE IF EXISTS `friend`;

CREATE TABLE `friend` (
  `friendship_id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `established_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`friendship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `friend` */

insert  into `friend`(`friendship_id`,`status`,`established_date`) values 
(1,'Accepted','2023-10-13 03:47:26'),
(2,'Accepted','2023-10-13 03:47:29'),
(3,'Accepted','2023-10-13 03:47:31');

/*Table structure for table `friendship` */

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `friendship_id` int(11) NOT NULL,
  `user_id1` int(11) DEFAULT NULL,
  `user_id2` int(11) DEFAULT NULL,
  PRIMARY KEY (`friendship_id`),
  KEY `user_id1` (`user_id1`),
  KEY `user_id2` (`user_id2`),
  CONSTRAINT `friendship_ibfk_1` FOREIGN KEY (`user_id1`) REFERENCES `user` (`user_id`),
  CONSTRAINT `friendship_ibfk_2` FOREIGN KEY (`user_id2`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `friendship` */

insert  into `friendship`(`friendship_id`,`user_id1`,`user_id2`) values 
(0,5,7),
(1,2,4),
(2,10,4),
(3,6,2);

/*Table structure for table `movie` */

DROP TABLE IF EXISTS `movie`;

CREATE TABLE `movie` (
  `movie_id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  `release_year` varchar(10) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `ratings` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `movie` */

insert  into `movie`(`movie_id`,`title`,`director`,`release_year`,`genre`,`description`,`ratings`) values 
(1,'The Shawshank Redemption','Frank Darabont','1994','Drama','Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.','9.3'),
(2,'The Godfather','Francis Ford Coppola','1972','Crime, Drama','The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.','9.2'),
(3,'The Dark Knight','Christopher Nolan','2008','Action, Crime, Drama','When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.','9.0'),
(4,'Pulp Fiction','Quentin Tarantino','1994','Crime, Drama','The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.','8.9'),
(5,'Schindler\'s List','Steven Spielberg','1993','Biography, Drama, History','In German-occupied Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.','8.9'),
(6,'Forrest Gump','Robert Zemeckis','1994','Drama, Romance','The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.','8.8'),
(7,'The Lord of the Rings: The Return of the King','Peter Jackson','2003','Action, Adventure, Drama','Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.','8.9'),
(8,'Inception','Christopher Nolan','2010','Action, Adventure, Sci-Fi','A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.','8.8'),
(9,'The Matrix','The Wachowskis','1999','Action, Sci-Fi','A computer programmer discovers that reality as he knows it is a simulation created by machines to subjugate humanity.','8.7'),
(10,'Gladiator','Ridley Scott','2000','Action, Adventure, Drama','A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.','8.5'),
(11,'The Silence of the Lambs','Jonathan Demme','1991','Crime, Drama, Thriller','A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.','8.6'),
(12,'The Departed','Martin Scorsese','2006','Crime, Drama, Thriller','An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.','8.5'),
(13,'The Green Mile','Frank Darabont','1999','Crime, Drama, Fantasy','The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.','8.6'),
(14,'The Intouchables','Olivier Nakache, Éric Toledano','2011','Biography, Comedy, Drama','After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.','8.5'),
(15,'The Prestige','Christopher Nolan','2006','Drama, Mystery, Sci-Fi','After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.','8.5'),
(16,'The Lion King','Roger Allers, Rob Minkoff','1994','Animation, Adventure, Drama','Lion cub and future king Simba searches for his identity. His eagerness to please others and penchant for testing his boundaries sometimes gets him into trouble.','8.5'),
(17,'American Beauty','Sam Mendes','1999','Drama','A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter\'s best friend.','8.3'),
(18,'The Usual Suspects','Bryan Singer','1995','Crime, Mystery, Thriller','A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.','8.5'),
(19,'Saving Private Ryan','Steven Spielberg','1998','Drama, War','Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.','8.6'),
(20,'The Grand Budapest Hotel','Wes Anderson','2014','Adventure, Comedy, Crime','A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel\'s glorious years of the 1930s.','8.1');

/*Table structure for table `movie_watches` */

DROP TABLE IF EXISTS `movie_watches`;

CREATE TABLE `movie_watches` (
  `movie_watch_id` int(20) NOT NULL AUTO_INCREMENT,
  `movie_id` int(20) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `watch_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `frequency` int(11) DEFAULT NULL,
  PRIMARY KEY (`movie_watch_id`),
  KEY `fk_movie_watches_with_movie` (`movie_id`),
  KEY `fk_movie_watches_with_user` (`user_id`),
  CONSTRAINT `fk_movie_watches_with_movie` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  CONSTRAINT `fk_movie_watches_with_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `movie_watches` */

insert  into `movie_watches`(`movie_watch_id`,`movie_id`,`user_id`,`watch_timestamp`,`frequency`) values 
(1,3,4,'2023-10-13 03:47:55',NULL),
(2,4,4,'2023-10-13 03:48:02',NULL),
(3,6,4,'2023-10-13 03:48:12',NULL),
(4,2,4,'2023-10-13 03:48:22',NULL),
(5,9,7,'2023-10-13 03:48:33',NULL),
(6,9,4,'2023-10-13 03:48:44',NULL),
(7,2,7,'2023-10-13 03:48:59',NULL),
(8,6,1,'2023-10-13 03:49:10',NULL),
(9,12,2,'2023-10-13 03:49:21',NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user` */

insert  into `user`(`user_id`,`username`,`name`,`email`,`phone`) values 
(1,'user1','John Doe','user1@example.com','123-456-7890'),
(2,'user2','Jane Smith','user2@example.com','987-654-3210'),
(3,'user3','Alice Johnson','user3@example.com','555-123-4567'),
(4,'user4','Bob Brown','user4@example.com','333-777-1111'),
(5,'user5','Charlie Wilson','user5@example.com','777-888-9999'),
(6,'user6','David Lee','user6@example.com','444-555-6666'),
(7,'user7','Eve Davis','user7@example.com','111-222-3333'),
(8,'user8','Frank Robinson','user8@example.com','666-999-4444'),
(9,'user9','Grace Miller','user9@example.com','222-333-4444'),
(10,'user10','Hannah White','user10@example.com','999-111-7777');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
