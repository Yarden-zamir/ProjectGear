import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ ignoo_chest ############

val table_ignoo_chest = LootTables.getTable("minecraft:chests/ignoo_chest");
val pool_ignoo_chest_main = table_ignoo_chest.getPool("main");

val pool_ignoo_chestInject = table_ignoo_chest.addPool("pool_ignoo_chestInject", 1, 1, 1, 1);