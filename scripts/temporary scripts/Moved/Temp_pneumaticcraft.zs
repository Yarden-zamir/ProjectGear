//Add back recipe to compressed iron gear
//This is the default recipe. UniDict is configured to disable all crafting recipes for gears. This is the one gear that I think should be craftable.
	//Crafting:
recipes.addShaped(<pneumaticcraft:compressed_iron_gear>,
	[[null, <pneumaticcraft:ingot_iron_compressed>, null],
	 [<pneumaticcraft:ingot_iron_compressed>, <extratrees:misc:2>, <pneumaticcraft:ingot_iron_compressed>],
	 [null, <pneumaticcraft:ingot_iron_compressed>, null]]);

	//Metal press:
mods.immersiveengineering.MetalPress.addRecipe(<pneumaticcraft:compressed_iron_gear>, <pneumaticcraft:ingot_iron_compressed>, <immersiveengineering:mold:1>, 2000, 4);