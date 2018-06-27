//Add back recipe to compressed iron gear
//This is the default recipe. UniDict is configured to disable all crafting recipes for gears. This is the one gear that I think should be craftable.
	//Crafting:
recipes.addShaped(<pneumaticcraft:compressed_iron_gear>,
	[[null, <pneumaticcraft:compressed_iron_ingot>, null],
	 [<pneumaticcraft:compressed_iron_ingot>, <extratrees:misc:2>, <pneumaticcraft:compressed_iron_ingot>],
	 [null, <pneumaticcraft:compressed_iron_ingot>, null]]);

	//Metal press:
mods.immersiveengineering.MetalPress.addRecipe(<pneumaticcraft:compressed_iron_gear>, <pneumaticcraft:compressed_iron_ingot>, <immersiveengineering:mold:1>, 2000, 4);