#Script by DolphinBlaster		
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
    // Ghostwood Tools
    <natura:ghostwood_pickaxe>,
    <natura:ghostwood_sword>,
    <natura:ghostwood_axe>,
    <natura:ghostwood_shovel>,
    <natura:ghostwood_kama>,
    // Bloodwood Tools
    <natura:bloodwood_pickaxe>,
    <natura:bloodwood_sword>,
    <natura:bloodwood_axe>,
    <natura:bloodwood_shovel>,
    <natura:bloodwood_kama>,
    // Darkwood Tools
    <natura:darkwood_pickaxe>,
    <natura:darkwood_sword>,
    <natura:darkwood_axe>,
    <natura:darkwood_shovel>,
    <natura:darkwood_kama>,
    // Fusewood Tools
    <natura:fusewood_pickaxe>,
    <natura:fusewood_sword>,
    <natura:fusewood_axe>,
    <natura:fusewood_shovel>,
    <natura:fusewood_kama>,
    // Quartz Tools (Natura)
    <natura:netherquartz_pickaxe>,
    <natura:netherquartz_sword>,
    <natura:netherquartz_axe>,
    <natura:netherquartz_shovel>,
    <natura:netherquartz_kama>,
    // Natura sticks
    <natura:sticks>,
    <natura:sticks:1>,
    <natura:sticks:2>,
    <natura:sticks:3>,
    <natura:sticks:4>,
    <natura:sticks:5>,
    <natura:sticks:6>,
    <natura:sticks:7>,
    <natura:sticks:8>,
    <natura:sticks:9>,
    <natura:sticks:10>,
    <natura:sticks:11>,
    <natura:sticks:12>,
	// Cotton and barley
	<natura:materials:3>,
	<natura:materials>,
	<natura:materials:1>,
	<natura:overworld_seeds>,
	<natura:overworld_seeds:1>,
	<natura:overworld_seed_bags>,
	<natura:overworld_seed_bags:1>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
    // Ghostwood Tools
    <natura:ghostwood_pickaxe>,
    <natura:ghostwood_sword>,
    <natura:ghostwood_axe>,
    <natura:ghostwood_shovel>,
    <natura:ghostwood_kama>,
    // Bloodwood Tools
    <natura:bloodwood_pickaxe>,
    <natura:bloodwood_sword>,
    <natura:bloodwood_axe>,
    <natura:bloodwood_shovel>,
    <natura:bloodwood_kama>,
    // Darkwood Tools
    <natura:darkwood_pickaxe>,
    <natura:darkwood_sword>,
    <natura:darkwood_axe>,
    <natura:darkwood_shovel>,
    <natura:darkwood_kama>,
    // Fusewood Tools
    <natura:fusewood_pickaxe>,
    <natura:fusewood_sword>,
    <natura:fusewood_axe>,
    <natura:fusewood_shovel>,
    <natura:fusewood_kama>,
    // Quartz Tools (Natura)
    <natura:netherquartz_pickaxe>,
    <natura:netherquartz_sword>,
    <natura:netherquartz_axe>,
    <natura:netherquartz_shovel>,
    <natura:netherquartz_kama>,
    // Natura sticks
    <natura:sticks>,
    <natura:sticks:1>,
    <natura:sticks:2>,
    <natura:sticks:3>,
    <natura:sticks:4>,
    <natura:sticks:5>,
    <natura:sticks:6>,
    <natura:sticks:7>,
    <natura:sticks:8>,
    <natura:sticks:9>,
    <natura:sticks:10>,
    <natura:sticks:11>,
    <natura:sticks:12>,
	// Barley and cotton seed bags
	<natura:overworld_seed_bags>,
	<natura:overworld_seed_bags:1>,
	// Bows:
	<natura:fusewood_bow>,
	<natura:darkwood_bow>,
	<natura:bloodwood_bow>,
	<natura:ghostwood_bow>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);
 
// Replaces all Natura nether tree sticks with regular sticks
recipes.replaceAllOccurences(<natura:sticks>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:1>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:2>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:3>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:4>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:5>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:6>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:7>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:8>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:9>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:10>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:11>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:12>, <ore:stickWood>);
 
// Natura Bow recipe (Natura Sticks -> Corresponding Natura Wooden Plank)
// Fusewood Bow
recipes.addShaped(<natura:fusewood_bow>,
[[<natura:materials:7>, <natura:nether_planks:3>, null],
[<natura:materials:7>, null, <natura:nether_planks:3>],
[<natura:materials:7>, <natura:nether_planks:3>, null]]);
// Darkwood Bow
recipes.addShaped(<natura:darkwood_bow>,
[[<natura:materials:7>, <natura:nether_planks:2>, null],
[<natura:materials:7>, null, <natura:nether_planks:2>],
[<natura:materials:7>, <natura:nether_planks:2>, null]]);
// Bloodwood Bow
recipes.addShaped(<natura:bloodwood_bow>,
[[<natura:materials:7>, <natura:nether_planks:1>, null],
[<natura:materials:7>, null, <natura:nether_planks:1>],
[<natura:materials:7>, <natura:nether_planks:1>, null]]);
// Ghostwood Bow
recipes.addShaped(<natura:ghostwood_bow>,
[[<natura:materials:7>, <natura:nether_planks>, null],
[<natura:materials:7>, null, <natura:nether_planks>],
[<natura:materials:7>, <natura:nether_planks>, null]]);

// Makes berry medly and Natura mushroom soup stack to 64 like other soups do in this pack
<natura:soups:0>.maxStackSize = 64;
<natura:soups:1>.maxStackSize = 64;
<natura:soups:2>.maxStackSize = 64;
<natura:soups:3>.maxStackSize = 64;
<natura:soups:4>.maxStackSize = 64;
<natura:soups:5>.maxStackSize = 64;
<natura:soups:6>.maxStackSize = 64;
<natura:soups:7>.maxStackSize = 64;
<natura:soups:8>.maxStackSize = 64;
<natura:soups:9>.maxStackSize = 64;

