-- Fix "originates here" to point to the actual origin URL from each prior-art page (not the prior-art URL).
-- Add sub-bullets where the original had them (Avgolemono ingredients; Greek potatoes Step 3).

UPDATE recipes SET summary = 'This recipe originates <a href="https://www.cookingclassy.com/avgolemono-soup/">here</a> for me.'
WHERE slug = 'avgolemono-soup';

UPDATE recipes SET ingredients = E'<ul>\n<li>Extra virgin olive oil</li>\n<li>125 ml to 250 ml (1/2 cup to 1 cup) each of\n<ul>\n<li>finely chopped carrots</li>\n<li>finely chopped celery</li>\n<li>finely chopped green onions</li>\n</ul>\n</li>\n<li>2 garlic cloves, finely chopped</li>\n<li>2 l (8 cups) low-sodium chicken broth</li>\n<li>250 ml (1 cup) rice</li>\n<li>Pepper</li>\n<li>2 cooked boneless poultry breast equivalent, shredded (~ 175 g – 225 g)</li>\n<li>125 ml (1/2 cup) freshly-squeezed lemon juice</li>\n<li>2 large eggs</li>\n<li>Fresh parsley for garnish (optional)</li>\n</ul>'
WHERE slug = 'avgolemono-soup';

UPDATE recipes SET summary = 'This recipe originates <a href="https://thelemonbowl.com/slow-cooker-chicken-curry/">here</a> for me but I changed it a fair bit to suit childish tastes and a parenting schedule. Household reviews likened it to more of a butter chicken than a curry though it has no dairy. It produces a full slow cooker of food.'
WHERE slug = 'butterless-chicken';

UPDATE recipes SET summary = 'This recipe originates <a href="http://itstodiefor.ca/the-best-greek-potatoes-in-the-world/">here</a> for me; a recommendation from Colleen.'
WHERE slug = 'greek-potatoes';

UPDATE recipes SET instructions = E'<p>Nearly all these steps all occur a day prior to cooking and eating the potatoes.</p>\n<h3>Step 1: cut the potatoes</h3>\n<p>Start by boiling a big pot of water on the stove and peeling your potatoes. Quarter the potatoes length-wise. If some potatoes are extra thick, you may want to cut each quarter in half.</p>\n<h3>Step 2: boil potatoes for 2 minutes in salt and soda</h3>\n<p>Once your water is boiling, add in 1 tsp of salt and 1 tsp of baking soda, then add in your potatoes and cover with a lid. Immediately, set the timer for two minutes. The cool potatoes will stop the water from boiling, but that''s okay — they are still cooking and getting softer. Once the timer goes, dump the potatoes out into a sieve and rinse with cold water to stop them from cooking further. You don''t want them too soft. Set them aside while you prepare the marinade.</p>\n<h3>Step 3: mix marinade</h3>\n<p>In your large casserole dish (anywhere around 11″ x 9″), mix together:</p>\n<ul>\n<li>minced garlic</li>\n<li>yellow mustard</li>\n<li>lemon juice</li>\n<li>olive oil</li>\n<li>oregano</li>\n<li>salt and pepper</li>\n</ul>\n<h3>Step 4: marinade the potatoes overnight</h3>\n<p>Add in your potatoes and stir them around until each is fully coated. Cover and place in the fridge overnight. When you have the opportunity, remove them from the fridge and stir the potatoes around so the other sides get to bathe in the marinade (do this at least three times before cooking).</p>\n<h3>Step 5: bake the potatoes at 390 °F</h3>\n<p>When it''s time to cook them, preheat your oven to 390 °F and cover the dish with an upside down baking sheet (aluminum foil is typically used here but I find a baking sheet works just as well). Bake for an hour, then remove the cover and bake for another 45 minutes. Thanks to the baking soda in the boiling water, the bottoms should have a crispy layer. Remove from oven and enjoy.</p>'
WHERE slug = 'greek-potatoes';

UPDATE recipes SET summary = 'This recipe originates <a href="https://www.allrecipes.com/recipe/221228/little-lamb-meatballs-in-a-spicy-eggplant-tomato-sauce/">here</a> for me; a recommendation from Lindsay. I''ve reduced the salt by 1/3. "Serves 4."'
WHERE slug = 'lamb-meatballs';

UPDATE recipes SET summary = 'This recipe originates <a href="https://www.cookingclassy.com/pasta-primavera/">here</a> for me.'
WHERE slug = 'pasta-primavera';

UPDATE recipes SET summary = 'This recipe originates <a href="https://www.themediterraneandish.com/greek-chicken-souvlaki-recipe-tzatziki/">here</a> for me.'
WHERE slug = 'souvlaki-marinade';

UPDATE recipes SET summary = 'This recipe originates <a href="https://showmetheyummy.com/slow-cooker-thai-chicken-soup-recipe/">here</a> for me. Use a crock pot.'
WHERE slug = 'thai-chicken-soup';
