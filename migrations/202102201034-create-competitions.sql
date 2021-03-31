BEGIN;
CREATE TABLE competitions (
    ID int,
    comp_name varchar(255),
    venue varchar (255),
    start_date_time timestamp,
    end_date_time timestamp, 
    PRIMARY KEY (ID)
);
COMMIT;