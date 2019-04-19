import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemTransformer;
 
val itemsToDisable =[
    // Ruby Tools
    <projectred-exploration:ruby_axe>,
    <projectred-exploration:ruby_pickaxe>,
    <projectred-exploration:ruby_shovel>,
    <projectred-exploration:ruby_hoe>,
    <projectred-exploration:ruby_sword>,
    <projectred-exploration:ruby_saw>,
    // Sapphire Tools
    <projectred-exploration:sapphire_axe>,
    <projectred-exploration:sapphire_pickaxe>,
    <projectred-exploration:sapphire_shovel>,
    <projectred-exploration:sapphire_hoe>,
    <projectred-exploration:sapphire_sword>,
    <projectred-exploration:sapphire_saw>,
    // Peridot Tools
    <projectred-exploration:peridot_axe>,
    <projectred-exploration:peridot_pickaxe>,
    <projectred-exploration:peridot_shovel>,
    <projectred-exploration:peridot_hoe>,
    <projectred-exploration:peridot_sword>,
    <projectred-exploration:peridot_saw>,
    // Sickles
    <projectred-exploration:wooden_sickle>,
    <projectred-exploration:stone_sickle>,
    <projectred-exploration:iron_sickle>,
    <projectred-exploration:golden_sickle>,
    <projectred-exploration:ruby_sickle>,
    <projectred-exploration:sapphire_sickle>,
    <projectred-exploration:peridot_sickle>,
    <projectred-exploration:diamond_sickle>,
    // Electric Screwdriver
    <projectred-expansion:electric_screwdriver>,
    // Golden Saw
    <projectred-exploration:golden_saw>,
    // Ruby Armor
    <projectred-exploration:ruby_helmet>,
    <projectred-exploration:ruby_chestplate>,
    <projectred-exploration:ruby_leggings>,
    <projectred-exploration:ruby_boots>,
    // Sapphire Armor
    <projectred-exploration:sapphire_helmet>,
    <projectred-exploration:sapphire_chestplate>,
    <projectred-exploration:sapphire_leggings>,
    <projectred-exploration:sapphire_boots>,
    // Peridot Armor
    <projectred-exploration:peridot_helmet>,
    <projectred-exploration:peridot_chestplate>,
    <projectred-exploration:peridot_leggings>,
    <projectred-exploration:peridot_boots>,
	// Autocrafting bench
	<projectred-expansion:machine2:11>,
	// Red Iron Compound
	<projectred-core:resource_item:251>, 
    // Electrotine Iron Compound	
  <projectred-core:resource_item:252>  
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
    // Ruby Tools
    <projectred-exploration:ruby_axe>,
    <projectred-exploration:ruby_pickaxe>,
    <projectred-exploration:ruby_shovel>,
    <projectred-exploration:ruby_hoe>,
    <projectred-exploration:ruby_sword>,
    <projectred-exploration:ruby_saw>,
    // Sapphire Tools
    <projectred-exploration:sapphire_axe>,
    <projectred-exploration:sapphire_pickaxe>,
    <projectred-exploration:sapphire_shovel>,
    <projectred-exploration:sapphire_hoe>,
    <projectred-exploration:sapphire_sword>,
    <projectred-exploration:sapphire_saw>,
    // Peridot Tools
    <projectred-exploration:peridot_axe>,
    <projectred-exploration:peridot_pickaxe>,
    <projectred-exploration:peridot_shovel>,
    <projectred-exploration:peridot_hoe>,
    <projectred-exploration:peridot_sword>,
    <projectred-exploration:peridot_saw>,
    // Sickles
    <projectred-exploration:wooden_sickle>,
    <projectred-exploration:stone_sickle>,
    <projectred-exploration:iron_sickle>,
    <projectred-exploration:golden_sickle>,
    <projectred-exploration:ruby_sickle>,
    <projectred-exploration:sapphire_sickle>,
    <projectred-exploration:peridot_sickle>,
    <projectred-exploration:diamond_sickle>,
    // Electric Screwdriver
    <projectred-expansion:electric_screwdriver>,
    // Golden Saw
    <projectred-exploration:golden_saw>,
    // Ruby Armor
    <projectred-exploration:ruby_helmet>,
    <projectred-exploration:ruby_chestplate>,
    <projectred-exploration:ruby_leggings>,
    <projectred-exploration:ruby_boots>,
    // Sapphire Armor
    <projectred-exploration:sapphire_helmet>,
    <projectred-exploration:sapphire_chestplate>,
    <projectred-exploration:sapphire_leggings>,
    <projectred-exploration:sapphire_boots>,
    // Peridot Armor
    <projectred-exploration:peridot_helmet>,
    <projectred-exploration:peridot_chestplate>,
    <projectred-exploration:peridot_leggings>,
    <projectred-exploration:peridot_boots>,
	// Autocrafting bench
	<projectred-expansion:machine2:11>,
	// Red Iron Compound
	<projectred-core:resource_item:251>, 
    // Electrotine Iron Compound	
  <projectred-core:resource_item:252>

] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

