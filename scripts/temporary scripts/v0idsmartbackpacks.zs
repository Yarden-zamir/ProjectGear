import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
	<v0idssmartbackpacks:upgrade_base>,
	<v0idssmartbackpacks:upgrade_ender_storage>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

recipes.replaceAllOccurences(<v0idssmartbackpacks:upgrade_base>, <gendustry:upgrade_frame>);