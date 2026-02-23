-- Prior-art recipes from eatlogicalsentences.com (migrated, style preserved)

-- 1. Avgolemono Soup
INSERT INTO recipes (slug, title, summary, ingredients, instructions)
VALUES (
  'avgolemono-soup',
  'Avgolemono Soup',
  'This recipe originates here for me.',
  E'Extra virgin olive oil\n125 ml to 250 ml (1/2 cup to 1 cup) each of\n  finely chopped carrots\n  finely chopped celery\n  finely chopped green onions\n2 garlic cloves, finely chopped\n2 l (8 cups) low-sodium chicken broth\n250 ml (1 cup) rice\nPepper\n2 cooked boneless poultry breast equivalent, shredded (~ 175 g – 225 g)\n125 ml (1/2 cup) freshly-squeezed lemon juice\n2 large eggs\nFresh parsley for garnish (optional)',
  E'Step 0: Soak the rice\nRinse the rice. It helps to soak the rice in water for about 15 minutes or so or until you are able to break one grain of rice easily or until the veggies are done with the sauté. The rice will cook quickly and evenly.\n\nStep 1: Sauté the veggies\nIn a large Dutch oven or heavy pot, heat 15 ml (1 tbsp) olive oil on medium-high. Add the carrots, celery and green onions, toss together to sauté briefly then stir in the garlic.\n\nStep 2: Broth and rice\nAdd the chicken broth and bay leaves then raise the heat to high. Once the liquid has come to a rolling boil, add the rice and pepper. Turn the heat to medium-low and simmer for 20 minutes or until the rice is tender.\n\nStep 3: Add a bird\nNow stir in the cooked, shredded poultry.\n\nStep 4: Prepare the egg-lemon sauce\nTo prepare the egg-lemon sauce, in a medium bowl, whisk together the 125 ml of lemon juice and two eggs. While whisking add 2 ladles-full of the broth from the cooking pot (this helps temper the eggs). Once fully combined, add the sauce to the chicken soup and stir. Immediately remove from heat. This is your very last step in the cooking process, be sure to remove the soup from heat immediately.\n\nGarnish with fresh parsley, if you like. Serve hot with your favourite bread. Enjoy!'
)
ON CONFLICT (slug) DO NOTHING;

-- 2. Butterless chicken
INSERT INTO recipes (slug, title, summary, ingredients, instructions)
VALUES (
  'butterless-chicken',
  'Butterless chicken',
  'This recipe originates here for me but I changed it a fair bit to suit childish tastes and a parenting schedule. Household reviews likened it to more of a butter chicken than a curry though it has no dairy. It produces a full slow cooker of food.',
  E'2 large onions\n4 medium yams\n1 can of the thickest fattest coconut milk\n250 ml chicken stock\n700 ml to 900 ml tomato sauce, whatever is convenient\n60 ml (4 tablespoons) curry powder\n10 ml (2 teaspoons) salt\n1 large can of chickpeas\n1 kg chicken thighs\n500 ml frozen peas\n60 ml (4 tablespoons) lemon juice\nbuncha cilantro (garnish)',
  E'This one suits the slow cooker. I have prepared and frozen the onion and yams, then frozen it until I was ready to deploy the meal.\n\nStep 1: cut the onions and yams into a pot\nStart with the onions. Treat them like they are on their way to becoming caramelized. While its cooking cut the yams. When the yams are all cut, add them too. Cook it!\n\nStep 2: mush it. store it if you want\nJam the immersion blender into the pot and run that outboard all up and down and everyplace. Once it is a purée it can be slopped into a ziplock for freezing and deployment later if that suits you. Then you can come back at step 3 whenever sensible. If you are going onward right now, set the mush aside breifly.\n\nStep 3: load the runny stuff\nIn the bottom of the slow cooker, whisk together coconut milk, chicken stock, tomato sauce, curry powder, and salt.\n\nStep 4: load the less runny stuff\nPlop the chickpeas and chicken into the slow cooker. Add the onion/yam mush to the slow cooker, stopping before it gets full. In my experience there needs to be 1 cm to 2 cm of space a the top to avoid spillage while cooking.\n\nStep 5: cook that sauce\nTurn the slow cooker on and ignore it for 8 hours.\n\nStep 6: finishing touches\nAdd the frozen peas and lemon juice after it is done cooking. Serve over rice. Don''t forget about that cilantro.'
)
ON CONFLICT (slug) DO NOTHING;

