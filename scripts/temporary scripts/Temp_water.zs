//Credit to xDorito for making this script

val botaniaHyrdo = <botania:specialflower>.withTag({type: "hydroangeas"});
 
//add water recipes to forestry squeezer
 
mods.forestry.Squeezer.addRecipe(<liquid:water> * 1000, [<minecraft:fish:0>], 30);
mods.forestry.Squeezer.addRecipe(<liquid:water> * 150, [<minecraft:melon>], 30, <minecraft:melon_seeds> % 10);
mods.forestry.Squeezer.addRecipe(<liquid:water> * 200, [<minecraft:reeds>], 30, <minecraft:sugar> % 10);
//No listAllFruit recipe because it can already be turned into fruit juice
mods.forestry.Squeezer.addRecipe(<liquid:water> * 4000, [botaniaHyrdo], 30, <minecraft:dye:6> % 20);
mods.forestry.Squeezer.addRecipe(<liquid:water> * 1000, [<forestry:crafting_material:5>], 30, <minecraft:ice> % 20);
//No sapling recipe because it doesn't support ore dictionary tags

 
//add water recipes to IE squeezer
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 1500, <minecraft:fish:0>, 2048);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 225, <minecraft:melon>, 2048);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 300, <minecraft:reeds>, 2048);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 6000, botaniaHyrdo, 2048);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 1500, <forestry:crafting_material:5>, 2048);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 75, <ore:treeSapling>, 2048);
 
 
//add water recipes to Intergrated Dynamics
mods.integrateddynamics.Squeezer.addRecipe(<minecraft:fish:0>, null, <liquid:water> * 1500);
mods.integrateddynamics.Squeezer.addRecipe(<minecraft:melon>, null, <liquid:water> * 225);
mods.integrateddynamics.Squeezer.addRecipe(<minecraft:reeds>, null, <liquid:water> * 300);
mods.integrateddynamics.Squeezer.addRecipe(botaniaHyrdo, null, <liquid:water> * 6000);
mods.integrateddynamics.Squeezer.addRecipe(<forestry:crafting_material:5>, null, <liquid:water> * 1500);

