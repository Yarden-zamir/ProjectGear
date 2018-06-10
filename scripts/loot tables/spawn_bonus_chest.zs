import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ spawn_bonus_chest ############

val table_spawn_bonus_chest = LootTables.getTable("minecraft:chests/spawn_bonus_chest");
val pool_spawn_bonus_chest_main = table_spawn_bonus_chest.getPool("main");

val pool_spawn_bonus_chestInject = table_spawn_bonus_chest.addPool("pool_spawn_bonus_chestInject", 1, 1, 1, 1);