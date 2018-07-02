#Script by xDorito

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