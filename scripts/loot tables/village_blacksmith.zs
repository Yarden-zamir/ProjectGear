import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ village_blacksmith ############

val table_village_blacksmith = LootTables.getTable("minecraft:chests/village_blacksmith");
val pool_village_blacksmith_main = table_village_blacksmith.getPool("main");

val pool_village_blacksmithInject = table_village_blacksmith.addPool("pool_village_blacksmithInject", 1, 1, 1, 1);

//Remove items:
pool_village_blacksmith_main.removeEntry("nuclearcraft:plating");