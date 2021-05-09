CREATE TABLE leads (
  id bigserial PRIMARY KEY,

  first_name varchar NULL,

  last_name varchar NOT NULL,

  phone varchar NULL,

  email varchar NULL,

  master_status_id int8 NULL,

  master_lead_source_id int8 NULL,

  master_industry_id int8 NULL,

  master_rating_id int8 NULL,

  address varchar NULL,

  master_ward_id int8 NULL,

  master_district_id int8 NULL,

  master_province_id int8 NULL,

  master_country_id int8 NULL,

  description varchar NULL,

  creator_id int8 NULL,

  owner_id int8 NULL,

  modified_by_id int8 NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL 
);

COMMENT ON TABLE leads IS 'Leads';

-- Column comments

COMMENT ON COLUMN leads.id IS 'ID';

COMMENT ON COLUMN leads.first_name IS 'First Name';

COMMENT ON COLUMN leads.last_name IS 'Last Name';

COMMENT ON COLUMN leads.phone IS 'Phone';

COMMENT ON COLUMN leads.email IS 'Email';

COMMENT ON COLUMN leads.master_status_id IS 'Lead Status';

COMMENT ON COLUMN leads.master_lead_source_id IS 'Lead Source';

COMMENT ON COLUMN leads.master_industry_id IS 'Industry';

COMMENT ON COLUMN leads.master_rating_id IS 'Rating';

COMMENT ON COLUMN leads.address IS 'Address';

COMMENT ON COLUMN leads.master_ward_id IS 'Ward';

COMMENT ON COLUMN leads.master_district_id IS 'District';

COMMENT ON COLUMN leads.master_province_id IS 'Province';

COMMENT ON COLUMN leads.master_country_id IS 'Country';

COMMENT ON COLUMN leads.description IS 'Description';

COMMENT ON COLUMN leads.creator_id IS 'Created By';

COMMENT ON COLUMN leads.owner_id IS 'Assigned To';

COMMENT ON COLUMN leads.modified_by_id IS 'Modified By';

COMMENT ON COLUMN leads.created_at IS 'Created At';

COMMENT ON COLUMN leads.updated_at IS 'Updated At';
