CREATE TABLE master_wards (
  id bigserial PRIMARY KEY,

  "name" varchar NOT NULL,
  
  master_district_id bigserial NOT NULL,

  "order" int4 NOT NULL,

  is_usable bool NOT NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL

);

COMMENT ON TABLE master_wards IS 'District';

-- Column comments

COMMENT ON COLUMN master_wards.id IS 'ID';

COMMENT ON COLUMN master_wards."name" IS 'Name';

COMMENT ON COLUMN master_wards.master_district_id IS 'Master District Id';

COMMENT ON COLUMN master_wards."order" IS 'Order';

COMMENT ON COLUMN master_wards.is_usable IS 'Is Usable';

COMMENT ON COLUMN master_wards.created_at IS 'Created At';

COMMENT ON COLUMN master_wards.updated_at IS 'Updated At';
