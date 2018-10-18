import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

####################
//Most mods have their own script file. A few mods only had a couple scripts, and a few recipes didn't clearly belong to one mod. Those go here.
####################

//Turn scraps to leather:
	//Carpenter step:
#mods.forestry.Carpenter.addRecipe(<contenttweaker:oiled_leather>, [[<terraqueous:item_main:100>, <terraqueous:item_main:100>], [<terraqueous:item_main:100>, <terraqueous:item_main:100>]], 30, <liquid:seed.oil> * 100);
	//Drying rack step:
mods.tconstruct.Drying.addRecipe(<minecraft:leather>, <contenttweaker:oiled_leather>, 6000);

//Run soul sand through a Centrifuge to get a heat sand (25%), tainted soil (25%), soul bead (1%), or ghast tear (1%)
mods.forestry.Centrifuge.addRecipe([(<natura:nether_heat_sand>) % 25, <natura:nether_tainted_soil> % 25, <quark:soul_bead> % 1, <minecraft:ghast_tear> % 1], <minecraft:soul_sand>, 100);

// Leather Mana Infusion recipe removal
  #Credit to DolphinBlaster for this script
mods.botania.ManaInfusion.removeRecipe(<minecraft:leather>);
 
// Oiled Leather -> 2 Leather Mana Infusion recipe
  #Credit to DolphinBlaster for this script
mods.botania.ManaInfusion.addAlchemy(<minecraft:leather> * 2, <contenttweaker:oiled_leather>, 600);


//Nether Gold Ore works like Gold Ore
//<ore:goldOre>.add(<contenttweaker:nether_gold_ore>);


#Script by JoJo Reference:
// Crusher: Saddle -> 2 Leather Scraps
//mods.immersiveengineering.Crusher.addRecipe(<contenttweaker:sinew> * 2, <minecraft:saddle>, 2048);

// Centrifuge: Rotten Flesh -> [Sand Pile (Earthworks) 25%, Leather Scrap 10%, Monster Jerky 5%, Coagulated Blood 1%]
#mods.forestry.Centrifuge.addRecipe([<earthworks:item_sand> % 25, <terraqueous:item_main:100> % 10, <tconstruct:edible:10> % 5, <tconstruct:edible:33> % 1], <minecraft:rotten_flesh>, 100);

// Centrifuge: Stone -> [Limestone (Quark) 10%, Marble (Quark) 10%, Diorite 10%, Andesite 10%, Granite 10%, Slate (Rustic) 10%]
mods.forestry.Centrifuge.addRecipe([(<quark:limestone>) % 10, <quark:marble> % 10, <minecraft:stone:3> % 10, <minecraft:stone:5> % 10, <minecraft:stone:1> % 10, <rustic:slate> % 10], <minecraft:stone>, 100);