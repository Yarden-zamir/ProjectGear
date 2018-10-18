//Replace eye of tethering recipe:
furnace.remove(<impart:item_tethering>);
recipes.addShaped(<impart:item_tethering>,
  [[<ore:ingotElectrum>, <minecraft:ender_pearl>, <ore:ingotElectrum>],
   [<minecraft:ender_pearl>, <minecraft:ender_eye>, <minecraft:ender_pearl>],
   [<ore:ingotElectrum>, <minecraft:ender_pearl>, <ore:ingotElectrum>]]);
   
 mods.botania.ElvenTrade.addRecipe([<impart:item_tethering>], [<minecraft:ender_eye>]);