import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

print("Beginning xreliquary.zs");


val itemsToDisable =[
  // Tome of Alkahestry
  // Makes nether stars way too easy to get
  <xreliquary:alkahestry_tome>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[.
  // Tome of Alkahestry
  <xreliquary:alkahestry_tome>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

print("Completed xreliquary.zs");