-- 3. Greek Potatoes
INSERT INTO recipes (slug, title, summary, ingredients, instructions)
VALUES (
  'greek-potatoes',
  'Greek Potatoes',
  'This recipe originates here for me; a recommendation from Colleen.',
  E'1 kg potatoes, peeled and cut into wedges\n5 ml (1 teaspoon) sea salt\n5 ml (1 teaspoon) baking soda\n6 – 10 cloves minced garlic\n2 heaping tbsp mustard\n85 ml (1/3 cup) fresh squeezed lemon juice\n125 ml (1/2 cup) extra virgin olive oil\n20 ml (1.5 tablespoons) dried oregano\n5 ml (1 teaspoon) ground pepper',
  E'Nearly all these steps all occur a day prior to cooking and eating the potatoes.\n\nStep 1: cut the potatoes\nStart by boiling a big pot of water on the stove and peeling your potatoes. Quarter the potatoes length-wise. If some potatoes are extra thick, you may want to cut each quarter in half.\n\nStep 2: boil potatoes for 2 minutes in salt and soda\nOnce your water is boiling, add in 1 tsp of salt and 1 tsp of baking soda, then add in your potatoes and cover with a lid. Immediately, set the timer for two minutes. The cool potatoes will stop the water from boiling, but that''s okay — they are still cooking and getting softer. Once the timer goes, dump the potatoes out into a sieve and rinse with cold water to stop them from cooking further. You don''t want them too soft. Set them aside while you prepare the marinade.\n\nStep 3: mix marinade\nIn your large casserole dish (anywhere around 11″ x 9″), mix together: minced garlic, yellow mustard, lemon juice, olive oil, oregano, salt and pepper.\n\nStep 4: marinade the potatoes overnight\nAdd in your potatoes and stir them around until each is fully coated. Cover and place in the fridge overnight. When you have the opportunity, remove them from the fridge and stir the potatoes around so the other sides get to bathe in the marinade (do this at least three times before cooking).\n\nStep 5: bake the potatoes at 390 °F\nWhen it''s time to cook them, preheat your oven to 390 °F and cover the dish with an upside down baking sheet (aluminum foil is typically used here but I find a baking sheet works just as well). Bake for an hour, then remove the cover and bake for another 45 minutes. Thanks to the baking soda in the boiling water, the bottoms should have a crispy layer. Remove from oven and enjoy.'
)
ON CONFLICT (slug) DO NOTHING;

-- 4. Lamb meatballs
INSERT INTO recipes (slug, title, summary, ingredients, instructions)
VALUES (
  'lamb-meatballs',
  'Lamb meatballs',
  'This recipe originates here for me; a recommendation from Lindsay. I''ve reduced the salt by 1/3. "Serves 4."',
  E'The sauce:\n1 eggplant, cubed\n30 ml (2 tablespoons) olive oil\nsalt and freshly ground black pepper to taste\n1/2 to 3/4 of a medium onion, minced (1/4 of the onion is in the meatballs)\n1 pinch crushed red pepper flakes\n375 ml (1 1/2 cups) chicken broth (use minimal liquid if using "better than bouillon")\n250 ml (1 cup) marinara sauce\n\nThe meatballs:\n60 ml (1/4 cup) plain dry bread crumbs\n1 large egg\n25 ml (1 1/2 tablespoons) Greek yogurt\n1/4 onion, finely minced\n4-8 cloves garlic, finely minced\n1 ml (1/4 teaspoon) or less kosher salt\n5 ml (1 teaspoon) ground pepper\n5 ml (1 teaspoon) ground cumin\n2.5 ml (1/2 teaspoon) ground cinnamon\n1 ml (1/4 teaspoon) ground coriander\n1 ml (1/4 teaspoon) cayenne pepper\n500 g (~1 pound) ground lamb\n15 ml (1 tablespoon) chopped mint',
  E'Meatballs can be made prior to the sauce, or while it simmers. Meatballs cook in the oven at 450 °F; preheat the oven now if making them in succession.\n\nStep 1: start the sauce with the eggplant\nCombine eggplant, olive oil, salt and black pepper in a large skillet over medium-high heat. Cook and stir until eggplant begins to soften, about 5 minutes.\n\nStep 2: add onions and spices\nMix in minced onion and red pepper flakes. Reduce heat to medium; cook and stir until onion softens, 4 minutes.\n\nStep 3: add chicken broth and marinara\nStir in chicken broth and marinara sauce. Reduce heat to medium-low and simmer until sauce mixture has reduced by half, about 30 minutes.\n\nStep 4: start the meatballs\nLine a baking sheet with parchment paper or silicone baking mats. Do it now, before your hands are meatmessy.\n\nWhisk bread crumbs, egg, and Greek yogurt in a large bowl until the bread crumbs absorb all the liquid, about 3 minutes.\n\nStep 5: add onion and spices\nMix onions, garlic, Kosher salt, black pepper, cumin, cinnamon, coriander, and cayenne into the bread crumb mixture.\n\nStep 6: add lamb\nCrumble lamb into bread crumb spice mixture.\n\nStep 7: form the meatballs\nForm lamb mixture into small meatballs and transfer to prepared baking sheet. Place baking sheet into the preheated oven (450 °F) and bake until browned, but still pink inside, about 10 minutes.\n\nStep 8: combine meatballs and sauce\nRemove meatballs from the oven and stir into simmering sauce. Simmer over low heat until sauce begins to thicken, 30 to 45 minutes.\n\nGarnish with chopped fresh mint.'
)
ON CONFLICT (slug) DO NOTHING;

