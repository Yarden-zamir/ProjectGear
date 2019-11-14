#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Commands;
import mods.contenttweaker.AxisAlignedBB;

//fluids

var brine = VanillaFactory.createFluid("brine", Color.fromHex("F29223"));
brine.register();

var liquidatedIrradiatedBlood = VanillaFactory.createFluid("irradiated_Blood", Color.fromHex("5b210e"));
liquidatedIrradiatedBlood.register();

var monsterEssence = VanillaFactory.createFluid("monster_essence", Color.fromHex("39A00A"));
monsterEssence.register();


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

/*
var unrefinedMoltenIron = VanillaFactory.createFluid("unrefined_molten_iron", Color.fromHex("59040A"));
unrefinedMoltenIron.material = <blockmaterial:lava>;
unrefinedMoltenIron.density = 2000;
unrefinedMoltenIron.temperature = 681;
unrefinedMoltenIron.viscosity = 10000;
unrefinedMoltenIron.stillLocation = "tconstruct:blocks/fluids/molten_metal";
unrefinedMoltenIron.flowingLocation = "tconstruct:blocks/fluids/molten_metal_flow";
unrefinedMoltenIron.register();

var unPrecipitateMoltenGold = VanillaFactory.createFluid("un_precipitated_molten_gold", Color.fromHex("F4B908"));
unPrecipitateMoltenGold.material = <blockmaterial:lava>;
unPrecipitateMoltenGold.density = 2000;
unPrecipitateMoltenGold.temperature = 681;
unPrecipitateMoltenGold.viscosity = 10000;
unPrecipitateMoltenGold.stillLocation = "tconstruct:blocks/fluids/molten_metal";
unPrecipitateMoltenGold.flowingLocation = "tconstruct:blocks/fluids/molten_metal_flow";
unPrecipitateMoltenGold.register();

var liquidCrudeSteel = VanillaFactory.createFluid("crude_steel", Color.fromHex("454141"));
liquidCrudeSteel.material = <blockmaterial:lava>;
liquidCrudeSteel.density = 2000;
liquidCrudeSteel.temperature = 681;
liquidCrudeSteel.viscosity = 10000;
liquidCrudeSteel.stillLocation = "tconstruct:blocks/fluids/molten_metal";
liquidCrudeSteel.flowingLocation = "tconstruct:blocks/fluids/molten_metal_flow";
liquidCrudeSteel.register();
*/

//items

//Impure Steel Ingot
var steelIn = VanillaFactory.createItem("impure_steel_ingot");
steelIn.maxStackSize = 64;
steelIn.rarity = "common";
steelIn.register();

var treatedPlate = VanillaFactory.createItem("treated_plate");
treatedPlate.register();

var guano = VanillaFactory.createItem("guano");
guano.register();

var sinew = VanillaFactory.createItem("sinew");
sinew.register();

var oiledLeather = VanillaFactory.createItem("oiled_leather");
oiledLeather.register();

var irradiatedFlesh = VanillaFactory.createItem("irradiated_flesh");
irradiatedFlesh.register();

var ingotGuano = VanillaFactory.createItem("guano_ingot");
ingotGuano.register();

var hardenedGlassIngot = VanillaFactory.createItem("hardened_glass_ingot");
hardenedGlassIngot.register();

var hotHardenedGlassIngot = VanillaFactory.createItem("hot_hardened_glass_ingot");
hotHardenedGlassIngot.register();

var steelInNug = VanillaFactory.createItem("impure_steel_nugget");
steelInNug.maxStackSize = 64;
steelInNug.rarity = "common";
steelInNug.register();

var CaS = VanillaFactory.createItem("calcium_sulfide");
CaS.maxStackSize = 64;
CaS.rarity = "common";
CaS.register();

var CaOS = VanillaFactory.createItem("sulfuric_quicklime");
CaOS.maxStackSize = 64;
CaOS.rarity = "common";
CaOS.register();

var aluminumBrassGear = VanillaFactory.createItem("aluminum_brass_gear");
aluminumBrassGear.register();

var aluminumBrassPlate = VanillaFactory.createItem("aluminum_brass_plate");
aluminumBrassPlate.register();

var arditeChunk = VanillaFactory.createItem("ardite_chunk");
arditeChunk.register();

var arditeRockyChunk = VanillaFactory.createItem("ardite_rocky_chunk");
arditeRockyChunk.register();

var arditeDust = VanillaFactory.createItem("ardite_dust");
arditeDust.register();

// Pebbles

var pebbleAndesite = VanillaFactory.createItem("andesite_pebble");
pebbleAndesite.register();

var pebbleDiorite = VanillaFactory.createItem("diorite_pebble");
pebbleDiorite.register();

var pebbleGranite = VanillaFactory.createItem("granite_pebble");
pebbleGranite.register();

var pebbleMarble = VanillaFactory.createItem("marble_pebble");
pebbleMarble.register();

var pebbleLimestone = VanillaFactory.createItem("limestone_pebble");
pebbleLimestone.register();

var pebbleBasalt = VanillaFactory.createItem("basalt_pebble");
pebbleBasalt.register();

var pebbleSlate = VanillaFactory.createItem("slate_pebble");
pebbleSlate.register();

var pebbleCragRock = VanillaFactory.createItem("crag_rock_pebble");
pebbleCragRock.register();

var pebbleRedRock = VanillaFactory.createItem("red_rock_pebble");
pebbleRedRock.register();

var pebbleAbyssal = VanillaFactory.createItem("abyssal_pebble");
pebbleAbyssal.register();

