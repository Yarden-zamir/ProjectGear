import crafttweaker.item.IItemStack;

val itemsToDisable =[
  <thermalfoundation:tool.hammer_copper>,
  <thermalfoundation:tool.hammer_tin>,
  <thermalfoundation:tool.hammer_aluminum>,
  <thermalfoundation:tool.hammer_steel>,
  <thermalfoundation:tool.hammer_bronze>,
  <thermalfoundation:tool.hammer_electrum>,
  //note: Disable TF hammers
  
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  <thermalfoundation:material:99>,
  <thermalfoundation:material:97>,
  //note: Disable crafting of electrum/bronze blend with metal dust:
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

//get asthetic ingots through alchemy
val ingotProgressionArray =[
  <thermalfoundation:material:130>, //silver
  <thermalfoundation:material:131>, //lead
  <thermalfoundation:material:132>, //aluminum
  <thermalfoundation:material:133>, //nickel
] as IItemStack[];
scripts.functions.addAlchemyStages(ingotProgressionArray, 100);
