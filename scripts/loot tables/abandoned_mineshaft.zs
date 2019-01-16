import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

###ABANDONED_MINESHAFT###

// Get the simple dungeon loot table and store it for later use
val dungeon = LootTables.getTable("minecraft:chests/abandoned_mineshaft");
// Add a pool called steve to the cow loot table, then store it for later use
val abandoned_mineshaft_inject = dungeon.addPool("customloot", 1, 1, 0, 0);
// Change the 
abandoned_mineshaft_inject.setRolls(0, 1);




// Remove Railcraft items:
/*
val abandoned_mineshaft_railcraft_resources = dungeon.getPool("railcraft_resources");
abandoned_mineshaft_railcraft_resources.removeEntry("railcraft:ingot");
abandoned_mineshaft_railcraft_resources.removeEntry("railcraft:gear");
abandoned_mineshaft_railcraft_resources.removeEntry("railcraft:plate");
abandoned_mineshaft_railcraft_resources.removeEntry("minecraft:coal");
*/


// Remove Nuclearcraft items:

/*
val abandoned_mineshaft_main = dungeon.getPool("main");
abandoned_mineshaft_main.removeEntry("nuclearcraft:plating");
*/

//LootTables.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("nuclearcraft:plating");



// Add plates and gears:


// Add Thaumcraft items:
abandoned_mineshaft_inject.addItemEntryHelper(<thaumcraft:amber>, 20, 1, [Functions.setCount(19, 37), Functions.setDamage(10, 10)], []);
abandoned_mineshaft_inject.addItemEntryHelper(<thaumcraft:curio>, 5, 1, [Functions.setCount(1, 3), Functions.setDamage(0, 0)], []);
abandoned_mineshaft_inject.addItemEntryHelper(<thaumcraft:nugget>, 5, 1, [Functions.setCount(1, 3), Functions.setDamage(0, 0)], []);


