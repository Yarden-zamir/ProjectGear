import crafttweaker.item.IItemStack;
import mods.integrateddynamics.Squeezer;
#priority 80


////recipes

#Script by JoJo Reference
// Casting Bin: 900 mb Destablized Redstone -> Redstone Block
mods.tconstruct.Casting.addBasinRecipe(<minecraft:redstone_block>, null, <liquid:redstone>, 900, false, 100);
 
// Casting Bin: 1000 mb Energized Glowstone -> Glowstone
mods.tconstruct.Casting.addBasinRecipe(<minecraft:glowstone>, null, <liquid:glowstone>, 1000, false, 100);
 
// Casting Table: 1000 mb Energized Glowstone -> Glowstone
mods.tconstruct.Casting.addTableRecipe(<minecraft:ender_pearl>, null, <liquid:ender>, 250, false, 100);

// Increase output of vanilla TNT recipe to 5
recipes.removeByRecipeName("minecraft:tnt");
recipes.addShaped(<minecraft:tnt> * 5, [[<ore:gunpowder>, <minecraft:sand> | <minecraft:sand:1>, <ore:gunpowder>], [<minecraft:sand> | <minecraft:sand:1>, <ore:gunpowder>, <minecraft:sand> | <minecraft:sand:1>], [<ore:gunpowder>, <minecraft:sand> | <minecraft:sand:1>, <ore:gunpowder>]]);

// Craft Tinkers' clear glass into vanilla glass
// Allows you to make vanilla glass in the smeltery
recipes.addShapeless(<minecraft:glass>, [<tconstruct:clear_glass>]);

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
	 
// Craft sand piles into sand
recipes.addShapeless(<minecraft:sand>, [<contenttweaker:sand_pile>, <contenttweaker:sand_pile>, <contenttweaker:sand_pile>, <contenttweaker:sand_pile>]);
// Craft sand into sand piles
recipes.addShapeless(<contenttweaker:sand_pile> * 4, [<minecraft:sand>]);

// Craft granite, diorite and andesite from pebbles
recipes.addShapeless(<minecraft:stone:1>, [<contenttweaker:granite_pebble>, <contenttweaker:granite_pebble>, <contenttweaker:granite_pebble>, <contenttweaker:granite_pebble>]);
recipes.addShapeless(<minecraft:stone:3>, [<contenttweaker:diorite_pebble>, <contenttweaker:diorite_pebble>, <contenttweaker:diorite_pebble>, <contenttweaker:diorite_pebble>]);
recipes.addShapeless(<minecraft:stone:5>, [<contenttweaker:andesite_pebble>, <contenttweaker:andesite_pebble>, <contenttweaker:andesite_pebble>, <contenttweaker:andesite_pebble>]);
#recipe removal
// roten flesh -> leather
recipes.removeShaped(<minecraft:leather>);
mods.integrateddynamics.DryingBasin.removeRecipesWithOutput(<minecraft:leather>);


// Crusher: Diamond Horse Armor -> 2 Diamond Dust
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:gem_dust> * 2, <minecraft:diamond_horse_armor>, 2048);
 
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
	
// Turn feathers into eggs with Botania alchemy
mods.botania.ManaInfusion.addAlchemy(<minecraft:egg>, <minecraft:feather>, 250);

// Adds tooltip to the bucket to tell you about finite water
<minecraft:water_bucket>.addTooltip("Infinite water pools only work in wet and snowy biomes, such as oceans, swamps and ice spikes. You can also get water from the Waterworks mod, an everful urn, or by moving water from a wet biome to your base.");


// Melt cows in a smeltery to get milk
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:cow>, <liquid:milk>);

// Squeeze gravel into sand instead of flint
Squeezer.removeRecipe(<minecraft:gravel>,
	<minecraft:gravel>, 0.5);
	
Squeezer.addRecipe(<minecraft:gravel>, <minecraft:sand>);

//////////Stack sizes
// Makes beetroot soup stack to 64 like other soups do in this pack
<minecraft:beetroot_soup>.maxStackSize = 64;