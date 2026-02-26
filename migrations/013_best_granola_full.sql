-- Best Granola: full recipe (toasted almonds, cranberries, jars step)

UPDATE recipes
SET
  ingredients = E'<h4>Dry</h4>\n<ul>\n<li>2 kg slow-cooking rolled oats</li>\n<li>1 kg pumpkin seeds</li>\n<li>1 kg sunflower seeds</li>\n<li>500 g cashew pieces</li>\n<li>500 g walnut pieces</li>\n<li>250 g hazelnuts</li>\n</ul>\n<h4>Wet</h4>\n<ul>\n<li>180 ml (¾ cup) molasses</li>\n<li>375 ml (1 ½ cups) tahini</li>\n<li>90 ml (6 tablespoons) water</li>\n<li>10 ml (2 teaspoons) vanilla</li>\n</ul>\n<h4>Toast, then add</h4>\n<ul>\n<li>500 g sliced almonds</li>\n<li>500 g cranberries</li>\n</ul>',
  instructions = E'<h3>Step 1: Mix drys</h3>\n<p>Mix together the dry ingredients in a large bowl.</p>\n<h3>Step 2: Mix wets</h3>\n<p>Mix together the wet ingredients in another bowl or jug.</p>\n<h3>Step 3: Combine</h3>\n<p>Add wets to drys and stir well to combine.</p>\n<h3>Step 4: Bake</h3>\n<p>Bake at about 325 °F (163 °C), checking and stirring at 22 minutes and again 15 minutes later (about 37 minutes total cook time).</p>\n<h3>Step 5: Toast almonds</h3>\n<p>Toast or pan-fry the sliced almonds.</p>\n<h3>Step 6: Cranberries</h3>\n<p>Chop the cranberries.</p>\n<h3>Step 7: Finish</h3>\n<p>Add the toasted almonds and cranberries to the final baked mix.</p>\n<h3>Step 8: Jar it</h3>\n<p>Put the whole shebang in neat big jars and give yourself a pat on the back.</p>'
WHERE slug = 'best-granola';
