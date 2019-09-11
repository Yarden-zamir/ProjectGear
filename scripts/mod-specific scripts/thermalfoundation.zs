import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.integrateddynamics.MechanicalSqueezer;

val itemsToDisable =[
  // Slag
  <thermalfoundation:material:864>,
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Makes gears uncraftable. Machines are required instead.
  <thermalfoundation:material:24>,
  <thermalfoundation:material:25>,
  <thermalfoundation:material:26>,
  <thermalfoundation:material:27>,
  <thermalfoundation:material:156>,
  <thermalfoundation:material:256>,
  <thermalfoundation:material:258>,
  <thermalfoundation:material:257>,
  <thermalfoundation:material:259>,
  <thermalfoundation:material:260>,
  <thermalfoundation:material:261>,
  <thermalfoundation:material:262>,
  <thermalfoundation:material:263>,
  <thermalfoundation:material:264>,
  <thermalfoundation:material:294>,
  <thermalfoundation:material:293>,
  <thermalfoundation:material:292>,
  <thermalfoundation:material:291>,
  <thermalfoundation:material:290>,
  <thermalfoundation:material:289>,
  <thermalfoundation:material:288>,
  <thermalfoundation:material:295>,
  // Makes plates uncraftable. Machines are required instead.
  <thermalfoundation:material:32>,
  <thermalfoundation:material:33>,
  <thermalfoundation:material:327>,
  <thermalfoundation:material:328>,
  <thermalfoundation:material:352>,
  <thermalfoundation:material:353>,
  <thermalfoundation:material:354>,
  <thermalfoundation:material:355>,
  <thermalfoundation:material:356>,
  <thermalfoundation:material:357>,
  <thermalfoundation:material:358>,
  <thermalfoundation:material:359>,
  <thermalfoundation:material:320>,
  <thermalfoundation:material:321>,
  <thermalfoundation:material:322>,
  <thermalfoundation:material:323>,
  <thermalfoundation:material:324>,
  <thermalfoundation:material:325>,
  <thermalfoundation:material:326>,
  
  // Makes electrum, bronze, constantan and invar dust uncraftable
  <thermalfoundation:material:97>,
  <thermalfoundation:material:98>,
  <thermalfoundation:material:99>,
  <thermalfoundation:material:100>,
  // Makes Signalium, Lumium, and Enderium blends uncraftable.
  <thermalfoundation:material:101>,
  <thermalfoundation:material:102>,
  <thermalfoundation:material:103>

] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

furnace.remove(<thermalfoundation:material:864>);
// get asthetic ingots through alchemy
val ingotProgressionArray =[
  <thermalfoundation:material:130>, //silver
  <thermalfoundation:material:131>, //lead
  <thermalfoundation:material:132>, //aluminum
  <thermalfoundation:material:133>, //nickel
] as IItemStack[];
scripts.functions.addAlchemyStages(ingotProgressionArray, 100);

// Add machine recipes to stone, diamond and emerald gears:

	// Diamond:
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:26>, <ore:gemDiamond>, <immersiveengineering:mold:1>, 2400, 4);
mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:material:26>, <tconstruct:cast_custom:4>, <liquid:diamond>, 576, false, 100);

	// Emerald:
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:27>, <ore:gemEmerald>, <immersiveengineering:mold:1>, 2400, 4);
mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:material:27>, <tconstruct:cast_custom:4>, <liquid:emerald>, 576, false, 100);

	// Stone:
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:23>, <tconstruct:cast_custom:4>, <liquid:stone>, 576);
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:23>, <ore:stone>, <immersiveengineering:mold:1>, 2000, 4);

// Craft Crossroads gears with Thermal Foundation gears
// Note: These can be crafted back into Crossroads gears, but those recipes are in crossroads.zs

recipes.addShapeless(<thermalfoundation:material:256>, [<crossroads:gear_copper>]);
recipes.addShapeless(<thermalfoundation:material:289>, [<crossroads:gear_electrum>]);
recipes.addShapeless(<thermalfoundation:material:25>, [<crossroads:gear_gold>]);
recipes.addShapeless(<thermalfoundation:material:290>, [<crossroads:gear_invar>]);
recipes.addShapeless(<thermalfoundation:material:24>, [<crossroads:gear_iron>]);
recipes.addShapeless(<thermalfoundation:material:259>, [<crossroads:gear_lead>]);
recipes.addShapeless(<thermalfoundation:material:261>, [<crossroads:gear_nickel>]);
recipes.addShapeless(<thermalfoundation:material:292>, [<crossroads:gear_bronze>]);
recipes.addShapeless(<thermalfoundation:material:262>, [<crossroads:gear_platinum>]);
recipes.addShapeless(<thermalfoundation:material:258>, [<crossroads:gear_silver>]);
recipes.addShapeless(<thermalfoundation:material:257>, [<crossroads:gear_tin>]);



