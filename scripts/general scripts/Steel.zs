import crafttweaker.item.IIngredient;

//Disable steel
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);

//Smeltery Coal
mods.tconstruct.Melting.addRecipe(<liquid:coal> * 288,<immersive engineering:material:6>);
mods.tconstruct.Melting.addRecipe(<liquid:coal> * 72,<minecraft:coal:1>);

//Pig Iron Alloying
mods.tconstruct.Alloy.removeRecipe(<liquid:pigiron>);
mods.tconstruct.Alloy.addRecipe(<liquid:pigiron> * 144, [<liquid:iron> * 144, <liquid:blood> * 40, <liquid:coal> * 72]);

//Smeltery Quicklime
mods.tconstruct.Melting.addRecipe(<liquid:quicklime> * 36,<contenttweaker:quicklime_pile>);
mods.tconstruct.Melting.addRecipe(<liquid:quicklime> * 36,<contenttweaker:sulfuric_quicklime>);

//Alloying To Impure Steel
mods.tconstruct.Alloy.addRecipe(<liquid:impuresteel> * 144, [<liquid:pigiron> * 144, <liquid:quicklime> * 144]);

//Casting Impure Steel
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:impure_steel_ingot>, <tconstruct:cast_custom:0>, <liquid:impuresteel>, 144, false, 60);

//Re-melt Impure Steel
mods.tconstruct.Melting.addRecipe(<liquid:impuresteel> * 144,<contenttweaker:impure_steel_ingot>, 490);

//Purification (Blast Furnace)
mods.immersiveengineering.BlastFurnace.addRecipe(<thermalfoundation:material:160>, <contenttweaker:impure_steel_ingot>, 2000, <immersiveengineering:material:7>);

//Purification (Pressure Chamber)
mods.pneumaticcraft.pressurechamber.addRecipe([<contenttweaker:impure_steel_ingot>, <pneumaticcraft:ingot_iron_compressed>], 2.0, [<thermalfoundation:material:160> * 2]);

//Purification (Oxygen)
mods.tconstruct.Alloy.addRecipe(<liquid:steel> * 288, [<liquid:impuresteel> * 144, <liquid:liquidoxygen> * 2000]);

// ie blast furnace

mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
mods.immersiveengineering.BlastFurnace.addRecipe(<thermalfoundation:material:160>, <contenttweaker:impure_steel_ingot>, 2000, <immersiveengineering:material:7>);

// ie arc furnace

mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:160>, <ore:dustSteel>, null, 100, 512);
 
// nuclearcraft alloy furnace
 
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<thermalfoundation:material:160>);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<thermalfoundation:storage_alloy:0>);

//Some boring nugget/block handling
recipes.addShapeless("nugget_handler_1",<contenttweaker:impure_steel_ingot>,[<contenttweaker:impure_steel_nugget>,<contenttweaker:impure_steel_nugget>,<contenttweaker:impure_steel_nugget>,<contenttweaker:impure_steel_nugget>,<contenttweaker:impure_steel_nugget>,<contenttweaker:impure_steel_nugget>,<contenttweaker:impure_steel_nugget>,<contenttweaker:impure_steel_nugget>,<contenttweaker:impure_steel_nugget>]);
recipes.addShapeless("nugget_handler_2",<contenttweaker:impure_steel_nugget>*9,[<contenttweaker:impure_steel_ingot>]);
recipes.addShapeless("block_handler_1",<contenttweaker:impure_steel_block>,[<contenttweaker:impure_steel_ingot>,<contenttweaker:impure_steel_ingot>,<contenttweaker:impure_steel_ingot>,<contenttweaker:impure_steel_ingot>,<contenttweaker:impure_steel_ingot>,<contenttweaker:impure_steel_ingot>,<contenttweaker:impure_steel_ingot>,<contenttweaker:impure_steel_ingot>,<contenttweaker:impure_steel_ingot>]);
recipes.addShapeless("block_handler_2",<contenttweaker:impure_steel_ingot>*9,[<contenttweaker:impure_steel_block>]);

mods.tconstruct.Melting.addRecipe(<liquid:impuresteel> * 16,<contenttweaker:impure_steel_nugget>, 395);
mods.tconstruct.Melting.addRecipe(<liquid:impuresteel> * 1296,<contenttweaker:impure_steel_block>, 681);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:impure_steel_nugget>, <tconstruct:cast_custom:1>, <liquid:impuresteel>, 16, false, 7);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:impure_steel_block>, null, <liquid:impuresteel>, 1296, false, 540);

//Calcium Sulfate Creation
mods.tconstruct.Casting.addTableRecipe(<nuclearcraft:compound:0>, <thermalfoundation:material:771>, <liquid:milk>, 4000, true, 80);
mods.factorytech.Agitator.addRecipe(<liquid:milk> * 2000, null, <thermalfoundation:material:771>, null, <nuclearcraft:compound:0>);

//Calcium Sulfide Creation
mods.immersiveengineering.BlastFurnace.addRecipe(<contenttweaker:calcium_sulfide>, <nuclearcraft:compound:0>, 600, <forestry:ash>);

//Creating Sulfuric Quicklime
mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:sulfuric_quicklime> * 16, <nuclearcraft:compound:0>*3, <contenttweaker:calcium_sulfide>, 200);
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:sulfuric_quicklime> * 16, <nuclearcraft:compound:0>*3, null, 2000, 2048, [<contenttweaker:calcium_sulfide>]);

//Sulfuric Quicklime to... regular quicklime.
mods.forestry.Centrifuge.addRecipe([<botany:misc:3> % 100, <contenttweaker:quicklime_pile> % 100], <contenttweaker:sulfuric_quicklime>, 100);

//Handling Smol Boye Sulfur Dust
recipes.addShapeless("sulphur_big_to_small",<botany:misc:3>*4,[<thermalfoundation:material:771>]);
recipes.addShapeless("sulfur_small_to_big",<thermalfoundation:material:771>,[<botany:misc:3>,<botany:misc:3>,<botany:misc:3>,<botany:misc:3>]);