-- 5. Pasta Primavera
INSERT INTO recipes (slug, title, summary, ingredients, instructions)
VALUES (
  'pasta-primavera',
  'Pasta Primavera',
  'This recipe originates here for me.',
  E'Penne pasta\nSalt\nOlive oil\nFresh veggies including red onion, carrot, broccoli, bell pepper, yellow squash, zucchini, tomatoes and garlic\n2 tsp dried Italian seasoning\n2 Tbsp fresh lemon juice\n2 Tbsp chopped fresh parsley\n1/2 cup shredded parmigiano, divided',
  E'Step 0: Chop all the veggies\nProbably juliennes.\n\nStep 1: Boil the Pasta\nBring a large pot of water to a boil, add salt, then cook pasta according to package directions. Reserve 1/2 cup pasta water before draining.\n\nStep 2: Sauté Vegetables\nWhile the pasta is boiling cook the veggies so they will finish at the same time as the pasta.\n\nTo do so, heat olive oil in a 12-inch (and deep) skillet over medium-high heat. Add red onion and carrot and sauté 2 minutes.\n\nAdd broccoli and bell pepper then sauté 2 minutes. Add squash and zucchini then sauté 2 – 3 minutes or until veggies have nearly softened.\n\nAdd garlic tomatoes, and Italian seasoning and sauté 2 minutes longer.\n\nStep 3: Toss Pasta and Veggies Together with Seasonings\nPour veggies into now empty pasta pot or a serving bowl, add drained pasta, drizzle in lemon juice, season with a little more salt as needed and toss while adding in pasta water to loosen as desired.\n\nToss in 1/4 cup parmigiano and parsley then serve with remaining parmesan on top.'
)
ON CONFLICT (slug) DO NOTHING;

-- 6. Soft boiled eggs
INSERT INTO recipes (slug, title, summary, ingredients, instructions)
VALUES (
  'soft-boiled-eggs',
  'Soft boiled eggs',
  'This recipe originates here for me.',
  NULL,
  E'Step 1: boil water\nBring a pot of water to a boil with enough water to cover the eggs by about an inch.\n\nStep 2: put in the eggs gently at a simmer\nReduce the heat to low and use a skimmer to gently place the eggs in the water. By reducing the heat to low, you''ll prevent the eggs from bouncing around and cracking. Then, turn the heat back up to a boil.\n\nStep 3: time it!\nImmediately set a timer and cook the eggs according to how soft or hard you''d like them. Here''s my general description of how long to boil eggs:\n\nStep 4: get them out and chilled\n6 minutes: A liquidy yolk and soft white. This is perfect for eggs served in an egg cup.\n6.5 minutes: A soft, jammy yolk. This is my favourite for eggs on toast or soft boiled eggs on a salad.\n8 minutes: A soft yolk but firm enough to hold its own.\n10 minutes: The early stages of a hard boiled egg, with just a smidge of softness in the middle.\n12 minutes: A hard boiled egg with a lighter yolk.\n14 minutes: Your traditional hard boiled egg with the lightest yolk and a firm white, but not overcooked.\n\nOnce the eggs have cooked, immediately place them in an ice water bath to stop them from cooking and maintain your perfect texture.'
)
ON CONFLICT (slug) DO NOTHING;

