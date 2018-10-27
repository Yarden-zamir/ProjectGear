import crafttweaker.item.IItemStack;

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

// ## disabled through config:
// Mechanical squeezer - Disabled in favor of other ore processing setups, you can still automate the manual squeezer.
// Mechanical drying basin - Disabled because the regular one is more interesting to automate
// coal_generator - Disabled to encourage more unique RF generation. Magneticraft offers steam power if you want to convert solid fuel to RF.
