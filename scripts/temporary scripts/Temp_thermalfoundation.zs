#Credit to DolphinBlaster for writing this script

var etherium = <valkyrienwarfareworld:etheriumcrystal>;
var rodMold = <immersiveengineering:mold:2>;
var blitzRod = <thermalfoundation:material:2050>;
var blitzPowder = <thermalfoundation:material:2051>;
var blizzRod = <thermalfoundation:material:2048>;
var blizzPowder = <thermalfoundation:material:2049>;
var basalzRod = <thermalfoundation:material:2052>;
var basalzPowder = <thermalfoundation:material:2053>;
var blazeRod = <minecraft:blaze_rod>;
var blazePowder = <minecraft:blaze_powder>;
var aeroDust = <thermalfoundation:material:1026>;
var pyroDust = <thermalfoundation:material:1024>;
var cryoDust = <thermalfoundation:material:1025>;
var petrolDust = <thermalfoundation:material:1027>;
 
// Metal Press recipes
 
// Blitz Rod Metal Press recipe
mods.immersiveengineering.MetalPress.addRecipe(blitzRod, etherium, rodMold, 2000, 8);
 
// Blizz Rod Metal Press recipe
mods.immersiveengineering.MetalPress.addRecipe(blizzRod, <minecraft:packed_ice>, rodMold, 2000, 8);
 
// Basalz Rod Metal Press recipe
mods.immersiveengineering.MetalPress.addRecipe(basalzRod, <xreliquary:mob_ingredient:6>, rodMold, 2000, 8);
 
// Blaze Rod Metal Press recipe
mods.immersiveengineering.MetalPress.addRecipe(blazeRod, blazePowder, rodMold, 2000, 8);
 
 
// Crusher (Immersive Engineering) recipes
// Blitz Rod Crusher recipe
mods.immersiveengineering.Crusher.addRecipe(blitzPowder * 4, blitzRod, 2048, etherium, 0.5);
 
// Blizz Rod Crusher recipe
mods.immersiveengineering.Crusher.addRecipe(blizzPowder * 4, blizzRod, 2048, <minecraft:ice>, 0.5);
 
// Basalz Rod Crusher Recipe
mods.immersiveengineering.Crusher.addRecipe(basalzPowder * 4, basalzRod, 2048, <immersivepetroleum:material>, 0.5);
 
// Squeezer (Integrated Dynamics) recipes
// Blitz Rod Squeezer recipe
mods.integrateddynamics.Squeezer.addRecipe(blitzRod, blitzPowder * 6, null);
 
// Blizz Rod Squeezer recipe
mods.integrateddynamics.Squeezer.addRecipe(blizzRod, blizzPowder * 6, null);
 
// Basalz Rod Squeezer recipe
mods.integrateddynamics.Squeezer.addRecipe(basalzRod, basalzPowder * 6, null);
 
// Blaze Rod Squeezer recipe
mods.integrateddynamics.Squeezer.addRecipe(blazeRod, blazePowder * 6, null);
 
// Drill Grinder (Factory Tech) recipes
// Blitz Drill Grinder Recipe
mods.factorytech.DrillGrinder.addRecipe(blitzPowder * 6, blitzRod, false);
 
// Blizz Drill Grinder Recipe
mods.factorytech.DrillGrinder.addRecipe(blizzPowder * 6, blizzRod, false);
 
// Basalz Drill Grinder Recipe
mods.factorytech.DrillGrinder.addRecipe(basalzPowder * 6, basalzRod, false);
 
// Blaze Drill Grinder Recipe
mods.factorytech.DrillGrinder.addRecipe(blazePowder * 6, blazeRod, false);
 
// Thermal Foundation Elemental Dust recipes
// Aerotheum Dust recipe removal
recipes.remove(aeroDust);
 
//Aerotheum Dust recipe
recipes.addShapeless(aeroDust * 2,
    [blitzPowder,blitzPowder,etherium,<xreliquary:mob_ingredient:5>]);
 
// Cryotheum Dust recipe removal
recipes.remove(cryoDust);
 
// Cryotheum Dust recipe
recipes.addShapeless(cryoDust * 2,
    [blizzPowder,blizzPowder,<minecraft:ice>,<xreliquary:mob_ingredient:10>]);
 
// Petrotheum Dust recipe removal
recipes.remove(petrolDust);
 
// Petrotheum Dust recipe (Bitumen)
recipes.addShapeless(petrolDust * 2,
    [basalzPowder,basalzPowder,<immersivepetroleum:material>,<ore:itemSlag>]);
 
// Petrotheum Dust recipe (Bituminous Peat)
recipes.addShapeless(petrolDust * 2,
    [basalzPowder,basalzPowder,<forestry:bituminous_peat>,<ore:itemSlag>]);
 
// Pyrotheum Dust recipe removal
recipes.remove(pyroDust);
 
// Pyrotheum Dust recipe
recipes.addShapeless(pyroDust * 2,
    [blazePowder,blazePowder,<xreliquary:mob_ingredient:7>,<terraqueous:item_main:251>]);
	
 
// Mana Dust recipes
var manaDust = <thermalfoundation:material:1028>;

recipes.addShapeless(manaDust * 4,
    [<botania:manaresource:23>,<projectred-core:resource_item:510>,<botania:manaresource:1>,<botania:manabottle>]);
   
recipes.addShapeless(manaDust * 4,
[<ore:dustCobalt>,<projectred-core:resource_item:510>,<minecraft:ender_pearl>,<redstonearsenal:material>]);


// Redstone Reception Coil recipe removal
recipes.remove(<thermalfoundation:material:513>);
 
// Redstone Reception Coil Thermionic Fabricator recipe
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:513>,
    [[null,null,<minecraft:redstone>],
    [null,<minecraft:gold_ingot>,null],
    [<minecraft:redstone>,null,null]],
    <liquid: glass> * 500);
 
// Remove Lines 99 - 106 Temp_ingot_recipe_fix.zs (Outdated Redstone Transmission Coil recipe)
 
// Redstone Transmission Coil Thermionic Fabricator recipe
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:514>,
    [[null,null,<minecraft:redstone>],
    [null,<ore:ingotTin>,null],
    [<minecraft:redstone>,null,null]],
    <liquid: glass> * 500);
   
// Redstone Conductance Coil recipe removal
recipes.remove(<thermalfoundation:material:515>);
 
// Redstone Conductance Coil Thermionic Fabricator recipe
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:515>,
    [[<minecraft:redstone>,null,null],
    [null,<ore:ingotElectrum>,null],
    [null,null,<minecraft:redstone>]],
    <liquid: glass> * 500);
   
// Redstone Servo recipe removal
recipes.remove(<thermalfoundation:material:512>);
 
// Redstone Servo Iron and Nickel Thermionic Fabricator recipes
// Iron recipe
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:512>,
    [[null,<minecraft:redstone>,null],
    [null,<minecraft:iron_ingot>,null],
    [null,<minecraft:redstone>,null]],
    <liquid: glass> * 500);
// Nickel recipe
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:512>,
    [[null,<minecraft:redstone>,null],
    [null,<ore:ingotNickel>,null],
    [null,<minecraft:redstone>,null]],
    <liquid: glass> * 500);
   
// Tool Casing recipe removal
recipes.remove(<thermalfoundation:material:640>);
 
// Tool Casing Thermionic Fabricator recipe
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:640>,
    [[null,<minecraft:redstone>,null],
    [<minecraft:gold_ingot>,<minecraft:redstone>,<minecraft:gold_ingot>],
    [<minecraft:redstone>,<minecraft:iron_ingot>,<minecraft:redstone>]],
    <liquid: glass> * 500);