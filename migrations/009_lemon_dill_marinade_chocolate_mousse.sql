-- Lemon Dill Marinade for Chicken Thighs + Chocolate Mousse (from Grok, in site style)

INSERT INTO recipes (slug, title, summary, ingredients, instructions)
VALUES (
  'lemon-dill-marinade-chicken-thighs',
  'Lemon Dill Marinade for Chicken Thighs',
  'This recipe originates with Grok. Customized for 854 g skinless bone-in chicken thighs (about 12 pieces). Bright and herby; good for grilling, baking, or pan-searing.',
  E'<ul>\n<li>½ cup fresh lemon juice (about 3–4 large lemons; zest 2 of them)</li>\n<li>80 ml (⅓ cup) olive oil</li>\n<li>¼–⅓ cup chopped fresh dill (big handful)</li>\n<li>¼ cup chopped fresh parsley</li>\n<li>2–3 tbsp chopped fresh basil (or more parsley/dill if no basil)</li>\n<li>4–5 cloves garlic, minced (or 1–1½ tsp garlic powder)</li>\n<li>1–2 tsp Dijon mustard (optional)</li>\n<li>1–1½ tsp salt (to taste)</li>\n<li>½–1 tsp freshly ground black pepper</li>\n<li>Optional: 1 tsp honey or a pinch of sugar</li>\n</ul>',
  E'<h3>Step 1: Make the marinade</h3>\n<p>Whisk all marinade ingredients together in a bowl or jar.</p>\n<h3>Step 2: Marinate the thighs</h3>\n<p>Put thighs in a large zip-top bag or shallow dish. Pour marinade over, toss to coat. Seal and refrigerate 2–8 hours (4 hours is ideal; don’t go over 12 or the lemon can "cook" the chicken).</p>\n<h3>Step 3: Cook</h3>\n<p><strong>Grill/BBQ:</strong> Medium-high heat, 6–8 min per side until 165 °F (74 °C) internal.</p>\n<p><strong>Oven:</strong> 425 °F (220 °C), 35–45 min on a lined sheet (flip halfway; broil last 2–3 min for crisp).</p>\n<p><strong>Pan-sear:</strong> Medium-high with a bit of oil, 6–7 min per side.</p>\n<p>Rest 5 min before serving. Discard used marinade or boil it if you want a sauce.</p>'
)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO recipes (slug, title, summary, ingredients, instructions)
VALUES (
  'chocolate-mousse',
  'Chocolate Mousse',
  'This recipe originates with Grok. Scaled to 100 g dark chocolate; about 3–4 modest servings (or 2 generous).',
  E'<ul>\n<li>100 g dark chocolate (60–70% cocoa), chopped</li>\n<li>15–17 g (about 1 tbsp) unsalted butter (optional)</li>\n<li>165–170 ml heavy cream (35%+ whipping cream) total:\n<ul>\n<li>80–85 ml for melting with the chocolate</li>\n<li>80–85 ml for whipping</li>\n</ul>\n</li>\n<li>1–2 tbsp (15–30 g) powdered sugar, divided—start with 1 tbsp and add to taste</li>\n<li>½–¾ tsp vanilla extract</li>\n<li>Optional: tiny pinch of salt; 1–2 tsp coffee or espresso</li>\n</ul>',
  E'<h3>Step 1: Melt the chocolate</h3>\n<p>Melt chocolate and butter (if using) in a double boiler or microwave (20-sec bursts, stir often). When smooth, stir in the 80–85 ml cream, vanilla, and salt/coffee (if using). Let cool to room temperature or just slightly warm—so it doesn’t seize when you fold later.</p>\n<h3>Step 2: Whip the cream</h3>\n<p>In a separate bowl, whip the remaining 80–85 ml cream with 1–2 tbsp powdered sugar to stiff peaks (glossy, holds shape; don’t overwhip).</p>\n<h3>Step 3: Fold together</h3>\n<p>Gently fold the whipped cream into the cooled chocolate in 2–3 additions. Light folds with a spatula to keep it airy—don’t stir hard or it’ll deflate.</p>\n<h3>Step 4: Chill</h3>\n<p>Spoon or pipe into small glasses, ramekins, or bowls. Refrigerate at least 2 hours (4+ hours or overnight is better) until set.</p>\n<h3>Step 5: Serve</h3>\n<p>Let sit 5–10 min at room temp if very firm. Top with extra whipped cream, berries, shaved chocolate, or mint if you like.</p>'
)
ON CONFLICT (slug) DO NOTHING;
