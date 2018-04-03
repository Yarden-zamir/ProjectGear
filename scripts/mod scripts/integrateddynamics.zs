import crafttweaker.item.IItemStack;

val itemsToDisable =[
  <integrateddynamics:mechanical_squeezer>, //for some reason ct cant find it? maybe its already disabled?
] as IItemStack[];  //note: Disabled in favor of other ore processing setups, you can still automate the manual squeezer
scripts.functions.disableItems(itemsToDisable);
