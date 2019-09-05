import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


val craftingToDisable =[
	// Gears - Use Thermal Foundation gears instead
	<buildcraftcore:gear_wood>,
	<buildcraftcore:gear_stone>,
	<buildcraftcore:gear_gold>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

val itemsToDisable =[
	<buildcraftcore:gear_wood>,
	<buildcraftcore:gear_stone>,
	<buildcraftcore:gear_gold>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

recipes.removeShaped(<buildcraftcore:gear_iron>);

// Manual auto workbench disabled through the configs
// The laser powered workbench is still enabled

// You can also craft the mining well with an iron pickaxe head instead of an iron pickaxe. The head conveniently stacks to 64.
recipes.addShaped(<buildcraftfactory:mining_well>,
    [[<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <ore:gearIron>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <tconstruct:pick_head>.withTag({Material: "iron"}), <minecraft:iron_ingot>]]);
