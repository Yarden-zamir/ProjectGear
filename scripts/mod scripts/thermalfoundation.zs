import crafttweaker.item.IItemStack;

val itemsToDisable =[
  <thermalfoundation:tool.hammer_copper>,
  <thermalfoundation:tool.hammer_tin>,
  <thermalfoundation:tool.hammer_aluminum>,
  <thermalfoundation:tool.hammer_steel>,
  <thermalfoundation:tool.hammer_bronze>,
  <thermalfoundation:tool.hammer_electrum>,
  //note: Disable TF hammers
  <thermalfoundation:tool.bow_copper>,
  <thermalfoundation:tool.bow_tin>,
  <thermalfoundation:tool.bow_aluminum>,
  <thermalfoundation:tool.bow_steel>,
  <thermalfoundation:tool.bow_bronze>,
  <thermalfoundation:tool.bow_electrum>,
  //note: Disable TF bow
  <thermalfoundation:tool.sickle_copper>,
  <thermalfoundation:tool.sickle_tin>,
  <thermalfoundation:tool.sickle_aluminum>,
  <thermalfoundation:tool.sickle_steel>,
  <thermalfoundation:tool.sickle_bronze>,
  <thermalfoundation:tool.sickle_electrum>,
  //note: Disable TF sickle
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
