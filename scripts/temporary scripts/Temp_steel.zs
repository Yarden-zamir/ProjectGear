import crafttweaker.item.IIngredient;

//Smeltery Coal
mods.tconstruct.Melting.addRecipe(<liquid:coal> * 144,<minecraft:coal>);
mods.tconstruct.Melting.addRecipe(<liquid:coal> * 72,<minecraft:coal:1>);

//Pig Iron Alloying
mods.tconstruct.Alloy.removeRecipe(<liquid:pigiron>);
mods.tconstruct.Alloy.addRecipe(<liquid:pigiron> * 144, [<liquid:iron> * 144, <liquid:blood> * 40, <liquid:coal> * 72]);

//Smeltery Quicklime
mods.tconstruct.Melting.addRecipe(<liquid:quicklime> * 36,<earthworks:item_quicklime>);

//Alloying To Impure Steel
mods.tconstruct.Alloy.addRecipe(<liquid:impuresteel> * 144, [<liquid:pigiron> * 144, <liquid:quicklime> * 144]);

//Casting Impure Steel
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:impure_steel>, <tconstruct:cast_custom:0>, <liquid:impuresteel>, 144, false, 60);

//Re-melt Impure Steel
mods.tconstruct.Melting.addRecipe(<liquid:impuresteel> * 144,<contenttweaker:impure_steel>, 490);

//Purification (Blast Furnace)
mods.immersiveengineering.BlastFurnace.addRecipe(<thermalfoundation:material:160>, <contenttweaker:impure_steel>, 2000, <immersiveengineering:material:7>);

//Purification (Pressure Chamber)
mods.pneumaticcraft.pressurechamber.addRecipe([<contenttweaker:impure_steel>, <pneumaticcraft:ingot_iron_compressed>], 2.0, [<thermalfoundation:material:160> * 2]);

//Purification (Oxygen)
mods.tconstruct.Alloy.addRecipe(<liquid:steel> * 288, [<liquid:impuresteel> * 144, <liquid:liquidoxygen> * 2000]);

// ie blast furnace

mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
mods.immersiveengineering.BlastFurnace.addRecipe(<thermalfoundation:material:160>, <contenttweaker:impure_steel>, 2000, <immersiveengineering:material:7>);

// ie arc furnace

mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:160>, <ore:dustSteel>, null, 100, 512);
 
// nuclearcraft alloy furnace
 
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<thermalfoundation:material:160>);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<thermalfoundation:storage_alloy:0>);
 
// gadgetry alloy furnace
// idk how to crafttweak gadgetry

// mekanism

mods.mekanism.infuser.removeRecipe(<ore:dustSteel>);
