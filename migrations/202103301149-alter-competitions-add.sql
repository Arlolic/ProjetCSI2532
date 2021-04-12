BEGIN;
ALTER TABLE competitions 
	ADD comp_year int,
	ADD max_men int,
	ADD max_women int,
	ADD partner_id int NOT NULL,
	ADD contact_id int NOT NULL,
	ADD CONSTRAINT FK_partner FOREIGN KEY (partner_id) REFERENCES partners(ID),
	ADD CONSTRAINT FK_contact FOREIGN KEY (contact_id) REFERENCES contacts(ID);
COMMIT;