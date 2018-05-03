#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;

var unrefinedMoltenIron = VanillaFactory.createFluid("unrefined_molten_iron", Color.fromHex("59040A"));
unrefinedMoltenIron.register();

var unPrecipitateMoltenGold = VanillaFactory.createFluid("un_precipitated_molten_gold", Color.fromHex("F4B908"));
unPrecipitateMoltenGold.register();

var liquidCrudeSteel = VanillaFactory.createFluid("crude_steel", Color.fromHex("454141"));
liquidCrudeSteel.register();