#Credit to DolphinBlaster for writing this script

val batWing = <xreliquary:mob_ingredient:5>;
var rodMold = <immersiveengineering:mold:2>;
var blitzRod = <thermalfoundation:material:2050>;
var blitzPowder = <thermalfoundation:material:2051>;
var blizzRod = <thermalfoundation:material:2048>;
var blizzPowder = <thermalfoundation:material:2049>;
var basalzRod = <thermalfoundation:material:2052>;
var basalzPowder = <thermalfoundation:material:2053>;
var blazeRod = <minecraft:blaze_rod>;
var blazePowder = <minecraft:blaze_powder>;
var aeroDust = <thermalfoundation:material:1026>;
var pyroDust = <thermalfoundation:material:1024>;
var cryoDust = <thermalfoundation:material:1025>;
var petrolDust = <thermalfoundation:material:1027>;
 
// Metal Press recipes
 
// Blitz Rod Metal Press recipe
mods.immersiveengineering.MetalPress.addRecipe(blitzRod, batWing, rodMold, 2000, 1);
 
// Blizz Rod Metal Press recipe
mods.immersiveengineering.MetalPress.addRecipe(blizzRod, <minecraft:packed_ice>, rodMold, 2000, 8);
 
// Basalz Rod Metal Press recipe
mods.immersiveengineering.MetalPress.addRecipe(basalzRod, <xreliquary:mob_ingredient:6>, rodMold, 2000, 8);
 
// Blaze Rod Metal Press recipe
mods.immersiveengineering.MetalPress.addRecipe(blazeRod, blazePowder, rodMold, 2000, 8);
 
 
// Crusher (Immersive Engineering) recipes
// Blitz Rod Crusher recipe
mods.immersiveengineering.Crusher.addRecipe(blitzPowder * 4, blitzRod, 2048, <minecraft:sand>, 0.5);
 
// Blizz Rod Crusher recipe
mods.immersiveengineering.Crusher.addRecipe(blizzPowder * 4, blizzRod, 2048, <minecraft:ice>, 0.5);
 
// Basalz Rod Crusher Recipe
mods.immersiveengineering.Crusher.addRecipe(basalzPowder * 4, basalzRod, 2048, <immersivepetroleum:material>, 0.5);
 
// Squeezer (Integrated Dynamics) recipes
// Blitz Rod Squeezer recipe
mods.integrateddynamics.Squeezer.addRecipe(blitzRod, blitzPowder * 6, null);
 
// Blizz Rod Squeezer recipe
mods.integrateddynamics.Squeezer.addRecipe(blizzRod, blizzPowder * 6, null);
 
// Basalz Rod Squeezer recipe
mods.integrateddynamics.Squeezer.addRecipe(basalzRod, basalzPowder * 6, null);
 
// Blaze Rod Squeezer recipe
mods.integrateddynamics.Squeezer.addRecipe(blazeRod, blazePowder * 6, null);
 
// Drill Grinder (Factory Tech) recipes
// Blitz Drill Grinder Recipe
mods.factorytech.DrillGrinder.addRecipe(blitzPowder * 6, blitzRod, false);
 
// Blizz Drill Grinder Recipe
mods.factorytech.DrillGrinder.addRecipe(blizzPowder * 6, blizzRod, false);
 
// Basalz Drill Grinder Recipe
mods.factorytech.DrillGrinder.addRecipe(basalzPowder * 6, basalzRod, false);
 
// Blaze Drill Grinder Recipe
mods.factorytech.DrillGrinder.addRecipe(blazePowder * 6, blazeRod, false);
 
// Thermal Foundation Elemental Dust recipes
// Aerotheum Dust recipe removal
recipes.remove(aeroDust);
 
//Aerotheum Dust recipe
recipes.addShapeless(aeroDust * 2,
    [blitzPowder,blitzPowder,batWing,<xreliquary:mob_ingredient:5>]);
 