// Add ore dictionary tags to imphide
// Note: This allows it to be used in an Ex Nihilo creatio compost barrel
val listAllCookedMeat = <ore:listAllCookedMeat>;
val meatRaw = <ore:meatRaw>;
listAllCookedMeat.add(<natura:edibles:1>);
meatRaw.add(<natura:edibles:1>);


#Script by AtomBlade
// Makes flamestring craftable:
recipes.addShapeless(<natura:materials:7> * 1, [<ore:string>,<ore:cropNetherWart>,<ore:dustBlaze>]);

recipes.removeShapeless(<natura:materials:2>);

<ore:dustWheat>.add(<natura:materials:2>);

//Disabled barley and cotton in the config

// Adds petal apothacary recipe for Natura saplings
	// Maple
mods.botania.Apothecary.addRecipe(<natura:overworld_sapling:0>, [<ore:treeSapling>, <ore:petalOrange>, <ore:petalOrange>, <ore:petalOrange>, <ore:petalOrange>]);
	// Silverbell
mods.botania.Apothecary.addRecipe(<natura:overworld_sapling:1>, [<ore:treeSapling>, <ore:petalLime>, <ore:petalLime>, <ore:petalLime>, <ore:petalLime>]);
	// Amaranth
mods.botania.Apothecary.addRecipe(<natura:overworld_sapling:2>, [<ore:treeSapling>, <ore:petalPurple>, <ore:petalPurple>, <ore:petalPurple>, <ore:petalPurple>]);
	// Tigerwood
mods.botania.Apothecary.addRecipe(<natura:overworld_sapling:3>, [<ore:treeSapling>, <ore:petalBrown>, <ore:petalGreen>, <ore:petalGreen>, <ore:petalGreen>]);
	// Willow
mods.botania.Apothecary.addRecipe(<natura:overworld_sapling2:0>, [<ore:treeSapling>, <ore:petalBlack>, <ore:petalBlack>, <ore:petalGreen>, <ore:petalGreen>]);
	// Eucalypsus
mods.botania.Apothecary.addRecipe(<natura:overworld_sapling2:1>, [<ore:treeSapling>, <ore:petalWhite>, <ore:petalWhite>, <ore:petalLime>, <ore:petalLime>]);
	// Hopseed
mods.botania.Apothecary.addRecipe(<natura:overworld_sapling2:2>, [<ore:treeSapling>, <ore:petalWhite>, <ore:petalWhite>, <ore:petalGreen>, <ore:petalGreen>]);
	// Sakura
mods.botania.Apothecary.addRecipe(<natura:overworld_sapling2:3>, [<ore:treeSapling>, <ore:petalGreen>, <ore:petalGreen>, <ore:petalPink>, <ore:petalPink>]);
	// Redwood
mods.botania.Apothecary.addRecipe(<natura:redwood_sapling:0>, [<ore:treeSapling>, <ore:petalBrown>, <ore:petalBrown>, <ore:petalGreen>, <ore:petalGreen>]);

// Turn apples into overworld Natura berries with alchemy
mods.botania.ManaInfusion.addAlchemy(<natura:edibles:2>, <minecraft:apple>, 250);
mods.botania.ManaInfusion.addAlchemy(<natura:edibles:3>, <natura:edibles:2>, 250);
mods.botania.ManaInfusion.addAlchemy(<natura:edibles:4>, <natura:edibles:3>, 250);
mods.botania.ManaInfusion.addAlchemy(<natura:edibles:5>, <natura:edibles:4>, 250);

// Craft a Natura saguaro cactus with a cactus and a water rune
recipes.addShapeless(<natura:saguaro_baby>, [<minecraft:cactus>, <botania:rune:0>]);

// Craft overworld Natura berry bushes with berries and oak leaves
recipes.addShaped(<natura:overworld_berrybush_raspberry>,
 [[<natura:edibles:2>, <natura:edibles:2>, <natura:edibles:2>],
  [<natura:edibles:2>, <ore:treeLeaves>, <natura:edibles:2>],
  [<natura:edibles:2>, <natura:edibles:2>, <natura:edibles:2>]]);
  
recipes.addShaped(<natura:overworld_berrybush_blueberry>,
 [[<natura:edibles:3>, <natura:edibles:3>, <natura:edibles:3>],
  [<natura:edibles:3>, <ore:treeLeaves>, <natura:edibles:3>],
  [<natura:edibles:3>, <natura:edibles:3>, <natura:edibles:3>]]);
  
recipes.addShaped(<natura:overworld_berrybush_blackberry>,
 [[<natura:edibles:4>, <natura:edibles:4>, <natura:edibles:4>],
  [<natura:edibles:4>, <ore:treeLeaves>, <natura:edibles:4>],
  [<natura:edibles:4>, <natura:edibles:4>, <natura:edibles:4>]]);
  
recipes.addShaped(<natura:overworld_berrybush_maloberry>,
 [[<natura:edibles:5>, <natura:edibles:5>, <natura:edibles:5>],
  [<natura:edibles:5>, <ore:treeLeaves>, <natura:edibles:5>],
  [<natura:edibles:5>, <natura:edibles:5>, <natura:edibles:5>]]);
  
// Grinding wheat in a Crossroads grindstone gives flour instead of seeds
mods.crossroads.Grindstone.removeRecipe(<minecraft:wheat>);
mods.crossroads.Grindstone.addRecipe(<minecraft:wheat>, <natura:materials:2>);
