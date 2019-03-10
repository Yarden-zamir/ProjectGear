import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
	// Storage size upgrades
	// Note: If you need to store hundreds of thousands of items, make a shipping container
	// Note: The default storage size of a 1x1 drawer has been buffed to 256 stacks
	<storagedrawers:upgrade_storage:0>,
	<storagedrawers:upgrade_storage:1>,
	<storagedrawers:upgrade_storage:2>,
	<storagedrawers:upgrade_storage:3>,
	<storagedrawers:upgrade_storage:4>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
	<storagedrawers:upgrade_storage:0>,
	<storagedrawers:upgrade_storage:1>,
	<storagedrawers:upgrade_storage:2>,
	<storagedrawers:upgrade_storage:3>,
	<storagedrawers:upgrade_storage:4>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);