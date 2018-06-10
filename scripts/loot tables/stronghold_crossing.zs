import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ stronghold_crossing ############

val table_stronghold_crossing = LootTables.getTable("minecraft:chests/stronghold_crossing");
val pool_stronghold_crossing_main = table_stronghold_crossing.getPool("main");

val pool_stronghold_crossingInject = table_stronghold_crossing.addPool("pool_stronghold_crossingInject", 1, 1, 1, 1);

//Remove items:
pool_stronghold_crossing_main.removeEntry("nuclearcraft:plating");