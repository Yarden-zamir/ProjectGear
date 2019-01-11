import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
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
  <industrialrenewal:solar_panel>,
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

recipes.removeByRecipeName("industrialrenewal:safety_belt");
recipes.removeByRecipeName("industrialrenewal:safety_helmet");

recipes.addShaped(<industrialrenewal:safety_helmet>,
	[[null, <ore:dyeYellow>, null],
	 [<ironjetpacks:strap>, <minecraft:iron_helmet>, <ironjetpacks:strap>],
	 [null, <ore:gearDiamond>, null]]);
	 
recipes.addShaped(<industrialrenewal:safety_belt>,
	[[<minecraft:leather>, null, <minecraft:leather>],
	 [<ironjetpacks:strap>, <ore:gearIron>, <ironjetpacks:strap>],
	 [<minecraft:leather>, null, <minecraft:leather>]]);