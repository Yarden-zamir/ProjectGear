//Credit to πß_off
val HardenedBase = <thermalfoundation:glass:3>;

val ObsidianLiquid = <liquid:obsidian>;
val QuartzGlass = <appliedenergistics2:quartz_glass>;
val SoulGlass = <natura:nether_glass:0>;
val Obsidian = <minecraft:obsidian>;
val RawHardener = <stevescarts:modulecomponents:18>;

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

//Base Hardened Glass Recipe
mods.factorytech.CompressionChamber.addRecipe(HardenedBase * 4, QuartzGlass, ObsidianLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(HardenedBase * 4, QuartzGlass, ObsidianLiquid, 288, true);
mods.botania.ElvenTrade.addRecipe([HardenedBase * 4], [SoulGlass,Obsidian]);
mods.immersiveengineering.AlloySmelter.addRecipe(HardenedBase * 4, QuartzGlass, RawHardener, 600);
mods.immersiveengineering.AlloySmelter.addRecipe(HardenedBase * 4, RawHardener, QuartzGlass, 600);

//Copper Recipes
mods.factorytech.CompressionChamber.addRecipe(CopperHardened, HardenedBase, CopperLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(CopperHardened, HardenedBase, CopperLiquid, 144, true);

//Tin Recipes
mods.factorytech.CompressionChamber.addRecipe(TinHardened, HardenedBase, TinLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(TinHardened, HardenedBase, TinLiquid, 144, true);

//Silver Recipes
mods.factorytech.CompressionChamber.addRecipe(SilverHardened, HardenedBase, SilverLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(SilverHardened, HardenedBase, SilverLiquid, 144, true);

//Aluminum Recipes
mods.factorytech.CompressionChamber.addRecipe(AluminumHardened, HardenedBase, AluminumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(AluminumHardened, HardenedBase, AluminumLiquid, 144, true);

//Nickel Recipes
mods.factorytech.CompressionChamber.addRecipe(NickelHardened, HardenedBase, NickelLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(NickelHardened, HardenedBase, NickelLiquid, 144, true);

//Platinum Recipes
mods.factorytech.CompressionChamber.addRecipe(PlatinumHardened, HardenedBase, PlatinumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(PlatinumHardened, HardenedBase, PlatinumLiquid, 144, true);

//Iridium Recipes
mods.factorytech.CompressionChamber.addRecipe(IridiumHardened, HardenedBase, IridiumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(IridiumHardened, HardenedBase, IridiumLiquid, 144, true);

//Mana Recipes
mods.factorytech.CompressionChamber.addRecipe(ManaHardened, HardenedBase, ManaLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(ManaHardened, HardenedBase, ManaLiquid, 144, true);

//Steel Recipes
mods.factorytech.CompressionChamber.addRecipe(SteelHardened, HardenedBase, SteelLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(SteelHardened, HardenedBase, SteelLiquid, 144, true);

//Electrum Recipes
mods.factorytech.CompressionChamber.addRecipe(ElectrumHardened, HardenedBase, ElectrumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(ElectrumHardened, HardenedBase, ElectrumLiquid, 144, true);

//Invar Recipes
mods.factorytech.CompressionChamber.addRecipe(InvarHardened, HardenedBase, InvarLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(InvarHardened, HardenedBase, InvarLiquid, 144, true);

//Bronze Recipes
mods.factorytech.CompressionChamber.addRecipe(BronzeHardened, HardenedBase, BronzeLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(BronzeHardened, HardenedBase, BronzeLiquid, 144, true);

//Constantan Recipes
mods.factorytech.CompressionChamber.addRecipe(ConstantanHardened, HardenedBase, ConstantanLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(ConstantanHardened, HardenedBase, ConstantanLiquid, 144, true);

//Signalum Recipes
mods.factorytech.CompressionChamber.addRecipe(SignalumHardened, HardenedBase, SignalumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(SignalumHardened, HardenedBase, SignalumLiquid, 144, true);

//Lumium Recipes
mods.factorytech.CompressionChamber.addRecipe(LumiumHardened, HardenedBase, LumiumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(LumiumHardened, HardenedBase, LumiumLiquid, 144, true);

//Enderium Recipes
mods.factorytech.CompressionChamber.addRecipe(EnderiumHardened, HardenedBase, EnderiumLiquid * 144);
mods.tconstruct.Casting.addBasinRecipe(EnderiumHardened, HardenedBase, EnderiumLiquid, 144, true);