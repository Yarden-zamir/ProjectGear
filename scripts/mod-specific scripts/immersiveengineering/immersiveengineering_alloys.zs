import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

// Electrum -> Corinthian Bronze

	// Crafting electrum grit
recipes.removeShapeless(<immersiveengineering:metal:16>);
recipes.addShapeless(<immersiveengineering:metal:16> * 2,
	[<ore:dustGold>, <ore:dustCopper>]);
	
val ironIngot = <ore:ingotIron>;
val goldIngot = <ore:ingotGold>;
val copperIngot = <ore:ingotCopper>;
val tinIngot = <ore:ingotTin>;
val leadIngot = <ore:ingotLead>;
val nickelIngot = <ore:ingotNickel>;
val electrumIngot = <ore:ingotElectrum>;
val steelIngot = <ore:ingotSteel>;

val treatedWood = <ore:plankTreatedWood>;

val redstone = <ore:dustRedstone>;
val redstoneBlock = <ore:blockRedstone>;

val electrumDust = <thermalfoundation:material:97>;
val copperDust = <ore:dustCopper>;
val goldDust = <ore:dustGold>;
val tinNugget = <thermalfoundation:material:193>;
val glass = <ore:blockGlass>;

	// Alloy smelter
mods.immersiveengineering.AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>, goldIngot, copperIngot, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>, goldDust, copperDust, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>, goldIngot, copperDust, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>, goldDust, copperIngot, 200);

	// Arc furnace
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:7>);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:7>, copperIngot, null, 100, 512, [goldIngot]);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:7>, copperDust, null, 100, 512, [goldDust]);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:7>, copperDust, null, 100, 512, [goldIngot]);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:7>, copperIngot, null, 100, 512, [goldDust]);