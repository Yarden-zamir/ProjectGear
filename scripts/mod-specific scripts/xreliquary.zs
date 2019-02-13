import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

print("Beginning xreliquary.zs");


val itemsToDisable =[
	// Pedestals
	// Note: Disabled because they made it too easy to kill mobs
	<xreliquary:pedestal:*>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
	scripts.functions.disableCraftings(craftingToDisable);
	<xreliquary:pedestal:*>
print("Completed xreliquary.zs");
] as IItemStack[];


//Note: Tome of Alkahestry disabled in config