// Screwdriver recipe removal
recipes.remove(<projectred-core:screwdriver>);
 
// Screwdriver Unbreakable recipe
recipes.addShaped(<projectred-core:screwdriver>.withTag({ench: [{lvl: 10, id: 34}]}),
    [[<minecraft:iron_ingot>, null, null],
    [null, <minecraft:iron_ingot>, <ore:dyeBlue>],
    [null, <ore:dyeBlue>, <minecraft:iron_ingot>]]);

// Alternative draw plate recipe
recipes.removeShaped(<projectred-core:drawplate>);
recipes.addShaped("draw_plate", <projectred-core:drawplate>,
    [[null, <ore:plateIron>, null],
    [<ore:plateIron>, <ore:gemDiamond>, <ore:plateIron>],
    [null, <ore:plateIron>, null]]);
	
// Replacing projectred recipes with non-oredictionary versions, and fixing marble recipe conflict.
<ore:stoneMarble>.remove(<projectred-exploration:stone>); //removing projectred marble from the ore dictionary
recipes.removeShaped(<projectred-exploration:stone_wall>);
recipes.addShaped(<projectred-exploration:stone_wall> * 6, [[<projectred-exploration:stone>,<projectred-exploration:stone>,<projectred-exploration:stone>],[<projectred-exploration:stone>,<projectred-exploration:stone>,<projectred-exploration:stone>],[null,null,null]]);
recipes.removeShaped(<projectred-exploration:stone_wall:1>); // Removes projectred marble walls from the ore dictionary
recipes.addShaped(<projectred-exploration:stone_wall:1> * 6, [[<projectred-exploration:stone:1>,<projectred-exploration:stone:1>,<projectred-exploration:stone:1>],[<projectred-exploration:stone:1>,<projectred-exploration:stone:1>,<projectred-exploration:stone:1>],[null,null,null]]); // Removes projectred brick wall from the ore dictionary
recipes.removeShaped(<projectred-exploration:stone:1>);
recipes.addShaped(<projectred-exploration:stone:1> * 4, [[<projectred-exploration:stone>,<projectred-exploration:stone>],[<projectred-exploration:stone>,<projectred-exploration:stone>]]); //un-oredicting the projectred bricks

// Makes silver, tin and copper wall recipes use the ore dictionary
val copperWall = <projectred-exploration:stone_wall:8>;
val tinWall = <projectred-exploration:stone_wall:9>;
val silverWall = <projectred-exploration:stone_wall:10>;
 
recipes.addShaped("copperWall", copperWall * 6,
    [[<ore:blockCopper>, <ore:blockCopper>, <ore:blockCopper>],
     [<ore:blockCopper>, <ore:blockCopper>, <ore:blockCopper>]]);
 
recipes.addShaped("tinWall", tinWall * 6,
    [[<ore:blockTin>, <ore:blockTin>, <ore:blockTin>],
     [<ore:blockTin>, <ore:blockTin>, <ore:blockTin>]]);
 
