BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS login (
  id serial PRIMARY KEY,
  hash VARCHAR(100) NOT NULL,
  email text UNIQUE NOT NULL
);

COMMIT;
