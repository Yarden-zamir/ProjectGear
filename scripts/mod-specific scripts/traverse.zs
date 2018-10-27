#Script by Dr.Max
// Traverse Grass
furnace.addRecipe(<traverse:dead_grass>, <minecraft:double_plant:2>, 0.5);
recipes.addShapeless(<traverse:cold_grass>, [<traverse:dead_grass>, <ore:blockIce>]);

// Cold Grass recipe (Tall grass + Ice)
recipes.addShapeless(<traverse:cold_grass>,
    [<minecraft:tallgrass:1>,<minecraft:ice>]);