import crafttweaker.item.IIngredient;
 
// stone gears
mods.tconstruct.Casting.addTableRecipe(<buildcraftcore:gear_stone>, <tconstruct:cast_custom:4>, <liquid:stone>, 576);
recipes.addShaped("stone_gear", <buildcraftcore:gear_stone>,
    [[null, <ore:stone>, null],
    [<ore:stone>, <ore:gearWood>, <ore:stone>],
    [null, <ore:stone>, null]]);
mods.immersiveengineering.MetalPress.addRecipe(<buildcraftcore:gear_stone>, <ore:stone>, <immersiveengineering:mold:1>, 2000, 4);
 
 
// diamond gears
mods.immersiveengineering.MetalPress.addRecipe(<buildcraftcore:gear_diamond>, <ore:gemDiamond>, <immersiveengineering:mold:1>, 2000, 4);
recipes.addShaped("diamond_gear", <buildcraftcore:gear_diamond>,
    [[null, <ore:gemDiamond>, null],
    [<ore:gemDiamond>, <ore:gearWood>, <ore:gemDiamond>],
    [null, <ore:gemDiamond>, null]]);