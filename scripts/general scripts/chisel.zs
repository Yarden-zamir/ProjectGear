import mods.chisel.Carving;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

# Template: mods.chisel.Carving.addVariation("", );

// Allows more blocks to be chiseled, mostly fixing obvious missing cases like not being able to chisel all types of Basalt
	// Basalt
mods.chisel.Carving.addVariation("basalt", <quark:world_stone_pavement:3>);
mods.chisel.Carving.addVariation("basalt", <projectred-exploration:stone:2>);
mods.chisel.Carving.addVariation("basalt", <projectred-exploration:stone:3>);
mods.chisel.Carving.addVariation("basalt", <projectred-exploration:stone:4>);



	// Limestone
mods.chisel.Carving.addVariation("limestone", <quark:world_stone_carved:5>);
mods.chisel.Carving.addVariation("limestone", <quark:world_stone_pavement:5>);
mods.chisel.Carving.addVariation("limestone", <magneticraft:limestone>);
mods.chisel.Carving.addVariation("limestone", <magneticraft:limestone:1>);
mods.chisel.Carving.addVariation("limestone", <magneticraft:limestone:2>);
mods.chisel.Carving.addVariation("limestone", <magneticraft:burnt_limestone:1>);
mods.chisel.Carving.addVariation("limestone", <magneticraft:burnt_limestone:2>);
mods.chisel.Carving.addVariation("limestone", <magneticraft:tile_limestone>);
mods.chisel.Carving.addVariation("limestone", <magneticraft:tile_limestone:1>);

	
	
	// Slate
mods.chisel.Carving.addVariation("limestone", <quark:world_stone_pavement:7>);
mods.chisel.Carving.addVariation("limestone", <rustic:slate_pillar>);
mods.chisel.Carving.addVariation("limestone", <rustic:slate>);
mods.chisel.Carving.addVariation("limestone", <rustic:slate_roof>);
mods.chisel.Carving.addVariation("limestone", <rustic:slate_tile>);
mods.chisel.Carving.addVariation("limestone", <rustic:slate_chiseled>);
mods.chisel.Carving.addVariation("limestone", <quark:world_stone_carved:7>);
	
	// Marble
mods.chisel.Carving.addVariation("marble", <projectred-exploration:stone>);
mods.chisel.Carving.addVariation("marble", <projectred-exploration:stone:1>);
mods.chisel.Carving.addVariation("marble", <quark:world_stone_carved:4>);
mods.chisel.Carving.addVariation("marble", <quark:world_stone_pavement:4>);


	// Quark carved planks
mods.chisel.Carving.addVariation("planks-oak", <quark:carved_wood:0>);
mods.chisel.Carving.addVariation("planks-spruce", <quark:carved_wood:1>);
mods.chisel.Carving.addVariation("planks-birch", <quark:carved_wood:2>);
mods.chisel.Carving.addVariation("planks-jungle", <quark:carved_wood:3>);
mods.chisel.Carving.addVariation("planks-acacia", <quark:carved_wood:4>);
mods.chisel.Carving.addVariation("planks-dark_oak", <quark:carved_wood:5>);

	// Bookshelves:
mods.chisel.Carving.addVariation("bookshelf_spruce", <quark:custom_bookshelf:0>);
mods.chisel.Carving.addVariation("bookshelf_birch", <quark:custom_bookshelf:1>);
mods.chisel.Carving.addVariation("bookshelf_jungle", <quark:custom_bookshelf:2>);
mods.chisel.Carving.addVariation("bookshelf_acacia", <quark:custom_bookshelf:3>);
mods.chisel.Carving.addVariation("bookshelf_dark_oak", <quark:custom_bookshelf:4>);
	
	// Quark vertical planks
mods.chisel.Carving.addVariation("planks_oak", <quark:vertical_planks:0>);
mods.chisel.Carving.addVariation("planks_spruce", <quark:vertical_planks:1>);
mods.chisel.Carving.addVariation("planks_birch", <quark:vertical_planks:2>);
mods.chisel.Carving.addVariation("planks_jungle", <quark:vertical_planks:3>);
mods.chisel.Carving.addVariation("planks_acacia", <quark:vertical_planks:4>);
mods.chisel.Carving.addVariation("planks_dark_oak", <quark:vertical_planks:5>);

	// Sandstone
mods.chisel.Carving.addVariation("sandstoneyellow", <quark:sandstone_new>);
mods.chisel.Carving.addVariation("sandstoneyellow", <quark:sandstone_new:1>);

	// Red sandstone
mods.chisel.Carving.addVariation("sandstonered", <quark:sandstone_new:2>);
mods.chisel.Carving.addVariation("sandstonered", <quark:sandstone_new:3>);

	// Stone brick
