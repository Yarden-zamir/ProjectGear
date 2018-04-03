//Note: You can get limestone, basalt and marble by converting their Quark equivalents using the Forge Lexicon
//or a storage drawer with a conversion upgrade. You can get slate in the same way using Rustic's slate.

	//Black diorite
recipes.addShapedMirrored(<terra:blackdiorite_stone> * 4,
	[[<minecraft:stone:3>, <quark:basalt>],
	 [<quark:basalt>, <minecraft:stone:3>]]);

	//Pumice
recipes.addShapedMirrored(<terra:pumice_stone> * 4,
	[[<minecraft:stone:0>, <tconstruct:brownstone:0>],
	 [<tconstruct:brownstone:0>, <minecraft:stone:0>]]);
	 
	//Green schist
recipes.addShapedMirrored(<terra:greenschist_stone> * 4,
	[[<ore:gemPrismarine>, <minecraft:stone:3>],
	 [<minecraft:stone:3>, <ore:gemPrismarine>]]);

	//Blue schist
recipes.addShapedMirrored(<terra:blueschist_stone> * 4,
	[[<minecraft:stone:3>, <ore:gemApatite>],
	 [<ore:gemApatite>, <minecraft:stone:3>]]);

	//Scoria
recipes.addShapedMirrored(<terra:scoria_stone> * 4,
	[[<minecraft:netherbrick>, <minecraft:stone:0>],
	 [<minecraft:stone:0>, <minecraft:netherbrick>]]);

	//Soapstone
recipes.addShapedMirrored(<terra:soapstone_stone> * 4,
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
	 
	//Migmatite
recipes.addShapedMirrored(<terra:migmatite_stone> * 4,
	[[<ore:stoneMarble>, <ore:stoneSlate>],
	 [<ore:stoneSlate>, <ore:stoneMarble>]]);
	 
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