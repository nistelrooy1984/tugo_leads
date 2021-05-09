CREATE TABLE master_statuses (
  id bigserial PRIMARY KEY,

  "name" varchar NOT NULL,

  is_usable bool NOT NULL,

  "order" int4 NOT NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL

);

COMMENT ON TABLE master_statuses IS 'Lead Status';

-- Column comments

COMMENT ON COLUMN master_statuses.id IS 'ID';

COMMENT ON COLUMN master_statuses."name" IS 'Name';

COMMENT ON COLUMN master_statuses.is_usable IS 'Is Usable';

COMMENT ON COLUMN master_statuses."order" IS 'Order';

COMMENT ON COLUMN master_statuses.created_at IS 'Created At';

COMMENT ON COLUMN master_statuses.updated_at IS 'Updated At';
