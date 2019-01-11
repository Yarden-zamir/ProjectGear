import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  // Sponge Iron
  <industrialrenewal:sponge_iron>
<industrialrenewal:energy_cable>
  <industrialrenewal:fluid_pipe>
  <industrialrenewal:valve_pipe_large>

] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Blank scanner module
  <scannable:module_blank>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);