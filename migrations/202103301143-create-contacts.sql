BEGIN;
CREATE TABLE contacts (
    	ID int,
    	email varchar(255), 
	phone_number varchar(255),
	name varchar(255),
	gender char(1),
    	PRIMARY KEY (ID)
);
COMMIT;