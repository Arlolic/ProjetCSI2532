BEGIN;
ALTER TABLE athletes ADD UNIQUE (email);
ALTER TABLE contacts ADD UNIQUE (email);
COMMIT;