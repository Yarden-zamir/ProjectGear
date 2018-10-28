import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  // Blank upgrade
  <v0idssmartbackpacks:upgrade_base>,
  // Ender storage module
  // The ender storage mod is not installed
  <v0idssmartbackpacks:upgrade_ender_storage>,
  // Generators
  // None of these generators are very interesting
  <v0idssmartbackpacks:upgrade_generator_em>,
  <v0idssmartbackpacks:upgrade_generator_nuclear>,
  <v0idssmartbackpacks:upgrade_generator_kinetic>,
  <v0idssmartbackpacks:upgrade_generator_wind>,
  <v0idssmartbackpacks:upgrade_generator_solar>,
  <v0idssmartbackpacks:upgrade_generator_furnace>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Blank upgrade
  <v0idssmartbackpacks:upgrade_base>,
  // Ender storage module
  <v0idssmartbackpacks:upgrade_ender_storage>,
  // Generators
  <v0idssmartbackpacks:upgrade_generator_em>,
  <v0idssmartbackpacks:upgrade_generator_nuclear>,
  <v0idssmartbackpacks:upgrade_generator_kinetic>,
  <v0idssmartbackpacks:upgrade_generator_wind>,
  <v0idssmartbackpacks:upgrade_generator_solar>,
  <v0idssmartbackpacks:upgrade_generator_furnace>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

recipes.replaceAllOccurences(<v0idssmartbackpacks:upgrade_base>, <gendustry:upgrade_frame>);