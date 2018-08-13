import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

####################
//Most mods have their own script file. A few mods only had a couple scripts, and a few recipes didn't clearly belong to one mod. Those go here.
####################

//Turn scraps to leather:
	//Carpenter step:
mods.forestry.Carpenter.addRecipe(<contenttweaker:oiled_leather>, [[<terraqueous:item_main:100>, <terraqueous:item_main:100>], [<terraqueous:item_main:100>, <terraqueous:item_main:100>]], 30, <liquid:seed.oil> * 100);
	//Drying rack step:
mods.tconstruct.Drying.addRecipe(<minecraft:leather>, <contenttweaker:oiled_leather>, 6000);

//Run soul sand through a Centrifuge to get a heat sand (25%), tainted soil (25%), soul bead (1%), or ghast tear (1%)
mods.forestry.Centrifuge.addRecipe([(<natura:nether_heat_sand>) % 25, <natura:nether_tainted_soil> % 25, <quark:soul_bead> % 1, <minecraft:ghast_tear> % 1], <minecraft:soul_sand>, 100);



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
mods.forestry.ThermionicFabricator.addCast(<projectred-core:resource_item:105> * 4, [[<minecraft:dye:4>,<redstonearsenal:material:0>,null],[null,null,null],[null,null,null]], <liquid: glass> * 200);

val EnderPearl = <minecraft:ender_pearl>;
val EnderDust = <appliedenergistics2:material:46>;

//Crush ender pearls into ender pearl dust
mods.immersiveengineering.Crusher.addRecipe(EnderDust, EnderPearl, 2048);
mods.integrateddynamics.Squeezer.addRecipe(EnderPearl, EnderDust, null);
mods.factorytech.DrillGrinder.addRecipe(EnderDust, EnderPearl, true);

// Leather Mana Infusion recipe removal
  #Credit to DolphinBlaster for this script
mods.botania.ManaInfusion.removeRecipe(<minecraft:leather>);
 
// Oiled Leather -> 2 Leather Mana Infusion recipe
  #Credit to DolphinBlaster for this script
mods.botania.ManaInfusion.addAlchemy(<minecraft:leather> * 2, <contenttweaker:oiled_leather>, 600);

//Adds an ore dictionary value to ores:
	//Valkyrien Warfare etherium ore:
val oreEtherium = <ore:oreEtherium>;
oreEtherium.add(<valkyrienwarfareworld:etheriumcrystal>);

	//AE2 charged certus quartz:
val oreCertusQuartzCharged = <ore:oreCertusQuartzCharged>;
oreEtherium.add(<appliedenergistics2:charged_quartz_ore>);

val oreResonatingCrystal = <ore:oreResonatingCrystal>;
oreResonatingCrystal.add(<deepresonance:resonating_crystal>);

//Nether Gold Ore works like Gold Ore
//<ore:goldOre>.add(<contenttweaker:nether_gold_ore>);

//Pyrotheum + Plank to Lavawood
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:firewood:0>, <ore:plankWood>, <liquid:pyrotheum>, 9, true, 100);

recipes.addShapeless("lump_to_sand",<minecraft:sand:0>,[<terraqueous:item_main:214>,<immersiveengineering:tool:0>]);
recipes.addShapeless("lump_to_redsand",<minecraft:sand:1>,[<terraqueous:item_main:216>,<immersiveengineering:tool:0>]);

#Script by JoJo Reference:
// Crusher: Saddle -> 2 Leather Scraps
mods.immersiveengineering.Crusher.addRecipe(<terraqueous:item_main:100> * 2, <minecraft:saddle>, 2048);
 
// Crusher: Diamond Horse Armor -> 2 Diamond Dust
mods.immersiveengineering.Crusher.addRecipe(<mekanism:otherdust> * 2, <minecraft:diamond_horse_armor>, 2048);
 
// Crusher: Golden Apple -> 4 Gold Dust
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:1> * 4, <minecraft:golden_apple>, 2048);
 
// Crusher: Enchanted Gold Apple -> 36 Gold Dust
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:1> * 36, <minecraft:golden_apple:1>, 2048);

//Remove Gunpowder
recipes.removeByRecipeName("immersiveengineering:material/gunpowder0");
recipes.removeByRecipeName("immersiveengineering:material/gunpowder1");
recipes.removeByRecipeName("natura:common/gunpowder");

//Wither Ash From Necrotic Bone
recipes.addShapeless(<quark:black_ash>*5,[<tconstruct:materials:17>]);

//Smokey Quartz from wither ash
val Quartz = <ore:gemQuartz>;
recipes.remove(<botania:quartz:0>);
recipes.addShaped(<botania:quartz:0> * 8,
 [[Quartz, Quartz, Quartz],
  [Quartz, <quark:black_ash>, Quartz],
  [Quartz, Quartz, Quartz]]);
  
// Furnace: Grass (Item) -> Dead Grass
furnace.addRecipe(<minecraft:tallgrass:1>, <traverse:dead_grass>);
 
// Cold Grass recipe (Grass (Item) + Ice)
recipes.addShapeless(<traverse:cold_grass>,
    [<minecraft:tallgrass:1>,<minecraft:ice>]);
	
// Crusher: Log -> 4 Saw Dust
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:800>, <ore:logWood>, 2048);
 
// Saw Dust recipe (Log + Engineer's Hammer)
recipes.addShapeless(<thermalfoundation:material:800>,
    [<ore:logWood>,<immersiveengineering:tool>]);
	
recipes.addShaped("menril_to_fertilizer"	, <forestry:fertilizer_compound> * 16, 
	[[<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>], 
	 [<ore:dustAsh>, <integrateddynamics:crystalized_menril_chunk>, <ore:dustAsh>], 
	 [<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>]]);
	 
recipes.removeByRecipeName("mekanism:paper");

// Centrifuge: Rotten Flesh -> [Sand Pile (Earthworks) 25%, Leather Scrap 10%, Monster Jerky 5%, Coagulated Blood 1%]
mods.forestry.Centrifuge.addRecipe([<earthworks:item_sand> % 25, <terraqueous:item_main:100> % 10, <tconstruct:edible:10> % 5, <tconstruct:edible:33> % 1], <minecraft:rotten_flesh>, 100);

// Centrifuge: Stone -> [Limestone (Quark) 10%, Marble (Quark) 10%, Diorite 10%, Andesite 10%, Granite 10%, Slate (Rustic) 10%]
mods.forestry.Centrifuge.addRecipe([<quark:limestone> % 10, <quark:marble> % 10, <minecraft:stone:3> % 10, <minecraft:stone:5> % 10, <minecraft:stone:1> % 10, <rustic:slate> % 10], <minecraft:stone>, 100);