ALTER TABLE leads DROP COLUMN salutation;
ALTER TABLE leads DROP COLUMN other_phone;
ALTER TABLE leads DROP COLUMN street;
ALTER TABLE leads DROP COLUMN delete_flag;
ALTER TABLE leads ADD COLUMN address varchar NULL;

COMMENT ON COLUMN leads.address IS 'Address';

