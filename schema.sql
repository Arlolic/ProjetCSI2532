CREATE TABLE athletes(
	ID int,
	name varchar(255),
	date_of_birth date,
	gender char(1),
	email varchar(255),
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

CREATE TABLE contact (
    	ID int,
    	email varchar(255), 
	phone_number varchar(255),
	name varchar(255),
	gender char(1),
    	PRIMARY KEY (ID)
);

CREATE TABLE partner (
    ID int,
	enterprise_name varchar(255),
	address varchar(255),
    contact_id int NOT NULL, 
    PRIMARY KEY (ID),
    FOREIGN KEY (contact_id) REFERENCES contact(ID)
);

CREATE TYPE score_type AS ENUM
('COUNT ASC','COUNT DESC','TIME ASC','TIME DESC','WEIGHT ASC','WEIGHT DESC');

CREATE TABLE events (
    ID int,
	event_name varchar(255),
	main_score_type score_type NOT NULL,
	time_capped_type score_type,
	tie_breaker_type score_type,
	gender char(1),
    comp_id int NOT NULL, 
    PRIMARY KEY (ID),
    FOREIGN KEY (comp_id) REFERENCES competitions(ID)
);