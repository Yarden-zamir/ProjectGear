import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

###SIMPLE_DUNGEON###

// Get the simple dungeon loot table and store it for later use
val dungeon = LootTables.getTable("minecraft:chests/simple_dungeon");
// Add a pool called steve to the cow loot table, then store it for later use
val simple_dungeon_inject = dungeon.addPool("customloot", 1, 1, 0, 0);
// Change the 
simple_dungeon_inject.setRolls(0, 1);

/*

// Add Thaumcraft items:
simple_dungeon_inject.addItemEntryHelper(<thaumcraft:amber>, 20, 1, [Functions.setCount(19, 37), Functions.setDamage(10, 10)], []);
simple_dungeon_inject.addItemEntryHelper(<thaumcraft:curio>, 5, 1, [Functions.setCount(1, 3), Functions.setDamage(0, 0)], []);
simple_dungeon_inject.addItemEntryHelper(<thaumcraft:nugget>, 5, 1, [Functions.setCount(1, 3), Functions.setDamage(9, 9)], []);

abandoned_mineshaft_inject.addItemEntryHelper(<thaumcraft:amber>, 20, 1, [Functions.setCount(5, 11)], []);
abandoned_mineshaft_inject.addItemEntryHelper(<thaumcraft:curio>, 5, 1, [Functions.setCount(1, 3)], []);
abandoned_mineshaft_inject.addItemEntryHelper(<thaumcraft:nugget>, 5, 1, [Functions.setCount(1, 3), Functions.setDamage(10, 10)], []);

*/