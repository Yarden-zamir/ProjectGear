// Nuclearcraft nether ores work like overworld ores
<ore:oreMagnesium>.add(<contenttweaker:nether_magnesium_ore>);
<ore:oreLithium>.add(<contenttweaker:nether_lithium_ore>);
<ore:oreBoron>.add(<contenttweaker:nether_boron_ore>);
<ore:oreUranium>.add(<contenttweaker:nether_uranium_ore>);
<ore:oreThorium>.add(<contenttweaker:nether_thorium_ore>);

// Items:
<ore:plateTreated>.add(<contenttweaker:treated_plate>);
<ore:oiledLeather>.add(<contenttweaker:oiled_leather>);

// Metals:
<ore:blockImpureSteel>.add(<contenttweaker:impure_steel_block>);
<ore:ingotImpureSteel>.add(<contenttweaker:impure_steel_ingot>);
<ore:nuggetImpureSteel>.add(<contenttweaker:impure_steel_nugget>);

// Nether Gold Ore works like Gold Ore
<ore:oreGold>.add(<contenttweaker:nether_gold_ore>);
<ore:oreNetherGold>.add(<contenttweaker:nether_gold_ore>);

// Smelt ores into ingots
furnace.addRecipe(<minecraft:gold_ingot>, <contenttweaker:nether_gold_ore>, 1.0);
furnace.addRecipe(<nuclearcraft:ingot:7>, <contenttweaker:nether_magnesium_ore>, 1.0);
furnace.addRecipe(<nuclearcraft:ingot:6>, <contenttweaker:nether_lithium_ore>, 1.0);
furnace.addRecipe(<nuclearcraft:ingot:5>, <contenttweaker:nether_boron_ore>, 1.0);
furnace.addRecipe(<nuclearcraft:ingot:4>, <contenttweaker:nether_uranium_ore>, 1.0);
furnace.addRecipe(<nuclearcraft:ingot:3>, <contenttweaker:nether_thorium_ore>, 1.0);