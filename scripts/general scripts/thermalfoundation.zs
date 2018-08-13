import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

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
  <thermalfoundation:material:864>,
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  <thermalfoundation:material:24>,
  <thermalfoundation:material:25>,
  <thermalfoundation:material:156>,
  <thermalfoundation:material:256>,
  <thermalfoundation:material:258>,
  <thermalfoundation:material:257>,
  <thermalfoundation:material:259>,
  <thermalfoundation:material:260>,
  <thermalfoundation:material:261>,
  <thermalfoundation:material:262>,
  <thermalfoundation:material:263>,
  <thermalfoundation:material:264>,
  <thermalfoundation:material:294>,
  <thermalfoundation:material:293>,
  <thermalfoundation:material:292>,
  <thermalfoundation:material:291>,
  <thermalfoundation:material:290>,
  <thermalfoundation:material:289>,
  <thermalfoundation:material:288>,
  //Makes gears uncraftable. Machines are required instead.
  <thermalfoundation:material:32>,
  <thermalfoundation:material:33>,
  <thermalfoundation:material:327>,
  <thermalfoundation:material:328>,
  <thermalfoundation:material:352>,
  <thermalfoundation:material:353>,
  <thermalfoundation:material:354>,
  <thermalfoundation:material:355>,
  <thermalfoundation:material:356>,
  <thermalfoundation:material:357>,
  <thermalfoundation:material:358>,
  <thermalfoundation:material:359>,
  <thermalfoundation:material:320>,
  <thermalfoundation:material:321>,
  <thermalfoundation:material:322>,
  <thermalfoundation:material:323>,
  <thermalfoundation:material:324>,
  <thermalfoundation:material:325>,
  <thermalfoundation:material:326>,
  //Makes plates uncraftable. Machines are required instead.
  <thermalfoundation:material:97>,
  <thermalfoundation:material:98>,
  <thermalfoundation:material:99>,
  <thermalfoundation:material:100>,
  //Makes electrum, bronze, constantan and invar dust uncraftable
  <thermalfoundation:material:101>,
  <thermalfoundation:material:102>,
  <thermalfoundation:material:103>
  //Makes Signalium, Lumium, and Enderium blends uncraftable.


] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);
furnace.remove(<thermalfoundation:material:864>);
//get asthetic ingots through alchemy
val ingotProgressionArray =[
  <thermalfoundation:material:130>, //silver
  <thermalfoundation:material:131>, //lead
  <thermalfoundation:material:132>, //aluminum
  <thermalfoundation:material:133>, //nickel
] as IItemStack[];
scripts.functions.addAlchemyStages(ingotProgressionArray, 100);

//Blazing Pyrotheum recipes
mods.tconstruct.Melting.addRecipe(
  <liquid:pyrotheum>*144, <thermalfoundation:material:1024>
);
mods.factorytech.Crucible.addRecipe(
  <liquid:pyrotheum>*144, <thermalfoundation:material:1024>, false
);

//mess with phyto-gro recipes
var fert = <thermalfoundation:fertilizer:1>;

recipes.remove(fert);
recipes.addShapeless(fert,
	[<ore:dustWood>,<ore:dustWood>, <ore:itemSlagRich>,<ore:dustSaltpeter>]);
recipes.addShapeless(fert*4,
  [<ore:dustCharcoal>, <ore:itemSlagRich>,<ore:dustSaltpeter>]);

//add things to OreDict
<ore:drillheadIron>.add(<thermalfoundation:material:656>);

//Renames
scripts.functions.rename(<thermalfoundation:material:832>,"Solidified Brine");
scripts.functions.rename(<thermalfoundation:material:833>,"Flinted Ash");
