//Made by eternal force blizzard (feel free to cut this line out)
import crafttweaker.item.IItemStack;
import mods.botaniatweaks.Agglomeration;

//Livingrock to Quicklime (explosion time)
mods.inworldcrafting.ExplosionCrafting.explodeBlockRecipe(<contenttweaker:quicklime_pile>, <botania:livingrock>, 50);

//Impure Steel via TAP
Agglomeration.addRecipe(<contenttweaker:impure_steel_ingot>, [<botania:manaresource:0>,<contenttweaker:quicklime_pile>*4], 7800, 0x0000FF, 0x00FF00, <botania:storage:0>, <botania:livingrock>, <botania:storage:0>);

//Steel via IS and Pixie Dust
mods.botania.ElvenTrade.addRecipe([<thermalfoundation:material:160>], [<contenttweaker:impure_steel_ingot>,<botania:manaresource:8>]);


// FACTORY TECH & CROSSROADS METHOD

//FactoryTech - Crossroads Quicklime-Quickline

//Limestone from River Grates
mods.factorytech.rivergrate.addRecipe(<contenttweaker:limestone_pebble>, 0.5);

//Quicklime from Pebbles
mods.crossroads.Grindstone.addRecipe(<contenttweaker:limestone_pebble>, <contenttweaker:quicklime_pile>);

//Steel Time - Crossroads + FacTech

//Let's melt iron

mods.crossroads.HeatingCrucible.addRecipe(<ore:ingotIron>, <liquid:iron> * 144, "tconstruct:blocks/fluids/molten_metal"); //not sure if this will work
mods.crossroads.HeatingCrucible.addRecipe(<contenttweaker:quicklime_pile>, <liquid:quicklime> * 144, "tconstruct:blocks/fluids/liquid_stone"); //not sure if this will work

/*	Currently broken due to a bug
mods.factorytech.Crucible.addRecipe(<liquid:iron> * 144, <ore:ingotIron>);

//Meltdown of Quicklime
mods.factorytech.Crucible.addRecipe(<liquid:quicklime> * 36, <contenttweaker:quicklime_pile>);
*/

//Agitation. A LOT of it.
mods.factorytech.Agitator.addRecipe(<liquid:iron> * 144, <liquid:quicklime> * 144, null, <liquid:impuresteel>*288, <immersiveengineering:material:7>);

//Steel Compression
mods.factorytech.CompressionChamber.addRecipe(<thermalfoundation:material:160>*8, <crossroads:luminescent_quartz>, <liquid:impuresteel> * 1152);