CREATE TABLE IF NOT EXISTS recipes (
  id            SERIAL PRIMARY KEY,
  slug          TEXT NOT NULL UNIQUE,
  title         TEXT NOT NULL,
  summary       TEXT,
  ingredients   TEXT,
  instructions  TEXT,
  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
