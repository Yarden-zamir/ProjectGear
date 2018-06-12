import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;
#priority 80

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

////dungeon loot
val dungeon = LootTables.getTable("minecraft:chests/simple_dungeon");

val customLoot = dungeon.addPool("customLoot", 1, 1, 1, 1);

//customLoot.addItemEntryHelper(<minecraft:carrot>, 20, 1, [Functions.setCount(2, 5)], []);

//customLoot.addItemEntryJSON(<minecraft:redstone_block>, 2000, 1, ["count: {min: 3.0, max: 9.0}, function: 'minecraft:set_count'"], []);

var dungeonPool1 = dungeon.getPool("pool1");
dungeonPool1.addItemEntryHelper(<minecraft:redstone_block>, 20, 1, [Functions.setCount(2, 5)], []);
///////////
////recipes

val aluminumIngot = <ore:ingotAluminum>;
val steelIngot = <ore:ingotSteel>;

  //Bucket
recipes.addShaped(<minecraft:bucket>,
[[aluminumIngot, null, aluminumIngot],
 [null, aluminumIngot, null]]);

 //Piston
recipes.addShaped(<minecraft:piston>,
 [[<ore:plankWood>,         <ore:plankWood>,     <ore:plankWood>],
  [<minecraft:cobblestone>, aluminumIngot, <minecraft:cobblestone>],
  [<minecraft:cobblestone>, <ore:dustRedstone>, <minecraft:cobblestone>]]);

  //Rails
recipes.addShaped(<minecraft:rail> * 24,
[[steelIngot, null, steelIngot],
 [steelIngot, <immersiveengineering:material:0>, steelIngot],
 [steelIngot, null, steelIngot]]);

  //chest
recipes.addShapeless(<minecraft:chest>, [<ore:chestWood>]);

  //Convenient paper recipe:
recipes.addShapeless(<minecraft:paper> * 2, [<minecraft:book>]);
recipes.addShapeless(<minecraft:paper> * 3, [<minecraft:reeds> * 3]);

  //Shulker shell
 recipes.addShapeless(<minecraft:shulker_shell>, [<ceramics:unfired_clay:9>, <minecraft:dye:5>]);

  //Craft end rod with manyullyn
recipes.addShaped(<minecraft:end_rod>,
	[[<minecraft:blaze_rod>],
	 [<ore:ingotManyullyn>]]);

  //Craft sponge:
	//Sawdust + slime
recipes.addShaped(<minecraft:sponge:1>,
	[[<ore:dustWood>, <ore:slimeball>, <ore:dustWood>],
	 [<ore:slimeball>, <ore:dustWood>, <ore:slimeball>],
	 [<ore:dustWood>, <ore:slimeball>, <ore:dustWood>]]);
	//Hemp + slime
recipes.addShaped(<minecraft:sponge:1>,
	[[<immersiveengineering:material:4>, <ore:slimeball>, <immersiveengineering:material:4>],
	 [<ore:slimeball>, <immersiveengineering:material:4>, <ore:slimeball>],
	 [<immersiveengineering:material:4>, <ore:slimeball>, <immersiveengineering:material:4>]]);
	 
  //Craft torches with tallow:
recipes.addShaped(<minecraft:torch> * 8,
	[[<quark:tallow>],
	 [<ore:stickWood>]]);

#recipe removal
//roten flesh -> leather
recipes.removeShaped(<minecraft:leather>);
mods.integrateddynamics.DryingBasin.removeRecipesWithOutput(<minecraft:leather>);

#Change stack sizes:

val disc1 = <minecraft:record_13>;
val disc2 = <minecraft:record_cat>;
val disc3 = <minecraft:record_blocks>;
val disc4 = <minecraft:record_chirp>;
val disc5 = <minecraft:record_far>;
val disc6 = <minecraft:record_mall>;
val disc7 = <minecraft:record_mellohi>;
val disc8 = <minecraft:record_stal>;
val disc9 = <minecraft:record_strad>;
val disc10 = <minecraft:record_ward>;
val disc11 = <minecraft:record_11>;
val disc12 = <minecraft:record_wait>;

disc1.maxStackSize = 16;
disc2.maxStackSize = 16;
disc3.maxStackSize = 16;
disc4.maxStackSize = 16;
disc5.maxStackSize = 16;
disc6.maxStackSize = 16;
disc7.maxStackSize = 16;
disc8.maxStackSize = 16;
disc9.maxStackSize = 16;
disc10.maxStackSize = 16;
disc11.maxStackSize = 16;
disc12.maxStackSize = 16;

