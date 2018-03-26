import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;



val dungeon = LootTables.getTable("minecraft:chests/simple_dungeon");

val customLoot = dungeon.addPool("customLoot", 1, 1, 1, 1);

//customLoot.addItemEntryHelper(<minecraft:carrot>, 20, 1, [Functions.setCount(2, 5)], []);

//customLoot.addItemEntryJSON(<minecraft:redstone_block>, 2000, 1, ["count: {min: 3.0, max: 9.0}, function: 'minecraft:set_count'"], []);

var dungeonPool1 = dungeon.getPool("pool1");
dungeonPool1.addItemEntryHelper(<minecraft:redstone_block>, 20, 1, [Functions.setCount(2, 5)], []);