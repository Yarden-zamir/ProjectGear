#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Commands;

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

//blocks

//Nether Gold Ore
var netherGoldOre = VanillaFactory.createBlock("nether_gold_ore", <blockmaterial:rock>); 
netherGoldOre.setBlockHardness(3.0); 
netherGoldOre.setBlockResistance(15.0);
netherGoldOre.setToolClass("pickaxe"); 
netherGoldOre.setToolLevel(3); 
netherGoldOre.setBlockSoundType(<soundtype:stone>);
netherGoldOre.register();

//Impure Steel Block
var impureSteelBlock = VanillaFactory.createBlock("impure_steel_block", <blockmaterial:iron>); 
impureSteelBlock.setBlockHardness(5.0); 
impureSteelBlock.setBlockResistance(30.0);
impureSteelBlock.setToolClass("pickaxe"); 
impureSteelBlock.setToolLevel(3); 
impureSteelBlock.setBlockSoundType(<soundtype:metal>);
impureSteelBlock.register();

//Nether Boron Ore
var netherBoronOre = VanillaFactory.createBlock("nether_boron_ore", <blockmaterial:rock>); 
netherBoronOre.setBlockHardness(5.0); 
netherBoronOre.setBlockResistance(30.0);
netherBoronOre.setToolClass("pickaxe"); 
netherBoronOre.setToolLevel(3); 
netherBoronOre.setBlockSoundType(<soundtype:metal>);
netherBoronOre.register();

//Nether Magnesium Ore
var netherMagnesiumOre = VanillaFactory.createBlock("nether_magnesium_ore", <blockmaterial:rock>); 
netherMagnesiumOre.setBlockHardness(5.0); 
netherMagnesiumOre.setBlockResistance(30.0);
netherMagnesiumOre.setToolClass("pickaxe"); 
netherMagnesiumOre.setToolLevel(3); 
netherMagnesiumOre.setBlockSoundType(<soundtype:metal>);
netherMagnesiumOre.register();

//Nether Lithium Ore
var netherLithiumOre = VanillaFactory.createBlock("nether_lithium_ore", <blockmaterial:rock>); 
netherLithiumOre.setBlockHardness(5.0); 
netherLithiumOre.setBlockResistance(30.0);
netherLithiumOre.setToolClass("pickaxe"); 
netherLithiumOre.setToolLevel(3); 
netherLithiumOre.setBlockSoundType(<soundtype:metal>);
netherLithiumOre.register();

//Nether Thorium Ore
var netherThoriumOre = VanillaFactory.createBlock("nether_thorium_ore", <blockmaterial:rock>); 
netherThoriumOre.setBlockHardness(5.0); 
netherThoriumOre.setBlockResistance(30.0);
netherThoriumOre.setToolClass("pickaxe"); 
netherThoriumOre.setToolLevel(3); 
netherThoriumOre.setBlockSoundType(<soundtype:metal>);
netherThoriumOre.register();

//Nether Uranium Ore
var netherUraniumOre = VanillaFactory.createBlock("nether_uranium_ore", <blockmaterial:rock>); 
netherUraniumOre.setBlockHardness(5.0); 
netherUraniumOre.setBlockResistance(30.0);
netherUraniumOre.setToolClass("pickaxe"); 
netherUraniumOre.setToolLevel(3); 
netherUraniumOre.setBlockSoundType(<soundtype:metal>);
netherUraniumOre.register();