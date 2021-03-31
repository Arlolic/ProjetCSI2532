BEGIN;
CREATE TABLE results (
    athlete_id int,
	event_id int,
	event_name varchar(255),
	main_score int NOT NULL,
	time_capped_score int,
	tie_breaker_score int,
    PRIMARY KEY (athlete_id, event_id),
    FOREIGN KEY (event_id) REFERENCES events(ID),
    FOREIGN KEY (athlete_id) REFERENCES athletes(ID)
);
COMMIT;