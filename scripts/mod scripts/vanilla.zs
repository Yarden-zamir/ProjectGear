import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;
#priority 99

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

#recipe removal
//roten flesh -> leather
recipes.removeShaped(<minecraft:leather>);
