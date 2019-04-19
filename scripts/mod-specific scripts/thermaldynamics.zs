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