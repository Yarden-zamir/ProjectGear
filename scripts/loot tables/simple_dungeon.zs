import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

//Note: This script is sorted by loot table.

############ simple_dungeon ############

val table_simple_dungeon = LootTables.getTable("minecraft:chests/simple_dungeon");
val pool_simple_dungeon_main = table_simple_dungeon.getPool("main");

//Remove items:
pool_simple_dungeon_main.removeEntry("nuclearcraft:plating");

//Adds all vanilla and nuclearcraft music discs to dungeon loot
//Botania not included because it's intended to be a reward for slaying the Gaia Guardian



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

val disc13 = <nuclearcraft:record_end_of_the_world>;
val disc14 = <nuclearcraft:record_wanderer>;
val disc15 = <nuclearcraft:record_money_for_nothing>;

val entry_simpleDungeonInject3 = table_simple_dungeon.addPool("entry_simpleDungeonInject3", 0, 1, 1, 1);
entry_simpleDungeonInject3.addItemEntryHelper(disc3,  20, 1, [Functions.setCount(1, 1)], []);

val entry_simpleDungeonInject4 = table_simple_dungeon.addPool("entry_simpleDungeonInject4", 0, 1, 1, 1);
entry_simpleDungeonInject4.addItemEntryHelper(disc4,  20, 1, [Functions.setCount(1, 1)], []);

val entry_simpleDungeonInject5 = table_simple_dungeon.addPool("entry_simpleDungeonInject5", 0, 1, 1, 1);
entry_simpleDungeonInject5.addItemEntryHelper(disc5,  20, 1, [Functions.setCount(1, 1)], []);

val entry_simpleDungeonInject6 = table_simple_dungeon.addPool("entry_simpleDungeonInject6", 0, 1, 1, 1);
entry_simpleDungeonInject6.addItemEntryHelper(disc6,  20, 1, [Functions.setCount(1, 1)], []);

val entry_simpleDungeonInject7 = table_simple_dungeon.addPool("entry_simpleDungeonInject7", 0, 1, 1, 1);
entry_simpleDungeonInject7.addItemEntryHelper(disc7,  20, 1, [Functions.setCount(1, 1)], []);

val entry_simpleDungeonInject8 = table_simple_dungeon.addPool("entry_simpleDungeonInject8", 0, 1, 1, 1);
entry_simpleDungeonInject8.addItemEntryHelper(disc8,  20, 1, [Functions.setCount(1, 1)], []);

val entry_simpleDungeonInject9 = table_simple_dungeon.addPool("entry_simpleDungeonInject9", 0, 1, 1, 1);
entry_simpleDungeonInject9.addItemEntryHelper(disc9,  20, 1, [Functions.setCount(1, 1)], []);

val entry_simpleDungeonInject10 = table_simple_dungeon.addPool("entry_simpleDungeonInject10", 0, 1, 1, 1);
entry_simpleDungeonInject10.addItemEntryHelper(disc10,  20, 1, [Functions.setCount(1, 1)], []);

val entry_simpleDungeonInject11 = table_simple_dungeon.addPool("entry_simpleDungeonInject11", 0, 1, 1, 1);
entry_simpleDungeonInject11.addItemEntryHelper(disc11,  20, 1, [Functions.setCount(1, 1)], []);

val entry_simpleDungeonInject12 = table_simple_dungeon.addPool("entry_simpleDungeonInject12", 0, 1, 1, 1);
entry_simpleDungeonInject12.addItemEntryHelper(disc12,  20, 1, [Functions.setCount(1, 1)], []);

val entry_simpleDungeonInject13 = table_simple_dungeon.addPool("entry_simpleDungeonInject13", 0, 1, 1, 1);
entry_simpleDungeonInject13.addItemEntryHelper(disc13,  20, 1, [Functions.setCount(1, 1)], []);

val entry_simpleDungeonInject14 = table_simple_dungeon.addPool("entry_simpleDungeonInject14", 0, 1, 1, 1);
entry_simpleDungeonInject14.addItemEntryHelper(disc14,  20, 1, [Functions.setCount(1, 1)], []);

val entry_simpleDungeonInject15 = table_simple_dungeon.addPool("entry_simpleDungeonInject15", 0, 1, 1, 1);
entry_simpleDungeonInject14.addItemEntryHelper(disc15,  20, 1, [Functions.setCount(1, 1)], []);
/*
pool_simpleDungeonInject.addItemEntryHelper(disc4,  20, 1, [Functions.setCount(1, 1)], []);
pool_simpleDungeonInject.addItemEntryHelper(disc5,  20, 1, [Functions.setCount(1, 1)], []);
pool_simpleDungeonInject.addItemEntryHelper(disc6,  20, 1, [Functions.setCount(1, 1)], []);
pool_simpleDungeonInject.addItemEntryHelper(disc7,  20, 1, [Functions.setCount(1, 1)], []);
pool_simpleDungeonInject.addItemEntryHelper(disc8,  20, 1, [Functions.setCount(1, 1)], []);
pool_simpleDungeonInject.addItemEntryHelper(disc9,  20, 1, [Functions.setCount(1, 1)], []);
pool_simpleDungeonInject.addItemEntryHelper(disc11, 20, 1, [Functions.setCount(1, 1)], []);
pool_simpleDungeonInject.addItemEntryHelper(disc12, 20, 1, [Functions.setCount(1, 1)], []);
pool_simpleDungeonInject.addItemEntryHelper(disc13, 20, 1, [Functions.setCount(1, 1)], []);
pool_simpleDungeonInject.addItemEntryHelper(disc14, 20, 1, [Functions.setCount(1, 1)], []);
pool_simpleDungeonInject.addItemEntryHelper(disc15, 20, 1, [Functions.setCount(1, 1)], []);
*/