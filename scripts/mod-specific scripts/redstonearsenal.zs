recipes.removeShaped(<redstonearsenal:material:128>);
recipes.removeShaped(<redstonearsenal:material:160>);
recipes.removeShaped(<redstonearsenal:material:96>);
recipes.removeShaped(<redstonearsenal:material:0>);

recipes.removeShapeless(<redstonearsenal:material:160>);
recipes.removeShapeless(<redstonearsenal:material>);

recipes.addShapeless(<redstonearsenal:material:160> * 9, [<redstonearsenal:storage:1>]);

/*
	//Flux crystal
//mods.factorytech.Agitator.addRecipe(<liquid:redstone> * 1000, null, <minecraft:diamond>, null, <redstonearsenal:material:160>);
	//Fluxed electrum blend
//mods.factorytech.Agitator.addRecipe(<liquid:redstone> * 500, null, <ore:dustElectrum>, null, <redstonearsenal:material:0>);
*/

#Apparently this doesn't work due to a bug with the mod's CraftTweaker integration. Will enable once fixed.

mods.tconstruct.Casting.addTableRecipe(<redstonearsenal:material:0>, <ore:dustElectrum>, <liquid:redstone>, 500, true);
mods.tconstruct.Casting.addTableRecipe(<redstonearsenal:material:160>, <minecraft:diamond>, <liquid:redstone>, 1000, true);