// Cryotheum Dust recipe removal
recipes.remove(cryoDust);
 
// Cryotheum Dust recipe
recipes.addShapeless(cryoDust * 2,
    [blizzPowder,blizzPowder,<minecraft:ice>,<xreliquary:mob_ingredient:10>]);
 
// Petrotheum Dust recipe removal
recipes.remove(petrolDust);
 
// Petrotheum Dust recipe (Bitumen)
recipes.addShapeless(petrolDust * 2,
    [basalzPowder,basalzPowder,<immersivepetroleum:material>,<ore:itemSlag>]);
 
// Petrotheum Dust recipe (Bituminous Peat)
recipes.addShapeless(petrolDust * 2,
    [basalzPowder,basalzPowder,<forestry:bituminous_peat>,<ore:itemSlag>]);
 
// Pyrotheum Dust recipe removal
recipes.remove(pyroDust);
 
// Pyrotheum Dust recipe
recipes.addShapeless(pyroDust * 2,
    [blazePowder, blazePowder, <xreliquary:mob_ingredient:7>, <ore:dustCharcoal>]);
	
recipes.addShapeless(pyroDust * 2,
    [blazePowder, blazePowder, <xreliquary:mob_ingredient:7>, <ore:dustCoal>]);
	
 
// Mana Dust recipes
var manaDust = <thermalfoundation:material:1028>;

recipes.addShapeless(manaDust * 4,
    [<botania:manaresource:23>,<projectred-core:resource_item:510>,<botania:manaresource:1>,<botania:manabottle>]);
   
recipes.addShapeless(manaDust * 4,
[<ore:dustCobalt>,<projectred-core:resource_item:510>,<minecraft:ender_pearl>,<thermalfoundation:material:1024>]);


// Redstone Transmission Coil recipe removal
recipes.remove(<thermalfoundation:material:514>);

// Redstone Transimssion Coil recipe (silver > tin)
recipes.addShaped(<thermalfoundation:material:514>,
	[[null, null, <ore:dustRedstone>],
	 [null, <ore:ingotTin>, null],
	 [<ore:dustRedstone>, null, null]]);
 
// Redstone Reception Coil Thermionic Fabricator recipe
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:513> * 2,
    [[null,null,<minecraft:redstone>],
    [null,<minecraft:gold_ingot>,null],
    [<minecraft:redstone>,null,null]],
    <liquid: glass> * 500);
 
// Remove Lines 99 - 106 Temp_ingot_recipe_fix.zs (Outdated Redstone Transmission Coil recipe)
 
// Redstone Transmission Coil Thermionic Fabricator recipe
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:514> * 2,
    [[null,null,<minecraft:redstone>],
    [null,<ore:ingotTin>,null],
    [<minecraft:redstone>,null,null]],
    <liquid: glass> * 500);

 
// Redstone Conductance Coil Thermionic Fabricator recipe
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:515> * 2,
    [[<minecraft:redstone>,null,null],
    [null,<ore:ingotElectrum>,null],
    [null,null,<minecraft:redstone>]],
    <liquid: glass> * 500);
 
// Redstone Servo Iron and Nickel Thermionic Fabricator recipes
// Iron recipe
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:512> * 2,
    [[null,<minecraft:redstone>,null],
    [null,<minecraft:iron_ingot>,null],
    [null,<minecraft:redstone>,null]],
    <liquid: glass> * 500);
// Nickel recipe
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:512> * 2,
    [[null,<minecraft:redstone>,null],
    [null,<ore:ingotNickel>,null],
    [null,<minecraft:redstone>,null]],
    <liquid: glass> * 500);
 
// Tool Casing Thermionic Fabricator recipe
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:640> * 2,
    [[null,<minecraft:redstone>,null],
    [<minecraft:gold_ingot>,<minecraft:redstone>,<minecraft:gold_ingot>],
    [<minecraft:redstone>,<minecraft:iron_ingot>,<minecraft:redstone>]],
    <liquid: glass> * 500);
	
//Craft tool casings from either manasteel or compressed iron
recipes.addShaped(<thermalfoundation:material:640> * 2,
 [[null, <minecraft:redstone>, null],
  [<botania:manaresource>, <minecraft:redstone>, <botania:manaresource>],
  [<minecraft:redstone>, <minecraft:gold_ingot>, <minecraft:redstone>]]);
