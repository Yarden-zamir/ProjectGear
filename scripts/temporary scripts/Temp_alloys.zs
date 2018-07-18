import crafttweaker.item.IItemStack;
 
val itemsToDisable =[
  <projectred-core:resource_item:251>,  // Red Iron Compound
  <projectred-core:resource_item:252>  // Electrotine Iron Compound
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);
 
// Red Alloy Ingot recipes
// Red Alloy Furnace recipe removal
furnace.remove(<projectred-core:resource_item:103>);
 
// Red Alloy Ingot Arc Furnace recipe (1 Osmium Ingot + 8 Redstone)
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:103>, <ore:ingotOsmium>, null, 1000, 2048, [<minecraft:redstone> * 8], "Alloying");
 
// Red Alloy Ingot Alloy Kiln recipe
mods.immersiveengineering.AlloySmelter.addRecipe(<projectred-core:resource_item:103>, <ore:ingotOsmium>, <minecraft:redstone> * 8, 2000);
 
 
//Electrotine recipes
//Electrotine Furnace recipe removal
furnace.remove(<projectred-core:resource_item:104>);
 
// Electrotine Alloy Ingot Arc Furnace recipe (1 Osmium Ingot + 8 Electrotine)
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:104>, <ore:ingotOsmium>, null, 1000, 2048, [<projectred-core:resource_item:105> * 8], "Alloying");
 
// Electrotine Alloy Ingot Alloy Kiln recipe
mods.immersiveengineering.AlloySmelter.addRecipe(<projectred-core:resource_item:104>, <ore:ingotOsmium>, <projectred-core:resource_item:105> * 8, 2000);
 
 
// Reflective Alloy recipes
// Reflective Alloy Ingot recipe removal
recipes.remove(<refraction:reflective_alloy>);
 
// Reflective Alloy Ingot Arc Furnace recipe (1 Gold Ingot + 1 Osmium Ingot)
mods.immersiveengineering.ArcFurnace.addRecipe(<refraction:reflective_alloy>, <minecraft:gold_ingot>, null, 1000, 2048, [<ore:ingotOsmium>], "Alloying");
 
// Reflective Alloy Alloy Kiln recipe
mods.immersiveengineering.AlloySmelter.addRecipe(<refraction:reflective_alloy>, <minecraft:gold_ingot>, <ore:ingotOsmium>, 2000);

#Script segment by DolphinBlaster

// Electrum Block Laser Assembly Table recipe
mods.refraction.AssemblyTable.addRecipe("Electrum Block", <thermalfoundation:storage_alloy:1>,
    [<minecraft:gold_ingot> * 8, <ore:ingotSilver> * 8],
    16, 64, 255, 255, 255, 255, 0, 0);
   
// Lumium Block Laser Assembly Table recipe
mods.refraction.AssemblyTable.addRecipe("Lumium Block", <thermalfoundation:storage_alloy:6>,
    [<minecraft:glowstone> * 2, <ore:ingotOsmium> * 2, <ore:ingotTin> * 6],
    16, 64, 255, 255, 255, 255, 0, 0);
   
// Signalum Block Laser Assembly Table recipe
mods.refraction.AssemblyTable.addRecipe("Signalum Block", <thermalfoundation:storage_alloy:5>,
    [<minecraft:redstone> * 8, <ore:ingotOsmium> * 2, <ore:ingotCopper> * 6],
    16, 64, 255, 255, 64, 128, 0, 0);
   
// Enderium Block Laser Assembly Table recipe
mods.refraction.AssemblyTable.addRecipe("Enderium Block", <thermalfoundation:storage_alloy:7>,
    [<minecraft:ender_pearl> * 8, <ore:ingotOsmium> * 6, <ore:ingotElectrum> * 2],
    16, 64, 0, 0, 255, 255, 255, 255);
   
// Electrotine Block Laser Assembly Table recipe
mods.refraction.AssemblyTable.addRecipe("Electrotine Block", <projectred-exploration:stone:11>,
    [<minecraft:dye:4> * 2, <redstonearsenal:material> * 2],
    16, 64, 0, 0, 0, 0, 255, 255);