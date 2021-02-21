CREATE TABLE athletes(
	ID int,
	name varchar(255),
	date_of_birth date,
	gender varchar(255),
	PRIMARY KEY(id)
);
CREATE TABLE competitions (
    ID int,
    comp_name varchar(255),
    venue varchar (255),
    start_date_time timestamp,
    end_date_time timestamp, 
    PRIMARY KEY (ID)
);
CREATE TABLE register (
    comp_id int,
    athlete_id int, 
    PRIMARY KEY (comp_id, athlete_id ),
    FOREIGN KEY (comp_id) REFERENCES competitions(ID),
    FOREIGN KEY (athlete_id) REFERENCES athletes(ID)
);