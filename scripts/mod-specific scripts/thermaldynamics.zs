import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

print("Beginning thermaldynamics.zs");


val itemsToDisable =[
	// Fluiducts
	// Note: Disabled to encourage Buildcraft, Immersive Engineering or Logistics Pipes for fluid transfer
	<thermaldynamics:duct_16:*>,
	// Itemducts
	// Note: Disabled to encourage conveyor belts, Buildcraft, Factory Tech or Logistics Pipes for item transfer
	<thermaldynamics:duct_32:*>,
	// Servos
	// Note: Disabled because they're useless without itemducts or fluiducts
	<thermaldynamics:servo:*>,
	// Retrievers
	// Note: Disabled because they're useless without itemducts or fluiducts
	<thermaldynamics:retriever:*>,
	// Filters
	// Note: Disabled because they're useless without itemducts or fluiducts
	<thermaldynamics:filter:*>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
	// Fluiducts
	<thermaldynamics:duct_16:*>,
	<thermaldynamics:duct_32:*>,
	<thermaldynamics:servo:*>,
	<thermaldynamics:retriever:*>,
	
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

print("Completed thermaldynamics.zs");