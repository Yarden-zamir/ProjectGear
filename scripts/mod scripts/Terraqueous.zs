import crafttweaker.item.IItemStack;

val itemsToDisable =[
  <terraqueous:crafting:5>,
  <terraqueous:crafting:6>,
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

recipes.removeShaped(<terraqueous:item_main:201>);
