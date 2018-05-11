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
