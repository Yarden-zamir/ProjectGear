import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  // Copper, silver and obsidian furnaces
  <morefurnaces:furnaceblock:5>,
  <morefurnaces:furnaceblock:6>,
  <morefurnaces:furnaceblock:3>,
  // Copper, silver and obsidian furnace upgrades
  <morefurnaces:upgrade:3>,
  <morefurnaces:upgrade:5>,
  <morefurnaces:upgrade:6>,
  <morefurnaces:upgrade:7>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  <morefurnaces:furnaceblock:5>,
  <morefurnaces:furnaceblock:6>,
  <morefurnaces:furnaceblock:3>,
  <morefurnaces:upgrade:3>,
  <morefurnaces:upgrade:5>,
  <morefurnaces:upgrade:6>,
  <morefurnaces:upgrade:7>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);