recipes.addShaped("silverWall", silverWall * 6,
    [[<ore:blockSilver>, <ore:blockSilver>, <ore:blockSilver>],
     [<ore:blockSilver>, <ore:blockSilver>, <ore:blockSilver>]]);

// ProjectRed Silicon renamed "Silicon Wafer"
<projectred-core:resource_item:301>.displayName = "Silicon Wafer";
  
// Redstone + Sulfuric Acid to 4 Electrotine dust
mods.factorytech.Electroplater.addRecipe(<minecraft:redstone>, <projectred-core:resource_item:105>);

// Fluxed Electrum Dust + Lapis to 4 Electrotine dust
mods.forestry.ThermionicFabricator.addCast(<projectred-core:resource_item:105> * 4, [[<minecraft:dye:4>,<ore:dustCobalt>,null],[null,null,null],[null,null,null]], <liquid: glass> * 200);

// Crafting recipes for electrotine:
recipes.addShapeless(<projectred-core:resource_item:105> * 8, [<ore:dustCobalt>, <ore:dustSignalum>]);

// You can also craft the Block Breaker with an iron pickaxe head instead of an iron pickaxe. The head conveniently stacks to 64.
recipes.addShaped(<projectred-expansion:machine2>,
    [[<ore:cobblestone>, <tconstruct:pick_head>.withTag({Material: "iron"}), <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:piston>, <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]]);

// Make the jetpack cheaper
recipes.remove(<projectred-expansion:jetpack>);
recipes.addShaped(<projectred-expansion:jetpack>,
 [[<projectred-expansion:charged_battery>, null, <projectred-expansion:charged_battery>],
  [<projectred-expansion:charged_battery>, <minecraft:iron_chestplate>, <projectred-expansion:charged_battery>],
  [<minecraft:diamond>, <projectred-expansion:machine2:5>, <minecraft:diamond>]]);
  
// Change athame to require certus quartz instead of silver
recipes.removeByRecipeName("projectred-exploration:tools/athame");
recipes.addShaped(<projectred-exploration:athame>, [[<ore:crystalCertusQuartz> | <ore:gemQuartz>], [<ore:stickWood>]]);
  
// Quark Marble -> ProjectRed Marble
recipes.addShapeless(<quark:marble>,
    [<projectred-exploration:stone>]);
	
// Quark Basalt -> ProjectRed Basalt
recipes.addShapeless(<quark:basalt>,
    [<projectred-exploration:stone:3>]);
	
// Red Alloy Ingot recipes
// Red Alloy Furnace recipe removal
furnace.remove(<projectred-core:resource_item:103>);
 
// Red Alloy Ingot Arc Furnace recipe (1 Tin Ingot + 8 Redstone)
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:103>, <ore:ingotTin>, null, 200, 256, [<minecraft:redstone> * 2], "Alloying");
 
// Red Alloy Ingot Alloy Kiln recipe
mods.immersiveengineering.AlloySmelter.addRecipe(<projectred-core:resource_item:103>, <ore:ingotTin>, <minecraft:redstone> * 4, 2000);

//Electrotine recipes
//Electrotine Furnace recipe removal
furnace.remove(<projectred-core:resource_item:104>);
 
// Electrotine Alloy Ingot Arc Furnace recipe (1 Tin Ingot + 4 Electrotine)
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:104>, <ore:ingotTin>, null, 200, 256, [<projectred-core:resource_item:105> * 4], "Alloying");
 
// Electrotine Alloy Ingot Alloy Kiln recipe
mods.immersiveengineering.AlloySmelter.addRecipe(<projectred-core:resource_item:104>, <ore:ingotTin>, <projectred-core:resource_item:105> * 8, 2000);

// Electrotine Block Laser Assembly Table recipe
mods.refraction.AssemblyTable.addRecipe("Electrotine Block", <projectred-exploration:stone:11>,
    [<minecraft:dye:4> * 2, <ore:ingotCobalt> * 2],
    16, 64, 0, 0, 0, 0, 255, 255);
	
