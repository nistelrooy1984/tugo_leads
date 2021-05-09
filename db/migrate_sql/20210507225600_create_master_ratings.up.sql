CREATE TABLE master_ratings (
  id bigserial PRIMARY KEY,

  "name" varchar NOT NULL,

  is_usable bool NOT NULL,

  "order" int4 NOT NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL

);

COMMENT ON TABLE master_ratings IS 'Rating';

-- Column comments

COMMENT ON COLUMN master_ratings.id IS 'ID';

COMMENT ON COLUMN master_ratings."name" IS 'Name';

COMMENT ON COLUMN master_ratings.is_usable IS 'Is Usable';

COMMENT ON COLUMN master_ratings."order" IS 'Order';

COMMENT ON COLUMN master_ratings.created_at IS 'Created At';

COMMENT ON COLUMN master_ratings.updated_at IS 'Updated At';
