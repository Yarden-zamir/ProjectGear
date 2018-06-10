import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ nether_bridge ############

val table_nether_bridge = LootTables.getTable("minecraft:chests/nether_bridge");
val pool_nether_bridge_main = table_nether_bridge.getPool("main");

val pool_nether_bridgeInject = table_nether_bridge.addPool("pool_nether_bridgeInject", 1, 1, 1, 1);

//Remove items:
pool_nether_bridge_main.removeEntry("nuclearcraft:plating");