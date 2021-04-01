BEGIN;
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
COMMIT;