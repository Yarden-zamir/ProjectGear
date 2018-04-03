import crafttweaker.item.IItemStack;

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

//Make vector plates more expensive
recipes.removeShaped(<darkutils:trap_move>);
recipes.addShaped(<darkutils:trap_move> * 4,
[[<darkutils:material:0>, <darkutils:material:0>, <darkutils:material:0>],
 [<immersiveengineering:conveyor:0>, <immersiveengineering:conveyor:0>, <immersiveengineering:conveyor:0>]]);
recipes.addShaped(<darkutils:trap_move> * 4,
[[<quark:black_ash:0>, <quark:black_ash:0>, <quark:black_ash:0>],
 [<immersiveengineering:conveyor:0>, <immersiveengineering:conveyor:0>, <immersiveengineering:conveyor:0>]]);


 //Wither ash:
recipes.addShapeless(<quark:black_ash>, [<darkutils:material:0>]);
recipes.addShapeless(<darkutils:material:0>, [<quark:black_ash>]);
recipes.addShapeless(<darkutils:material:0> * 4, [<tconstruct:materials:17>]);
