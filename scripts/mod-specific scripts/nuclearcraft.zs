import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

val boronOre = <ore:oreBoron>;
val slag = <ore:crystalSlagRich>;

val itemsToDisable =[
  // Water generator
  // Infinite, one block water generators that auto export
  // Note: Disabled because there are more fun ways to make water
  <nuclearcraft:water_source>,
  <nuclearcraft:water_source_compact>,
  <nuclearcraft:water_source_dense>,
  // Cobblestone generators
  // Infinite, one block cobblestone generators that auto export
  // Note: Cobblestone generators are intended to be done in world with block breakers or with quarries, etc
  <nuclearcraft:cobblestone_generator>,
  <nuclearcraft:cobblestone_generator_compact>,
  // Solar panel
  // Note: There are more fun ways to generate power
  <nuclearcraft:solar_panel_basic>,
  // Manufactory
  // A one block RF-powered machine with many functions
  // Note: Disabled because it's a magic block
  // Note: All of it's functions have been moved to other machines
  <nuclearcraft:manufactory_idle>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Water generator
  <nuclearcraft:water_source>,
  <nuclearcraft:water_source_compact>,
  <nuclearcraft:water_source_dense>,
  // Cobblestone generators
  <nuclearcraft:cobblestone_generator>,
  <nuclearcraft:cobblestone_generator_compact>,
  // Solar panel
  <nuclearcraft:solar_panel_basic>,
  // Manufactory
  <nuclearcraft:manufactory_idle>

] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);


#recipes

// Boron + slag = 4x boron
mods.immersiveengineering.AlloySmelter.addRecipe(<nuclearcraft:ingot:5>*4, boronOre, slag, 100);
mods.immersiveengineering.AlloySmelter.addRecipe(<nuclearcraft:ingot:5>*4, slag, boronOre, 100);
 
// Boron dust = salt & ash
mods.immersiveengineering.BlastFurnace.addRecipe(<mekanism:salt>*8, <ore:dustBoron>, 1200, <forestry:ash>);

// Adds alternate universal bin recipes that use manasteel or tin instead of iron
recipes.addShaped(<nuclearcraft:bin> * 1,
	[[<ore:plateTin>, <botania:manaresource>, <ore:plateTin>],
	 [<botania:manaresource>, null, <botania:manaresource>],
	 [<ore:plateTin>, <botania:manaresource>, <ore:plateTin>]]);
recipes.addShaped(<nuclearcraft:bin> * 1,
	[[<ore:plateTin>, <tconstruct:ingots:1>, <ore:plateTin>],
	 [<tconstruct:ingots:1>, null, <tconstruct:ingots:1>],
	 [<ore:plateTin>, <tconstruct:ingots:1>, <ore:plateTin>]]);

// disabled through config:
// Disabled the abilitiy for nuclearcraft's machines to process ores; see https://git.io/vxQWi for more info

#Renames
scripts.functions.rename(<nuclearcraft:part:6>,"Plastic Sheet");
scripts.functions.rename(<nuclearcraft:ore:5>,"Borax Ore");
scripts.functions.rename(<nuclearcraft:ore:3>,"Thorite Ore");


// Make obtaining Nuclearcraft glowing mushrooms more interesting
recipes.removeShapeless(<nuclearcraft:glowing_mushroom>);
recipes.addShapeless(<nuclearcraft:glowing_mushroom>, [<ore:mushroomAny>, <ore:mushroomAny>, <natura:nether_glowshroom:*>, <natura:nether_glowshroom:*>]);

// Alternate recipe for copper solenoid that uses nickel instead of iron
recipes.addShapedMirrored(<nuclearcraft:part:4> * 2,
    [[<ore:ingotCopper>, <ore:ingotCopper>, null],
    [<ore:ingotNickel>, <ore:ingotNickel>, null],
    [<ore:ingotCopper>, <ore:ingotCopper>, null]]);
	
// Decay Generator recipe removal
recipes.remove(<nuclearcraft:decay_generator>);

// Decay Generator: Lead -> Nickel
recipes.addShaped(<nuclearcraft:decay_generator>, 
	[[<ore:ingotNickel>, <minecraft:cobblestone>, <ore:ingotNickel>],
	[<minecraft:cobblestone>, <minecraft:redstone>, <minecraft:cobblestone>], 
	[<ore:ingotNickel>, <minecraft:cobblestone>, <ore:ingotNickel>]]);
	
// Machine Chassis recipe removal
recipes.remove(<nuclearcraft:part:10>);

// Machine chassis: Lead -> Nickel
recipes.addShaped(<nuclearcraft:part:10>, 
	[[<ore:ingotNickel>, <ore:ingotSteel>, <ore:ingotNickel>],
	[<ore:ingotSteel>, <nuclearcraft:alloy:1>, <ore:ingotSteel>], 
	[<ore:ingotNickel>, <ore:ingotSteel>, <ore:ingotNickel>]]);
	
// Fixes boron ore crushing recipe
mods.immersiveengineering.Crusher.removeRecipe(<nuclearcraft:dust:5> * 2);
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust:5> * 2 , boronOre, 2048, <immersiveengineering:material:24>, 0.15);

// 165: crushing salt
mods.immersiveengineering.Crusher.addRecipe(<immersiveengineering:material:24>, <ore:dustSalt>, 2048, <nuclearcraft:dust:5>, 0.05);

// 16 Nitrate Dusts in an Alloy Smelter makes 1 Rhodocrosite
mods.immersiveengineering.AlloySmelter.addRecipe(<nuclearcraft:gem_dust:1>, <ore:dustSaltpeter>, null, 2000);

