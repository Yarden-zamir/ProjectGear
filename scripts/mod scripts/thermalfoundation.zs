import crafttweaker.item.IItemStack;
val craftingToDisable =[
  <thermalfoundation:material:99>,
  <thermalfoundation:material:97>,
  //note: Disable crafting of electrum/bronze blend with metal dust:
] as IItemStack[];
scripts.functions.disableCraftings(itemsToDisable);

//get asthetic ingots through alchemy
val ingotProgressionArray =[
  <thermalfoundation:material:130>, //silver
  <thermalfoundation:material:131>, //lead
  <thermalfoundation:material:132>, //aluminum
  <thermalfoundation:material:133>, //nickel
] as IItemStack[];
scripts.functions.addAlchemyStages(ingotProgressionArray, 100);
