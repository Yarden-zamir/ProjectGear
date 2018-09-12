import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
	<v0idssmartbackpacks:upgrade_base>,
	<v0idssmartbackpacks:upgrade_ender_storage>,
	<v0idssmartbackpacks:upgrade_generator_em>,
	<v0idssmartbackpacks:upgrade_generator_nuclear>,
	<v0idssmartbackpacks:upgrade_generator_kinetic>,
	<v0idssmartbackpacks:upgrade_generator_wind>,
	<v0idssmartbackpacks:upgrade_generator_solar>,
	<v0idssmartbackpacks:upgrade_generator_furnace>
	
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

recipes.replaceAllOccurences(<v0idssmartbackpacks:upgrade_base>, <gendustry:upgrade_frame>);