-- 7. Souvlaki Marinade
INSERT INTO recipes (slug, title, summary, ingredients, instructions)
VALUES (
  'souvlaki-marinade',
  'Souvlaki Marinade',
  'This recipe originates here for me.',
  E'10 – 12 skewers\n1 kg chicken cut into 3 cm – 4 cm pieces\n10 cloves minced garlic\n10 ml (2 teaspoons) oregano\n5 ml (1 teaspoon) rosemary\n5 ml (1 teaspoon) paprika\n5 ml (1 teaspoon) salt\n5 ml (1 teaspoon) black pepper\n60 ml (1/4 cup) extra virgin olive oil\n60 ml (1/4 cup) lemon juice (1 lemon)\nSome dry white wine?',
  E'Leave the chicken in the marinade for at least 30 minutes, or overnight. Soak the skewers for 30+ minutes.\n\nStep 1: cut the chicken\nMake it into souvlaki size, probably 3 cm – 4 cm chunks.\n\nStep 2: make the marinade\nCombine all the ingredients.\n\nStep 3: let it sit\nIf you didn''t take the above step literally, add the chicken to the marinade now. Set it in the fridge for 30 minutes to overnight.\n\nStep 4: soak and poke\nSoke the skewers for 30 minutes to 40 minutes. Load the skewers with chicken.\n\nStep 5: cook\nCook the chicken then eat it. If using the BBQ on high, cooking takes about 5 minutes. Brush with more marinade during cooking if you are fancy.'
)
ON CONFLICT (slug) DO NOTHING;

-- 8. Thai Chicken Soup
INSERT INTO recipes (slug, title, summary, ingredients, instructions)
VALUES (
  'thai-chicken-soup',
  'Thai Chicken Soup',
  'This recipe originates here for me. Use a crock pot.',
  E'0.5 kg boneless, skinless chicken thighs\n1 yellow onion diced\n1 cup diagonally sliced carrots\n1 red bell pepper sliced\n1 (8 oz) package sliced mushrooms\n1 head broccoli cut into florets\nChopped cilantro garnish\nChopped peanuts garnish\n2 (14 oz) cans thick coconut milk\n3 cups chicken broth\n1/2 cup of the best peanut butter\n1 (4 oz) jar red curry paste start with 1/4 cup and add more to taste\n2 tablespoons fish sauce\n5 tablespoons tamari\n2 tablespoons dark brown sugar\n4 cloves garlic minced or pressed\n1 teaspoon ground ginger\n3 tablespoons lime juice\nBrown rice or noodles for serving',
  E'Step 0: Chop all the plants and animals\nThis is prep. Don''t put this in the pot yet.\n\nOnions diced, carrots diag''ed, bell pepper sliced, mushrooms sliced, broccoli floretted. If your kids are like mine, blend the onions and broccoli stalks to evade their power-play.\n\nChop the cilantro and peanuts to garnish with in about 8 hours.\n\nSlice the chicken thighs into narrow strips. (0.5 cm < width < 1.0 cm.)\n\nStep 1: Add non-solids\nGrease the crockpot.\n\nWhisk together sauce in crockpot: coconut milk, chicken broth, peanut butter, red curry paste, fish sauce, tamari, dark brown sugar, garlic, and ground ginger. If any of those plants ended up in the blender, mix them in now too.\n\nStep 2: Add solids\nAdd in the goodies: chicken breasts, onion, carrots, bell pepper, mushrooms, and broccoli.\n\nStep 3: Crock and go\nCover and cook on low. Come back in lotsa hours.\n\nStep 4: Serve\nIt goes well with rice.\n\nIt''s probably hotter''n hades – get that soup cooling somewhere.\n\nAdd the 3 tablespoons of lime juice.\n\nPut the cilantro and peanuts out in fancy little bowls.'
)
ON CONFLICT (slug) DO NOTHING;
