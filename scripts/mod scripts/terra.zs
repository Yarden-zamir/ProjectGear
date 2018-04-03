

	//Convert marble into Quark marble and back
recipes.addShapeless(<terra:marble_stone> * 2, [<quark:marble>, <quark:marble>]);
recipes.addShapeless(<quark:marble>* 2, [<terra:marble_stone>, <terra:marble_stone>]);
	//Convert basalt into Quark basalt and back
recipes.addShapeless(<terra:basalt_stone> * 2, [<quark:basalt>, <quark:basalt>]);
recipes.addShapeless(<quark:basalt> * 2, [<terra:basalt_stone>, <terra:basalt_stone>]);
	//Convert limestone into Quark limestone and back
recipes.addShapeless(<terra:limestone_stone>, [<quark:limestone>, <quark:limestone>]);
recipes.addShapeless(<quark:limestone> * 2, [<terra:limestone_stone>, <terra:limestone_stone>]);
	//Convert slate into Rustic slate and back
recipes.addShapeless(<terra:slate_stone> * 2, [<rustic:slate>, <rustic:slate>]);
recipes.addShapeless(<rustic:slate> * 2, [<terra:marble_stone>, <terra:marble_stone>]);
	//Black diorite
recipes.addShapeless(<terra:blackdiorite_stone> * 2, [<minecraft:stone:3>, <quark:basalt>]);
	//Pumice
recipes.addShapeless(<terra:pumice_stone> * 2, [<minecraft:stone:0>, <tconstruct:brownstone:0>]);

	 
	//Green schist
recipes.addShapeless(<terra:greenschist_stone> * 4, [<minecraft:stone:3>, <ore:gemApatite>]);

	//Blue schist
recipes.addShapeless(<terra:blueschist_stone> * 4, [<minecraft:stone:3>, <ore:gemPrismarine>]);

	//Scoria
recipes.addShapedMirrored(<terra:scoria_stone> * 4,
	[[<minecraft:netherbrick>, <minecraft:stone:0>],
	 [<minecraft:stone:0>, <minecraft:netherbrick>]]);

	//Soapstone
recipes.addShapedMirrored(<terra:scoria_stone> * 4,
	[[<minecraft:stone:5>, <minecraft:stone:0>],
	 [<minecraft:stone:0>, <minecraft:stone:5>]]);

	//Kimberlite
recipes.addShapedMirrored(<terra:kimberlite_stone> * 4,
	[[<botania:biomestonea:1>, <minecraft:stone:0>],
	 [<minecraft:stone:0>, <botania:biomestonea:1>]]);

	//Gneiss
recipes.addShapedMirrored(<terra:gneiss_stone> * 4,
	[[<ore:stoneLimestone>, <terra:scoria_stone>],
	 [<terra:scoria_stone>, <ore:stoneLimestone>]]);

	//Gabbro
recipes.addShapedMirrored(<terra:gabbro_stone> * 4,
	[[<ore:stoneLimestone>, <ore:stoneBasalt>],
	 [<ore:stoneBasalt>, <ore:stoneLimestone>]]);
	
	//Chalk
recipes.addShaped(<terra:chalk_stone> * 32,
	[[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
	 [<minecraft:stone>, <natura:edibles:10>, <minecraft:stone>],
	 [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
	 
	 //Rhyolite
recipes.addShaped(<terra:rhyolite_stone> * 32,
	[[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
	 [<minecraft:stone>, <botania:quartztypeblaze:0>, <minecraft:stone>],
	 [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
	 
	//Migmatite
recipes.addShapeless(<terra:migmatite_stone> * 2, [<ore:stoneSlate>, <ore:stoneMarble>]);

	//Krunaltite
recipes.addShaped(<terra:krundaltite> * 32,
	[[<minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>],
	 [<minecraft:netherrack>, <ore:nuggetManyullyn>, <minecraft:netherrack>],
	 [<minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>]]);
	 
	 //Triglicite
recipes.addShaped(<terra:triglicite> * 32,
	[[<minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>],
	 [<minecraft:netherrack>, <ore:nuggetCobalt>, <minecraft:netherrack>],
	 [<minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>]]);
	 
	//Alikite
recipes.addShaped(<terra:alikite> * 32,
	[[<minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>],
	 [<minecraft:netherrack>, <ore:nuggetEmerald>, <minecraft:netherrack>],
	 [<minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>]]);
	 
//Imperial quartize
recipes.addShaped(<terra:imperialquartzite_stone> * 32,
	[[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
	 [<minecraft:stone>, <ore:nuggetTin>, <minecraft:stone>],
	 [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
	 
	 //Pink quartize
recipes.addShaped(<terra:pinkquartzite_stone> * 32,
	[[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
	 [<minecraft:stone>, <ore:nuggetAlumite>, <minecraft:stone>],
	 [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
	 
	 //Red quartzite
recipes.addShaped(<terra:redquartzite_stone> * 32,
	[[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
	 [<minecraft:stone>, <ore:nuggetIron>, <minecraft:stone>],
	 [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);