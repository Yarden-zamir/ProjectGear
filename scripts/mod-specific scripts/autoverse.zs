import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  <autoverse:pipe:*>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  <autoverse:pipe:*>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

