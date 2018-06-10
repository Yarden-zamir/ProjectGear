import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ end_city_treasure ############

val table_end_city_treasure = LootTables.getTable("minecraft:chests/end_city_treasure");
val pool_end_city_treasure_main = table_end_city_treasure.getPool("main");

val pool_end_city_treasureInject = table_end_city_treasure.addPool("pool_end_city_treasureInject", 1, 1, 1, 1);

//Remove items:
pool_end_city_treasure_main.removeEntry("nuclearcraft:plating");