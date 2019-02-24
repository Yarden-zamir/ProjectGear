import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

// Hides items from JEI
val itemsToDisable =[
	// Storage import cable
	<storagenetwork:im_kabel>,
	// Storage export cable
	<storagenetwork:ex_kabel>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

// Disabes crafting recipes
val craftingToDisable =[
	// Storage import cable
	<storagenetwork:im_kabel>,
	// Storage export cable
	<storagenetwork:ex_kabel>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);