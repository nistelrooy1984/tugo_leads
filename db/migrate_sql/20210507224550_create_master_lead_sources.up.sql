CREATE TABLE master_lead_sources (
  id bigserial PRIMARY KEY,

  "name" varchar NOT NULL,

  is_usable bool NOT NULL,

  "order" int4 NOT NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL

);

COMMENT ON TABLE master_lead_sources IS 'Lead Source';

-- Column comments

COMMENT ON COLUMN master_lead_sources.id IS 'ID';

COMMENT ON COLUMN master_lead_sources."name" IS 'Name';

COMMENT ON COLUMN master_lead_sources.is_usable IS 'Is Usable';

COMMENT ON COLUMN master_lead_sources."order" IS 'Order';

COMMENT ON COLUMN master_lead_sources.created_at IS 'Created At';

COMMENT ON COLUMN master_lead_sources.updated_at IS 'Updated At';
