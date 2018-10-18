import crafttweaker.item.IItemStack;

//Script by DolphinBlaster
 
var ingotCupronickel = <factorytech:ingot:2>;
var dustCupronickel = <factorytech:ore_dust:10>;
var blockCupronickel = <factorytech:oreblock:2>;
 
// Disables Cupronickel dust in favor of Constantan
val itemsToDisable =[
    dustCupronickel
] as IItemStack[];
 
scripts.functions.disableItems(itemsToDisable);
 
// Disables crafting of Cupronickel ingots, dusts, and blocks
val craftingToDisable =[
    ingotCupronickel,
    dustCupronickel,
    blockCupronickel
] as IItemStack[];
 
// Renames Cupronickel to "Burnt Constantan"
ingotCupronickel.displayName = "Burnt Constantan";
blockCupronickel.displayName = "Burnt Constantan Block";
dustCupronickel.displayName = "Burnt Constantan Dust";
 
// Adds furnace recipe for Burnt Constantan
furnace.addRecipe(blockCupronickel, <ore:blockConstantan>);
 
// Disables Cupronickel furnace recipes
furnace.remove(ingotCupronickel, dustCupronickel);
furnace.remove(ingotCupronickel, <factorytech:salvage:5>);
 
// Disables Cupronickel Electric Furnace (Factory Tech) recipes
mods.factorytech.ElectricFurnace.removeRecipe(ingotCupronickel);
mods.factorytech.ElectricFurnace.removeRecipe(ingotCupronickel * 3);
 
// Tempering Oven recipe removal
recipes.remove(<factorytech:temperer>);
 
// Tempering Oven: Cupronickel -> Constantan
recipes.addShaped(<factorytech:temperer>,
    [[<ore:ingotConstantan>, <factorytech:machinepart:90>, <ore:ingotConstantan>],
    [<minecraft:quartz_block>, null, <factorytech:machinepart:140>],
    [<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>]]);
   
// Machine Upgrade: Efficency recipe removal
recipes.remove(<factorytech:upgrade:4>);
 
// Machine Upgrade: Efficency: Cupronickel -> Constantan
recipes.addShaped(<factorytech:upgrade:4>,
    [[<ore:ingotConstantan>, <factorytech:intermediate:3>, <ore:ingotConstantan>],
    [<factorytech:intermediate:3>, <factorytech:machinepart:100>, <factorytech:intermediate:3>],
    [<ore:ingotConstantan>, <factorytech:intermediate:3>, <ore:ingotConstantan>]]);
   
// Machine Upgrade: Radius recipe removal
recipes.remove(<factorytech:upgrade:2>);
 
// Machine Upgrade: Radius: Cupronickel -> Constantan
recipes.addShaped(<factorytech:upgrade:2>,
    [[<ore:ingotConstantan>, <factorytech:machinepart:130>, <ore:ingotConstantan>],
    [<factorytech:machinepart:130>, <factorytech:machinepart:120>, <factorytech:machinepart:130>],
    [<ore:ingotConstantan>, <factorytech:machinepart:130>, <ore:ingotConstantan>]]);
   
// Blaze-contact Heating Element recipe removal
recipes.remove(<factorytech:machinepart:81>);
 
// Blaze-contact Heating Element: Cupronickel -> Constantan
recipes.addShaped(<factorytech:machinepart:81>,
    [[null, <ore:ingotConstantan>, null],
    [<ore:ingotConstantan>, null, <ore:ingotConstantan>],
    [<minecraft:blaze_rod>, null, <minecraft:blaze_rod>]]);
   
// Heating Element recipe removal
recipes.remove(<factorytech:machinepart:80>);
 
// Heating Element: Cupronickel -> Constantan
recipes.addShaped(<factorytech:machinepart:80>,
    [[null, <ore:ingotConstantan>, null],
    [<ore:ingotConstantan>, null, <ore:ingotConstantan>],
    [<minecraft:redstone>, null, <minecraft:redstone>]]);