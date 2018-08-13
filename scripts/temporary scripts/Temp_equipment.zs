import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

#Script by xDorito:

//ProjectRed Jetpack Recipe
recipes.remove(<projectred-expansion:jetpack>);
recipes.addShaped(<projectred-expansion:jetpack>,
 [[<projectred-expansion:charged_battery>, null, <projectred-expansion:charged_battery>],
  [<projectred-expansion:charged_battery>, <minecraft:iron_chestplate>, <projectred-expansion:charged_battery>],
  [<minecraft:diamond>, <projectred-expansion:machine2:5>, <minecraft:diamond>]]);
  
//Boron Spaxelhoe to Steel Spaxelhoe
recipes.remove(<nuclearcraft:spaxelhoe_boron>);
recipes.addShapeless(<nuclearcraft:spaxelhoe_boron> , [<tconstruct:tough_tool_rod>.withTag({Material:"steel"}), <tconstruct:axe_head>.withTag({Material:"steel"}), <tconstruct:pick_head>.withTag({Material:"steel"}), <tconstruct:shovel_head>.withTag({Material:"steel"}), <tconstruct:sword_blade>.withTag({Material:"steel"})]);
<nuclearcraft:spaxelhoe_boron>.displayName = "Steel Spaxelhoe";

#Scripts by DolphinBlaster:

var nuggetEnderium = <ore:nuggetEnderium>;
var nuggetTerrasteel = <ore:nuggetTerrasteel>;
var toolCasing = <thermalfoundation:material:640>;
var woodenGrip = <immersiveengineering:material:13>;
var nuggetSteel = <ore:nuggetSteel>;
var nuggetInvar = <ore:nuggetInvar>;

 
// Fluxsaw (Resonant) recipe removal
recipes.remove(<thermalinnovation:saw:4>);
 
// Fluxsaw (Resonant) Enderium recipe
recipes.addShaped(<thermalinnovation:saw:4>,
    [[<thermalfoundation:material:657>, nuggetEnderium, null],
    [nuggetEnderium, toolCasing, nuggetEnderium],
    [null, woodenGrip, nuggetEnderium]]);
   
// Fluxsaw (Resonant) Terrasteel recipe
recipes.addShaped(<thermalinnovation:saw:4>,
    [[<thermalfoundation:material:657>, nuggetTerrasteel, null],
    [nuggetTerrasteel, toolCasing, nuggetTerrasteel],
    [null, woodenGrip, nuggetTerrasteel]]);
   
// Fluxbore (Resonant) recipe removal
recipes.remove(<thermalinnovation:drill:4>);
 
// Fluxbore (Resonant) Enderium recipe
recipes.addShaped(<thermalinnovation:drill:4>,
    [[<thermalfoundation:material:656>, nuggetEnderium, null],
    [nuggetEnderium, toolCasing, nuggetEnderium],
    [null, woodenGrip, nuggetEnderium]]);
   
// Fluxbore (Resonant) Terrasteel recipe
recipes.addShaped(<thermalinnovation:drill:4>,
    [[<thermalfoundation:material:656>, nuggetTerrasteel, null],
    [nuggetTerrasteel, toolCasing, nuggetTerrasteel],
    [null, woodenGrip, nuggetTerrasteel]]);
   
// Alchemical Quiver (Resonant) recipe removal
recipes.remove(<thermalinnovation:quiver:4>);
 
// Alchemical Quiver (Resonant) Enderium recipe
recipes.addShaped(<thermalinnovation:quiver:4>,
    [[<minecraft:glass_bottle>, nuggetEnderium, null],
    [nuggetEnderium, toolCasing, nuggetEnderium],
    [null, woodenGrip, nuggetEnderium]]);
   
// Alchemical Quiver (Resonant) Terrasteel recipe
recipes.addShaped(<thermalinnovation:quiver:4>,
    [[<minecraft:glass_bottle>, nuggetTerrasteel, null],
    [nuggetTerrasteel, toolCasing, nuggetTerrasteel],
    [null, woodenGrip, nuggetTerrasteel]]);
 
// Hypoinfuser (Resonant) recipe removal
recipes.remove(<thermalinnovation:injector:4>);
 
// Hypoinfuser (Resonant) Enderium recipe
recipes.addShaped(<thermalinnovation:injector:4>,
    [[<rftools:syringe>, nuggetEnderium, null],
    [nuggetEnderium, toolCasing, nuggetEnderium],
    [null, woodenGrip, nuggetEnderium]]);
   
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
    [<thermalfoundation:material:515>, toolCasing, nuggetEnderium],
    [null, nuggetEnderium, <immersiveengineering:wirecoil>]]);
   
