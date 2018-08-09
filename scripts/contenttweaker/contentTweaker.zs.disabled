#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;

//fluids

var brine = VanillaFactory.createFluid("brine", Color.fromHex("F29223"));
brine.register();

var liquidatedIrradiatedBlood = VanillaFactory.createFluid("irradiated_Blood", Color.fromHex("5b210e"));
liquidatedIrradiatedBlood.register();

var monsterEssence = VanillaFactory.createFluid("monster_essence", Color.fromHex("39A00A"));
monsterEssence.register();

	//Impure Steel Ingot
var steelIn = VanillaFactory.createItem("impure_steel");
steelIn.maxStackSize = 64;
steelIn.rarity = "common";
steelIn.register();

	//Molten Quicklime
var meltLime = VanillaFactory.createFluid("quicklime", Color.fromHex("E6E2D9"));
meltLime.material = <blockmaterial:lava>;
meltLime.density = 2000;
meltLime.temperature = 800;
meltLime.viscosity = 10000;
meltLime.stillLocation = "tconstruct:blocks/fluids/liquid_stone";
meltLime.flowingLocation = "tconstruct:blocks/fluids/liquid_stone_flow";
meltLime.register();

	//Molten Impure Steel
var meltImSt = VanillaFactory.createFluid("impuresteel", Color.fromHex("8C7F73"));
meltImSt.material = <blockmaterial:lava>;
meltImSt.density = 2000;
meltImSt.temperature = 681;
meltImSt.viscosity = 10000;
meltImSt.stillLocation = "tconstruct:blocks/fluids/molten_metal";
meltImSt.flowingLocation = "tconstruct:blocks/fluids/molten_metal_flow";
meltImSt.register();

//items

var treatedPlate = VanillaFactory.createItem("treated_plate");
treatedPlate.register();

var oiledLeather = VanillaFactory.createItem("oiled_leather");
oiledLeather.register();

var irradiatedFlesh = VanillaFactory.createItem("irradiated_flesh");
irradiatedFlesh.register();

var crudeSteelIngot = VanillaFactory.createItem("ingot_crude_steel");
crudeSteelIngot.register();

var guanoIngot = VanillaFactory.createItem("ingot_guano");
guanoIngot.register();

var hardenedGlassIngot = VanillaFactory.createItem("ingot_hardened_glass");
hardenedGlassIngot.register();

var hotHardenedGlassIngot = VanillaFactory.createItem("ingot_hot_hardened_glass");
hotHardenedGlassIngot.register();

//blocks