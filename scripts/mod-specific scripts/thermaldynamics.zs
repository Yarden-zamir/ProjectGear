import crafttweaker.item.IItemStack;

print("Beginning thermaldynamics.zs");


val itemsToDisable =[
	// Fluiducts except hardened
	// Note: Disabled to encourage people to use multiple ducts in parallel
	<thermaldynamics:duct_16:0>,
	<thermaldynamics:duct_16:1>,
	<thermaldynamics:duct_16:4>,
	<thermaldynamics:duct_16:5>,
	<thermaldynamics:duct_16:6>,
	<thermaldynamics:duct_16:7>,	
	// Itemducts
	// Note: Disabled to encourage conveyor belts, Buildcraft, Factory Tech or Logistics Pipes for item transfer
	<thermaldynamics:duct_32:*>,
	// Servos
	// Note: Disabled because they're useless without itemducts or fluiducts
	<thermaldynamics:servo:0>,
	<thermaldynamics:servo:2>,
	<thermaldynamics:servo:3>,
	<thermaldynamics:servo:4>,
	// Retrievers
	// Note: Disabled because they're useless without itemducts or fluiducts
	<thermaldynamics:retriever:*>,
	// Filters except hardened
	// Note: Hardened are the best filter needed for fluiducts
	<thermaldynamics:filter:0>,
	<thermaldynamics:filter:1>,
	<thermaldynamics:filter:3>,
	<thermaldynamics:filter:4>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
	// Fluiducts except hardened
	<thermaldynamics:duct_16:0>,
	<thermaldynamics:duct_16:1>,
	<thermaldynamics:duct_16:4>,
	<thermaldynamics:duct_16:5>,
	<thermaldynamics:duct_16:6>,
	<thermaldynamics:duct_16:7>,	
	// Itemducts
	<thermaldynamics:duct_32:*>,
	// Servos
	<thermaldynamics:servo:0>,
	<thermaldynamics:servo:2>,
	<thermaldynamics:servo:3>,
	<thermaldynamics:servo:4>,
	// Retrievers
	<thermaldynamics:retriever:*>,
	// Filters except hardened
	<thermaldynamics:filter:0>,
	<thermaldynamics:filter:1>,
	<thermaldynamics:filter:3>,
	<thermaldynamics:filter:4>
	
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

print("Completed thermaldynamics.zs");

# Recipes

// Long Range Viaduct (Lead > Tin);
recipes.removeByRecipeName("thermaldynamics:duct_64_1");
recipes.addShaped(<thermaldynamics:duct_64:1> * 8, [[<ore:ingotTin>, <ore:blockGlassHardened>, <ore:ingotTin>], [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>], [<ore:ingotTin>, <ore:blockGlassHardened>, <ore:ingotTin>]]);

// Structural duct recipe overhaul
recipes.removeByRecipeName("thermaldynamics:duct_48");
recipes.addShaped(<thermaldynamics:duct_48> * 6, [[<ore:ingotIron>, <ore:stone>, <ore:ingotIron>]]);

// Leadstone fluxduct (Lead > Tin)
recipes.removeByRecipeName("thermaldynamics:duct_0");
recipes.addShaped(<thermaldynamics:duct_0> * 6, [[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>], [<ore:ingotTin>, <ore:blockGlass>, <ore:ingotTin>], [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]]);

// Redstone Relay (Lead > Nickel)
recipes.removeByRecipeName("thermaldynamics:relay");
recipes.addShaped(<thermaldynamics:relay> * 2, [[<ore:nuggetSignalum>, <ore:gemQuartz>, <ore:nuggetSignalum>], [<ore:ingotNickel>, <ore:dustRedstone>, <ore:ingotNickel>]]);

// Hardened fluiduct (opaque) (lead > nickel)
recipes.removeByRecipeName("thermaldynamics:duct_16_3");
recipes.removeByRecipeName("thermaldynamics:duct_16_11");
recipes.addShaped(<thermaldynamics:duct_16:3> * 6, [[<ore:ingotInvar>, <ore:ingotNickel>, <ore:ingotInvar>]]);
recipes.addShapeless(<thermaldynamics:duct_16:3> * 6, [<thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <ore:ingotNickel>]);

// 200mb of liquid redstone poured on empty redstone flux duct in smeltery casting recipe = full redstone flux duct
mods.tconstruct.Casting.addTableRecipe(<thermaldynamics:duct_0:2>, <thermaldynamics:duct_0:6>, <liquid:redstone>, 200, true);