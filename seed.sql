INSERT INTO athletes(ID, name, date_of_birth, email, gender)
VALUES 
	(123, 'Jojo Lethug', '2000-10-02','myemailjojo@gmail.com', 'm'),
	(223, 'Dio Levillain', '2000-01-02','myemaildio@gmail.com' , 'm'),
	(312, 'Micheline Michelin', '1976-12-12','myemailmich@gmail.com' , 'f'),
	(313, 'Ginette Legault', '1976-12-11','myemailgine@gmail.com' , 'f'),
	(322, 'Frederico Martino', '1936-12-12','myemailfred@gmail.com' , 'm'),
	(413, 'Jean-Michel Crapaud', '1992-04-02','myemailjean@gmail.com' , 'm'),
	(532, 'Jackie Chan', '1980-10-03','myemailjack@gmail.com' , 'm');

INSERT INTO contacts(ID, email, phone_number, name, gender)
VALUES 
	(1232,'myemailjon@professionnal.com','1233425432',  'Jonathan Tigo','m'),
	(2233,'myemaildio@professionnal.com' ,'1233455412', 'Diorido Borfo','m'),
	(3122,'myemailmich@professionnal.com','1233455332', 'Michelle Joki', 'f'),
	(3131,'myemailbri@professionnal.com','1231455432', 'Bri Oko', 'f'),
	(3222,'myemaillifl@professionnal.com','1233455432', 'Liflo Raso', 'm'),
	(4133,'myemailniet@professionnal.com','1233455432', 'Niet Joka', 'm'),
	(5323,'myemailnor@professionnal.com','1253455332', 'Nor Freied', 'm');

INSERT INTO partners(ID, enterprise_name, address, contact_id)
VALUES 
	(12232,'Big Pharma','1234 Almond Road, Ottawa, ON',  1232),
	(22233,'Big Tech' ,'123 That Road, Ottawa, ON', 2233),
	(31222,'Big Agro','1233 Thatother Road, Ottawa, ON', 3122),
	(31231,'Big Fitness','1123 This Road, Ottawa, ON', 3131),
	(23222,'Big Big','12333 Some Road, Ottawa, ON', 3222);

INSERT INTO competitions
(ID, comp_name, venue, start_date_time, end_date_time, comp_year, max_men, max_women, partner_id, contact_id)
VALUES 
	(23, 'Compétition de Rugby', 'Ottawa Arena', '2021-09-28 10:00:00', '2021-09-28 14:00:00', 
	2021, 12, 12, 12232, 1232),
	(25, 'Compétition de Ping-Pong', 'Montreal Arena', '2021-09-30 10:30:00', '2021-09-30 16:00:00', 
	2021, 13, 14, 31222, 4133),
	(21, 'Compétition de Soccer', 'Awatto Anera', '2021-09-28 10:00:00', '2021-09-28 14:00:00', 
	2021, 110, 110, 22233, 5323);

INSERT INTO events(ID, event_name, main_score_type, time_capped_type, tie_breaker_type, gender, comp_id)
VALUES 
	(1,'Tir au but (réussites d affilées)', 'COUNT DESC', null, 'TIME ASC', 'm', 21),
	(2,'Tir au but (réussites d affilées)', 'COUNT DESC', null, 'TIME ASC', 'f', 21),
	(3,'Longeur de touche', 'COUNT DESC', null, null, 'm', 21),
	(4,'Longeur de touche', 'COUNT DESC', null, null, 'f', 21),
	(5,'Points en match (buts, assistances)', 'COUNT DESC', null, 'COUNT DESC', 'm', 21),
	(6,'Points en match (buts, assistances)', 'COUNT DESC', null, 'COUNT DESC', 'f', 21);

INSERT INTO register(comp_id, athlete_id)
VALUES 
	(23, 123),
	(21, 123),
	(21, 223),
	(25, 312),
	(23, 313),
	(25, 413),
	(25, 532),
	(21, 312);

INSERT INTO results(athlete_id, event_id, main_score, time_capped_score, tie_breaker_score)
VALUES 
	(223, 1, 12, null, 1234),
	(312, 2, 11, null, 1235),
	(223, 3, 1204, null, null),
	(312, 4, 1305, null, null),
	(223, 5, 3, null, 2),
	(312, 6, 4, null, 2),
	(123, 1, 12, null, 1234),
	(123, 3, 1205, null, null),
	(123, 5, 5, null, 1);