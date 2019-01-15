
// Changes recipes to not use lead, zinc or silver
recipes.remove(<railcraft:wire>);
recipes.addShaped("chargeShuntingWire", <railcraft:wire> * 8,
            [[<ore:ingotNickel>, <minecraft:paper>, <ore:ingotNickel>],
             [<minecraft:paper>, <railcraft:charge:4>, <minecraft:paper>],
             [<ore:ingotNickel>, <minecraft:paper>, <ore:ingotNickel>]]);
recipes.remove(<railcraft:manipulator:10>);
recipes.addShaped("fluxLoader", <railcraft:manipulator:10>,
            [[<minecraft:redstone_block>, <ore:blockNickel>, <minecraft:redstone_block>],
             [<ore:blockNickel>, <minecraft:redstone_block>, <ore:blockNickel>],
             [<minecraft:redstone_block>, <railcraft:detector:7>, <minecraft:redstone_block>]]);
recipes.remove(<railcraft:manipulator:11>);
recipes.addShaped("fluxUnloader", <railcraft:manipulator:11>,
            [[<minecraft:redstone_block>, <railcraft:detector:7>, <minecraft:redstone_block>],
             [<ore:blockNickel>, <minecraft:redstone_block>, <ore:blockNickel>],
             [<minecraft:redstone_block>, <ore:blockNickel>, <minecraft:redstone_block>]]);