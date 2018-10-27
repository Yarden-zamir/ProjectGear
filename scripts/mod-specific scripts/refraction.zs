// Reflective Alloy recipes
// Reflective Alloy Ingot recipe removal
recipes.remove(<refraction:reflective_alloy>);
 
// Reflective Alloy Ingot Arc Furnace recipe (1 Gold Ingot + 1 Tin Ingot)
mods.immersiveengineering.ArcFurnace.addRecipe(<refraction:reflective_alloy> * 3, <minecraft:gold_ingot>, null, 1000, 2048, [<ore:ingotTin>], "Alloying");
 
// Reflective Alloy Alloy Kiln recipe
mods.immersiveengineering.AlloySmelter.addRecipe(<refraction:reflective_alloy> * 2, <minecraft:gold_ingot>, <ore:ingotTin>, 2000);