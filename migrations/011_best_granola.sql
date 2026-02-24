-- Best Granola (source: Distilled arcanity; site style)

INSERT INTO recipes (slug, title, summary, ingredients, instructions)
VALUES (
  'best-granola',
  'Best Granola',
  'This recipe originates with Distilled arcanity.',
  E'<h4>Dry</h4>\n<ul>\n<li>2 kg slow-cooking rolled oats</li>\n<li>1 kg pumpkin seeds</li>\n<li>1 kg sunflower seeds</li>\n<li>500 g cashew pieces</li>\n<li>500 g walnut pieces</li>\n<li>250 g hazelnuts</li>\n</ul>\n<h4>Wet</h4>\n<ul>\n<li>180 ml (¾ cup) molasses</li>\n<li>375 ml (1 ½ cups) tahini</li>\n<li>90 ml (6 tablespoons) water</li>\n<li>10 ml (2 teaspoons) vanilla</li>\n</ul>',
  E'<h3>Step 1: Mix drys</h3>\n<p>Mix together the dry ingredients in a large bowl.</p>\n<h3>Step 2: Mix wets</h3>\n<p>Mix together the wet ingredients in another bowl or jug.</p>\n<h3>Step 3: Combine</h3>\n<p>Add wets to drys and stir well to combine.</p>\n<h3>Step 4: Bake</h3>\n<p>Bake at about 325 °F, checking and stirring at 22 minutes and again 15 minutes later (about 37 minutes total).</p>'
)
ON CONFLICT (slug) DO NOTHING;
