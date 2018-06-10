import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ jungle_temple_dispenser ############

val table_jungle_temple_dispenser = LootTables.getTable("minecraft:chests/jungle_temple_dispenser");
val pool_jungle_temple_dispenser_main = table_jungle_temple_dispenser.getPool("main");

val pool_jungle_temple_dispenserInject = table_jungle_temple_dispenser.addPool("pool_jungle_temple_dispenserInject", 1, 1, 1, 1);