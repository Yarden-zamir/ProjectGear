import crafttweaker.item.IItemStack;

val itemsToDisable =[
  <terraqueous:crafting:5>,
  <terraqueous:crafting:6>,
  <terraqueous:crafting:2>,
  <terraqueous:item_main:201>,
  //note: disabled ender dust, AE2's ender dust will be used
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

recipes.removeShaped(<terraqueous:item_main:201>);

	//Early game burnium recipe
recipes.addShaped(<terraqueous:item_main:251> * 2,
	[[<forestry:ash>, <forestry:ash>, <forestry:ash>],
	 [<forestry:ash>, <minecraft:blaze_rod>, <forestry:ash>],
	 [<forestry:ash>, <forestry:ash>, <forestry:ash>]]);
