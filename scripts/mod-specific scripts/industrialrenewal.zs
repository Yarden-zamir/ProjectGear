import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  // Sponge iron
  <industrialrenewal:sponge_iron>,
  // Energy cable
  <industrialrenewal:energy_cable>,
  // Fluid pipe
  <industrialrenewal:fluid_pipe>,
  // Fluid valve
  <industrialrenewal:valve_pipe_large>,
  // Solar panel
  <industrialrenewal:solar_panel>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Sponge iron
  <industrialrenewal:sponge_iron>,
  // Energy cable
  <industrialrenewal:energy_cable>,
  // Fluid pipe
  <industrialrenewal:fluid_pipe>,
  // Fluid valve
  <industrialrenewal:valve_pipe_large>,
  // Solar panel
  <industrialrenewal:solar_panel>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);