import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  <autoverse:pipe:*>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  <autoverse:pipe:*>,
  <autoverse:barrel>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

// Makes barrels require more iron
recipes.addShaped(<autoverse:barrel>,
	[[<ore:plankWood>, <minecraft:heavy_weighted_pressure_plate>, <ore:plankWood>],
	 [<ore:plankWood>, null, <ore:plankWood>],
	 [<ore:plankWood>, <minecraft:heavy_weighted_pressure_plate>, <ore:plankWood>]]);
	 
recipes.addShaped(<autoverse:barrel>,
	[[<ore:plankWood>, <ore:plateIron>, <ore:plankWood>],
	 [<ore:plankWood>, null, <ore:plankWood>],
	 [<ore:plankWood>, <ore:plateIron>, <ore:plankWood>]]);