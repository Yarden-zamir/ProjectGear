import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

#Renames
scripts.functions.rename(<magneticraft:light_plates>,"Basic Plate");

//Disable water generator:
val itemsToDisable =[
  <magneticraft:water_generator>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);
