CREATE TABLE master_industries (
  id bigserial PRIMARY KEY,

  "name" varchar NOT NULL,

  is_usable bool NOT NULL,

  "order" int4 NOT NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL

);

COMMENT ON TABLE master_industries IS 'Industry';

-- Column comments

COMMENT ON COLUMN master_industries.id IS 'ID';

COMMENT ON COLUMN master_industries."name" IS 'Name';

COMMENT ON COLUMN master_industries.is_usable IS 'Is Usable';

COMMENT ON COLUMN master_industries."order" IS 'Order';

COMMENT ON COLUMN master_industries.created_at IS 'Created At';

COMMENT ON COLUMN master_industries.updated_at IS 'Updated At';
