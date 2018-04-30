#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;

var brine = VanillaFactory.createFluid("brine", Color.fromHex("F29223"));
brine.register();

var liquidatedIrradiatedBlood = VanillaFactory.createFluid("irradiated_Blood", Color.fromHex("5b210e"));
liquidatedIrradiatedBlood.register();

var liquidCrudeSteel = VanillaFactory.createFluid("crude_steel", Color.fromHex("454141"));
liquidCrudeSteel.luminosity = 2;
liquidCrudeSteel.tempreature = 1000; // need to test
liquidCrudeSteel.viscosity = 250;
liquidCrudeSteel.register();

var monsterEssence = VanillaFactory.createFluid("monster_essence", Color.fromHex("39A00A"));
monsterEssence.luminosity = 4;
monsterEssence.viscosity = 500;
monsterEssence.register();

//

var treatedPlate = VanillaFactory.createItem("treated_plate");
treatedPlate.register();

var oiledLeather = VanillaFactory.createItem("oiled_leather");
treatedPlate.register();

var irradiatedFlesh = VanillaFactory.createItem("irradiated_flesh");
treatedPlate.register();

var crudeSteelIngot = VanillaFactory.createItem("ingot_crude_steel");
treatedPlate.register();
