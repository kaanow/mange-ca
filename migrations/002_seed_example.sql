INSERT INTO recipes (slug, title, summary, ingredients, instructions)
VALUES (
  'example-recipe',
  'Example Recipe',
  'A simple placeholder to show the site works.',
  E'1 cup flour\n1 cup water\nPinch of salt',
  E'Mix everything. Bake at 350 °F for 20 minutes. Done.'
)
ON CONFLICT (slug) DO NOTHING;
