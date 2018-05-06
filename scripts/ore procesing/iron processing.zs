import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
// those scripts will need to be maintained
// a lot for balance reasosns so keep in mind
// to keep them as readable and editable as
// possible, even if longer than usual.
val ironOre = <ore:oreIron>;
val ironIngot = <minecraft:iron_ingot>;

val moltenIron = <liquid:iron>;
val unrefinedMoltenIron = <liquid:unrefined_molten_iron>;

// iron ore -> unrefined molten iron (2x)
mods.factorytech.Crucible.addRecipe(
  unrefinedMoltenIron*288, ironOre
);

// unrefined molten iron -> ironIngot (1x)
mods.factorytech.Agitator.addRecipe(
  moltenIron.or(unrefinedMoltenIron)*144, ironIngot
);
mods.tconstruct.Casting.addTableRecipe(
  ironIngot, <tconstruct:cast_custom>, unrefinedMoltenIron, 144
);

// unrefined molten iron -> molten iron (1x), Molten aluminum, Molten obsidian, Seared Stone
mods.pneumaticcraft.refinery.addRecipe(
  unrefinedMoltenIron*144, [
    moltenIron*144, <liquid:obsidian>*16, <liquid:aluminum>*72, <liquid:stone>*36
  ]
);

// unrefined molten iron -> molten iron (1x), Molten aluminum, Molten Nickel, Seared Stone
mods.nuclearcraft.electrolyser.addRecipe(
  unrefinedMoltenIron*144, moltenIron*144, <liquid:aluminum>*36, <liquid:nickel>*72, <liquid:stone>*36, 2500
);

// iron ore -> unrefined molten iron(1x)
mods.tconstruct.Melting.removeRecipe(
  moltenIron*288, <minecraft:iron_ore>
);
mods.tconstruct.Melting.addRecipe(
  unrefinedMoltenIron*144, ironOre
);

#important! for now using the techreborn's carbon, if it gets removed we'll use our own carbon
#important! waiting for a fix for factorytech's agitator ct implementation
// iron ore, Liquid carbon -> Iron rocky chunk (3x), Molten aluminum
//mods.factorytech.Agitator.addRecipe(<liquid:fluidcarbon>*8, iron ore, <liquid:aluminum>*36, <ore:rockyChunkIron>*3);

// iron ore, pyrotheum -> Iron rocky chunk (2x), Molten aluminum
//mods.factorytech.Agitator.addRecipe(<liquid:pyrotheum>*16, null, iron ore, <liquid:aluminum>*72,null,<ore:rockyChunkIron>*2);

// iron rocky chunk -> molten iron
mods.tconstruct.Melting.removeRecipe(
  moltenIron*288, <magneticraft:rocky_chunks>
);
mods.tconstruct.Melting.addRecipe(
  moltenIron*144, <magneticraft:rocky_chunks>
);
mods.factorytech.Crucible.addRecipe(
  moltenIron*144, <magneticraft:rocky_chunks>
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
  ironIngot*2, <magneticraft:chunks>
);
furnace.addRecipe(
  ironIngot, <magneticraft:chunks>
);

// iron chunk, fluorite water -> iron dust(2x)
mods.immersiveengineering.Mixer.addRecipe(
  moltenIron*216, <liquid:fluorite_water>*6000, [
    <magneticraft:chunks>
  ], 6144
);

// iron ore -> Ground Iron ore(x2)
mods.factorytech.DrillGrinder.addRecipe(
  <factorytech:ore_dust>*2, ironOre
);

// Ground Iron ore, sulfuric acid -> Iron chunk
mods.factorytech.Electroplater.addRecipe(
  <magneticraft:chunks>, <factorytech:ore_dust>
);

// iron ore -> ground iron ore, iron rocky chunk
mods.immersiveengineering.Crusher.removeRecipesForInput(
  <minecraft:iron_ore>
);

mods.immersiveengineering.Crusher.addRecipe(
  <factorytech:ore_dust>, ironOre, 2048, <magneticraft:rocky_chunks>
);

// iron ore, limestone/chiseled sandstone -> iron ingot (2x)
mods.immersiveengineering.AlloySmelter.removeRecipe(
  ironIngot
);
mods.immersiveengineering.AlloySmelter.addRecipe(
  ironIngot*2, ironOre, <ore:sandstone>*4, 1000
);
mods.immersiveengineering.AlloySmelter.addRecipe(
  ironIngot*2, ironOre, <ore:blockLimestone>, 1000
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
