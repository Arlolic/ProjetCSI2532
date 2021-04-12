BEGIN;
ALTER TABLE athletes RENAME COLUMN dateOfBirth TO date_of_birth;
COMMIT;