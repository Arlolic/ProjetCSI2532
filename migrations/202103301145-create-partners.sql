BEGIN;
CREATE TABLE partners (
    ID int,
	enterprise_name varchar(255),
	address varchar(255),
    contact_id int NOT NULL, 
    PRIMARY KEY (ID),
    FOREIGN KEY (contact_id) REFERENCES contact(ID)
);
COMMIT;