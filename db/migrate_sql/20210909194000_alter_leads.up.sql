ALTER TABLE leads DROP COLUMN address;
ALTER TABLE leads ADD COLUMN salutation varchar NULL;
ALTER TABLE leads ADD COLUMN other_phone varchar NULL;
ALTER TABLE leads ADD COLUMN street varchar NULL;
ALTER TABLE leads ADD COLUMN delete_flag int8 NULL;

COMMENT ON COLUMN leads.salutation IS 'Salutation';
COMMENT ON COLUMN leads.other_phone IS 'Other Phone';
COMMENT ON COLUMN leads.street IS 'Street';
COMMENT ON COLUMN leads.delete_flag IS 'Delete Flag';

