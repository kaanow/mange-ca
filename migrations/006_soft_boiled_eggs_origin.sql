-- Soft-boiled eggs origin link (prior-art page had it; fetch succeeded on retry)
UPDATE recipes SET summary = 'This recipe originates <a href="https://downshiftology.com/recipes/perfect-soft-boiled-hard-boiled-eggs/">here</a> for me.'
WHERE slug = 'soft-boiled-eggs';
