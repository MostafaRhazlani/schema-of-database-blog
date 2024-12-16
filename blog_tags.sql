DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idArticle` int DEFAULT NULL,
  `idCategory` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idArticle` (`idArticle`),
  KEY `idCategory` (`idCategory`),
  CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`id`),
  CONSTRAINT `tags_ibfk_2` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`id`)
)

