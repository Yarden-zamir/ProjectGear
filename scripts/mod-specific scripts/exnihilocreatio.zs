import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

// Hides items from JEI
val itemsToDisable =[
	// Ore chunks, dust, pieces and ingots for aluminum, aluminium, silver, lead and osmium
	// Note: These ores don't generate in the world, and are only used in a few purely aesthetic recipes
	<exnihilocreatio:item_ore_aluminum:*>,
	<exnihilocreatio:item_ore_aluminium:*>,
	<exnihilocreatio:item_ore_silver:*>,
	<exnihilocreatio:item_ore_lead:*>,
	<exnihilocreatio:item_ore_osmium:*>,
	<exnihilocreatio:item_ore_platinum:*>,
	// Flint, iron and diamond meshes
	// Note: String meshes still exist
	<exnihilocreatio:item_mesh:2>,
	<exnihilocreatio:item_mesh:3>,
	<exnihilocreatio:item_mesh:4>,
	// Stone, andesite, diorite and granite pebbles
	<exnihilocreatio:item_pebble:*>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

// Disabes crafting recipes
val craftingToDisable =[
	// Ore chunks, dust, pieces and ingots for aluminum, aluminium, silver, lead and osmium
	// Note: These ores don't generate in the world, and are only used in a few purely aesthetic recipes
	<exnihilocreatio:item_ore_aluminum:*>,
	<exnihilocreatio:item_ore_aluminium:*>,
	<exnihilocreatio:item_ore_silver:*>,
	<exnihilocreatio:item_ore_lead:*>,
	<exnihilocreatio:item_ore_osmium:*>,
	<exnihilocreatio:item_ore_platinum:2>,
	// Flint, iron and diamond meshes
	// Note: String meshes still exist
	<exnihilocreatio:item_mesh:2>,
	<exnihilocreatio:item_mesh:3>,
	<exnihilocreatio:item_mesh:4>,
	// Stone, andesite, diorite and granite pebbles
	<exnihilocreatio:item_pebble:*>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

// Crush sand to dust in other machines:
mods.immersiveengineering.Crusher.addRecipe(<exnihilocreatio:block_dust>, <minecraft:sand>, 2048); // 2048 is the energy required, feel free to change as fit
mods.factorytech.DrillGrinder.addRecipe(<exnihilocreatio:block_dust>, <minecraft:sand>, true);
mods.crossroads.Grindstone.addRecipe(<minecraft:sand>, <exnihilocreatio:block_dust>);
mods.integrateddynamics.Squeezer.addRecipe(<minecraft:sand>, <exnihilocreatio:block_dust>);