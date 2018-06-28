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
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 1000, <minecraft:fish:0>, 2048);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 150, <minecraft:melon>, 2048);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 200, <minecraft:reeds>, 2048);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 100, <ore:listAllFruit>, 2048);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 4000, botaniaHyrdo, 2048);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 1000, <forestry:crafting_material:5>, 2048);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:water> * 50, <ore:treeSapling>, 2048);
 
 
//add water recipes to Intergrated Dynamics
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<minecraft:fish:0>, null, <liquid:water> * 1000, 10);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<minecraft:melon>, null, <liquid:water> * 150, 10);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<minecraft:reeds>, null, <liquid:water> * 200, 10);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(botaniaHyrdo, null, <liquid:water> * 4000, 10);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<forestry:crafting_material:5>, null, <liquid:water> * 1000, 10);

