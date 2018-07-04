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
mods.immersiveengineering.MetalPress.addRecipe(blitzRod, <xreliquary:mob_ingredient:6>, rodMold, 2000, 8);
 
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