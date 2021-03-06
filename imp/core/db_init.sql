SET SESSION storage_engine = "InnoDB";
SET SESSION time_zone = "+0:00";
ALTER DATABASE CHARACTER SET "utf8";

DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Organization;
DROP TABLE IF EXISTS Active_Users;
DROP TABLE IF EXISTS Follow_Status;
DROP TABLE IF EXISTS Recent_Events;
DROP TABLE IF EXISTS Activate_Events;

CREATE TABLE Users (
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    age INT,
    gender INT,
    mail VARCHAR(100) NOT NULL,
    target_population VARCHAR(100),
    location VARCHAR(100),
    work_field VARCHAR(100),
    language VARCHAR(100),
    street VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    post_code VARCHAR(100),
    country VARCHAR(100),
    mobile VARCHAR(100),
    mobile_code VARCHAR(100),
    skype VARCHAR(100),
    passwd VARCHAR(100),
    register_date TIMESTAMP,
    avatar VARCHAR(100),
    org_id INT
);

CREATE TABLE Activate_Events (
	mail VARCHAR(100) NOT NULL PRIMARY KEY,
	_id   VARCHAR(100),
	create_time VARCHAR(100)
);

CREATE TABLE Organization (
    org_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    acronym VARCHAR(100),
    found_date VARCHAR(100),
    site_url VARCHAR(100),
    _type INT,
    numberOfemployees INT,
    phoneNumber VARCHAR(100),
    country_code VARCHAR(100)
);

CREATE TABLE Active_Users (
    user_id INT NOT NULL PRIMARY KEY,
    time TIMESTAMP 
);

CREATE TABLE Follow_Status (
    _from INT NOT NULL PRIMARY KEY,
    _to INT NOT NULL,
    time TIMESTAMP
);

CREATE TABLE Recent_Events (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    _type INT,
    _date TIMESTAMP,
    _from INT,
    _to INT	
);






