#Script by xDorito:

//ProjectRed Jetpack Recipe
recipes.remove(<projectred-expansion:jetpack>);
recipes.addShaped(<projectred-expansion:jetpack>,
 [[<projectred-expansion:charged_battery>, null, <projectred-expansion:charged_battery>],
  [<projectred-expansion:charged_battery>, <minecraft:iron_chestplate>, <projectred-expansion:charged_battery>],
  [<minecraft:diamond>, <projectred-expansion:machine2:5>, <minecraft:diamond>]]);
  
//Boron Spaxelhoe to Osmium Spaxelhoe
recipes.remove(<nuclearcraft:spaxelhoe_boron>);
recipes.addShapeless(<nuclearcraft:spaxelhoe_boron> , [<tconstruct:tough_tool_rod>.withTag({Material:"iron"}), <tconstruct:axe_head>.withTag({Material:"osmium"}), <tconstruct:pick_head>.withTag({Material:"osmium"}), <tconstruct:shovel_head>.withTag({Material:"osmium"}), <tconstruct:sword_blade>.withTag({Material:"osmium"})]);
<nuclearcraft:spaxelhoe_boron>.displayName = "Osmium Spaxelhoe";

#Scripts by DolphinBlaster:

var nuggetEnderium = <ore:nuggetEnderium>;
var nuggetTerrasteel = <ore:nuggetTerrasteel>;
var toolCasing = <thermalfoundation:material:640>;
var woodenGrip = <immersiveengineering:material:13>;
 
// Fluxsaw (Resonant) recipe removal
recipes.remove(<thermalinnovation:saw:4>);
 
// Fluxsaw (Resonant) Enderium recipe
recipes.addShaped(<thermalinnovation:saw:4>,
    [[<thermalfoundation:material:657>, nuggetTerrasteel, null],
    [nuggetTerrasteel, toolCasing, nuggetTerrasteel],
    [null, woodenGrip, nuggetTerrasteel]]);
   
// Fluxsaw (Resonant) Terrasteel recipe
recipes.addShaped(<thermalinnovation:saw:4>,
    [[<thermalfoundation:material:657>, nuggetTerrasteel, null],
    [nuggetTerrasteel, toolCasing, nuggetTerrasteel],
    [null, woodenGrip, nuggetTerrasteel]]);
   
// Fluxbore (Resonant) recipe removal
recipes.remove(<thermalinnovation:drill:4>);
 
// Fluxbore (Resonant) Enderium recipe
recipes.addShaped(<thermalinnovation:drill:4>,
    [[<ore:drillheadIron>, nuggetTerrasteel, null],
    [nuggetTerrasteel, toolCasing, nuggetTerrasteel],
    [null, woodenGrip, nuggetTerrasteel]]);
   
// Fluxbore (Resonant) Terrasteel recipe
recipes.addShaped(<thermalinnovation:drill:4>,
    [[<ore:drillheadIron>, nuggetTerrasteel, null],
    [nuggetTerrasteel, toolCasing, nuggetTerrasteel],
    [null, woodenGrip, nuggetTerrasteel]]);
   
// Alchemical Quiver (Resonant) recipe removal
recipes.remove(<thermalinnovation:quiver:4>);
 
// Alchemical Quiver (Resonant) Enderium recipe
recipes.addShaped(<thermalinnovation:quiver:4>,
    [[<minecraft:glass_bottle>, nuggetTerrasteel, null],
    [nuggetTerrasteel, toolCasing, nuggetTerrasteel],
    [null, woodenGrip, nuggetTerrasteel]]);
   
// Alchemical Quiver (Resonant) Terrasteel recipe
recipes.addShaped(<thermalinnovation:quiver:4>,
    [[<minecraft:glass_bottle>, nuggetTerrasteel, null],
    [nuggetTerrasteel, toolCasing, nuggetTerrasteel],
    [null, woodenGrip, nuggetTerrasteel]]);
 
// Hypoinfuser (Resonant) recipe removal
recipes.remove(<thermalinnovation:injector:4>);
 
// Hypoinfuser (Resonant) Enderium recipe
recipes.addShaped(<thermalinnovation:injector:4>,
    [[<rftools:syringe>, nuggetTerrasteel, null],
    [nuggetTerrasteel, toolCasing, nuggetTerrasteel],
    [null, woodenGrip, nuggetTerrasteel]]);
   
// Hypoinfuser (Resonant) Terrasteel
recipes.addShaped(<thermalinnovation:injector:4>,
    [[<rftools:syringe>, nuggetTerrasteel, null],
    [nuggetTerrasteel, toolCasing, nuggetTerrasteel],
    [null, woodenGrip, nuggetTerrasteel]]);
   
// Fluxomagnet (Resonant) recipe removal
recipes.remove(<thermalinnovation:magnet:4>);
 
// Fluxomagnet (Resonant) Enderium recipe
recipes.addShaped(<thermalinnovation:magnet:4>,
    [[null, <thermalfoundation:material:515>, null],
    [<thermalfoundation:material:515>, toolCasing, nuggetTerrasteel],
    [null, nuggetTerrasteel, <immersiveengineering:wirecoil>]]);
   
// Fluxomagnet (Resonant) Terrasteel recipe
recipes.addShaped(<thermalinnovation:magnet:4>,
    [[null, <thermalfoundation:material:515>, null],
    [<thermalfoundation:material:515>, toolCasing, nuggetTerrasteel],
    [null, nuggetTerrasteel, <immersiveengineering:wirecoil>]]);