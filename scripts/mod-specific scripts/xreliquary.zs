import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

print("Beginning xreliquary.zs");


val itemsToDisable =[
	// Pedestals
	// Note: Disabled because they made it too easy to kill mobs
	<xreliquary:pedestal:*>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
	<xreliquary:pedestal:*>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

//Note: Tome of Alkahestry disabled in config


// Credit to xDorito for making this script

// Compression Chamber
mods.factorytech.CompressionChamber.addRecipe(<xreliquary:mob_ingredient:0>, <minecraft:bone> * 5, null);
mods.factorytech.CompressionChamber.addRecipe(<xreliquary:mob_ingredient:2>, <minecraft:spider_eye> * 5, <liquid:blood> * 1000);
mods.factorytech.CompressionChamber.addRecipe(<xreliquary:mob_ingredient:12>, <minecraft:shulker_shell> * 5, <liquid:water_black> * 5000);
mods.factorytech.CompressionChamber.addRecipe(<xreliquary:mob_ingredient:3>, <minecraft:blaze_powder>, <fluid:sulfur> * 666);
mods.factorytech.CompressionChamber.addRecipe(<xreliquary:mob_ingredient:11>, <quark:biotite>, <fluid:liquidchorus> * 1000);
mods.factorytech.CompressionChamber.addRecipe(<xreliquary:mob_ingredient:4>, <tconstruct:edible:30>, <fluid:glass> * 1000);
mods.factorytech.CompressionChamber.addRecipe(<xreliquary:mob_ingredient:4>, <tconstruct:edible:31>, <fluid:glass> * 1000);
mods.factorytech.CompressionChamber.addRecipe(<xreliquary:mob_ingredient:4>, <tconstruct:edible:32>, <fluid:glass> * 1000);
mods.factorytech.CompressionChamber.addRecipe(<xreliquary:mob_ingredient:4>, <tconstruct:edible:34>, <fluid:glass> * 1000);
 
// Pressure Chamber
mods.pneumaticcraft.pressurechamber.addRecipe([<minecraft:bone> * 5], 2.0, [<xreliquary:mob_ingredient:0>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<minecraft:spider_eye> * 5], 2.0, [<xreliquary:mob_ingredient:2>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<tconstruct:edible:30>, <tconstruct:materials:9>], 2.0, [<xreliquary:mob_ingredient:4>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<tconstruct:edible:31>, <tconstruct:materials:9>], 2.0, [<xreliquary:mob_ingredient:4>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<tconstruct:edible:32>, <tconstruct:materials:9>], 2.0, [<xreliquary:mob_ingredient:4>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<tconstruct:edible:34>, <tconstruct:materials:9>], 2.0, [<xreliquary:mob_ingredient:4>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<contenttweaker:oiled_leather>, <tconstruct:materials:17>], 2.0, [<xreliquary:mob_ingredient:5>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<tconstruct:edible:33>, <minecraft:rotten_flesh> * 8], 2.0, [<xreliquary:mob_ingredient:6>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<botania:blazeblock>, <tconstruct:edible:34> * 4], 2.0, [<xreliquary:mob_ingredient:7>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<quark:biotite> * 5, <minecraft:chorus_fruit_popped>], 2.0, [<xreliquary:mob_ingredient:11>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<minecraft:dye:0>, <minecraft:shulker_shell>* 5], 2.0, [<xreliquary:mob_ingredient:12>]);
 

// Makes mob drops craftable. They are no longer mob drops, which means less random junk in your inventory.
// Coke Oven
mods.immersiveengineering.CokeOven.addRecipe(<xreliquary:mob_ingredient:1>, 0, <xreliquary:mob_ingredient:0>, 1000);
 
//tinkers construct casting table
//mods.tconstruct.Casting.addTableRecipe(<xreliquary:mob_ingredient:3>, <fluid:sulfur> * 666, 100, <minecraft:blaze_powder>, true, 60);
//mods.tconstruct.Casting.addTableRecipe(<xreliquary:mob_ingredient:10>, <fluid:ice> * 1000, 100, <minecraft:snowball>, true, 60);

mods.tconstruct.Casting.addTableRecipe(<xreliquary:mob_ingredient:3>, <minecraft:blaze_powder>, <fluid:sulfur>, 666, true, 60);
mods.tconstruct.Casting.addTableRecipe(<xreliquary:mob_ingredient:10>, <minecraft:snowball>, <fluid:ice>, 1000, true, 60);

//mods.tconstruct.Casting.addTableRecipe(<minecraft:gold_ingot>, <minecraft:iron_ingot>, <liquid:molten_gold>, 30, true, 200);
 
// Forestry Carpenter
mods.forestry.Carpenter.addRecipe(<xreliquary:mob_ingredient:5>, [[<contenttweaker:oiled_leather>, <tconstruct:materials:17>]], 30, <liquid:blood> * 1000);
mods.forestry.Carpenter.addRecipe(<xreliquary:mob_ingredient:6>, [[<tconstruct:edible:33>, <minecraft:rotten_flesh> * 8]], 30, <liquid:blood> * 1000);
mods.forestry.Carpenter.addRecipe(<xreliquary:mob_ingredient:7>, [[<tconstruct:edible:34> * 4, <botania:blazeblock>]], 30, <liquid:lava> * 1000);

// Eye of the Storm Laser Assembly Table recipe
//mods.refraction.AssemblyTable.addRecipe("Eye of the Storm", <xreliquary:mob_ingredient:8>,
//    [<minecraft:ender_eye>, <xreliquary:mob_ingredient:9> * 3, <thermalfoundation:material:102> * 5],
//    16, 64, 255, 255, 255, 255, 0, 0);
// Disabled because Refraction is no longer in the pack.
	
//Make glowing bread recipe more interesting:
recipes.removeShapeless(<xreliquary:glowing_bread>);
  //Forestry recipe:
mods.forestry.Carpenter.addRecipe(<xreliquary:glowing_bread>, [[<forestry:honeyed_slice>, <forestry:honeyed_slice>, <forestry:honeyed_slice>]], 30, <liquid:glowstone> * 1000);


mods.forestry.Carpenter.addRecipe(<xreliquary:glowing_bread>, [[<forestry:crated.natura.nether_glowshroom.0>, <forestry:crated.natura.nether_glowshroom.1>, <forestry:crated.natura.nether_glowshroom.2>],
															   [<minecraft:bread>, <minecraft:bread>, <minecraft:bread>]], 30, <liquid:glowstone> * 1000);
															   
// You can also craft a Zombie Pigman Charm Fragment with a golden carrot instead of a golden sword. The carrot conveniently stacks to 64.
recipes.addShaped(<xreliquary:mob_charm_fragment:5>,
    [[<xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>],
    [<minecraft:rotten_flesh>, <minecraft:golden_carrot>, <minecraft:rotten_flesh>],
    [<xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>]]);
	
print("Completed xreliquary.zs");