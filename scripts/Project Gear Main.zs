//Crafting

	//Make Wireless Charger use Immersive Engineering recipes
recipes.removeShaped(<wirelesscharger:wirelesscharger>);

recipes.addShaped(<wirelesscharger:wirelesscharger>,
	[[null, <immersiveengineering:metal_device1:8>, null],
	 [<ore:plateAluminum>, <immersiveengineering:metal_decoration0:3>, <ore:plateAluminum>],
	 [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);
	 
	 
	//Make Dark Utils vector plates more expensive
recipes.removeShaped(<darkutils:trap_move>);
recipes.addShaped(<darkutils:trap_move> * 4,
	[[<darkutils:material:0>, <darkutils:material:0>, <darkutils:material:0>],
	 [<immersiveengineering:conveyor:0>, <immersiveengineering:conveyor:0>, <immersiveengineering:conveyor:0>]]);
recipes.addShaped(<darkutils:trap_move> * 4,
	[[<quark:black_ash:0>, <quark:black_ash:0>, <quark:black_ash:0>],
	 [<immersiveengineering:conveyor:0>, <immersiveengineering:conveyor:0>, <immersiveengineering:conveyor:0>]]);
	 
	 
	//Convert similar items:
		//Chest:
recipes.addShapeless(<minecraft:chest>, [<ore:chestWood>]);
		//Wither ash:
recipes.addShapeless(<quark:black_ash>, [<darkutils:material:0>]);
recipes.addShapeless(<darkutils:material:0>, [<quark:black_ash>]);



//Convenient paper recipe:

recipes.addShapeless(<minecraft:paper> * 2, [<minecraft:book>]);
recipes.addShapeless(<minecraft:paper> * 3, [<minecraft:reeds> * 3]);

//XP bottle recipe
recipes.addShaped(<minecraft:experience_bottle>,
 [[<oreberries:essence_oreberry>, <oreberries:essence_oreberry>, <oreberries:essence_oreberry>],
  [<oreberries:essence_oreberry>, <minecraft:glass_bottle>, <oreberries:essence_oreberry>],
  [<oreberries:essence_oreberry>, <oreberries:essence_oreberry>, <oreberries:essence_oreberry>]]);

