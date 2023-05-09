/*schema文*/
CREATE SCHEMA IF NOT EXISTS `secret_restaurant` DEFAULT CHARACTER SET utf8;
CREATE USER 'master'@'localhost' IDENTIFIED BY 'master';
GRANT ALL PRIVILEGES ON secret_restaurant.*TO 'master'@'localhost';
FLUSH PRIVILEGES;
/*DROP USER 'master'@'localhost';*/

/*commentテーブルのidを連番にする*/
ALTER TABLE comment auto_increment = 1;
ALTER TABLE `site_user` auto_increment = 1;

/*commetテーブル*/
CREATE TABLE IF NOT EXISTS `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3

/*site_userテーブル*/
CREATE TABLE IF NOT EXISTS `site_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `gender` int NOT NULL,
  `authority` smallint DEFAULT NULL,
  `admin` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3