recipes.remove(<forestry:ffarm:*>);
<forestry:ffarm:*>.addTooltip(format.darkRed("Disabled!"));

recipes.remove(<forestry:arboretum:*>);
<forestry:ffarm:*>.addTooltip(format.darkRed("Disabled!"));

recipes.remove(<forestry:farm_crops:*>);
<forestry:ffarm:*>.addTooltip(format.darkRed("Disabled!"));

recipes.remove(<forestry:farm_mushroom:*>);
<forestry:ffarm:*>.addTooltip(format.darkRed("Disabled!"));

recipes.remove(<forestry:farm_gourd:*>);
<forestry:ffarm:*>.addTooltip(format.darkRed("Disabled!"));

recipes.remove(<forestry:farm_nether:*>);
<forestry:ffarm:*>.addTooltip(format.darkRed("Disabled!"));

recipes.remove(<forestry:farm_ender:*>);
<forestry:ffarm:*>.addTooltip(format.darkRed("Disabled!"));

recipes.remove(<forestry:peat_bog:*>);
<forestry:ffarm:*>.addTooltip(format.darkRed("Disabled!"));

itemsToDisable.add(<immersiveengineering:metal_device1:13>);
//.. add items that you want to disable to itemsToDisable list

disableItems(itemsToDisable);
function disableItems(itd as IItemStack[]){
  for item in itd{
    removeRecipe(item);
    //other things we want to do with removed items go here.
    println("Disabled "+ item);
  }
  println("To see all disabled items change JEI itemHidingMode to true")
}
