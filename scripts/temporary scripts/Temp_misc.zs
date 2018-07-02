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
recipes.addShaped(<factorytech:machinepart:180> * 8, [[<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>], [<ore:plateSteel>, <ore:logWood>, <ore:stickSteel>], [<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>]]);

recipes.addShaped(<factorytech:machinepart:180> * 8, [[<ore:stickSteel>, <ore:plateBronze>, <ore:stickSteel>], [<ore:plateBronze>, <ore:logWood>, <ore:stickSteel>], [<ore:stickSteel>, <ore:plateBronze>, <ore:stickSteel>]]);

recipes.addShaped(<factorytech:machinepart:180> * 4, [[<ore:slimeball>, <forestry:oak_stick>, <ore:slimeball>], [<forestry:oak_stick>, <ore:trapdoorWood>, <ore:slimeball>], [<ore:slimeball>, <forestry:oak_stick>, <ore:slimeball>]]);

recipes.addShaped(<factorytech:machinepart:180> * 4, [[<ore:slimeball>, <immersiveengineering:material:0>, <ore:slimeball>], [<immersiveengineering:material:0>, <ore:trapdoorWood>, <ore:slimeball>], [<ore:slimeball>, <immersiveengineering:material:0>, <ore:slimeball>]]);


//Make necrotic bones:
mods.immersiveengineering.CokeOven.addRecipe(<tconstruct:materials:17>, 2, <minecraft:bone>, 200);

//Make obtaining Nuclearcraft glowing mushrooms more interesting
recipes.removeShapeless(<nuclearcraft:glowing_mushroom>);
recipes.addShapeless(<nuclearcraft:glowing_mushroom>, [<ore:mushroomAny>, <ore:mushroomAny>, <natura:nether_glowshroom:*>, <natura:nether_glowshroom:*>]);

//Make glowing bread recipe more interesting:
recipes.removeShapeless(<xreliquary:glowing_bread>);
  //Forestry recipe:
mods.forestry.Carpenter.addRecipe(<xreliquary:glowing_bread>, [[<forestry:honeyed_slice>, <forestry:honeyed_slice>, <forestry:honeyed_slice>]], 30, <liquid:glowstone> * 1000);


mods.forestry.Carpenter.addRecipe(<xreliquary:glowing_bread>, [[<forestry:crated.natura.nether_glowshroom.0>, <forestry:crated.natura.nether_glowshroom.1>, <forestry:crated.natura.nether_glowshroom.2>],
															   [<minecraft:bread>, <minecraft:bread>, <minecraft:bread>]], 30, <liquid:glowstone> * 1000);
															   
//Alternate warp stone recipe:
recipes.addShaped(<waystones:warp_stone>,
	[[<ore:dyePurple>, <minecraft:ender_pearl>, <ore:dyePurple>],
	 [<minecraft:ender_pearl>, <terraqueous:item_main:51>, <minecraft:ender_pearl>],
	 [<ore:dyePurple>, <minecraft:ender_pearl>, <ore:dyePurple>]]);
	 
//Change endimium dust recipe:
recipes.removeShapeless(<terraqueous:item_main:253>);
recipes.addShapeless(<terraqueous:item_main:253> * 4, [<ore:dustEnder>, <minecraft:chorus_fruit_popped>]);

// ProjectRed Silicon renamed "Silicon Wafer"
<projectred-core:resource_item:301>.displayName = "Silicon Wafer";
  
// Redstone + Sulfuric Acid to 4 Electrotine dust
mods.factorytech.Electroplater.addRecipe(<minecraft:redstone>, <projectred-core:resource_item:105>);

// Fluxed Electrum Dust + Lapis to 4 Electrotine dust
mods.forestry.ThermionicFabricator.addCast(<projectred-core:resource_item:105> * 4, [[<minecraft:dye:4>,null,null],[null,null,null],[null,null,null]], <liquid: glass> * 200);

val EnderPearl = <minecraft:ender_pearl>;
val EnderDust = <appliedenergistics2:material:46>;

//Crush ender pearls into ender pearl dust
mods.immersiveengineering.Crusher.addRecipe(EnderDust, EnderPearl, 2048);
mods.integrateddynamics.Squeezer.addRecipe(EnderPearl, EnderDust, null);
mods.factorytech.DrillGrinder.addRecipe(EnderDust, EnderPearl, true);