-- Best Granola: remove duplicate same-form units (g + kg) from ingredients

UPDATE recipes
SET ingredients = E'<h4>Dry</h4>\n<ul>\n<li>2 kg slow-cooking rolled oats</li>\n<li>1 kg pumpkin seeds</li>\n<li>1 kg sunflower seeds</li>\n<li>500 g cashew pieces</li>\n<li>500 g walnut pieces</li>\n<li>250 g hazelnuts</li>\n</ul>\n<h4>Wet</h4>\n<ul>\n<li>180 ml (¾ cup) molasses</li>\n<li>375 ml (1 ½ cups) tahini</li>\n<li>90 ml (6 tablespoons) water</li>\n<li>10 ml (2 teaspoons) vanilla</li>\n</ul>\n<h4>Toast, then add</h4>\n<ul>\n<li>500 g sliced almonds</li>\n<li>500 g cranberries</li>\n</ul>'
WHERE slug = 'best-granola';
