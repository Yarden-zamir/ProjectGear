import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

print("Beginning xreliquary.zs");


val itemsToDisable =[

] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[

] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

print("Completed xreliquary.zs");

//Note: Tome of Alkahestry disabled in config