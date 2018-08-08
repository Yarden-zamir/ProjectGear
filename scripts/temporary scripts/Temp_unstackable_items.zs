// Bayonet recipe removal
recipes.remove(<immersiveengineering:toolupgrade:4>);
 
// Bayonet: Iron Sword -> Iron Sword Blade
recipes.addShaped(<immersiveengineering:toolupgrade:4>,
    [[<tconstruct:sword_blade>.withTag({Material: "iron"}), <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:plankTreatedWood>]]);
 
// Zombie Pigman Charm Fragment: Gold Sword -> Golden Carrot
recipes.addShaped(<xreliquary:mob_charm_fragment:5>,
    [[<xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>],
    [<minecraft:rotten_flesh>, <minecraft:golden_carrot>, <minecraft:rotten_flesh>],
    [<xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>, <xreliquary:mob_ingredient:6>]]);
   
// Block Breaker (Project Red) recipe removal
recipes.remove(<projectred-expansion:machine2>);
 
// Block Breaker (Project Red): Iron Pickaxe -> Iron Pickaxe Head
recipes.addShaped(<projectred-expansion:machine2>,
    [[<ore:cobblestone>, <tconstruct:pick_head>.withTag({Material: "iron"}), <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:piston>, <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]]);
    
// Block Breaker (Gadgetry Machines) recipe removal
recipes.remove(<gadgetrymachines:breaker>);

// Block Breaker (Gadgetry Machines) Iron Pickaxe -> Iron Pickaxe Head
recipes.addShaped(<gadgetrymachines:breaker>,
    [[null, <minecraft:iron_ingot>, null],
    [<minecraft:iron_ingot>, <tconstruct:pick_head>.withTag({Material: "iron"}), <minecraft:iron_ingot>], 
    [<minecraft:redstone>, <ore:ingotSteel>, <minecraft:redstone>]]);

// Block Breaker (Random Things) recipe removal
recipes.remove(<randomthings:blockbreaker>);
 
// Block Breaker (Random Things): Iron Pickaxe -> Iron Pickaxe Head
recipes.addShaped(<randomthings:blockbreaker>,
    [[<ore:cobblestone>, <ore:partPickHead>, <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:redstone_torch>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
 
// Mining Well recipe removal
recipes.remove(<buildcraftfactory:mining_well>);
 
// Mining Well: Iron Pickaxe -> Iron Pickaxe Head
recipes.addShaped(<buildcraftfactory:mining_well>,
    [[<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <ore:gearIron>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <tconstruct:pick_head>.withTag({Material: "iron"}), <minecraft:iron_ingot>]]);
   
// Lumbermill recipe removal
recipes.remove(<extratrees:machine>);
 
// Lumbermill: Iron Axe -> Iron Axe Head
recipes.addShaped(<extratrees:machine>,
    [[<extratrees:misc:2>, <tconstruct:axe_head>.withTag({Material: "iron"}), <extratrees:misc:2>],
    [<minecraft:glass>, <forestry:sturdy_machine>, <ore:blockGlassColorless>],
    [<extratrees:misc:2>, <ore:gearBronze>, <extratrees:misc:2>]]);
   
// Dispenser recipe removal
recipes.remove(<minecraft:dispenser>);
 
// Dispenser: Bow -> Piston
recipes.addShaped(<minecraft:dispenser>,
    [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:piston>, <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]]);
   
// Range Upgrade (Pneumaticcraft) recipe removal
recipes.remove(<pneumaticcraft:range_upgrade>);
 
// Range Upgrade (Pneumaticcraft): Bow -> Piston
recipes.addShaped(<pneumaticcraft:range_upgrade>,
    [[<minecraft:dye:4>, <minecraft:arrow>, <minecraft:dye:4>],
    [<minecraft:arrow>, <minecraft:piston>, <minecraft:arrow>],
    [<minecraft:dye:4>, <minecraft:arrow>, <minecraft:dye:4>]]);
