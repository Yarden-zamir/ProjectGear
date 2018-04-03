import crafttweaker.item.IItemStack;

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val aluminumIngot = <ore:ingotAluminum>;

//Hopper ducts:
recipes.addShaped(<hopperducts:hopperduct>,
[[aluminumIngot, <ore:plankWood>, aluminumIngot],
[null, aluminumIngot, null]]);
