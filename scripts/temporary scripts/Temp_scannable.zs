recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>.withTag({energy: 5000}),
	[[<ore:ingotCopper>, null, <ore:ingotCopper>],
	 [<ore:ingotTin>, <wrcbe:material:1>, <ore:ingotTin>],
	 [null, <theoneprobe:probe>, null]]);
	 
//Upgrade basic jetpack to explorer jetpack
//Maintains the RF stored in the basic jetpack
recipes.addShapeless("gear_shapeless_rechargeScannableScanner", <scannable:scanner>.withTag({energy: 5000}), [<minecraft:redstone_block>, <minecraft:redstone_block>, <minecraft:redstone_block>, <scannable:scanner>.marked("scanner").noReturn()], function(out, ins, cInfo) {
    return out.withTag(ins.scanner.tag);
  }, null);