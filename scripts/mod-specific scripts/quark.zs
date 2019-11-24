import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IIngredient;

val itemsToDisable =[

] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);
  
val craftingToDisable =[

] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

#Script by Dr.Marx
#Craft Quark crystals 
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal> * 4, <botania:quartz:1>, <liquid:water_white> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:1> * 4, <botania:quartz:1>, <liquid:water_red> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:2> * 4, <botania:quartz:1>, <liquid:water_orange> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:3> * 4, <botania:quartz:1>, <liquid:water_yellow> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:4> * 4, <botania:quartz:1>, <liquid:water_lime> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:5> * 4, <botania:quartz:1>, <liquid:water_light_blue> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:6> * 4, <botania:quartz:1>, <liquid:water_blue> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:7> * 4, <botania:quartz:1>, <liquid:water_magenta> * 1000);

mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal> * 4, <thermalfoundation:glass:3>, <liquid:water_white> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:1> * 4, <thermalfoundation:glass:3>, <liquid:water_red> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:2> * 4, <thermalfoundation:glass:3>, <liquid:water_orange> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:3> * 4, <thermalfoundation:glass:3>, <liquid:water_yellow> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:4> * 4, <thermalfoundation:glass:3>, <liquid:water_lime> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:5> * 4, <thermalfoundation:glass:3>, <liquid:water_light_blue> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:6> * 4, <thermalfoundation:glass:3>, <liquid:water_blue> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<quark:crystal:7> * 4, <thermalfoundation:glass:3>, <liquid:water_magenta> * 1000);

// Craft crystals using Botania's managlass and petals
val petals = [
        <ore:petalWhite>,
        <ore:petalRed>,
        <ore:petalOrange>,
        <ore:petalYellow>,
        <ore:petalLime>,
        <ore:petalCyan>,
        <ore:petalBlue>,
        <ore:petalMagenta>,
        ] as IIngredient[];

val managlass = <botania:managlass>;
val crystalDef = <quark:crystal>.definition;

for i, item in petals {
    recipes.addShaped(crystalDef.makeStack(i),
    [[managlass, managlass, managlass],
    [managlass,item,managlass],
    [managlass,managlass,managlass]]);
}

// Craft nether smoker

	// With fire rune:
recipes.addShaped(<quark:smoker>,
	[[<ore:netherrack>, <ore:netherrack>, <ore:netherrack>],
	 [<ore:netherrack>, <botania:rune:1>, <ore:netherrack>],
	 [<ore:netherrack>, <ore:netherrack>, <ore:netherrack>]]);

	// With molten core:
recipes.addShaped(<quark:smoker>,
	[[<ore:netherrack>, <ore:netherrack>, <ore:netherrack>],
	 [<ore:netherrack>, <xreliquary:mob_ingredient:7>, <ore:netherrack>],
	 [<ore:netherrack>, <ore:netherrack>, <ore:netherrack>]]);

// Craft wither ash from a necrotic bone
recipes.addShapeless(<quark:black_ash> * 5,[<tconstruct:materials:17>]);

// Earthworks Chalk -> Quark Marble
recipes.addShapeless(<projectred-exploration:stone>,
    [<quark:marble>]);
	
// ProjectRed Basalt -> Quark Basalt
recipes.addShapeless(<projectred-exploration:stone:3>,
    [<quark:basalt>]);
	
// Craft glowcelium
recipes.addShapeless(<quark:glowcelium>, [<minecraft:mycelium>, <natura:nether_glowshroom:0>, <natura:nether_glowshroom:1>, <natura:nether_glowshroom:2>]);

// Craft glowshrooms
    // Brown mushroom recipe
recipes.addShapeless(<quark:glowshroom>, [<minecraft:brown_mushroom>, <natura:nether_glowshroom:0>, <natura:nether_glowshroom:1>, <natura:nether_glowshroom:2>]);
    // Red mushroom recipe
recipes.addShapeless(<quark:glowshroom>, [<minecraft:red_mushroom>, <natura:nether_glowshroom:0>, <natura:nether_glowshroom:1>, <natura:nether_glowshroom:2>]);

// Craft brimstone
recipes.addShapedMirrored(<quark:biome_cobblestone:0> * 4,
    [[<minecraft:cobblestone>, <minecraft:magma>],
     [<minecraft:magma>, <minecraft:cobblestone>]]);

// Craft permafrost
recipes.addShapedMirrored(<quark:biome_cobblestone:1> * 4,
    [[<minecraft:cobblestone>, <minecraft:packed_ice>],
     [<minecraft:packed_ice>, <minecraft:cobblestone>]]);
	
// Craft limestone, marble and basalt from pebbles
recipes.addShapeless(<quark:marble>, [<contenttweaker:marble_pebble>, <contenttweaker:marble_pebble>, <contenttweaker:marble_pebble>, <contenttweaker:marble_pebble>]);
recipes.addShapeless(<quark:basalt>, [<contenttweaker:basalt_pebble>, <contenttweaker:basalt_pebble>, <contenttweaker:basalt_pebble>, <contenttweaker:basalt_pebble>]);
recipes.addShapeless(<quark:limestone>, [<contenttweaker:limestone_pebble>, <contenttweaker:limestone_pebble>, <contenttweaker:limestone_pebble>, <contenttweaker:limestone_pebble>]);
	
// Casting Basin: 144 mb Molten Quicklime -> 1 Block of Limestone
mods.tconstruct.Casting.addBasinRecipe(<quark:limestone>, null, <liquid:quicklime>, 144);

