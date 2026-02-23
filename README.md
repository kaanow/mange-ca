# Mange Ça

A personal recipe site. Recipes live in PostgreSQL; the app is Express + EJS on Railway.

**Live site:** https://menu.eatlogicalsentences.com

## One-time setup: add the database

1. In [Railway](https://railway.app), open your project.
2. Click **New** → **Database** → **PostgreSQL**.
3. Click your **app service** (not the DB). In **Variables**, add a reference to the Postgres URL: click **New Variable** → **Add Reference** and pick `DATABASE_URL` from the Postgres service. (Railway may add it automatically when both are in the same project.)
4. Redeploy the app (or push a commit). The app runs migrations on startup and creates the `recipes` table.

That’s the only manual step. After that, push code and the site updates.

## Structure

```
mange-ca/
├── public/
│   └── style.css         ← styles (no static HTML; pages are server-rendered)
├── views/               ← EJS templates (index, recipe, 404)
├── migrations/          ← SQL: schema + data (run in order on startup)
├── db.js                ← Postgres connection, migrations, queries
├── server.js            ← Express app
└── package.json
```

## Adding recipes

You don’t edit the DB by hand. **Ask the AI to add a recipe** (title, summary, ingredients, instructions). It will add a new migration file (e.g. `003_add_lentil_soup.sql`) with an `INSERT`. You commit and push; on deploy, the migration runs and the recipe appears on the site. No manual SQL or admin UI.

## Workflow

See **WORKFLOW.md** for: edit → commit → push → check live. No local server.
