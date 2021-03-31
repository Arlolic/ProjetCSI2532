BEGIN;
CREATE TABLE register (
    comp_id int,
    athlete_id int, 
    PRIMARY KEY (comp_id, athlete_id ),
    FOREIGN KEY (comp_id) REFERENCES competitions(ID),
    FOREIGN KEY (athlete_id) REFERENCES athletes(ID)
);
COMMIT;