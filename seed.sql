INSERT INTO athletes(ID, name, date_of_birth, email, gender)
VALUES 
	(123, 'Jojo Lethug', '2000-10-02','myemailjojo@gmail.com', 'm'),
	(223, 'Dio Levillain', '2000-01-02','myemaildio@gmail.com' , 'm'),
	(312, 'Micheline Michelin', '1976-12-12','myemailmich@gmail.com' , 'f'),
	(313, 'Ginette Legault', '1976-12-11','myemailgine@gmail.com' , 'f'),
	(322, 'Frederico Martino', '1936-12-12','myemailfred@gmail.com' , 'm'),
	(413, 'Jean-Michel Crapaud', '1992-04-02','myemailjean@gmail.com' , 'm'),
	(532, 'Jackie Chan', '1980-10-03','myemailjack@gmail.com' , 'm'),
	(1123, 'Jean', '2003-10-02','myemailjean1@gmail.com', 'm'),
	(1223, 'Jeanette', '2004-01-02','myemailjeanette@gmail.com' , 'f'),
	(1312, 'Jiji', '1975-12-12','myemailjiji@gmail.com' , 'f'),
	(1313, 'Fred', '1974-12-11','myemailfred1@gmail.com' , 'm'),
	(1322, 'Mart', '1933-12-12','myemailmart@gmail.com' , 'm'),
	(1413, 'Bin', '1991-04-02','myemailbin@gmail.com' , 'f'),
	(1532, 'Bob', '1981-10-03','myemailbob@gmail.com' , 'm'),
	(2123, 'Hyo', '2001-10-02','myemailhyo@gmail.com', 'm'),
	(2223, 'Didi', '2002-01-02','myemaildidi@gmail.com' , 'f'),
	(2312, 'Boki', '1971-12-12','myemailboki@gmail.com' , 'f'),
	(2313, 'Kibo', '1973-12-11','myemailkibo@gmail.com' , 'm'),
	(2322, 'Dino', '1939-12-12','myemaildino@gmail.com' , 'm'),
	(2413, 'Dan', '1990-04-02','myemaildan@gmail.com' , 'm'),
	(2532, 'Kray', '1986-10-03','myemailkray@gmail.com' , 'm');

INSERT INTO contacts(ID, email, phone_number, name, gender)
VALUES 
	(1232,'myemailjon@professionnal.com','1233425432',  'Jonathan Tigo','m'),
	(2233,'myemaildio@professionnal.com' ,'1233455412', 'Diorido Borfo','m'),
	(3122,'myemailmich@professionnal.com','1233455332', 'Michelle Joki', 'f'),
	(3131,'myemailbri@professionnal.com','1231455432', 'Bri Oko', 'f'),
	(3222,'myemaillifl@professionnal.com','1233455432', 'Liflo Raso', 'm'),
	(4133,'myemailniet@professionnal.com','1233455432', 'Niet Joka', 'm'),
	(5323,'myemailnor@professionnal.com','1253455332', 'Nor Freied', 'm'),
	(231232,'myemailcara@professionnal.com','1423432532',  'Caramel Binette','f'),
	(232233,'myemailhiro@professionnal.com' ,'5133245412', 'Hiro Tsukasa','m'),
	(233122,'myemailnina@professionnal.com','1323435532', 'Nina Legrand', 'f'),
	(233131,'myemailbria@professionnal.com','1421435532', 'Brianna Okos', 'f'),
	(233222,'myemailpope@professionnal.com','1423435532', 'Popeye Mayo', 'm'),
	(234133,'myemailigua@professionnal.com','1423435532', 'Iguano Digo', 'm'),
	(235323,'myemailnoti@professionnal.com','1323455532', 'Notio Polijo', 'm'),
	(631232,'myemailbaki@professionnal.com','1423432532',  'Bakirou Biki','m'),
	(632233,'myemailsala@professionnal.com' ,'5133245412', 'Salamandre Rouge','m'),
	(633122,'myemailtort@professionnal.com','1323435532', 'Tortue Dorée', 'm'),
	(633131,'myemailbok@professionnal.com','1233451542', 'Bok Pho', 'f'),
	(633222,'myemailthet@professionnal.com','1423435532', 'Theta Phi', 'm'),
	(634133,'myemailsigm@professionnal.com','1423435532', 'Sigma Alpha', 'm'),
	(635323,'myemailzeta@professionnal.com','1323455532', 'Zeta Rho', 'm');

INSERT INTO partners(ID, enterprise_name, address, contact_id)
VALUES 
	(12232,'Big Pharma','1234 Almond Road, Ottawa, ON',  1232),
	(22233,'Big Tech' ,'123 That Road, Ottawa, ON', 2233),
	(31222,'Big Agro','1233 Thatother Road, Ottawa, ON', 3122),
	(31231,'Big Fitness','1123 This Road, Ottawa, ON', 3131),
	(23222,'Big Big','12333 Some Road, Ottawa, ON', 3222),
	(1228732,'Cartbridge inc.','12234 Almond Road, Ottawa, ON',  231232),
	(2228733,'Printer Scams' ,'1223 That Road, Ottawa, ON', 232233),
	(3128722,'Antonio Nio','12323 Thatother Road, Ottawa, ON', 233122),
	(3128731,'Osu!','12123 This Road, Ottawa, ON', 233131),
	(2328722,'Microsoft','123323 Some Road, Ottawa, ON', 233222),
	(1228232,'Garbage Collectors','12334 Almond Road, Ottawa, ON',  234133),
	(2228233,'Lifeline inc.' ,'1323 That Road, Ottawa, ON', 235323),
	(3128222,'Calendar inc.','32323 Thatother Road, Ottawa, ON', 631232),
	(3128231,'Panda','31123 This Road, Ottawa, ON', 632233),
	(2328222,'Small Small','132333 Some Road, Ottawa, ON', 633122);

