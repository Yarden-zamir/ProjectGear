import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

// Casull Cartridge Blueprint recipe removal
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "casull"}));

// Casull Cartridge: Lead Nugget -> Copper Nugget
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "casull"}), 
	[<immersiveengineering:bullet>, <minecraft:gunpowder>, <ore:nuggetCopper>, <ore:nuggetCopper>]);
	
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "casull"}),
	[<immersiveengineering:bullet>, <minecraft:gunpowder>, <ore:nuggetCopper>, <ore:nuggetCopper>]);

// Silver Cartridge Blueprint recipe removal
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "silver"}));

// Silver Cartridge: Lead Nugget -> Gold Nugget
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "silver"}), 
	[<immersiveengineering:bullet>, <minecraft:gunpowder>, <ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>]);

<immersiveengineering:bullet:2>.withTag({bullet: "silver"}).displayName = "Holy Cartridge";

var blazePowder = <ore:dustBlaze>;

// Dragon's Breath Cartridge Blueprint recipe removal
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "dragonsbreath"}));

// Dragon's Breath Cartridge: Aluminum Dust -> Tin Dust
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "dragonsbreath"}), 
	[<immersiveengineering:bullet:1>, <minecraft:gunpowder>, blazePowder, blazePowder]);
	
// Flare Cartridge Blueprint recipe removal
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({flareColour: 16777090, bullet: "flare"}));
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({flareColour: 2925323, bullet: "flare"}));
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({flareColour: 13381126, bullet: "flare"}));

// Flare Cartridge: Aluminum Dust -> Tin Dust
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "flare"}).withTag({flareColour: 16777090, bullet: "flare"}), 
	[<immersiveengineering:bullet:1>, <minecraft:gunpowder>, blazePowder, <ore:dyeRed>]);
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "flare"}).withTag({flareColour: 2925323, bullet: "flare"}), 
	[<immersiveengineering:bullet:1>, <minecraft:gunpowder>, blazePowder, <ore:dyeGreen>]);
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "flare"}).withTag({flareColour: 13381126, bullet: "flare"}), 
	[<immersiveengineering:bullet:1>, <minecraft:gunpowder>, blazePowder, <ore:dyeYellow>]);