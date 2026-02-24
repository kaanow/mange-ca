const { Pool } = require('pg');
const fs = require('fs');
const path = require('path');

const pool = process.env.DATABASE_URL
  ? new Pool({ connectionString: process.env.DATABASE_URL, ssl: { rejectUnauthorized: false } })
  : null;

const MIGRATIONS_DIR = path.join(__dirname, 'migrations');

async function ensureMigrationsTable(client) {
  await client.query(`
    CREATE TABLE IF NOT EXISTS schema_migrations (
      name TEXT PRIMARY KEY
    )
  `);
}

async function runMigrations() {
  if (!pool) return;
  const client = await pool.connect();
  try {
    await ensureMigrationsTable(client);
    const files = fs.readdirSync(MIGRATIONS_DIR)
      .filter((f) => f.endsWith('.sql'))
      .sort();
    for (const file of files) {
      const { rows } = await client.query(
        'SELECT 1 FROM schema_migrations WHERE name = $1',
        [file]
      );
      if (rows.length > 0) continue;
      const sql = fs.readFileSync(path.join(MIGRATIONS_DIR, file), 'utf8');
      await client.query(sql);
      await client.query('INSERT INTO schema_migrations (name) VALUES ($1)', [file]);
      console.log('Ran migration:', file);
    }
  } finally {
    client.release();
  }
}

async function getRecipes() {
  if (!pool) return [];
  const { rows } = await pool.query(
    'SELECT slug, title, summary, created_at FROM recipes ORDER BY title'
  );
  return rows;
}

async function getRecipeBySlug(slug) {
  if (!pool) return null;
  const { rows } = await pool.query(
    'SELECT slug, title, summary, ingredients, instructions, created_at FROM recipes WHERE slug = $1',
    [slug]
  );
  return rows[0] || null;
}

module.exports = { pool, runMigrations, getRecipes, getRecipeBySlug };
