import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  // Blank scanner module
  <scannable:module_blank>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Blank scanner module
  <scannable:module_blank>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

/*
recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>.withTag({energy: 5000}),
	[[<ore:ingotCopper>, null, <ore:ingotCopper>],
	 [<ore:ingotTin>, <wrcbe:material:1>, <ore:ingotTin>],
	 [null, <theoneprobe:probe>, null]]);
*/
// Changes the scanner modules to use a Gendustry upgrade frame
// All upgrades and augments use the same frame to make the pack feel more consistent
recipes.replaceAllOccurences(<scannable:module_blank>, <projectred-fabrication:ic_chip>);