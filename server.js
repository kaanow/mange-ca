const express = require('express');
const path = require('path');
const db = require('./db');

const app = express();
const PORT = process.env.PORT || 3000;

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', async (req, res) => {
  const recipes = await db.getRecipes();
  res.render('index', { recipes, hasDb: !!db.pool });
});

app.get('/recipes/:slug', async (req, res) => {
  const recipe = await db.getRecipeBySlug(req.params.slug);
  if (!recipe) return res.status(404).render('404');
  res.render('recipe', { recipe });
});

app.get('*', (req, res) => res.status(404).render('404'));

async function start() {
  if (db.pool) {
    await db.runMigrations();
  }
  app.listen(PORT, () => {
    console.log(`Mange Ça running on port ${PORT}`);
  });
}

start().catch((err) => {
  console.error('Startup failed:', err);
  process.exit(1);
});
