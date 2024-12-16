DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idUser` int DEFAULT NULL,
  `idArticle` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idUser` (`idUser`),
  KEY `idArticle` (`idArticle`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`id`)
)