var pebbleQuarried = VanillaFactory.createItem("quarried_pebble");
pebbleQuarried.register();

var pebbleSkystone = VanillaFactory.createItem("skystone_pebble");
pebbleSkystone.register();

// Sand pile

var pileSand = VanillaFactory.createItem("sand_pile");
pileSand.register();

// Quicklime

var pileQuicklime = VanillaFactory.createItem("quicklime_pile");
pileQuicklime.register();

// Upgrade Frame

var upgradeFrame = VanillaFactory.createItem("upgrade_frame");
upgradeFrame.register();

// Wooden Casing

var woodenCasing = VanillaFactory.createItem("wooden_casing");
woodenCasing.register();

// Blocks


// Nether Gold Ore
var netherGoldOre = VanillaFactory.createBlock("nether_gold_ore", <blockmaterial:rock>); 
netherGoldOre.setBlockHardness(3.0); 
netherGoldOre.setBlockResistance(15.0);
netherGoldOre.setToolClass("pickaxe"); 
netherGoldOre.setToolLevel(3); 
netherGoldOre.setBlockSoundType(<soundtype:stone>);
netherGoldOre.register();

// Impure Steel Block
var impureSteelBlock = VanillaFactory.createBlock("impure_steel_block", <blockmaterial:iron>); 
impureSteelBlock.setBlockHardness(5.0); 
impureSteelBlock.setBlockResistance(30.0);
impureSteelBlock.setToolClass("pickaxe"); 
impureSteelBlock.setToolLevel(3); 
impureSteelBlock.setBlockSoundType(<soundtype:metal>);
impureSteelBlock.register();

// Nether Boron Ore
var netherBoronOre = VanillaFactory.createBlock("nether_boron_ore", <blockmaterial:rock>); 
netherBoronOre.setBlockHardness(5.0); 
netherBoronOre.setBlockResistance(30.0);
netherBoronOre.setToolClass("pickaxe"); 
netherBoronOre.setToolLevel(3); 
netherBoronOre.setBlockSoundType(<soundtype:metal>);
netherBoronOre.register();

// Nether Magnesium Ore
var netherMagnesiumOre = VanillaFactory.createBlock("nether_magnesium_ore", <blockmaterial:rock>); 
netherMagnesiumOre.setBlockHardness(5.0); 
netherMagnesiumOre.setBlockResistance(30.0);
netherMagnesiumOre.setToolClass("pickaxe"); 
netherMagnesiumOre.setToolLevel(3); 
netherMagnesiumOre.setBlockSoundType(<soundtype:metal>);
netherMagnesiumOre.register();

// Nether Lithium Ore
var netherLithiumOre = VanillaFactory.createBlock("nether_lithium_ore", <blockmaterial:rock>); 
netherLithiumOre.setBlockHardness(5.0); 
netherLithiumOre.setBlockResistance(30.0);
netherLithiumOre.setToolClass("pickaxe"); 
netherLithiumOre.setToolLevel(3); 
netherLithiumOre.setBlockSoundType(<soundtype:metal>);
netherLithiumOre.register();

// Nether Thorium Ore
var netherThoriumOre = VanillaFactory.createBlock("nether_thorium_ore", <blockmaterial:rock>); 
netherThoriumOre.setBlockHardness(5.0); 
netherThoriumOre.setBlockResistance(30.0);
netherThoriumOre.setToolClass("pickaxe"); 
netherThoriumOre.setToolLevel(3); 
netherThoriumOre.setBlockSoundType(<soundtype:metal>);
netherThoriumOre.register();

// Nether Uranium Ore
var netherUraniumOre = VanillaFactory.createBlock("nether_uranium_ore", <blockmaterial:rock>); 
netherUraniumOre.setBlockHardness(5.0); 
netherUraniumOre.setBlockResistance(30.0);
netherUraniumOre.setToolClass("pickaxe"); 
netherUraniumOre.setToolLevel(3); 
netherUraniumOre.setBlockSoundType(<soundtype:metal>);
netherUraniumOre.register();

// Nether Uranium Ore
var netherLeadOre = VanillaFactory.createBlock("nether_lead_ore", <blockmaterial:rock>); 
netherLeadOre.setBlockHardness(5.0); 
netherLeadOre.setBlockResistance(30.0);
netherLeadOre.setToolClass("pickaxe"); 
netherLeadOre.setToolLevel(3); 
netherLeadOre.setBlockSoundType(<soundtype:metal>);
netherLeadOre.register();


// Coarse Gravel
val coarse_gravel = VanillaFactory.createBlock("coarse_gravel", <blockmaterial:rock>);
coarse_gravel.setBlockHardness(0.5);
coarse_gravel.setBlockResistance(2.5);
coarse_gravel.setGravity(true);
coarse_gravel.setBlockSoundType(<soundtype:ground>);
coarse_gravel.setToolClass("shovel");
coarse_gravel.setToolLevel(0);
coarse_gravel.register();

// Iron metalcap
var iron_metalcap = mods.contenttweaker.VanillaFactory.createBlock("iron_metalcap", <blockmaterial:plants>);
iron_metalcap.setPassable(true);
iron_metalcap.setBlockHardness(0);
iron_metalcap.setBlockResistance(0);
	// This doesn't work and I have no idea how to fix it:
	//iron_metalcap.setAxisAlignedBB = AxisAlignedBB.create(1.0, 0.0, 0.0, 0.0, 0.1875, 1.0);
iron_metalcap.setFullBlock(false);
iron_metalcap.setToolLevel(0);
iron_metalcap.register();