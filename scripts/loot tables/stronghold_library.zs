import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

############ stronghold_library ############

val table_stronghold_library = LootTables.getTable("minecraft:chests/stronghold_library");
val pool_stronghold_library_main = table_stronghold_library.getPool("main");

val pool_stronghold_libraryInject = table_stronghold_library.addPool("pool_stronghold_libraryInject", 1, 1, 1, 1);