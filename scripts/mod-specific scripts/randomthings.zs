import crafttweaker.item.IItemStack;

val itemsToDisable =[
  <randomthings:pitcherplant>,          // Pitcher Plant: Gives easy infinite water
  <randomthings:enderbridge>,           // Ender bridge: Makes long range item transport too easy
  <randomthings:prismarineenderbridge>, // Prismarine ender bridge: See above
  <randomthings:spectrecoil_normal>,    // Spectre Coil: Allows teleportation of energy
  <randomthings:spectrecoil_redstone>,  // Redstone Spectre Coil: Allows teleportation of energy
  <randomthings:spectrecoil_ender>,     // Ender Spectre Coil: Allows teleportation of energy
  <randomthings:spectrecoil_number>,    // Spectre Coil Nr: Allows teleportation of energy
  <randomthings:spectrecoil_genesis>,   // Genesis Spectre Coil: Allows teleportation of energy
  <randomthings:spectreenergyinjector>, // Spectre Energy Injector: Allows teleportation of energy
  <randomthings:ingredient:12>          // Spectre String: Crafting ingredient for disabled items. No longer needed.
] as IItemStack[];

scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  <randomthings:pitcherplant>,          // Pitcher Plant
  <randomthings:enderbridge>,           // Ender bridge
  <randomthings:prismarineenderbridge>, // Prismarine ender bridge
  <randomthings:spectrecoil_normal>,    // Spectre Coil
  <randomthings:spectrecoil_redstone>,  // Redstone Spectre Coil
  <randomthings:spectrecoil_ender>,     // Ender Spectre Coil
  <randomthings:spectrecoil_number>,    // Spectre Coil Nr
  <randomthings:spectrecoil_genesis>,   // Genesis Spectre Coil
  <randomthings:spectreenergyinjector>, // Spectre Energy Injector
  <randomthings:ingredient:12>          // Spectre String
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);


	// You can also craft the block breaker with an iron pickaxe head instead of an iron pickaxe. The head conveniently stacks to 64.
recipes.addShaped(<randomthings:blockbreaker>,
    [[<ore:cobblestone>, <tconstruct:pick_head>.withTag({Material: "iron"}), <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:redstone_torch>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
	
	// Craft glowing mushrooms
recipes.addShapeless(<randomthings:glowingmushroom>, [<ore:mushroomAny>, <ore:mushroomAny>, <natura:nether_glowshroom:*>, <natura:nether_glowshroom:*>]);

	// Alternative luminous dust recipes that use other glowing mushroom types:.
recipes.addShaped("gear_crafting_luminouspowder_alt1", <randomthings:ingredient:5> * 4, [[<minecraft:glowstone_dust>, <ore:blockGlassColorless>], [null, <quark:glowshroom>]]);
