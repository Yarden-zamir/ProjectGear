import crafttweaker.item.IItemStack;
 
val itemsToDisable =[
  <projectred-core:resource_item:251>,  // Red Iron Compound
  <projectred-core:resource_item:252>  // Electrotine Iron Compound
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);
 
// Red Alloy Ingot recipes
// Red Alloy Furnace recipe removal
furnace.remove(<projectred-core:resource_item:103>);
 
// Red Alloy Ingot Arc Furnace recipe (1 Tin Ingot + 8 Redstone)
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:103>, <ore:ingotTin>, null, 1000, 2048, [<minecraft:redstone> * 8], "Alloying");
 
// Red Alloy Ingot Alloy Kiln recipe
mods.immersiveengineering.AlloySmelter.addRecipe(<projectred-core:resource_item:103>, <ore:ingotTin>, <minecraft:redstone> * 8, 2000);
 
 
//Electrotine recipes
//Electrotine Furnace recipe removal
furnace.remove(<projectred-core:resource_item:104>);
 
// Electrotine Alloy Ingot Arc Furnace recipe (1 Tin Ingot + 8 Electrotine)
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:104>, <ore:ingotTin>, null, 1000, 2048, [<projectred-core:resource_item:105> * 8], "Alloying");
 
// Electrotine Alloy Ingot Alloy Kiln recipe
mods.immersiveengineering.AlloySmelter.addRecipe(<projectred-core:resource_item:104>, <ore:ingotTin>, <projectred-core:resource_item:105> * 8, 2000);
 
 
// Reflective Alloy recipes
// Reflective Alloy Ingot recipe removal
recipes.remove(<refraction:reflective_alloy>);
 
// Reflective Alloy Ingot Arc Furnace recipe (1 Gold Ingot + 1 Tin Ingot)
mods.immersiveengineering.ArcFurnace.addRecipe(<refraction:reflective_alloy>, <minecraft:gold_ingot>, null, 1000, 2048, [<ore:ingotTin>], "Alloying");
 
// Reflective Alloy Alloy Kiln recipe
mods.immersiveengineering.AlloySmelter.addRecipe(<refraction:reflective_alloy>, <minecraft:gold_ingot>, <ore:ingotTin>, 2000);

#Script segment by DolphinBlaster

// Electrum Block Laser Assembly Table recipe
mods.refraction.AssemblyTable.addRecipe("Electrum Block", <thermalfoundation:storage_alloy:1>,
    [<minecraft:gold_ingot> * 8, <ore:ingotSilver> * 8],
    16, 64, 255, 255, 255, 255, 0, 0);
   
// Lumium Block Laser Assembly Table recipe
mods.refraction.AssemblyTable.addRecipe("Lumium Block", <thermalfoundation:storage_alloy:6>,
    [<minecraft:glowstone> * 2, <ore:ingotTin> * 2, <ore:ingotTin> * 6],
    16, 64, 255, 255, 255, 255, 0, 0);
   
// Signalum Block Laser Assembly Table recipe
mods.refraction.AssemblyTable.addRecipe("Signalum Block", <thermalfoundation:storage_alloy:5>,
    [<minecraft:redstone> * 8, <ore:ingotTin> * 2, <ore:ingotCopper> * 6],
    16, 64, 255, 255, 64, 128, 0, 0);
   
// Enderium Block Laser Assembly Table recipe
mods.refraction.AssemblyTable.addRecipe("Enderium Block", <thermalfoundation:storage_alloy:7>,
    [<minecraft:ender_pearl> * 8, <ore:ingotTin> * 6, <ore:ingotElectrum> * 2],
    16, 64, 0, 0, 255, 255, 255, 255);
   
// Electrotine Block Laser Assembly Table recipe
mods.refraction.AssemblyTable.addRecipe("Electrotine Block", <projectred-exploration:stone:11>,
    [<minecraft:dye:4> * 2, <redstonearsenal:material> * 2],
    16, 64, 0, 0, 0, 0, 255, 255);
	
	
// localizations
game.setLocalization("tile.tconstruct.metal.alubrass.name","Gold Brass Block");
game.setLocalization("item.tconstruct.ingots.alubrass.name","Gold Brass Ingot");
game.setLocalization("item.tconstruct.nuggets.alubrass.name","Gold Brass Nugget");
game.setLocalization("fluid.tconstruct.alubrass.name","Molten Gold Brass");
 
// TiC smeltery
mods.tconstruct.Alloy.removeRecipe(<liquid:alubrass>);
mods.tconstruct.Alloy.addRecipe(<liquid:alubrass> * 4, [<liquid:gold> * 3, <liquid:tin> * 1]);
 
// ie kiln
mods.immersiveengineering.AlloySmelter.removeRecipe(<tconstruct:ingots:5>);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:ingots:5>*4, <ore:ingotTin>, <ore:ingotCopper>*3, 100);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:ingots:5>*4, <ore:ingotTin>, <ore:dustCopper>*3, 100);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:ingots:5>*4, <ore:dustTin>, <ore:ingotCopper>*3, 100);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:ingots:5>*4, <ore:dustTin>, <ore:dustCopper>*3, 100);
 
// ie arc furnace
mods.immersiveengineering.ArcFurnace.removeRecipe(<tconstruct:ingots:5>*4);
mods.immersiveengineering.ArcFurnace.addRecipe(<tconstruct:ingots:5>*4, <ore:ingotTin>, null, 100, 512, [<ore:ingotCopper>*3]);
mods.immersiveengineering.ArcFurnace.addRecipe(<tconstruct:ingots:5>*4, <ore:ingotTin>, null, 100, 512, [<ore:dustCopper>*3]);
mods.immersiveengineering.ArcFurnace.addRecipe(<tconstruct:ingots:5>*4, <ore:dustTin>, null, 100, 512, [<ore:ingotCopper>*3]);
mods.immersiveengineering.ArcFurnace.addRecipe(<tconstruct:ingots:5>*4, <ore:dustTin>, null, 100, 512, [<ore:dustCopper>*3]);