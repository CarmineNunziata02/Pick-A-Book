create schema pickabook;
use pickabook;
CREATE TABLE `genere` (
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`nome`)
);

CREATE TABLE `categoria` (
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`nome`)
);


CREATE TABLE `gestore_ordini` (
  `email_address` varchar(70) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`email_address`)
);

CREATE TABLE `metodo_spedizione` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `prezzo` double NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `gestore_catalogo` (
  `email_address` varchar(70) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`email_address`)
);

CREATE TABLE `site_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email_address` varchar(70) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `indirizzo` varchar(70) NOT NULL,
  `citta` varchar(70) NOT NULL,
  `codice_postale` char(5) NOT NULL,
  `provincia` char(2) NOT NULL,
  `nazione` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `prodotti` (
  `isbn` char(17) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `autore` varchar(100) DEFAULT NULL,
  `descrizione` varchar(400) DEFAULT NULL,
  `immagine_prod` varchar(150) DEFAULT NULL,
  `prezzo` double DEFAULT NULL,
  `quantita` int DEFAULT NULL,
  `genere_nome` varchar(20) NOT NULL,
  `categoria_nome` varchar(30) NOT NULL,
  `copie_vendute` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`isbn`),
  KEY `fk_prodotti_genere1_idx` (`genere_nome`),
  KEY `fk_prodotti_categoria1_idx` (`categoria_nome`),
  CONSTRAINT `fk_prodotti_categoria1` FOREIGN KEY (`categoria_nome`) REFERENCES `categoria` (`nome`),
  CONSTRAINT `fk_prodotti_genere1` FOREIGN KEY (`genere_nome`) REFERENCES `genere` (`nome`)
);

CREATE TABLE `carrello` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `carrello_to_user_idx` (`user_id`),
  CONSTRAINT `carrello_to_user` FOREIGN KEY (`user_id`) REFERENCES `site_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `carrello_prodotto` (
  `carrello_id` int NOT NULL,
  `prodotto_isbn` char(17) NOT NULL,
  PRIMARY KEY (`carrello_id`,`prodotto_isbn`),
  KEY `carrelloprodotto_to_prodotto_idx` (`prodotto_isbn`),
  CONSTRAINT `carrelloprodotto_to_carrello` FOREIGN KEY (`carrello_id`) REFERENCES `carrello` (`id`),
  CONSTRAINT `carrelloprodotto_to_prodotto` FOREIGN KEY (`prodotto_isbn`) REFERENCES `prodotti` (`isbn`)
);

CREATE TABLE `stato_ordine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stato` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `ordini` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `totale` double NOT NULL,
  `site_user_id` int NOT NULL,
  `stato_ordine_id` int NOT NULL,
  `metodo_spedizione_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ordini_site_user1_idx` (`site_user_id`),
  KEY `fk_ordini_stato_ordine1_idx` (`stato_ordine_id`),
  KEY `fk_ordini_metodo_spedizione1_idx` (`metodo_spedizione_id`),
  CONSTRAINT `fk_ordini_metodo_spedizione1` FOREIGN KEY (`metodo_spedizione_id`) REFERENCES `metodo_spedizione` (`id`),
  CONSTRAINT `fk_ordini_site_user1` FOREIGN KEY (`site_user_id`) REFERENCES `site_user` (`id`),
  CONSTRAINT `fk_ordini_stato_ordine1` FOREIGN KEY (`stato_ordine_id`) REFERENCES `stato_ordine` (`id`)
);

CREATE TABLE `ordine_singolo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantità` int NOT NULL,
  `totale_parziale` double NOT NULL,
  `ordini_id` int NOT NULL,
  `immagine_prodotto` varchar(100) NOT NULL,
  `nome_prodotto` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ordine_singolo_ordini1_idx` (`ordini_id`),
  CONSTRAINT `fk_ordine_singolo_ordini1` FOREIGN KEY (`ordini_id`) REFERENCES `ordini` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

