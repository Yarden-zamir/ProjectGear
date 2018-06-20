//This script contains temporary recipes to balance the pack while more permanent recipes are being designed. Nothing here is final, and nothing here will be on the diagram.


//Turn scraps to leather:
	//Carpenter step:
mods.forestry.Carpenter.addRecipe(<contenttweaker:oiled_leather>, [[<terraqueous:item_main:100>, <terraqueous:item_main:100>], [<terraqueous:item_main:100>, <terraqueous:item_main:100>]], 30, <liquid:seed.oil> * 100);
	//Drying rack step:

mods.tconstruct.Drying.addRecipe(<minecraft:leather>, <contenttweaker:oiled_leather>, 6000);