INSERT INTO competitions
(ID, comp_name, venue, start_date_time, end_date_time, comp_year, max_men, max_women, partner_id, contact_id)
VALUES 
	(23, 'Compétition de Rugby', 'Ottawa Arena', '2021-09-28 10:00:00', '2021-09-28 14:00:00', 
	2021, 12, 12, 12232, 1232),
	(25, 'Compétition de Ping-Pong', 'Montreal Arena', '2021-09-30 10:30:00', '2021-09-30 16:00:00', 
	2021, 13, 14, 31222, 4133),
	(21, 'Compétition de Soccer', 'Awatto Anera', '2021-09-28 10:00:00', '2021-09-28 14:00:00', 
	2021, 110, 110, 22233, 5323),
	(1, 'Compétition de Basket', 'Ottawa Arena', '2022-09-28 10:00:00', '2021-09-28 14:00:00', 
	2023, 12, 12, 2228233, 635323),
	(2, 'Compétition de Coloriage', 'Montreal Arena', '2022-09-30 10:30:00', '2021-09-30 16:00:00', 
	2023, 13, 14, 3128231, 634133),
	(3, 'Compétition de Course', 'Awatto Anera', '2022-09-28 10:00:00', '2021-09-28 14:00:00', 
	2022, 110, 110, 1228732, 633222),
	(4, 'Compétition de Sprint', 'Ottawa Arena', '2023-09-28 10:00:00', '2021-09-28 14:00:00', 
	2024, 12, 12, 2328222, 633122),
	(5, 'Compétition de Lancer', 'Montreal Arena', '2023-09-30 10:30:00', '2021-09-30 16:00:00', 
	2023, 13, 14, 3128222, 235323),
	(6, 'Compétition de Tir à larc', 'Awatto Anera', '2023-09-28 10:00:00', '2021-09-28 14:00:00', 
	2023, 110, 110, 2328222, 233222);

INSERT INTO events(ID, event_name, main_score_type, time_capped_type, tie_breaker_type, gender, comp_id)
VALUES 
	(1,'Tir au but (réussites d affilées)', 'COUNT DESC', null, 'TIME ASC', 'm', 21),
	(2,'Tir au but (réussites d affilées)', 'COUNT DESC', null, 'TIME ASC', 'f', 21),
	(3,'Longeur de touche', 'COUNT DESC', null, null, 'm', 21),
	(4,'Longeur de touche', 'COUNT DESC', null, null, 'f', 21),
	(5,'Points en match (buts, assistances)', 'COUNT DESC', null, 'COUNT DESC', 'm', 21),
	(6,'Points en match (buts, assistances)', 'COUNT DESC', null, 'COUNT DESC', 'f', 21),
	(17,'Dessiner un coeur', 'TIME ASC', null, null, 'm', 2),
	(18,'Dessiner un chat', 'TIME ASC', null, null, 'f', 2),
	(19,'Course 4000m', 'TIME ASC', null, null, 'm', 3),
	(110,'Sprint 100m', 'TIME ASC', null, null, 'f', 4),
	(111,'Lancer un disque', 'COUNT DESC', null, 'COUNT DESC', 'm', 5),
	(112,'Tir à l arc 200m', 'COUNT DESC', null, 'COUNT DESC', 'f', 6),
	(113,'Tirs 2 points', 'COUNT DESC', null, 'TIME ASC', 'm', 1),
	(114,'Tirs 3 points', 'COUNT DESC', null, 'TIME ASC', 'f', 1),
	(115,'Tirs mi-terrain', 'COUNT DESC', null, 'TIME ASC', 'm', 1),
	(116,'Dessiner une pomme', 'TIME ASC', null, null, 'f', 2),
	(117,'Dessiner une carrotte', 'TIME ASC', null, null, 'm', 2),
	(118,'Dessiner une tomatte', 'TIME ASC', null, null, 'f', 2);

INSERT INTO register(comp_id, athlete_id)
VALUES 
	(23, 123),
	(21, 123),
	(21, 223),
	(25, 312),
	(23, 313),
	(25, 413),
	(25, 532),
	(21, 312),
	(1, 1123),
	(2, 1123),
	(3, 1223),
	(4, 1223),
	(5, 1312),
	(6, 1312),
	(1, 1313),
	(2, 1313),
	(3, 1322),
	(4, 1322),
	(5, 1413),
	(6, 1413),
	(1, 1532),
	(2, 1532),
	(3, 2123),
	(4, 2123);

INSERT INTO results(athlete_id, event_id, main_score, time_capped_score, tie_breaker_score)
VALUES 
	(223, 1, 12, null, 1234),
	(312, 2, 11, null, 1235),
	(223, 3, 1204, null, null),
	(312, 4, 1305, null, null),
	(223, 5, 3, null, 2),
	(312, 6, 4, null, 2),
	(123, 1, 12, null, 1235),
	(123, 3, 1205, null, null),
	(123, 5, 5, null, 1),
	(1123, 113, 12, null, 1234),
	(1123, 115, 11, null, 1235),
	(1123, 17, 1212, null, null),
	(1123, 117, 1305, null, null),
	(1532, 113, 13, null, 1235),
	(1532, 115, 11, null, 1236),
	(1532, 17, 1212, null, null),
	(1532, 117, 1305, null, null);