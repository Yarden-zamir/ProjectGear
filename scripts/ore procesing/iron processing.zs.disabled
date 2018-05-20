import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
// those scripts will need to be maintained
// a lot for balance reasosns so keep in mind
// to keep them as readable and editable as
// possible, even if longer than usual.


// iron ore -> unrefined molten iron (2x)
mods.factorytech.Crucible.addRecipe(<liquid:unrefined_molten_iron>*288, <minecraft:iron_ore>);
// #important! waiting for a fix for factorytech's agitator ct implementation
// unrefined molten iron -> ironIngot (1x)
// mods.factorytech.Agitator.addRecipe(
//   <liquid:unrefined_molten_iron>*144, <minecraft:iron_ingot>
// );
// mods.factorytech.Agitator.addRecipe(
//   <liquid:iron>*144, <minecraft:iron_ingot>
// );
mods.tconstruct.Casting.addTableRecipe(
  <minecraft:iron_ingot>, <tconstruct:cast_custom>, <liquid:unrefined_molten_iron>, 144
);

// unrefined molten iron -> molten iron (1x), Molten aluminum, Molten obsidian, Seared Stone
mods.pneumaticcraft.refinery.addRecipe(
  <liquid:unrefined_molten_iron>*144, [
    <liquid:iron>*144, <liquid:obsidian>*16, <liquid:aluminum>*72, <liquid:stone>*36
  ]
);

// unrefined molten iron -> molten iron (1x), Molten aluminum, Molten Nickel, Seared Stone
mods.nuclearcraft.electrolyser.addRecipe(
  <liquid:unrefined_molten_iron>*144, <liquid:iron>*144, <liquid:aluminum>*36, <liquid:nickel>*72, <liquid:stone>*36, 2500
);

// iron ore -> unrefined molten iron(1x)
mods.tconstruct.Melting.removeRecipe(
  <liquid:iron>*288, <minecraft:iron_ore>
);
mods.tconstruct.Melting.addRecipe(
  <liquid:unrefined_molten_iron>*144, <ore:oreIron>
);
//
// #important! for now using the techreborn's carbon, if it gets removed we'll use our own carbon
// #important! waiting for a fix for factorytech's agitator ct implementation
// // iron ore, Liquid carbon -> Iron rocky chunk (3x), Molten aluminum
// //mods.factorytech.Agitator.addRecipe(<liquid:fluidcarbon>*8, iron ore, <liquid:aluminum>*36, <ore:rockyChunkIron>*3);
//
// // iron ore, pyrotheum -> Iron rocky chunk (2x), Molten aluminum
// //mods.factorytech.Agitator.addRecipe(<liquid:pyrotheum>*16, null, iron ore, <liquid:aluminum>*72,null,<ore:rockyChunkIron>*2);
//
// iron rocky chunk -> molten iron
mods.tconstruct.Melting.removeRecipe(
  <liquid:iron>*288, <magneticraft:rocky_chunks>
);
mods.tconstruct.Melting.addRecipe(
  <liquid:iron>*144, <magneticraft:rocky_chunks>
);
mods.factorytech.Crucible.addRecipe(
  <liquid:iron>*144, <magneticraft:rocky_chunks>
);

// iron chunk -> molten iron
mods.tconstruct.Melting.removeRecipe(
  <liquid:iron>*288, <magneticraft:chunks>
);
mods.tconstruct.Melting.addRecipe(
  <liquid:iron>*144, <magneticraft:chunks>
);
mods.factorytech.Crucible.addRecipe(
  <liquid:iron>*144, <magneticraft:chunks>
);

// iron rocky chunk -> iron chunk(1x), cobblestone, aluminum dust, nickel dust
mods.magneticraft.Sieve.removeRecipe(
  <magneticraft:rocky_chunks>
);
mods.magneticraft.Sieve.addRecipe(
  <magneticraft:rocky_chunks>, <magneticraft:chunks>, 1.0, <thermalfoundation:material:69>, 0.25, <thermalfoundation:material:68>, 0.15, 40, true
);

// iron chunk -> iron ingot (1x)
furnace.remove(
  <minecraft:iron_ingot>*2, <magneticraft:chunks>
);
furnace.addRecipe(
  <minecraft:iron_ingot>, <magneticraft:chunks>
);

// iron chunk, fluorite water -> iron dust(2x)
mods.immersiveengineering.Mixer.addRecipe(
  <liquid:iron>*216, <liquid:fluorite_water>*6000, [
    <magneticraft:chunks>
  ], 6144
);
// iron ore -> Ground Iron ore(x2)
mods.factorytech.DrillGrinder.addRecipe(
  <factorytech:ore_dust>*2, <minecraft:iron_ore>
);

// Ground Iron ore, sulfuric acid -> Iron chunk
#important! waiting for Electroplater ct remove to be fixed
// mods.factorytech.Electroplater.removeRecipe(
//   <minecraft:iron_ingot>*3
// );
mods.factorytech.Electroplater.addRecipe(
  <magneticraft:chunks>, <factorytech:ore_dust>
);

// iron ore -> ground iron ore, iron rocky chunk
mods.immersiveengineering.Crusher.removeRecipe(
  <immersiveengineering:metal:18>
);
mods.immersiveengineering.Crusher.addRecipe(
  <factorytech:ore_dust>, <ore:oreIron>, 2048, <magneticraft:rocky_chunks>, 1.0
);

// iron ore, limestone/chiseled sandstone -> iron ingot (2x)
mods.immersiveengineering.ArcFurnace.removeRecipe(
  <minecraft:iron_ingot>*2
);
mods.immersiveengineering.ArcFurnace.addRecipe(
  <minecraft:iron_nugget>*20, <minecraft:iron_ore>, <immersiveengineering:material:7>, 200, 2048, [
    <minecraft:sandstone:1>*2,<minecraft:sandstone:1>*2,<minecraft:sandstone:1>*2,<minecraft:sandstone:1>*2
  ]
);
mods.immersiveengineering.ArcFurnace.addRecipe(
  <minecraft:iron_nugget>*22, <minecraft:iron_ore>, <immersiveengineering:material:7>, 200, 2048, [
    <ore:blockLimestone>
  ]
);

//iron ore -> iron dust, ground iron ore
mods.integrateddynamics.Squeezer.removeRecipesWithOutput(
  <thermalfoundation:material>, 1.0, <thermalfoundation:material>, 0.75
);
mods.integrateddynamics.Squeezer.addRecipe(
  <minecraft:iron_ore>,
  <thermalfoundation:material>, 1.0,
  <factorytech:ore_dust>, 1.0
);
