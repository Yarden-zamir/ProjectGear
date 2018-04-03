import crafttweaker.item.IItemStack;
//disable forestry farms
val itemsToDisable =[
  <forestry:ffarm:*>,
  <forestry:arboretum:*>,
  <forestry:farm_crops:*>,
  <forestry:farm_mushroom:*>,
  <forestry:farm_gourd:*>,
  <forestry:farm_nether:*>,
  <forestry:farm_ender:*>,
  <forestry:peat_bog:*>,
] as IItemStack[];  //note: Disabled to encourage more complex farms
scripts.functions.disableItems(itemsToDisable);
