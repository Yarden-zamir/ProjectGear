import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;


//Disable Mekanism machines

val itemsToDisable =[
  //Enrichment Chamber
  <mekanism:machineblock:0>,
  <mekanism:machineblock:5>.withTag({recipeType: 1}),
  <mekanism:machineblock:6>.withTag({recipeType: 1}),
  <mekanism:machineblock:7>.withTag({recipeType: 1}),
  //Crusher
  <mekanism:machineblock:3>,
  <mekanism:machineblock:5>.withTag({recipeType: 2}),
  <mekanism:machineblock:6>.withTag({recipeType: 2}),
  <mekanism:machineblock:7>.withTag({recipeType: 2}),
  //Precision sawmill
  <mekanism:machineblock2:5>,
  //Energized smelter
  <mekanism:machineblock:10>,
  <mekanism:machineblock:5>.withTag({recipeType: 0, mekData: {}}),
  <mekanism:machineblock:6>.withTag({recipeType: 0}),
  <mekanism:machineblock:7>.withTag({recipeType: 0}),
  //Combiner
  <mekanism:machineblock:2>,
  <mekanism:machineblock:5>.withTag({recipeType: 4}),
  <mekanism:machineblock:6>.withTag({recipeType: 4}),
  <mekanism:machineblock:7>.withTag({recipeType: 4}),
  //Osmium compressor
  <mekanism:machineblock:1>,
  <mekanism:machineblock:5>.withTag({recipeType: 3}),
  <mekanism:machineblock:6>.withTag({recipeType: 3}),
  <mekanism:machineblock:7>.withTag({recipeType: 3}),
  //Disable cables, except heat and gas. We have more interesting and optimized ways to transmit RF, items and fluids
  //Script segment by DolphinBlaster
  <mekanism:transmitter>.withTag({tier: 0}),
  <mekanism:transmitter>.withTag({tier: 1}),
  <mekanism:transmitter>.withTag({tier: 2}),
  <mekanism:transmitter>.withTag({tier: 3}),
  <mekanism:transmitter:1>.withTag({tier: 0}),
  <mekanism:transmitter:1>.withTag({tier: 1}),
  <mekanism:transmitter:1>.withTag({tier: 2}),
  <mekanism:transmitter:1>.withTag({tier: 3}),
  <mekanism:transmitter:3>.withTag({tier: 0}),
  <mekanism:transmitter:3>.withTag({tier: 1}),
  <mekanism:transmitter:3>.withTag({tier: 2}),
  <mekanism:transmitter:3>.withTag({tier: 3}),
  <mekanism:transmitter:4>.withTag({tier: 0}),
  <mekanism:transmitter:5>.withTag({tier: 0}),
  <mekanism:machineblock2:11>.withTag({tier: 0, mekData: {}}),
  <mekanism:machineblock2:11>.withTag({tier: 1, mekData: {}}),
  <mekanism:machineblock2:11>.withTag({tier: 2, mekData: {}}),
  <mekanism:machineblock2:11>.withTag({tier: 3, mekData: {}}),
  //Disable the digital miner
  <mekanism:machineblock:4>,
  //Disable bins
  <mekanism:basicblock:6>.withTag({tier: 0, mekData: {}}),
  <mekanism:basicblock:6>.withTag({tier: 1, mekData: {}}),
  <mekanism:basicblock:6>.withTag({tier: 2, mekData: {}}),
  <mekanism:basicblock:6>.withTag({tier: 3, mekData: {}})
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);


//Script by DeviantCrafter

//Add important enrichment chamber and crusher recipes to other machines:

  //Immersive Engineering metal press:
	//Coal > compress carbon
mods.immersiveengineering.MetalPress.addRecipe(<mekanism:compressedcarbon>, <minecraft:coal>, <immersiveengineering:mold:0>, 4800, 1);

	//Charcoal > compress carbon
mods.immersiveengineering.MetalPress.addRecipe(<mekanism:compressedcarbon>, <minecraft:coal:1>, <immersiveengineering:mold:0>, 4800, 1);

	//Redstone > compressed redstone
mods.immersiveengineering.MetalPress.addRecipe(<mekanism:compressedredstone>, <minecraft:redstone>, <immersiveengineering:mold:0>, 4800, 1);

	//Diamond > compressed diamond
mods.immersiveengineering.MetalPress.addRecipe(<mekanism:compresseddiamond>, <minecraft:diamond>, <immersiveengineering:mold:0>, 4800, 1);

	//Refined obsidian > compressed obsidian
mods.immersiveengineering.MetalPress.addRecipe(<mekanism:compressedobsidian>, <mekanism:otherdust:5>, <immersiveengineering:mold:0>, 4800, 1);

#################

  //Pneumaticraft: Repressurized pressure chamber:
	//3 HDPE pellet > 1 HDPE sheet
mods.pneumaticcraft.pressurechamber.addRecipe([<mekanism:polyethene:0> * 3], 2.0, [<mekanism:polyethene:2>]);

  //Factory Tech compression chamber
	//3 HDPE pellet > 1 HDPE sheet
