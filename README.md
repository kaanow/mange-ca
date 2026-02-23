# Mange Ça

A personal recipe site. English content, minimal placeholder for now. Simple HTML/CSS, served via Express on Railway.

## Structure

```
mange-ca/
├── public/
│   ├── index.html      ← landing page
│   └── style.css       ← all styles
├── server.js           ← Express server (serves /public)
├── package.json
└── .gitignore
```

## Adding content

- **Edit the landing page**: modify `public/index.html`
- **Add a recipe page**: create `public/recipes/my-recipe.html` and link to it from index
- **Change styles**: edit `public/style.css`

Railway auto-deploys on every push to the main branch.
