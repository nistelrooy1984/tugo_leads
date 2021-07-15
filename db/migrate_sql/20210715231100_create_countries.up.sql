CREATE TABLE master_countries (
  id bigserial PRIMARY KEY,

  "name" varchar NOT NULL,

  "order" int4 NOT NULL,

  is_usable bool NOT NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL

);

COMMENT ON TABLE master_countries IS 'Country';

-- Column comments

COMMENT ON COLUMN master_countries.id IS 'ID';

COMMENT ON COLUMN master_countries."name" IS 'Name';

COMMENT ON COLUMN master_countries."order" IS 'Order';

COMMENT ON COLUMN master_countries.is_usable IS 'Is Usable';

COMMENT ON COLUMN master_countries.created_at IS 'Created At';

COMMENT ON COLUMN master_countries.updated_at IS 'Updated At';
