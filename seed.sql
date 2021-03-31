INSERT INTO athletes(ID, name, date_of_birth, email, gender)
VALUES 
	(123, 'Jojo Lethug', '2000-10-02','myemailjojo@gmail.com', 'm'),
	(223, 'Dio Levillain', '2000-01-02','myemaildio@gmail.com' , 'm'),
	(312, 'Micheline Michelin', '1976-12-12','myemailmich@gmail.com' , 'f'),
	(313, 'Ginette Legault', '1976-12-11','myemailgine@gmail.com' , 'f'),
	(322, 'Frederico Martino', '1936-12-12','myemailfred@gmail.com' , 'm'),
	(413, 'Jean-Michel Crapaud', '1992-04-02','myemailjean@gmail.com' , 'm'),
	(532, 'Jackie Chan', '1980-10-03','myemailjack@gmail.com' , 'm');
INSERT INTO competitions(ID, comp_name, venue, start_date_time, end_date_time)
VALUES 
	(23, 'Compétition de Rugby', 'Ottawa', '2021-09-28 10:00:00', '2021-09-28 14:00:00'),
	(25, 'Compétition de Ping-Pong', 'Montreal', '2021-09-30 10:30:00', '2021-09-30 16:00:00'),
	(21, 'Compétition de Soccer', 'Awatto', '2021-09-28 10:00:00', '2021-09-28 14:00:00');
INSERT INTO register(comp_id, athlete_id)
VALUES 
	(23, 2),
	(23, 1),
	(25, 5),
	(25, 4),
	(25, 3),
	(21, 5),
	(21, 4);