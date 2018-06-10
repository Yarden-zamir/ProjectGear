import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ abandoned_mineshaft ############

val table_abandoned_mineshaft = LootTables.getTable("minecraft:chests/abandoned_mineshaft");
val pool_abandoned_mineshaft_main = table_abandoned_mineshaft.getPool("main");

val pool_abandoned_mineshaftInject = table_abandoned_mineshaft.addPool("pool_abandoned_mineshaftInject", 1, 1, 1, 1);

//Remove items:
pool_abandoned_mineshaft_main.removeEntry("nuclearcraft:plating");