mods.chisel.Carving.addVariation("stonebrick", <quark:polished_stone>);

	// Diorite
mods.chisel.Carving.addVariation("diorite", <railcraft:brick_diorite:*>);
mods.chisel.Carving.addVariation("diorite", <rustic:diorite_pillar>);
mods.chisel.Carving.addVariation("diorite", <quark:world_stone_carved:1>);
mods.chisel.Carving.addVariation("diorite", <quark:world_stone_pavement:1>);
	
	// Granite
mods.chisel.Carving.addVariation("granite", <railcraft:brick_granite:*>);
mods.chisel.Carving.addVariation("granite", <rustic:granite_pillar>);
mods.chisel.Carving.addVariation("granite", <quark:world_stone_carved>);
mods.chisel.Carving.addVariation("granite", <quark:world_stone_pavement>);
	
	// Andesite
mods.chisel.Carving.addVariation("andesite", <railcraft:brick_andesite:*>);
mods.chisel.Carving.addVariation("andesite", <rustic:andesite_pillar>);
mods.chisel.Carving.addVariation("andesite", <quark:world_stone_pavement:2>);
mods.chisel.Carving.addVariation("andesite", <quark:world_stone_carved:2>);

	// Ash brick:
mods.chisel.Carving.addVariation("forestry:ash_brick_0", <prodigytech:ash_bricks>);
mods.chisel.Carving.addVariation("forestry:ash_brick_0", <factorytech:bricks:3>);


	// Stained planks
mods.chisel.Carving.addVariation("rustic:painted_wood_white_0", <quark:vertical_stained_planks:0>);
mods.chisel.Carving.addVariation("rustic:painted_wood_orange_0", <quark:vertical_stained_planks:1>);
mods.chisel.Carving.addVariation("rustic:painted_wood_magenta_0", <quark:vertical_stained_planks:2>);
mods.chisel.Carving.addVariation("rustic:painted_wood_light_blue_0", <quark:vertical_stained_planks:3>);
mods.chisel.Carving.addVariation("rustic:painted_wood_yellow_0", <quark:vertical_stained_planks:4>);
mods.chisel.Carving.addVariation("rustic:painted_wood_lime_0", <quark:vertical_stained_planks:5>);
mods.chisel.Carving.addVariation("rustic:painted_wood_pink_0", <quark:vertical_stained_planks:6>);
mods.chisel.Carving.addVariation("rustic:painted_wood_gray_0", <quark:vertical_stained_planks:7>);
mods.chisel.Carving.addVariation("rustic:painted_wood_light_gray_0", <quark:vertical_stained_planks:8>);
mods.chisel.Carving.addVariation("rustic:painted_wood_cyan_0", <quark:vertical_stained_planks:9>);
mods.chisel.Carving.addVariation("rustic:painted_wood_purple_0", <quark:vertical_stained_planks:10>);
mods.chisel.Carving.addVariation("rustic:painted_wood_blue_0", <quark:vertical_stained_planks:11>);
mods.chisel.Carving.addVariation("rustic:painted_wood_brown_0", <quark:vertical_stained_planks:12>);
mods.chisel.Carving.addVariation("rustic:painted_wood_green_0", <quark:vertical_stained_planks:13>);
mods.chisel.Carving.addVariation("rustic:painted_wood_red_0", <quark:vertical_stained_planks:14>);
mods.chisel.Carving.addVariation("rustic:painted_wood_black_0", <quark:vertical_stained_planks:15>);

	// Railcraft stone
mods.chisel.Carving.addVariation("brick_abyssal_0", <railcraft:brick_abyssal:*>);
mods.chisel.Carving.addVariation("brick_bleachedbone_0", <railcraft:brick_bleachedbone:*>);
mods.chisel.Carving.addVariation("brick_bloodstained_0", <railcraft:brick_bloodstained:*>);
mods.chisel.Carving.addVariation("brick_frostbound_0", <railcraft:brick_frostbound:*>);
mods.chisel.Carving.addVariation("brick_infernal_0", <railcraft:brick_infernal:*>);
mods.chisel.Carving.addVariation("brick_nether_0", <railcraft:brick_nether:*>);
mods.chisel.Carving.addVariation("brick_pearlized_0", <railcraft:brick_pearlized:*>);
mods.chisel.Carving.addVariation("brick_quarried_0", <railcraft:brick_quarried:*>);
mods.chisel.Carving.addVariation("brick_red_nether_0", <railcraft:brick_red_nether:*>);
mods.chisel.Carving.addVariation("brick_red_sandy_0", <railcraft:brick_red_sandy:*>);
mods.chisel.Carving.addVariation("brick_sandy_0", <railcraft:brick_sandy:*>);