recipes.addShaped(<thermalfoundation:material:640> * 2,
 [[null, <minecraft:redstone>, null],
  [<pneumaticcraft:ingot_iron_compressed>, <minecraft:redstone>, <pneumaticcraft:ingot_iron_compressed>],
  [<minecraft:redstone>, <minecraft:gold_ingot>, <minecraft:redstone>]]);
 
//Craft servos from either manasteel or compressed iron
recipes.addShaped(<thermalfoundation:material:512> * 2,
 [[null, <minecraft:redstone>, null],
  [null, <pneumaticcraft:ingot_iron_compressed>, null],
  [null, <minecraft:redstone>, null]]);
recipes.addShaped(<thermalfoundation:material:512> * 2,
 [[null, <minecraft:redstone>, null],
  [null, <botania:manaresource>, null],
  [null, <minecraft:redstone>, null]]);

  
// Craft basic plates using thermionic fabricator:

	// Iron
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:32> * 4,
	[[<ore:ingotIron>,<ore:ingotIron>,null],
     [<ore:ingotIron>,<ore:ingotIron>, null],
	 [null, null, null]],
    <liquid: glass> * 500);

	// Gold
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:33> * 4,
	[[<ore:ingotGold>,<ore:ingotGold>,null],
     [<ore:ingotGold>,<ore:ingotGold>, null],
	 [null, null, null]],
    <liquid: glass> * 500);

	// Copper
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:320> * 4,
	[[<ore:ingotCopper>,<ore:ingotCopper>,null],
     [<ore:ingotCopper>,<ore:ingotCopper>, null],
	 [null, null, null]],
    <liquid: glass> * 500);
	
	// Tin
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:321> * 4,
	[[<ore:ingotTin>,<ore:ingotTin>,null],
     [<ore:ingotTin>,<ore:ingotTin>, null],
	 [null, null, null]],
    <liquid: glass> * 500);

	// Nickel
mods.forestry.ThermionicFabricator.addCast(<thermalfoundation:material:325> * 4,
	[[<ore:ingotNickel>,<ore:ingotNickel>,null],
     [<ore:ingotNickel>,<ore:ingotNickel>, null],
	 [null, null, null]],
    <liquid: glass> * 500);

// Turn logs into sawdust with a hammer or a crusher
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:800> * 4, <ore:logWood>, 8000);
//recipes.addShapeless(<thermalfoundation:material:800>, [<immersiveengineering:tool>.transformDamage(1), <ore:logWood>]); - Recipe broken

// Blazing Pyrotheum recipes
mods.tconstruct.Melting.addRecipe(
  <liquid:pyrotheum>*144, <thermalfoundation:material:1024>
);
mods.factorytech.Crucible.addRecipe(
  <liquid:pyrotheum>*144, <thermalfoundation:material:1024>, false
);

// Make phyto-gro recipes use more unique ingredients
var fert = <thermalfoundation:fertilizer:1>;

recipes.remove(fert);
recipes.addShapeless(fert,
	[<ore:dustWood>,<ore:dustWood>, <ore:itemSlagRich>,<ore:dustSaltpeter>]);
recipes.addShapeless(fert*4,
  [<ore:dustCharcoal>, <ore:itemSlagRich>,<ore:dustSaltpeter>]);

// add things to OreDict
<ore:drillheadIron>.add(<thermalfoundation:material:656>);

//Renames
scripts.functions.rename(<thermalfoundation:material:832>,"Solidified Brine");
scripts.functions.rename(<thermalfoundation:material:833>,"Flinted Ash");

// Alternate rich phyto-gro recipe
recipes.addShapeless("saltpeter_charcoal_to_rich_phyto_grow", <thermalfoundation:fertilizer:1> * 1, [<ore:dustSaltpeter>,
 <ore:dustCharcoal>]);
 
// Saw Dust recipe (Log + Engineer's Hammer)
recipes.addShapeless(<thermalfoundation:material:800>,
    [<ore:logWood>,<immersiveengineering:tool>]);
	
// Multimeter recipe removal
recipes.remove(<thermalfoundation:meter>);

// Multimeter: Lead -> Tin
recipes.addShaped(<thermalfoundation:meter>, 
	[[<ore:ingotCopper>, null, <ore:ingotCopper>],
	[<ore:ingotTin>, <thermalfoundation:material:515>, <ore:ingotTin>], 
	[null, <ore:gearGold>, null]]);
	
