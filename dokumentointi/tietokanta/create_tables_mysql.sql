CREATE TABLE Kayttajat (
	id INTEGER NOT NULL AUTO_INCREMENT,
	kayttajatunnus VARCHAR (50) NOT NULL,
	email VARCHAR (50) NOT NULL,
	etunimi VARCHAR (50) NOT NULL,
	sukunimi VARCHAR (50) NOT NULL,
	salasana VARCHAR (50) NOT NULL,
	enabled BOOLEAN NOT NULL,
	PRIMARY KEY (id)
)ENGINE=InnoDB;

CREATE TABLE Tunnit (
	id INTEGER NOT NULL AUTO_INCREMENT,
	tuntien_maara DECIMAL (5,2) NOT NULL,
	paivamaara TIMESTAMP NOT NULL,
	kuvaus VARCHAR (1000) NOT NULL,
	kayttaja_id INTEGER NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (kayttaja_id) REFERENCES Kayttajat(id)
)ENGINE=InnoDB;

CREATE TABLE authority (
  id integer NOT NULL auto_increment PRIMARY KEY,
  role varchar(255) NOT NULL UNIQUE
 ) ENGINE=InnoDB;
	
CREATE TABLE Kayttaja_authority (
  id integer NOT NULL auto_increment PRIMARY KEY,
  Kayttaja_id integer NOT NULL,
  authority_id integer NOT NULL,
  FOREIGN KEY (Kayttaja_id) REFERENCES Kayttajat(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY (authority_id) REFERENCES authority(id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB;