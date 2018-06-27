import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

####################
//This script contains temporary recipes to balance the pack while more permanent recipes are being designed. Nothing here is final, and nothing here will be on the diagram.
####################

//Turn scraps to leather:
	//Carpenter step:
mods.forestry.Carpenter.addRecipe(<contenttweaker:oiled_leather>, [[<terraqueous:item_main:100>, <terraqueous:item_main:100>], [<terraqueous:item_main:100>, <terraqueous:item_main:100>]], 30, <liquid:seed.oil> * 100);
	//Drying rack step:
mods.tconstruct.Drying.addRecipe(<minecraft:leather>, <contenttweaker:oiled_leather>, 6000);

//Craft Factory Tech water mesh:

/*
recipes.addShaped(<factorytech:machinepart:180> * 8, [[<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>], [<ore:plateSteel>, <ore:logWood>, <ore:stickSteel>], [<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>]]);

recipes.addShaped(<factorytech:machinepart:180> * 8, [[<ore:stickSteel>, <ore:plateBronze>, <ore:stickSteel>], [<ore:plateBronze>, <ore:logWood>, <ore:stickSteel>], [<ore:stickSteel>, <ore:plateBronze>, <ore:stickSteel>]]);

recipes.addShaped(<factorytech:machinepart:180> * 4, [[<ore:slimeball>, <forestry:oak_stick>, <ore:slimeball>], [<forestry:oak_stick>, <ore:trapdoorWood>, <ore:slimeball>], [<ore:slimeball>, <forestry:oak_stick>, <ore:slimeball>]]);

recipes.addShaped(<factorytech:machinepart:180> * 4, [[<ore:slimeball>, <immersiveengineering:material:0>, <ore:slimeball>], [<immersiveengineering:material:0>, <ore:trapdoorWood>, <ore:slimeball>], [<ore:slimeball>, <immersiveengineering:material:0>, <ore:slimeball>]]);
*/
//Disable Mekanism machines