const express = require('express');
const path = require('path');
const sanitizeHtml = require('sanitize-html');
const db = require('./db');

const app = express();
const PORT = process.env.PORT || 3000;

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
app.use(express.static(path.join(__dirname, 'public')));

const allowedRecipeTags = ['h2', 'h3', 'h4', 'ul', 'ol', 'li', 'a', 'p', 'strong', 'em', 'br'];
const allowedRecipeAttrs = { a: ['href'] };

function escapeHtml(s) {
  if (s == null) return '';
  return String(s)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;');
}
function nl2br(s) {
  if (s == null) return '';
  return String(s).replace(/\\n/g, '\n').replace(/\r?\n/g, '<br>');
}
function nbspUnits(s) {
  if (s == null) return '';
  return String(s).replace(
    /(\d)\s*([°º]?F|[°º]?C|cups?|tbsp|tsp|oz|ml|g|kg|lb)s?\b/gi,
    '$1\u00A0$2'
  );
}
function formatRecipeContent(s) {
  if (s == null || s === '') return '';
  const t = String(s);
  const withNbsp = nbspUnits(t);
  if (/<[a-z]/i.test(t)) {
    return sanitizeHtml(withNbsp, { allowedTags: allowedRecipeTags, allowedAttributes: allowedRecipeAttrs });
  }
  return nl2br(escapeHtml(withNbsp));
}
app.locals.formatRecipeText = formatRecipeContent;

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
