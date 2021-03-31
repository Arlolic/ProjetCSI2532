CREATE TYPE score_type AS ENUM
('COUNT ASC','COUNT DESC','TIME ASC','TIME DESC','WEIGHT ASC','WEIGHT DESC');

CREATE TABLE athletes(
	ID int,
	name varchar(255),
	date_of_birth date,
	gender char(1),
	email varchar(255) UNIQUE,
	PRIMARY KEY(id)
);

CREATE TABLE contacts (
    	ID int,
    	email varchar(255) UNIQUE, 
	phone_number varchar(255),
	name varchar(255),
	gender char(1),
    	PRIMARY KEY (ID)
);

CREATE TABLE partners (
    ID int,
	enterprise_name varchar(255),
	address varchar(255),
    contact_id int NOT NULL, 
    PRIMARY KEY (ID),
    FOREIGN KEY (contact_id) REFERENCES contacts(ID)
);

CREATE TABLE competitions (
    ID int,
    comp_name varchar(255),
    venue varchar (255),
    start_date_time timestamp,
    end_date_time timestamp, 
    comp_year int,
    max_men int,
    max_women int,
    partner_id int NOT NULL,
    contact_id int NOT NULL,
    FOREIGN KEY (partner_id) REFERENCES partners(ID),
    FOREIGN KEY (contact_id) REFERENCES contacts(ID),
    PRIMARY KEY (ID)
);

CREATE TABLE register (
    comp_id int,
    athlete_id int, 
    PRIMARY KEY (comp_id, athlete_id ),
    FOREIGN KEY (comp_id) REFERENCES competitions(ID),
    FOREIGN KEY (athlete_id) REFERENCES athletes(ID)
);

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

CREATE TABLE results (
    athlete_id int,
	event_id int,
	main_score int NOT NULL,
	time_capped_score int,
	tie_breaker_score int,
    PRIMARY KEY (athlete_id, event_id),
    FOREIGN KEY (event_id) REFERENCES events(ID),
    FOREIGN KEY (athlete_id) REFERENCES athletes(ID)
);

CREATE VIEW leaderboards AS
(
	(SELECT athletes.name, comp_name, event_name, main_score_type, main_score,
	time_capped_type, time_capped_score, tie_breaker_type, tie_breaker_score, events.ID AS e_id, events.gender
	FROM
	((athletes INNER JOIN results ON results.athlete_id = athletes.ID) 
		INNER JOIN events ON events.ID = results.event_id)
		INNER JOIN competitions ON competitions.ID = events.comp_id)
);

CREATE VIEW ordered_boards AS (
	select name, comp_name, event_name, gender, main_score, time_capped_score, tie_breaker_score
	from leaderboards 
	order by case
		when main_score_type in ('COUNT ASC', 'TIME ASC', 'WEIGHT ASC')
		then main_score end asc, 

		case
		when main_score_type in ('COUNT DESC', 'TIME DESC', 'WEIGHT DESC')
		then main_score end desc,

		case
		when time_capped_type in ('COUNT ASC', 'TIME ASC', 'WEIGHT ASC')
		then time_capped_score end asc, 

		case
		when time_capped_type in ('COUNT DESC', 'TIME DESC', 'WEIGHT DESC')
		then time_capped_score end desc, 

		case
		when tie_breaker_type in ('COUNT ASC', 'TIME ASC', 'WEIGHT ASC')
		then tie_breaker_score end asc, 

		case
		when tie_breaker_type  in ('COUNT DESC', 'TIME DESC', 'WEIGHT DESC')
		then tie_breaker_score end desc
);