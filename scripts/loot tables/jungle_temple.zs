import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ jungle_temple ############

val table_jungle_temple = LootTables.getTable("minecraft:chests/jungle_temple");
val pool_jungle_temple_main = table_jungle_temple.getPool("main");

val pool_jungle_templeInject = table_jungle_temple.addPool("pool_jungle_templeInject", 1, 1, 1, 1);

//Remove items:
pool_jungle_temple_main.removeEntry("nuclearcraft:plating");