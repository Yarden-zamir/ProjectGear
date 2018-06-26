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

//Disable Mekanism machines

val itemsToDisable =[
  <mekanism:machineblock:0>, //Enrichment Chamber
  <mekanism:machineblock:3>, //Crusher
  <mekanism:machineblock:5>, //Precision sawmill
  <mekanism:machineblock:10> //Energized smelter
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

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
mods.factorytech.CompressionChamber.addRecipe(<mekanism:polyethene:0> * 3, <mekanism:polyethene:2>, null);

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
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<mekanism:dirtydust:0>, <mekanism:clump:0>, null, 10);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<mekanism:dirtydust:1>, <mekanism:clump:1>, null, 10);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<mekanism:dirtydust:2>, <mekanism:clump:2>, null, 10);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<mekanism:dirtydust:3>, <mekanism:clump:3>, null, 10);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<mekanism:dirtydust:4>, <mekanism:clump:4>, null, 10);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<mekanism:dirtydust:5>, <mekanism:clump:5>, null, 10);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<mekanism:dirtydust:6>, <mekanism:clump:6>, null, 10);
  
#################
  
  //Factory Tech drill grinder:
  
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:1> * 9, <mekanism:clump:1>, false);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:2> * 9, <mekanism:clump:2>, false);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:3> * 9, <mekanism:clump:3>, false);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:4> * 9, <mekanism:clump:4>, false);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:5> * 9, <mekanism:clump:5>, false);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:6> * 9, <mekanism:clump:6>, false);
mods.factorytech.DrillGrinder.addRecipe(<mekanism:dirtydust:7> * 9, <mekanism:clump:7>, false);
  
#################

  //Factory Tech fluid agitator:
  
//mods.factorytech.Agitator.addRecipe(<liquid:water> * 1000, null, <mekanism:dirtydust:1>, false, null, <thermalfoundation:material:0>);
  //mods.factorytech.Agitator.addRecipe(<liquid:water> * 1000, null, <thermalfoundation:material:1>, false, null, <thermalfoundation:material:0>);
	//This isn't working, not sure why
  
#################

  //Tinkers' Construct liquid casting:
mods.tconstruct.Casting.addBasinRecipe(<mekanism:dirtydust:1>, <thermalfoundation:material:0>,  <liquid:dist_water>, 30, true);
mods.tconstruct.Casting.addBasinRecipe(<mekanism:dirtydust:2>, <thermalfoundation:material:1>,  <liquid:dist_water>, 30, true);
mods.tconstruct.Casting.addBasinRecipe(<mekanism:dirtydust:3>, <mekanism:dust:2>, 			    <liquid:dist_water>, 30, true);
mods.tconstruct.Casting.addBasinRecipe(<mekanism:dirtydust:4>, <thermalfoundation:material:64>, <liquid:dist_water>, 30, true);
mods.tconstruct.Casting.addBasinRecipe(<mekanism:dirtydust:5>, <thermalfoundation:material:65>, <liquid:dist_water>, 30, true);
mods.tconstruct.Casting.addBasinRecipe(<mekanism:dirtydust:6>, <thermalfoundation:material:66>, <liquid:dist_water>, 30, true);
mods.tconstruct.Casting.addBasinRecipe(<mekanism:dirtydust:7>, <thermalfoundation:material:67>, <liquid:dist_water>, 30, true);