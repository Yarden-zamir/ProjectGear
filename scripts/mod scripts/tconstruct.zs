import crafttweaker.item.IItemStack;

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

//new electrum recipe
mods.tconstruct.Alloy.removeRecipe(<liquid:electrum>);
mods.tconstruct.Alloy.addRecipe(<liquid:electrum> * 2, [<liquid:gold> * 1, <liquid:copper> * 1]);