mods.factorytech.CompressionChamber.addRecipe(<mekanism:polyethene:2>, <mekanism:polyethene:0> * 3, null);

#################

  //Immersive Engineering crusher
  //Converts dirty metal clumps into dirty metal dust
  
	//Iron
mods.immersiveengineering.Crusher.addRecipe(<mekanism:dirtydust:0>, <mekanism:clump:0>, 2048);

	//Gold
mods.immersiveengineering.Crusher.addRecipe(<mekanism:dirtydust:1>, <mekanism:clump:1>, 2048);

	//Osmium
mods.immersiveengineering.Crusher.addRecipe(<mekanism:dirtydust:2>, <mekanism:clump:2>, 2048);

	//Copper
mods.immersiveengineering.Crusher.addRecipe(<mekanism:dirtydust:3>, <mekanism:clump:3>, 2048);

	//Tin
mods.immersiveengineering.Crusher.addRecipe(<mekanism:dirtydust:4>, <mekanism:clump:4>, 2048);

	//Silver
mods.immersiveengineering.Crusher.addRecipe(<mekanism:dirtydust:5>, <mekanism:clump:5>, 2048);

	//Lead
mods.immersiveengineering.Crusher.addRecipe(<mekanism:dirtydust:6>, <mekanism:clump:6>, 2048);

#################

  //Integrated Dynamics squeezer:
  //Converts dirty metal clumps into dirty metal dust
mods.integrateddynamics.Squeezer.addRecipe(<mekanism:clump:0>, <mekanism:dirtydust:0>,  <liquid:water_black> * 100);
mods.integrateddynamics.Squeezer.addRecipe(<mekanism:clump:1>, <mekanism:dirtydust:1>, <liquid:water_black> * 100);
mods.integrateddynamics.Squeezer.addRecipe(<mekanism:clump:2>, <mekanism:dirtydust:2>, <liquid:water_black> * 100);
mods.integrateddynamics.Squeezer.addRecipe(<mekanism:clump:3>, <mekanism:dirtydust:3>, <liquid:water_black> * 100);
mods.integrateddynamics.Squeezer.addRecipe(<mekanism:clump:4>, <mekanism:dirtydust:4>, <liquid:water_black> * 100);
mods.integrateddynamics.Squeezer.addRecipe(<mekanism:clump:5>, <mekanism:dirtydust:5>, <liquid:water_black> * 100);
mods.integrateddynamics.Squeezer.addRecipe(<mekanism:clump:6>, 	<mekanism:dirtydust:6>, <liquid:water_black> * 100);

mods.factorytech.DrillGrinder.addRecipe(<minecraft:gold_nugget> * 9, <minecraft:gold_ingot>, true);
  
#################
/*
  //Factory Tech drill grinder:
  
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:1>, <mekanism:clump:1>, false);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:2>, <mekanism:clump:2>, false);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:3>, <mekanism:clump:3>, false);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:4>, <mekanism:clump:4>, false);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:5>, <mekanism:clump:5>, false);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:6>, <mekanism:clump:6>, false);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:7>, <mekanism:clump:7>, false);
*/
#################

  //Factory Tech fluid agitator:
  
//mods.factorytech.Agitator.addRecipe(<liquid:water> * 1000, null, <mekanism:dirtydust:1>, false, null, <thermalfoundation:material:0>);
  //mods.factorytech.Agitator.addRecipe(<liquid:water> * 1000, null, <thermalfoundation:material:1>, false, null, <thermalfoundation:material:0>);
	//This isn't working, not sure why
  
#################

  //Tinkers' Construct liquid casting:
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:0>,  <mekanism:dirtydust:0>, <liquid:water>, 30, true);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:1>,  <mekanism:dirtydust:1>, <liquid:water>, 30, true);
mods.tconstruct.Casting.addTableRecipe(<mekanism:dust:2>,			    <mekanism:dirtydust:2>, <liquid:water>, 30, true);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:64>, <mekanism:dirtydust:3>, <liquid:water>, 30, true);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:65>, <mekanism:dirtydust:4>, <liquid:water>, 30, true);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:66>, <mekanism:dirtydust:5>, <liquid:water>, 30, true);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:67>, <mekanism:dirtydust:6>, <liquid:water>, 30, true);

//Script segment by JoJo Reference
//Replacing IE's obsidian crushing to drop refined obsidian dust
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:obsidian>);
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:770>*2, <ore:obsidian>, 6000, <mekanism:otherdust:5>, 0.02);

//Obsidian Dust into Refined Obsidian Dust
mods.factorytech.Temperer.addRecipe(<mekanism:otherdust:5>, <thermalfoundation:material:770>, 55);

//Salt from Salt Blocks
mods.immersiveengineering.Crusher.addRecipe(<mekanism:salt>*4, <ore:blockSalt>, 3000);
mods.integrateddynamics.Squeezer.addRecipe(<mekanism:salt> * 4, <mekanism:saltblock>, null);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:salt>*4, <ore:blockSalt>, true);