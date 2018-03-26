  val electrode = <immersiveengineering:graphite_electrode>;
  val graphite = <immersiveengineering:material:19>;
  
  val copperOre = <ore:oreCopper>;
  val tinOre = <ore:oreTin>;
  val ironOre = <ore:oreIron>;
  val goldOre = <ore:oreGold>;
  val silverOre = <ore:oreSilver>;
  val aluminumOre = <ore:oreAluminum>;
  
  val copperIngot = <thermalfoundation:material:128>;
  val tinIngot = <thermalfoundation:material:129>;
  val ironIngot = <minecraft:iron_ingot>;
  val goldIngot = <minecraft:gold_ingot>;
  val aluminumIngot = <thermalfoundation:material:132>;
  val silverIngot = <thermalfoundation:material:130>;
  
  val copperDust = <thermalfoundation:material:64>;
  val tinDust = <thermalfoundation:material:65>;
  val ironDust = <thermalfoundation:material:0>;
  val goldDust = <thermalfoundation:material:1>;
  val silverDust = <thermalfoundation:material:66>;
  val aluminumDust = <thermalfoundation:material:68>;
  
  val slag = <immersiveengineering:material:7>;
  

  recipes.addShaped(electrode.withTag({ench: [{lvl: 1000 as short, id: 34 as short}], RepairCost: 0, display: {Name: "Reinforced Graphite Electrode"}}),
    [[electrode, graphite, electrode],
     [electrode, graphite, electrode],
     [electrode, graphite, electrode]]);
	 
//Template:

/*

//Arc Furnace
//OutputStack, InputStack, SlagOutput, Time in Ticks, Energy per Tick, AdditiveArray, RecipeTypeString //Either create your own NEI pages with custom strings or use original ones
mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:gravel>, <minecraft:dirt> * 9, <ImmersiveEngineering:material:13>, 4600, 3600, [<ImmersiveEngineering:fluidContainers:4>], "Purifying");
//OutputStack
mods.immersiveengineering.ArcFurnace.removeRecipe(<ImmersiveEngineering:metal:7>);

//Crusher
//OutputStack1, InputStack, Energy, OutputStack2, OutputStack2Chance //Chance in Decimals
mods.immersiveengineering.Crusher.addRecipe(<ImmersiveEngineering:metal> * 8, <ImmersiveEngineering:storage:8>, 8000, <minecraft:iron_ingot>, 0.5);
//OutputStack
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:blaze_powder>);

*/

//Make the Arc Furnace triple ores instead of double them:


mods.immersiveengineering.ArcFurnace.removeRecipe(ironIngot);
mods.immersiveengineering.ArcFurnace.addRecipe(ironIngot * 3, ironOre, slag, 4600, 3600, null, "Purifying");
mods.immersiveengineering.ArcFurnace.addRecipe(ironIngot, ironDust, null, 4600, 3600, null, "Purifying");

mods.immersiveengineering.ArcFurnace.removeRecipe(goldIngot);
mods.immersiveengineering.ArcFurnace.addRecipe(goldIngot * 3, goldOre, slag, 4600, 3600, null, "Purifying");
mods.immersiveengineering.ArcFurnace.addRecipe(goldIngot, goldDust, null, 4600, 3600, null, "Purifying");

mods.immersiveengineering.ArcFurnace.removeRecipe(copperIngot);
mods.immersiveengineering.ArcFurnace.addRecipe(copperIngot * 3, copperOre, slag, 4600, 3600, null, "Purifying");
mods.immersiveengineering.ArcFurnace.addRecipe(copperIngot, copperDust, null, 4600, 3600, null, "Purifying");

mods.immersiveengineering.ArcFurnace.removeRecipe(tinIngot);
mods.immersiveengineering.ArcFurnace.addRecipe(tinIngot * 3, tinOre, slag, 4600, 3600, null, "Purifying");
mods.immersiveengineering.ArcFurnace.addRecipe(tinIngot, tinDust, null, 4600, 3600, null, "Purifying");

mods.immersiveengineering.ArcFurnace.removeRecipe(silverIngot);
mods.immersiveengineering.ArcFurnace.addRecipe(silverIngot * 3, silverOre, slag, 4600, 3600, null, "Purifying");
mods.immersiveengineering.ArcFurnace.addRecipe(silverIngot, silverDust, null, 4600, 3600, null, "Purifying");

mods.immersiveengineering.ArcFurnace.removeRecipe(aluminumIngot);
mods.immersiveengineering.ArcFurnace.addRecipe(aluminumIngot * 3, aluminumOre, slag, 4600, 3600, null, "Purifying");
mods.immersiveengineering.ArcFurnace.addRecipe(aluminumIngot, aluminumDust, null, 4600, 3600, null, "Purifying");

//Make crusher triple ores instead of double them:

mods.immersiveengineering.Crusher.removeRecipe(ironDust);
mods.immersiveengineering.Crusher.addRecipe(ironDust * 3, ironOre, 8000, null, 0.5);

mods.immersiveengineering.Crusher.removeRecipe(copperDust);
mods.immersiveengineering.Crusher.addRecipe(copperDust * 3, copperOre, 8000, null, 0.5);

mods.immersiveengineering.Crusher.removeRecipe(silverDust);
mods.immersiveengineering.Crusher.addRecipe(silverDust * 3, silverOre, 8000, null, 0.5);

mods.immersiveengineering.Crusher.removeRecipe(tinDust);
mods.immersiveengineering.Crusher.addRecipe(tinDust * 3, tinOre, 8000, null, 0.5);

mods.immersiveengineering.Crusher.removeRecipe(goldDust);
mods.immersiveengineering.Crusher.addRecipe(goldDust * 3, goldOre, 8000, null, 0.5);

mods.immersiveengineering.Crusher.removeRecipe(aluminumDust);
mods.immersiveengineering.Crusher.addRecipe(aluminumDust * 3, aluminumOre, 8000, null, 0.5);

























