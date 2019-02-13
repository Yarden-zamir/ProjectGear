import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

print("Beginning xreliquary.zs");


val itemsToDisable =[

] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);
	// Pedestals
	// Note: Disabled because they made it too easy to kill mobs
	<xreliquary:pedestal:*>
val craftingToDisable =[

] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);
	<xreliquary:pedestal:*>
print("Completed xreliquary.zs");

//Note: Tome of Alkahestry disabled in config