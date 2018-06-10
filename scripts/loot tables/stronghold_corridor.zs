import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ stronghold_corridor ############

val table_stronghold_corridor = LootTables.getTable("minecraft:chests/stronghold_corridor");
val pool_stronghold_corridor_main = table_stronghold_corridor.getPool("main");

val pool_stronghold_corridorInject = table_stronghold_corridor.addPool("pool_stronghold_corridorInject", 1, 1, 1, 1);

//Remove items:
pool_stronghold_corridor_main.removeEntry("nuclearcraft:plating");