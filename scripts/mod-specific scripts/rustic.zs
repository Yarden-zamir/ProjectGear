import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  // Rustic's elixirs
  // Note: Disabled because we don't need 4 different brewing systems.
  <rustic:elixir>,
  // Various plants that make elixirs
  <rustic:aloe_vera>,
  <rustic:blood_orchid>,
  <rustic:chamomile>,
  <rustic:cohosh>,
  <rustic:deathstalk_mushroom>,
  <rustic:horsetail>,
  <rustic:mooncap_mushroom>,
  <rustic:wind_thistle>,
  <rustic:cloudsbluff>,
  <rustic:core_root>,
  <rustic:ginseng>,
  <rustic:marsh_mallow>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Rustic's elixirs
  <rustic:elixir>,
  <rustic:chain>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

/*
recipes.removeShaped(<rustic:slate_roof>);
recipes.addShaped(<rustic:slate_roof>,
	[[<rustic:slate_brick>, <rustic:slate_brick>],
	 [<rustic:slate_brick>, <rustic:slate_brick>]]);
*/
	 
// Fixes recipe conflict
recipes.addShaped(<rustic:chain>,
	[[<ore:nuggetIron>],
	 [<ore:nuggetIron>],
	 [<ore:nuggetIron>]]);
	 
// Craft slate from pebbles
recipes.addShapeless(<rustic:slate>, [<contenttweaker:slate_pebble>, <contenttweaker:slate_pebble>, <contenttweaker:slate_pebble>, <contenttweaker:slate_pebble>]);

// Adds ore dictionary tags to seeds
// Note: This allows it to be used in an Ex Nihilo Creatio compost barrel
val listAllseed = <ore:listAllseed>;
listAllseed.add(<rustic:tomato_seeds>);
listAllseed.add(<rustic:chili_pepper_seeds>);
listAllseed.add(<rustic:apple_seeds>);
listAllseed.add(<rustic:grape_stem>);



// Craft Rustic crops in a petal apothacary
	// Aloe Vera
mods.botania.Apothecary.addRecipe(<rustic:aloe_vera>, [<natura:edibles:1>, <rustic:chili_pepper>, <ore:petalGreen>, <ore:petalGreen>, <ore:petalGreen>]);


mods.botania.Apothecary.addRecipe(<rustic:deathstalk_mushroom>, [<ore:mushroomAny>, <quark:black_ash>, <ore:petalGreen>, <ore:petalBlack>, <ore:petalBrown>]);


mods.botania.Apothecary.addRecipe(<rustic:horsetail>, [<natura:edibles:6>, <natura:edibles:8>, <ore:petalGreen>, <ore:petalGreen>, <ore:petalGreen>]);


mods.botania.Apothecary.addRecipe(<rustic:mooncap_mushroom>, [<ore:mushroomAny>, <natura:edibles:7>, <ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>]);


mods.botania.Apothecary.addRecipe(<rustic:wind_thistle>, [<rustic:grapes>, <minecraft:reeds>, <ore:petalPurple>, <ore:petalPurple>, <ore:petalPurple>]);


mods.botania.Apothecary.addRecipe(<rustic:cloudsbluff>, [<minecraft:feather>, <rustic:wildberries>, <ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>]);


mods.botania.Apothecary.addRecipe(<rustic:core_root>, [<botania:manaresource:6>, <minecraft:sugar>, <ore:petalBrown>, <ore:petalWhite>, <ore:petalWhite>]);


mods.botania.Apothecary.addRecipe(<rustic:marsh_mallow>, [<botania:manaresource:6>, <minecraft:melon>, <ore:petalBrown>, <ore:petalGreen>, <ore:petalRed>]);


mods.botania.Apothecary.addRecipe(<rustic:ginseng>, [<botania:manaresource:6>, <natura:edibles:9>, <ore:petalBrown>, <ore:petalRed>, <ore:petalRed>]);


mods.botania.Apothecary.addRecipe(<rustic:blood_orchid>, [<rustic:tomato>, <natura:nether_sapling2:0>, <ore:petalRed>, <ore:petalRed>, <ore:petalRed>]);


mods.botania.Apothecary.addRecipe(<rustic:cohosh>, [<natura:materials:3>, <natura:edibles:10>, <ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>]);

mods.botania.Apothecary.addRecipe(<rustic:chamomile>, [<natura:materials:3>, <minecraft:gold_nugget>, <ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>]);

// Convert Natura maloberries into Rustic wildberries
mods.botania.ManaInfusion.addAlchemy(<rustic:wildberries>, <natura:edibles:5>, 250);

// Convert Cacoons of Caprice into bee hives with Botania alchemy
mods.botania.ManaInfusion.addAlchemy(<rustic:beehive>, <botania:cocoon>, 5000);

// Turn Botania's cell blocks into fertile soil
mods.botania.PureDaisy.addRecipe(<botania:cellblock>, <rustic:fertile_soil>);





// Fix recipe conflict with Quark's stained planks

val treatedWood = <immersiveengineering:treated_wood>;
val livingWood = <botania:livingwood:1>;

recipes.removeShaped(<rustic:painted_wood_white>);
recipes.removeShaped(<rustic:painted_wood_orange>);
recipes.removeShaped(<rustic:painted_wood_magenta>);
recipes.removeShaped(<rustic:painted_wood_light_blue>);
recipes.removeShaped(<rustic:painted_wood_yellow>);
recipes.removeShaped(<rustic:painted_wood_lime>);
recipes.removeShaped(<rustic:painted_wood_pink>);
recipes.removeShaped(<rustic:painted_wood_gray>);
recipes.removeShaped(<rustic:painted_wood_silver>);
recipes.removeShaped(<rustic:painted_wood_cyan>);
recipes.removeShaped(<rustic:painted_wood_purple>);
recipes.removeShaped(<rustic:painted_wood_blue>);
recipes.removeShaped(<rustic:painted_wood_brown>);
recipes.removeShaped(<rustic:painted_wood_green>);
recipes.removeShaped(<rustic:painted_wood_red>);
recipes.removeShaped(<rustic:painted_wood_black>);

  //Craft with treated wood
recipes.addShaped(<rustic:painted_wood_white> * 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeWhite>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_orange>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeOrange>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_magenta>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeMagenta>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_light_blue>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeLightBlue>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_yellow>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeYellow>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_lime>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeLime>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_pink>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyePink>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_gray>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeGray>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_silver>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeLightGray>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_cyan>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeCyan>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_purple>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyePurple>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_blue>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeBlue>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_brown>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeBrown>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_green>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeGreen>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_red>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeRed>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_black>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeBlack>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
	 // Craft with livingwood
	 
recipes.addShaped(<rustic:painted_wood_white>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeWhite>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_orange>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeOrange>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_magenta>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeMagenta>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_light_blue>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeLightBlue>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_yellow>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeYellow>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_lime>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeLime>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_pink>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyePink>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_gray>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeGray>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_silver>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeLightGray>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_cyan>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeCyan>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_purple>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyePurple>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_blue>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeBlue>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_brown>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeBrown>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_green>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeGreen>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_red>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeRed>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_black>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeBlack>, livingWood],
	 [livingWood, livingWood, livingWood]]);