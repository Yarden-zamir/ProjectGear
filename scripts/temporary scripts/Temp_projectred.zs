import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
 
val itemsToDisable =[
    // Ruby Tools
    <projectred-exploration:ruby_axe>,
    <projectred-exploration:ruby_pickaxe>,
    <projectred-exploration:ruby_shovel>,
    <projectred-exploration:ruby_hoe>,
    <projectred-exploration:ruby_sword>,
    <projectred-exploration:ruby_saw>,
    // Sapphire Tools
    <projectred-exploration:sapphire_axe>,
    <projectred-exploration:sapphire_pickaxe>,
    <projectred-exploration:sapphire_shovel>,
    <projectred-exploration:sapphire_hoe>,
    <projectred-exploration:sapphire_sword>,
    <projectred-exploration:sapphire_saw>,
    // Peridot Tools
    <projectred-exploration:peridot_axe>,
    <projectred-exploration:peridot_pickaxe>,
    <projectred-exploration:peridot_shovel>,
    <projectred-exploration:peridot_hoe>,
    <projectred-exploration:peridot_sword>,
    <projectred-exploration:peridot_saw>,
    // Sickles
    <projectred-exploration:wooden_sickle>,
    <projectred-exploration:stone_sickle>,
    <projectred-exploration:iron_sickle>,
    <projectred-exploration:golden_sickle>,
    <projectred-exploration:ruby_sickle>,
    <projectred-exploration:sapphire_sickle>,
    <projectred-exploration:peridot_sickle>,
    <projectred-exploration:diamond_sickle>,
    // Electric Screwdriver
    <projectred-expansion:electric_screwdriver>,
    // Golden Saw
    <projectred-exploration:golden_saw>,
    // Ruby Armor
    <projectred-exploration:ruby_helmet>,
    <projectred-exploration:ruby_chestplate>,
    <projectred-exploration:ruby_leggings>,
    <projectred-exploration:ruby_boots>,
    // Sapphire Armor
    <projectred-exploration:sapphire_helmet>,
    <projectred-exploration:sapphire_chestplate>,
    <projectred-exploration:sapphire_leggings>,
    <projectred-exploration:sapphire_boots>,
    // Peridot Armor
    <projectred-exploration:peridot_helmet>,
    <projectred-exploration:peridot_chestplate>,
    <projectred-exploration:peridot_leggings>,
    <projectred-exploration:peridot_boots>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

// Screwdriver recipe removal
recipes.remove(<projectred-core:screwdriver>);
 
// Screwdriver Unbreakable recipe
recipes.addShaped(<projectred-core:screwdriver>.withTag({ench: [{lvl: 10, id: 34}]}),
    [[<minecraft:iron_ingot>, null, null],
    [null, <minecraft:iron_ingot>, <ore:dyeBlue>],
    [null, <ore:dyeBlue>, <minecraft:iron_ingot>]]);

//Alternative draw plate recipe
recipes.removeShaped(<projectred-core:drawplate>);
recipes.addShaped("draw_plate", <projectred-core:drawplate>,
    [[null, <ore:plateIron>, null],
    [<ore:plateIron>, <ore:gemDiamond>, <ore:plateIron>],
    [null, <ore:plateIron>, null]]);