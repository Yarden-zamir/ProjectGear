print("Beginning translocationmod.zs");

recipes.removeShaped(<transloc:block_translocator>);

recipes.addShaped(<transloc:block_translocator> * 16,
	[[<quark:sturdy_stone>, <thermalfoundation:material:512>, <quark:sturdy_stone>],
	 [<quark:sturdy_stone>, <rftools:infused_enderpearl>, <quark:sturdy_stone>],
	 [<quark:sturdy_stone>, <thermalfoundation:material:512>, <quark:sturdy_stone>]]);
	 
recipes.addShaped(<transloc:block_translocator> * 1,
	[[<quark:sturdy_stone>, <thermalfoundation:material:512>, <quark:sturdy_stone>],
	 [<quark:sturdy_stone>, null, <quark:sturdy_stone>],
	 [<quark:sturdy_stone>, <thermalfoundation:material:512>, <quark:sturdy_stone>]]);

print("Completed translocationmod.zs");