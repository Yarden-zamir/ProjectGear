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
	 
// Make steel items accept steel tool rods:
val steelStickOrRod = <ore:stickSteel> | <tconstruct:tool_rod>.withTag({Material: "steel"});

	// Brace beam
recipes.addShaped(<industrialrenewal:brace_steel> * 12, [[<ore:ingotSteel>, steelStickOrRod, null], [steelStickOrRod, <ore:ingotSteel>, steelStickOrRod], [null, steelStickOrRod, <ore:ingotSteel>]]);

	// Catwalk:
recipes.addShaped(<industrialrenewal:catwalk_steel> * 4, [[null, null, null], [steelStickOrRod, null, steelStickOrRod], [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>]]);

	// Hand rail
recipes.addShaped(<industrialrenewal:handrail_steel> * 8, [[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], [<ore:stickIron>, null, <ore:stickIron>], [<ore:stickIron>, <ore:ingotSteel>, <ore:stickIron>]]);

	// Stair
recipes.addShaped(<industrialrenewal:catwalk_stair_steel> * 4, [[<minecraft:iron_bars>, steelStickOrRod, steelStickOrRod], [steelStickOrRod, <minecraft:iron_bars>, steelStickOrRod], [null, steelStickOrRod, <minecraft:iron_bars>]]);

	// Caged ladder
recipes.addShaped(<industrialrenewal:catwalk_ladder_steel> * 6, [[<ore:stickIron>, <minecraft:ladder>, <ore:stickIron>], [<ore:ingotSteel>, <minecraft:ladder>, <ore:ingotSteel>], [<ore:stickIron>, <minecraft:ladder>, <ore:stickIron>]]);

	// Pillar
recipes.addShaped(<industrialrenewal:catwalk_steel_pillar> * 12, [[<ore:ingotSteel>, steelStickOrRod, <ore:ingotSteel>], [<ore:ingotSteel>, steelStickOrRod, <ore:ingotSteel>], [<ore:ingotSteel>, steelStickOrRod, <ore:ingotSteel>]]);

	// Column
recipes.addShaped(<industrialrenewal:catwalk_column_steel> * 12, [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], [steelStickOrRod, steelStickOrRod, steelStickOrRod], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);