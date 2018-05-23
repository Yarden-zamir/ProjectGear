import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

print("Beginning xreliquary.zs");


val itemsToDisable =[
  <xreliquary:alkahestry_tome>,
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

print("Completed xreliquary.zs");