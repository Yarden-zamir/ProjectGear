import crafttweaker.item.IItemStack;

val itemsToDisable =[
  <rftools:crafter1>,
  <rftools:crafter2>,
  <rftools:crafter3>,
  //note: Disabled to encourage more interesting crafting setups
  <rftools:coalgenerator>,
  //Note: Too easy, too effective, too boring
  <rftools:shape_card:2>,
  <rftools:shape_card:3>,
  <rftools:shape_card:4>,
  <rftools:shape_card:5>,
  <rftools:shape_card:6>,
  <rftools:shape_card:7>,
  //Note: Way too powerful compared to other mining options

] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

//Resonating Machine Frame
recipes.addShaped(<deepresonance:machine_frame>,
[[<ore:ingotTin>,<deepresonance:resonating_plate>, <ore:ingotTin>],
 [<deepresonance:resonating_plate>,<minecraft:stone>,<deepresonance:resonating_plate>],
 [<ore:ingotTin>,<deepresonance:resonating_plate>, <ore:ingotTin>]]);


 //Replace iron with tin
 val tinIngot = <ore:ingotTin>;
 val glass = <ore:blockGlass>;
 val redstone = <ore:dustRedstone>;

recipes.removeShaped(<rftools:machine_frame>);
recipes.addShaped(<rftools:machine_frame>,
 [[tinIngot, <ore:dyeBlue>, tinIngot],
  [<ore:nuggetGold>, null, <ore:nuggetGold>],
  [tinIngot, <ore:dyeBlue>, tinIngot]]);

recipes.removeShaped(<rftools:screen>);
recipes.addShaped(<rftools:screen>,
 [[glass, glass, glass],
  [glass, <rftools:machine_base>, glass],
  [tinIngot, tinIngot, tinIngot]]);

recipes.removeShaped(<rftools:shape_card:0>);
recipes.addShaped(<rftools:shape_card:0>,
 [[<ore:paper>, <minecraft:brick>, <ore:paper>],
  [redstone, tinIngot, redstone],
  [<ore:paper>, <minecraft:brick>, <ore:paper>]]);

recipes.removeShaped(<rftools:syringe:0>);
recipes.addShaped(<rftools:syringe:0>,
 [[tinIngot, null, null],
  [null, tinIngot, null],
  [null, null, <minecraft:glass_bottle>]]);

recipes.removeShaped(<waterworks:water_pipe>);
recipes.addShaped(<waterworks:water_pipe> * 8,
 [[tinIngot, <minecraft:iron_bars>, tinIngot],
  [tinIngot, <minecraft:iron_bars>, tinIngot],
  [tinIngot, <minecraft:iron_bars>, tinIngot]]);

recipes.removeShaped(<waterworks:groundwater_pump>);
recipes.addShaped(<waterworks:groundwater_pump>,
 [[<minecraft:iron_bars>, <waterworks:materials:0>, <minecraft:iron_bars>],
  [tinIngot, <waterworks:rain_tank_wood>, tinIngot],
  [tinIngot, <waterworks:water_pipe>, tinIngot]]);
/*
recipes.removeShaped(<opencomputers:cable:0>);
recipes.addShaped(<opencomputers:cable:0> * 4,
 [[null, tinNugget, null],
  [tinNugget, redstone, tinNugget],
  [null, tinNugget, null]]);

recipes.removeShaped(<opencomputers:material:7>);
recipes.addShaped(<opencomputers:material:7> * 8,
 [[tinNugget, tinNugget, tinNugget],
  [redstone, <opencomputers:material:6>, redstone],
  [tinNugget, tinNugget, tinNugget]]);

recipes.removeShaped(<opencomputers:material:5>);
recipes.addShaped(<opencomputers:material:5>,
 [[tinNugget, null, null],
  [tinNugget, <opencomputers:material:4>, null],
  [tinNugget, <ore:nuggetGold>, null]]);

recipes.removeShaped(<opencomputers:material:6>);
recipes.addShaped(<opencomputers:material:6> * 8,
 [[tinNugget, tinNugget, tinNugget],
  [<ore:nuggetGold>, <ore:paper>, <ore:nuggetGold>],
  [null, redstone, null]]);
*/
