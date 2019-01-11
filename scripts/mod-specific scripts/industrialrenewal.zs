import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  // Sponge Iron
  <industrialrenewal:sponge_iron>

] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Blank scanner module
  <scannable:module_blank>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);