// Fluxomagnet (Resonant) Terrasteel recipe
recipes.addShaped(<thermalinnovation:magnet:4>,
    [[null, <thermalfoundation:material:515>, null],
    [<thermalfoundation:material:515>, toolCasing, nuggetTerrasteel],
    [null, nuggetTerrasteel, <immersiveengineering:wirecoil>]]);
	
//Craft hardened tools using steel or invar
//Scripts by DeviantCrafter

val itemsToDisable =[
  <thermalinnovation:saw:0>,
  <thermalinnovation:drill:0>,
  <thermalinnovation:quiver:0>,
  <thermalinnovation:injector:0>,
  <thermalinnovation:magnet:0>,
  <thermalinnovation:saw:2>,
  <thermalinnovation:drill:2>,
  <thermalinnovation:quiver:2>,
  <thermalinnovation:injector:2>,
  <thermalinnovation:magnet:2>,
  <thermalinnovation:saw:3>,
  <thermalinnovation:drill:3>,
  <thermalinnovation:quiver:3>,
  <thermalinnovation:injector:3>,
  <thermalinnovation:magnet:3>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

//Remove original recipes:

recipes.remove(<thermalinnovation:saw:1>);
recipes.remove(<thermalinnovation:drill:1>);
recipes.remove(<thermalinnovation:quiver:1>);
recipes.remove(<thermalinnovation:injector:1>);
recipes.remove(<thermalinnovation:magnet:1>);

//Steel:
	
	// Fluxbore (Hardened) steel recipe
recipes.addShaped(<thermalinnovation:drill:1>,
    [[<thermalfoundation:material:656>, nuggetSteel, null],
    [nuggetSteel, toolCasing, nuggetSteel],
    [null, woodenGrip, nuggetSteel]]);
	
	// Alchemical Quiver (Hardened) steel recipe
recipes.addShaped(<thermalinnovation:quiver:1>,
    [[<minecraft:glass_bottle>, nuggetSteel, null],
    [nuggetSteel, toolCasing, nuggetSteel],
    [null, woodenGrip, nuggetSteel]]);
	
	// Hypoinfuser (Hardened) steel recipe
recipes.addShaped(<thermalinnovation:injector:1>,
    [[<rftools:syringe>, nuggetSteel, null],
    [nuggetSteel, toolCasing, nuggetSteel],
    [null, woodenGrip, nuggetSteel]]);
	
	// Fluxomagnet (Hardened) steel recipe
recipes.addShaped(<thermalinnovation:magnet:1>,
    [[null, <thermalfoundation:material:515>, null],
    [<thermalfoundation:material:515>, toolCasing, nuggetEnderium],
    [null, nuggetEnderium, <immersiveengineering:wirecoil>]]);
	
	
	// Fluxsaw (Resonant) invar recipe
recipes.addShaped(<thermalinnovation:saw:1>,
    [[<thermalfoundation:material:657>, nuggetEnderium, null],
    [nuggetEnderium, toolCasing, nuggetEnderium],
    [null, woodenGrip, nuggetEnderium]]);
   
//Invar:
	// Fluxbore (Hardened) invar recipe
recipes.addShaped(<thermalinnovation:drill:1>,
    [[<thermalfoundation:material:656>, nuggetInvar, null],
    [nuggetInvar, toolCasing, nuggetInvar],
    [null, woodenGrip, nuggetInvar]]);
	
	// Alchemical Quiver (Hardened) invar recipe
recipes.addShaped(<thermalinnovation:quiver:1>,
    [[<minecraft:glass_bottle>, nuggetInvar, null],
    [nuggetInvar, toolCasing, nuggetInvar],
    [null, woodenGrip, nuggetInvar]]);
	
	// Hypoinfuser (Hardened) invar recipe
recipes.addShaped(<thermalinnovation:injector:1>,
    [[<rftools:syringe>, nuggetInvar, null],
    [nuggetInvar, toolCasing, nuggetInvar],
    [null, woodenGrip, nuggetInvar]]);
	
	// Fluxomagnet (Hardened) invar recipe
recipes.addShaped(<thermalinnovation:magnet:1>,
    [[null, <thermalfoundation:material:515>, null],
    [<thermalfoundation:material:515>, toolCasing, nuggetInvar],
    [null, nuggetInvar, <immersiveengineering:wirecoil>]]);
	
	// Fluxsaw (Resonant) invar recipe
recipes.addShaped(<thermalinnovation:saw:1>,
    [[<thermalfoundation:material:657>, nuggetInvar, null],
    [nuggetInvar, toolCasing, nuggetInvar],
    [null, woodenGrip, nuggetInvar]]);