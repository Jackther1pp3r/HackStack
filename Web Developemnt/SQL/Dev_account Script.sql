CREATE TABLE dev_accounts(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    create_date DATETIME NOT NULL,
    password VARCHAR(255) NOT NULL,
    last_name VARCHAR(255),
    first_name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    state CHAR(2),
    zip CHAR(10),
    phone VARCHAR(25),
    phone_type VARCHAR(255)
    );
SHOW TABLES;
USE accounts;

SELECT * FROM dev_accounts;
INSERT INTO dev_accounts(id,email,create_date,password,last_name,first_name,street,city,state,zip,phone,phone_type)
	VALUES('1','jack@hackstack.cc','?','gw&*4kbjl()wlF;@%LK;A','Fernald','Jack','1781 North 75 East','Layton','UT','84041','cell');