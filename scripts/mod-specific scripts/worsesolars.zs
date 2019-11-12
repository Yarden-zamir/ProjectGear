import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

// Adds cheaper Simple Solar Cell recipe when using thermionic fabricator
val glass_pane = <minecraft:glass_pane>;
val lapis = <ore:gemLapis>;
val copper_nugget = <ore:nuggetCopper>;

mods.forestry.ThermionicFabricator.addCast(<worsesolars:solar_cell> * 3, 
	[[glass_pane, glass_pane, glass_pane],
	 [lapis, lapis, lapis],
	 [copper_nugget, copper_nugget, copper_nugget]], <liquid: glass> * 200);
	 
// Solar cell requires copper instead of iron

recipes.removeByRecipeName("worsesolars:solar_cell");
recipes.addShaped(<worsesolars:solar_cell>,
	[[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>],
	 [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>],
	 [<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>]]);