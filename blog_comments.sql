DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text,
  `idArticle` int DEFAULT NULL,
  `idUser` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idArticle` (`idArticle`),
  KEY `idUser` (`idUser`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`)
)
