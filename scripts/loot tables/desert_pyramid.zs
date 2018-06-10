import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ desert_pyramid ############

val table_desert_pyramid = LootTables.getTable("minecraft:chests/desert_pyramid");
val pool_desert_pyramid_main = table_desert_pyramid.getPool("main");

val pool_desert_pyramidInject = table_desert_pyramid.addPool("pool_desert_pyramidInject", 1, 1, 1, 1);