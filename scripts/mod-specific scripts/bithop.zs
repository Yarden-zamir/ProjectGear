// Alternate recipes that use nickel instead of iron:
	// Bithop Nickel recipe
recipes.addShapedMirrored(<bithop:bithop>,
    [[null, null, null],
    [<ore:ingotNickel>, <ore:chestWood>, <ore:ingotNickel>],
    [null, <ore:ingotNickel>, null]]);
   
	// FluxHop Nickel recipe
recipes.addShaped(<bithop:fluxhop> * 5,
    [[<ore:ingotNickel>, <minecraft:redstone>, <ore:ingotNickel>],
    [<ore:ingotNickel>, <ore:chestWood>, <ore:ingotNickel>],
    [<minecraft:redstone>, <ore:ingotNickel>, <minecraft:redstone>]]);
   
	// ScrewHop Nickel recipe
recipes.addShaped(<bithop:screwhop>,
    [[null, null, <ore:ingotNickel>],
    [<ore:ingotNickel>, <ore:ingotNickel>, null],
    [<ore:chestWood>, <ore:ingotNickel>, null]]);
   
	// PullHop Nickel recipe
recipes.addShaped(<bithop:pullhop>,
    [[<ore:ingotNickel>, <ore:chestWood>, <ore:ingotNickel>],
    [<ore:ingotNickel>, null, <ore:ingotNickel>],
    [null, <ore:ingotNickel>, null]]);