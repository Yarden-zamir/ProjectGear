import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IItemStack;

//Script by DolphinBlaster
//Makes Immersive Engineering relays and wire connectors require Magneticraft wire connectors. These must be made in the Thermionic Fabricator.

/*
// LV Wire Connector recipe removal
recipes.remove(<immersiveengineering:connector>);
 
// LV Wire Connector Electric Connector recipe
recipes.addShaped(<immersiveengineering:connector> * 4,
    [[null, <magneticraft:connector>, null],
    [<minecraft:hardened_clay>, <ore:ingotCopper>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <ore:ingotCopper>, <minecraft:hardened_clay>]]);

// LV Wire Relay recipe removal
recipes.remove(<immersiveengineering:connector:1>);
 
// LV Wire Relay Electric Connector recipe
recipes.addShapedMirrored(<immersiveengineering:connector:1> * 8,
    [[null, null, null],
    [null, <magneticraft:connector>, null],
    [<minecraft:hardened_clay>, <ore:ingotCopper>, <minecraft:hardened_clay>]]);
*/
// MV Wire Connector recipe removal
recipes.remove(<immersiveengineering:connector:2>);
 
// MV Wire Connector Electric Connector recipe
recipes.addShaped(<immersiveengineering:connector:2> * 4,
    [[null, <magneticraft:connector>, null],
    [<minecraft:hardened_clay>, <minecraft:iron_ingot>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <minecraft:iron_ingot>, <minecraft:hardened_clay>]]);
 
// MV Wire Relay recipe removal
recipes.remove(<immersiveengineering:connector:3>);
 
// MV Wire Relay Electric Connector recipe
recipes.addShapedMirrored(<immersiveengineering:connector:3> * 8,
    [[null, null, null],
    [null, <magneticraft:connector>, null],
    [<minecraft:hardened_clay>, <minecraft:iron_ingot>, <minecraft:hardened_clay>]]);
	
//Removing Industrial Squeezer Leather Recipe
mods.immersiveengineering.Squeezer.removeItemRecipe(<minecraft:leather>);

//Change aluminum wire to tin wire
<immersiveengineering:material:22>.displayName = "Tin Wire";
recipes.addShapeless(<immersiveengineering:material:22>, [<ore:plateTin>, <minecraft:shears:*>.transformDamage()]);
recipes.addShapeless(<immersiveengineering:material:22>, [<ore:plateTin>, <immersiveengineering:tool:1>]);

mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:22>);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:22> * 2, <ore:ingotTin>, <immersiveengineering:mold:4>, 2000);

// Faraday Armor recipe removal
val craftingToDisable =[
    <immersiveengineering:faraday_suit_head>,
    <immersiveengineering:faraday_suit_chest>,
    <immersiveengineering:faraday_suit_legs>,
    <immersiveengineering:faraday_suit_feet>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);
 
// Faraday Armor (Aluminum plate replaced with Tin plate) recipes
// Faraday Helmut
recipes.addShapedMirrored(<immersiveengineering:faraday_suit_head>,
    [[null, null, null],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>]]);
// Faraday Chestplate
recipes.addShaped(<immersiveengineering:faraday_suit_chest>,
    [[<ore:plateTin>, null, <ore:plateTin>],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
// Faraday Leggings
recipes.addShaped(<immersiveengineering:faraday_suit_legs>,
    [[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>]]);
// Faraday Boots
recipes.addShapedMirrored(<immersiveengineering:faraday_suit_feet>,
    [[null, null, null],
    [<ore:plateTin>, null, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>]]);
	
// Crusher: Nickel ore recipe removal
mods.immersiveengineering.Crusher.removeRecipesForInput(<thermalfoundation:ore:5>);
 
// Crusher: Nickel ore (without Platinum dust) recipe
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:69> * 2, <ore:oreNickel>, 2048);