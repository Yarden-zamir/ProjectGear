import crafttweaker.item.IItemStack;
import mods.integrateddynamics.Squeezer;

// Craft the white ceramic tile
recipes.addShaped(<contenttweaker:age_portal_black>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeBlack>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_red>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeRed>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_green>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeGreen>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_blue>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeBlue>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_purple>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyePurple>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_cyan>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeCyan>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_light_gray>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeLightGray>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_gray>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeGray>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_pink>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyePink>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_lime_green>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeLime>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_yellow>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeYellow>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_light_blue>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeLightBlue>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_magenta>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeMagenta>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_orange>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeOrange>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 
recipes.addShaped(<contenttweaker:age_portal_white>,
	[[<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>],
	 [<minecraft:clay_ball>, <ore:dyeWhite>, <minecraft:clay_ball>],
	 [<ore:ingotBrickSeared>, <minecraft:clay_ball>, <ore:ingotBrickSeared>]]);
	 

// ardite ore processing recipes and oredict
furnace.addRecipe(<tconstruct:ingots:1>, <contenttweaker:ardite_rocky_chunk>);
furnace.addRecipe(<tconstruct:ingots:1> * 2, <contenttweaker:ardite_chunk>);
furnace.addRecipe(<tconstruct:ingots:1>, <contenttweaker:ardite_dust>);
recipes.addShapeless(<contenttweaker:ardite_dust>, [<immersiveengineering:tool>.transformDamage(), <ore:oreArdite>]);

<ore:dustArdite>.add(<contenttweaker:ardite_dust>);
<ore:chunkArdite>.add(<contenttweaker:ardite_chunk>);
<ore:rockyChunkArdite>.add(<contenttweaker:ardite_rocky_chunk>);

// Brass plate:
recipes.addShapeless(<contenttweaker:aluminum_brass_plate>, [<immersiveengineering:tool>.transformDamage(), <ore:ingotBrass>]);

// Brass gear:
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:aluminum_brass_gear>, <tconstruct:cast_custom:4>, <liquid:alubrass>, 576, false, 140);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:aluminum_brass_gear>, <ore:ingotBrass>, <immersiveengineering:mold:1>, 2000, 4);

// Crushing sturdy stone into coarse gravel
	// Immersive Engineering crusher:
mods.immersiveengineering.Crusher.addRecipe(<contenttweaker:coarse_gravel>, <quark:sturdy_stone>, 2048, <minecraft:gravel>, 0.5);
	// Factory Tech drill press:
mods.factorytech.DrillGrinder.addRecipe(<contenttweaker:coarse_gravel> * 2, <quark:sturdy_stone>, true);

	// Integrated Dynamics squeezer:
Squeezer.addRecipe(<quark:sturdy_stone>, <contenttweaker:coarse_gravel>, <liquid:dirt> * 50);