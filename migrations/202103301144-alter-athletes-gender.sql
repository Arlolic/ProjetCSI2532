BEGIN;
ALTER TABLE athletes DROP gender;
ALTER TABLE athletes ADD gender char(1);
COMMIT;