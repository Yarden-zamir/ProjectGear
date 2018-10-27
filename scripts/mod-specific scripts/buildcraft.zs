import crafttweaker.item.IIngredient;
 
// stone gears
mods.tconstruct.Casting.addTableRecipe(<buildcraftcore:gear_stone>, <tconstruct:cast_custom:4>, <liquid:stone>, 576);
recipes.addShaped("gear_shaped_stone_gear", <buildcraftcore:gear_stone>,
    [[null, <ore:stone>, null],
    [<ore:stone>, <ore:gearWood>, <ore:stone>],
    [null, <ore:stone>, null]]);
mods.immersiveengineering.MetalPress.addRecipe(<buildcraftcore:gear_stone>, <ore:stone>, <immersiveengineering:mold:1>, 2000, 4);
 
 
// diamond gears
mods.immersiveengineering.MetalPress.addRecipe(<buildcraftcore:gear_diamond>, <ore:gemDiamond>, <immersiveengineering:mold:1>, 2000, 4);
recipes.addShaped("gear_shaped_diamond_gear", <buildcraftcore:gear_diamond>,
    [[null, <ore:gemDiamond>, null],
    [<ore:gemDiamond>, <ore:gearWood>, <ore:gemDiamond>],
    [null, <ore:gemDiamond>, null]]);

// Manual auto workbench disabled through the configs
// The laser powered workbench is still enabled

// You can also craft the mining well with an iron pickaxe head instead of an iron pickaxe. The head conveniently stacks to 64.
recipes.addShaped(<buildcraftfactory:mining_well>,
    [[<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <ore:gearIron>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <tconstruct:pick_head>.withTag({Material: "iron"}), <minecraft:iron_ingot>]]);
