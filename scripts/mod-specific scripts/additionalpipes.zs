import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

// Hides items from JEI
val itemsToDisable =[
	// Teleport pipes
	// Note: Disabled to encourage more interesting forms of item transportation, such as rails
	<additionalpipes:pipe_fluids_teleport>,
	<additionalpipes:pipe_items_teleport>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

// Disabes crafting recipes
val craftingToDisable =[
	// Teleport pipes
	<additionalpipes:pipe_fluids_teleport>,
	<additionalpipes:pipe_items_teleport>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);