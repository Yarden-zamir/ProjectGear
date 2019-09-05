import crafttweaker.item.IItemStack;
// Disable forestry multifarms
val itemsToDisable =[
  // Multifarm blocks
  <forestry:ffarm:*>,
  // One-block farm machines
  <forestry:arboretum:*>,
  <forestry:farm_crops:*>,
  <forestry:farm_mushroom:*>,
  <forestry:farm_gourd:*>,
  <forestry:farm_nether:*>,
  <forestry:farm_ender:*>,
  <forestry:peat_bog:*>
] as IItemStack[];  //note: Disabled to encourage more complex farms
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Multifarm blocks
  <forestry:ffarm:*>,
  // One-block farm machines
  <forestry:arboretum:*>,
  <forestry:farm_crops:*>,
  <forestry:farm_mushroom:*>,
  <forestry:farm_gourd:*>,
  <forestry:farm_nether:*>,
  <forestry:farm_ender:*>,
  <forestry:peat_bog:*>,
  <forestry:gear_copper>,
  <forestry:gear_bronze>,
  <forestry:gear_tin>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

// Foresty log piles
recipes.removeShaped(<forestry:wood_pile>);
recipes.addShaped(<forestry:wood_pile>,
[[<ore:logWood>,<ore:string>],
[<ore:logWood>,<ore:string>]]);

// Turn ash and menril crystals into Forestry fertilizer
recipes.addShaped("menril_to_fertilizer", <forestry:fertilizer_compound> * 16, 
	[[<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>], 
	 [<ore:dustAsh>, <integrateddynamics:crystalized_menril_chunk>, <ore:dustAsh>], 
	 [<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>]]);