import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;
#priority 80



////dungeon loot
val dungeon = LootTables.getTable("minecraft:chests/simple_dungeon");

val customLoot = dungeon.addPool("customLoot", 1, 1, 1, 1);

//customLoot.addItemEntryHelper(<minecraft:carrot>, 20, 1, [Functions.setCount(2, 5)], []);

//customLoot.addItemEntryJSON(<minecraft:redstone_block>, 2000, 1, ["count: {min: 3.0, max: 9.0}, function: 'minecraft:set_count'"], []);

var dungeonPool1 = dungeon.getPool("pool1");
dungeonPool1.addItemEntryHelper(<minecraft:redstone_block>, 20, 1, [Functions.setCount(2, 5)], []);

////recipes

#Script by JoJo Reference
// Casting Bin: 900 mb Destablized Redstone -> Redstone Block
mods.tconstruct.Casting.addBasinRecipe(<minecraft:redstone_block>, null, <liquid:redstone>, 900, false, 100);
 
// Casting Bin: 1000 mb Energized Glowstone -> Glowstone
mods.tconstruct.Casting.addBasinRecipe(<minecraft:glowstone>, null, <liquid:glowstone>, 1000, false, 100);
 
// Casting Table: 1000 mb Energized Glowstone -> Glowstone
mods.tconstruct.Casting.addTableRecipe(<minecraft:ender_pearl>, null, <liquid:ender>, 250, false, 100);

val tinIngot = <ore:ingotTin>;
val steelIngot = <ore:ingotSteel>;

  // Bucket
recipes.addShaped(<minecraft:bucket>,
[[tinIngot, null, tinIngot],
 [null, tinIngot, null]]);

 // Piston
recipes.addShaped(<minecraft:piston>,
 [[<ore:plankWood>,         <ore:plankWood>,     <ore:plankWood>],
  [<minecraft:cobblestone>, tinIngot, <minecraft:cobblestone>],
  [<minecraft:cobblestone>, <ore:dustRedstone>, <minecraft:cobblestone>]]);

  // Rails
recipes.addShaped(<minecraft:rail> * 24,
[[steelIngot, null, steelIngot],
 [steelIngot, <immersiveengineering:material:0>, steelIngot],
 [steelIngot, null, steelIngot]]);

  // chest
recipes.addShapeless(<minecraft:chest>, [<ore:chestWood>]);

  // Convenient paper recipe:
recipes.addShapeless(<minecraft:paper> * 2, [<minecraft:book>]);
recipes.addShapeless(<minecraft:paper> * 3, [<minecraft:reeds>, <minecraft:reeds>, <minecraft:reeds>]);

  // Shulker shell
 recipes.addShapeless(<minecraft:shulker_shell>, [<projectred-core:resource_item>, <minecraft:dye:5>]);

  // Craft end rod with manyullyn
recipes.addShaped(<minecraft:end_rod>,
	[[<minecraft:blaze_rod>],
	 [<ore:ingotManyullyn>]]);

  // Craft sponge:
	 // Sawdust + slime
recipes.addShaped(<minecraft:sponge:1>,
	[[<ore:dustWood>, <ore:slimeball>, <ore:dustWood>],
	 [<ore:slimeball>, <ore:dustWood>, <ore:slimeball>],
	 [<ore:dustWood>, <ore:slimeball>, <ore:dustWood>]]);
	 // Hemp + slime
recipes.addShaped(<minecraft:sponge:1>,
	[[<immersiveengineering:material:4>, <ore:slimeball>, <immersiveengineering:material:4>],
	 [<ore:slimeball>, <immersiveengineering:material:4>, <ore:slimeball>],
	 [<immersiveengineering:material:4>, <ore:slimeball>, <immersiveengineering:material:4>]]);
     // Craft torches with tallow:
recipes.addShaped(<minecraft:torch> * 8,
	[[<quark:tallow>],
	 [<ore:stickWood>]]);

#recipe removal
// roten flesh -> leather
recipes.removeShaped(<minecraft:leather>);
mods.integrateddynamics.DryingBasin.removeRecipesWithOutput(<minecraft:leather>);


// Crusher: Diamond Horse Armor -> 2 Diamond Dust
mods.immersiveengineering.Crusher.addRecipe(<mekanism:otherdust> * 2, <minecraft:diamond_horse_armor>, 2048);
 
// Crusher: Golden Apple -> 4 Gold Dust
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:1> * 4, <minecraft:golden_apple>, 2048);
 
// Crusher: Enchanted Gold Apple -> 36 Gold Dust
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:1> * 36, <minecraft:golden_apple:1>, 2048);

// Remove some of the gunpowder recipes
// Note: It's still craftable
recipes.removeByRecipeName("immersiveengineering:material/gunpowder0");
recipes.removeByRecipeName("immersiveengineering:material/gunpowder1");
recipes.removeByRecipeName("natura:common/gunpowder");

// Furnace: Tall grass -> Dead Grass
furnace.addRecipe(<minecraft:tallgrass:1>, <traverse:dead_grass>);

//Removes duplicate sawdust > paper Mekanism paper recipe. 
recipes.removeByRecipeName("mekanism:paper");

// You can also craft the vanilla dispenser with a piston instead of a bow. The piston conveniently stacks to 64.
recipes.addShaped(<minecraft:dispenser>,
    [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:piston>, <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]]);
	
// Alternate recipes that use nickel instead of iron

	// Essentials piston recipe
recipes.addShaped(<minecraft:piston>,
    [[<ore:cobblestone>, <ore:ingotNickel>],
    [<minecraft:redstone>, <ore:logWood>]]);
	
	// Minecraft piston recipe
recipes.addShaped(<minecraft:piston>,
    [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:cobblestone>, <ore:ingotNickel>, <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]]);
   
	// Minecart Nickel recipe
recipes.addShapedMirrored(<minecraft:minecart>,
    [[null, null, null],
    [<ore:ingotNickel>, null, <ore:ingotNickel>],
    [<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>]]);
   
	// Hopper Nickel recipe
recipes.addShaped(<minecraft:hopper>,
    [[<ore:ingotNickel>, null, <ore:ingotNickel>],
    [<ore:ingotNickel>, <ore:chestWood>, <ore:ingotNickel>],
    [null, <ore:ingotNickel>, null]]);