// Reinforced Upgrade Kit recipe removal
recipes.remove(<thermalfoundation:upgrade:1>);

// Reinforced Upgrade Kit: Silver Gear -> Nickel Gear
recipes.addShaped(<thermalfoundation:upgrade:1>, 
	[[null, <ore:ingotElectrum>, null],
	[<ore:ingotElectrum>, <ore:gearNickel>, <ore:ingotElectrum>], 
	[<ore:blockGlassHardened>, <ore:ingotElectrum>, <ore:blockGlassHardened>]]);
	
// Crushing coal in an Immersive Engineering crusher also gives sulfur 10% of the time
mods.immersiveengineering.Crusher.removeRecipe(<thermalfoundation:material:768>);
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:768>, <minecraft:coal>, 2048, <thermalfoundation:material:771>, 0.1);

// Squeezing coal in an Integrated Dynamics squeezer gives 32mb of liquid clay as a byproduct
//MechanicalSqueezer.removeRecipe(<minecraft:coal>, <thermalfoundation:material:768>, null);
//MechanicalSqueezer.addRecipe(<minecraft:coal>, <thermalfoundation:material:768>, <liquid:dirt> * 36);

// Craft iron, gold, copper, tin, bronze and nickel gears in the thermionic fabricator.
val gearStone = <ore:gearStone>;
var metalObjects as IOreDictEntry[IItemStack]= {
    // Gear Iron
    <thermalfoundation:material:24> : <ore:ingotIron>,
    // Gear Gold
    <thermalfoundation:material:25> : <ore:ingotGold>,
    // Gear Copper
    <thermalfoundation:material:256> : <ore:ingotCopper>,
    // Gear Tin
    <thermalfoundation:material:257> : <ore:ingotTin>,
    // Gear Bronze
    <thermalfoundation:material:291> : <ore:ingotBronze>,
    // Gear Nickel
    <thermalfoundation:material:261> : <ore:ingotNickel>
};

// For every gear, create the corresponding ThermFabri recipe.
for gear, ingot in metalObjects {
    mods.forestry.ThermionicFabricator.addCast(gear,
        [[null, ingot, null],
        [ingot, gearStone, ingot],
        [null, ingot, null]],
        <liquid: glass> * 200
    ); 
}

	
// Adds complex recipes to hardened glass
// Credit to πß_off
val HardenedBase = <thermalfoundation:glass:3>;

val ObsidianLiquid = <liquid:obsidian>;
val SoulGlass = <natura:nether_glass:0>;
val Obsidian = <minecraft:obsidian>;
val RawHardener = <stevescarts:modulecomponents:18>;
val InsulatingGlass = <immersiveengineering:stone_decoration:8>;

val CopperLiquid = <liquid:copper>;
val CopperHardened = <thermalfoundation:glass:0>;
val TinLiquid = <liquid:tin>;
val TinHardened = <thermalfoundation:glass:1>;
val SilverLiquid = <liquid:silver>;
val SilverHardened = <thermalfoundation:glass:2>;
val AluminumLiquid = <liquid:aluminum>;
val AluminumHardened = <thermalfoundation:glass:4>;
val NickelLiquid = <liquid:nickel>;
val NickelHardened = <thermalfoundation:glass:5>;
val PlatinumLiquid = <liquid:platinum>;
val PlatinumHardened = <thermalfoundation:glass:6>;
val IridiumLiquid = <liquid:iridium>;
val IridiumHardened = <thermalfoundation:glass:7>;
val ManaLiquid = <liquid:mana>;
val ManaHardened = <thermalfoundation:glass:8>;

val SteelLiquid = <liquid:steel>;
val SteelHardened = <thermalfoundation:glass_alloy:0>;
val ElectrumLiquid = <liquid:electrum>;
val ElectrumHardened = <thermalfoundation:glass_alloy:1>;
val InvarLiquid = <liquid:invar>;
val InvarHardened = <thermalfoundation:glass_alloy:2>;
val BronzeLiquid = <liquid:bronze>;
val BronzeHardened = <thermalfoundation:glass_alloy:3>;
val ConstantanLiquid = <liquid:constantan>;
val ConstantanHardened = <thermalfoundation:glass_alloy:4>;
val SignalumLiquid = <liquid:signalum>;
val SignalumHardened = <thermalfoundation:glass_alloy:5>;
val LumiumLiquid = <liquid:lumium>;
val LumiumHardened = <thermalfoundation:glass_alloy:6>;
val EnderiumLiquid = <liquid:enderium>;
val EnderiumHardened = <thermalfoundation:glass_alloy:7>;

