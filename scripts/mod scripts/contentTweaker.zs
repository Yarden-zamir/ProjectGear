#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;

//Fluid brine - still need to get the ingame name to work
var brine = VanillaFactory.createFluid("brine", Color.fromHex("F29223"));
brine.register();

//
var treatedPlate = VanillaFactory.createItem("plate_treated");
treatedPlate.register();
