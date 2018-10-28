// Crafting item faucet with bithops instead of pipes
recipes.remove(<faufil:faucet>);
recipes.addShapedMirrored(<faufil:faucet> * 3, [[<minecraft:redstone_torch>, null, null],[<bithop:bithop>, <bithop:bithop>, null],[<bithop:bithop>, null, null]]);

// Disabling the hopper pipe

val itemsToDisable =[
  <faufil:hopperpipe>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  <faufil:hopperpipe>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);