// Base Hardened Glass Recipe
mods.factorytech.CompressionChamber.addRecipe(HardenedBase * 16, InsulatingGlass, ObsidianLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(HardenedBase, InsulatingGlass, ObsidianLiquid, 144, true);
mods.botania.ElvenTrade.addRecipe([HardenedBase * 2], [SoulGlass,Obsidian]);
mods.immersiveengineering.AlloySmelter.addRecipe(HardenedBase * 12, InsulatingGlass, RawHardener, 600);
mods.immersiveengineering.AlloySmelter.addRecipe(HardenedBase * 12, RawHardener, InsulatingGlass, 600);
mods.immersiveengineering.ArcFurnace.addRecipe(HardenedBase * 16, RawHardener, null, 20, 512, [InsulatingGlass]);

// Copper Recipes
mods.factorytech.CompressionChamber.addRecipe(CopperHardened, HardenedBase, CopperLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(CopperHardened, HardenedBase, CopperLiquid, 144, true);

// Tin Recipes
mods.factorytech.CompressionChamber.addRecipe(TinHardened, HardenedBase, TinLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(TinHardened, HardenedBase, TinLiquid, 144, true);

// Silver Recipes
mods.factorytech.CompressionChamber.addRecipe(SilverHardened, HardenedBase, SilverLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(SilverHardened, HardenedBase, SilverLiquid, 144, true);

// Aluminum Recipes
mods.factorytech.CompressionChamber.addRecipe(AluminumHardened, HardenedBase, AluminumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(AluminumHardened, HardenedBase, AluminumLiquid, 144, true);

// Nickel Recipes
mods.factorytech.CompressionChamber.addRecipe(NickelHardened, HardenedBase, NickelLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(NickelHardened, HardenedBase, NickelLiquid, 144, true);

// Platinum Recipes
mods.factorytech.CompressionChamber.addRecipe(PlatinumHardened, HardenedBase, PlatinumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(PlatinumHardened, HardenedBase, PlatinumLiquid, 144, true);

// Iridium Recipes
mods.factorytech.CompressionChamber.addRecipe(IridiumHardened, HardenedBase, IridiumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(IridiumHardened, HardenedBase, IridiumLiquid, 144, true);

// Mana Recipes
mods.factorytech.CompressionChamber.addRecipe(ManaHardened, HardenedBase, ManaLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(ManaHardened, HardenedBase, ManaLiquid, 144, true);

// Steel Recipes
mods.factorytech.CompressionChamber.addRecipe(SteelHardened, HardenedBase, SteelLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(SteelHardened, HardenedBase, SteelLiquid, 144, true);

// Electrum Recipes
mods.factorytech.CompressionChamber.addRecipe(ElectrumHardened, HardenedBase, ElectrumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(ElectrumHardened, HardenedBase, ElectrumLiquid, 144, true);

// Invar Recipes
mods.factorytech.CompressionChamber.addRecipe(InvarHardened, HardenedBase, InvarLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(InvarHardened, HardenedBase, InvarLiquid, 144, true);

// Bronze Recipes
mods.factorytech.CompressionChamber.addRecipe(BronzeHardened, HardenedBase, BronzeLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(BronzeHardened, HardenedBase, BronzeLiquid, 144, true);

// Constantan Recipes
mods.factorytech.CompressionChamber.addRecipe(ConstantanHardened, HardenedBase, ConstantanLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(ConstantanHardened, HardenedBase, ConstantanLiquid, 144, true);

// Signalum Recipes
mods.factorytech.CompressionChamber.addRecipe(SignalumHardened, HardenedBase, SignalumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(SignalumHardened, HardenedBase, SignalumLiquid, 144, true);

// Lumium Recipes
mods.factorytech.CompressionChamber.addRecipe(LumiumHardened, HardenedBase, LumiumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(LumiumHardened, HardenedBase, LumiumLiquid, 144, true);

// Enderium Recipes
mods.factorytech.CompressionChamber.addRecipe(EnderiumHardened, HardenedBase, EnderiumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(EnderiumHardened, HardenedBase, EnderiumLiquid, 144, true);