import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ woodland_mansion ############

val table_woodland_mansion = LootTables.getTable("minecraft:chests/woodland_mansion");
val pool_woodland_mansion_main = table_woodland_mansion.getPool("main");

val pool_woodland_mansionInject = table_woodland_mansion.addPool("pool_woodland_mansionInject", 1, 1, 1, 1);