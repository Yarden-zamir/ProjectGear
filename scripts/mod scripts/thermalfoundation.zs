import crafttweaker.item.IItemStack;
//Use pure daisy to get bog oak:
val ingotProgressionArray =[
  <thermalfoundation:material:130>, //silver
  <thermalfoundation:material:131>, //lead
  <thermalfoundation:material:132>, //aluminum
  <thermalfoundation:material:133>, //nickel
] as IItemStack[];
scripts.functions.addAlchemyStages(ingotProgressionArray, 100);


//Disable crafting of electrum/bronze blend with metal dust:
recipes.removeShapeless(<thermalfoundation:material:99>);
recipes.removeShapeless(<thermalfoundation:material:97>);