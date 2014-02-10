CREATE TABLE shibpid (
	localEntity TEXT NOT NULL,
	peerEntity TEXT NOT NULL,
	principalName VARCHAR(255) NOT NULL default '',
	localId VARCHAR(255) NOT NULL,
	persistentId VARCHAR(36) NOT NULL,
	peerProvidedId VARCHAR(255) default NULL,
	creationDate timestamp NOT NULL default CURRENT_TIMESTAMP
		on update CURRENT_TIMESTAMP,
	deactivationDate timestamp NULL default NULL,
	KEY persistentId (persistentId),
	KEY persistentId_2 (persistentId, deactivationDate),
	KEY localEntity (localEntity(16), peerEntity(16), localId),
	KEY localEntity_2 (localEntity(16), peerEntity(16),
		localId, deactivationDate)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(255) NOT NULL,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	password_hash VARCHAR(255),
	salt VARCHAR(255),
	email VARCHAR(255),
	KEY username (username)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;