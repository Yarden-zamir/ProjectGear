recipes.replaceAllOccurences(<ore:ingotOsmium>, <ore:ingotTin>);
recipes.replaceAllOccurences(<mekanism:ingot:1>, <ore:ingotTin>);

// ME Drive Tin recipe
recipes.addShaped(<appliedenergistics2:drive>, 
	[[<ore:ingotTin>, <appliedenergistics2:material:24>, <ore:ingotTin>],
	[<appliedenergistics2:part:16>, null, <appliedenergistics2:part:16>], 
	[<ore:ingotTin>, <appliedenergistics2:material:24>, <ore:ingotTin>]]);
	
// Crafting Unit Tin recipe
recipes.addShaped(<appliedenergistics2:crafting_unit>, 
	[[<ore:ingotTin>, <appliedenergistics2:material:23>, <ore:ingotTin>],
	[<appliedenergistics2:part:16>, <appliedenergistics2:material:22>, <appliedenergistics2:part:16>], 
	[<ore:ingotTin>, <appliedenergistics2:material:23>, <ore:ingotTin>]]);

// Storage Housing Tin recipe
recipes.addShaped(<appliedenergistics2:material:39>, 
	[[<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
	[<minecraft:redstone>, null, <minecraft:redstone>], 
	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);

// 1k ME Storage Cell Tin recipe
recipes.addShaped(<appliedenergistics2:storage_cell_1k>, 
	[[<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
	[<minecraft:redstone>, <appliedenergistics2:material:35>, <minecraft:redstone>], 
	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);
	
// 4k ME Storage Cell Tin recipe
recipes.addShaped(<appliedenergistics2:storage_cell_4k>, 
	[[<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
	[<minecraft:redstone>, <appliedenergistics2:material:36>, <minecraft:redstone>], 
	[<mekanism:ingot:1>, <mekanism:ingot:1>, <mekanism:ingot:1>]]);
	
// Wireless Receiver Tin recipe
recipes.addShaped(<appliedenergistics2:material:41>, 
	[[null, <appliedenergistics2:material:9>, null],
	[<ore:ingotTin>, <appliedenergistics2:part:140>, <ore:ingotTin>], 
	[null, <ore:ingotTin>, null]]);
	
// Wireless Booster Tin Recipe
recipes.addShaped(<appliedenergistics2:material:42> * 2,
	[[null, null, null],
	[<appliedenergistics2:material:8>, <ore:crystalCertusQuartz>, <ore:dustEnder>], 
	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);