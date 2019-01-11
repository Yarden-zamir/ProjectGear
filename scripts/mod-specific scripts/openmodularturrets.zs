import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  // Disposable item turret
  <openmodularturrets:disposable_item_turret>,
  // Addon - Solar Panel
  <openmodularturrets:addon_meta:6>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Disposable item turret
  <openmodularturrets:disposable_item_turret>,
  // Addon - Solar Panel
  <openmodularturrets:addon_meta:6>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);