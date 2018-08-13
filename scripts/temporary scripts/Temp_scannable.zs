import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
	<scannable:module_blank>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>.withTag({energy: 5000}),
	[[<ore:ingotCopper>, null, <ore:ingotCopper>],
	 [<ore:ingotTin>, <wrcbe:material:1>, <ore:ingotTin>],
	 [null, <theoneprobe:probe>, null]]);
  
recipes.replaceAllOccurences(<scannable:module_blank>, <gendustry:upgrade_frame>);