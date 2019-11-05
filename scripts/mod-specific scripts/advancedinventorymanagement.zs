import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

// Hides items from JEI
val itemsToDisable =[
	// Solar panel
	<aim:solargenerator>,
	// Solid fuel generator
	<aim:generator>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

// Disabes crafting recipes
val craftingToDisable =[
	// Solar panel
	<aim:solargenerator>,
	// Solid fuel generator
	<aim:generator>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);