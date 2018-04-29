#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;

var brine = VanillaFactory.createFluid("brine", Color.fromHex("F29223"));
brine.register();

var treatedPlate = VanillaFactory.createItem("treated_plate");
treatedPlate.register();

var oiledLeather = VanillaFactory.createItem("oiled_leather");
treatedPlate.register();

var irradiatedFlesh = VanillaFactory.createItem("Irradiated_Flesh");
treatedPlate.register();
