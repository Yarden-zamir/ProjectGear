print("Beginning translocationmod.zs");

recipes.removeShaped(<transloc:block_translocator>);

recipes.addShaped(<transloc:block_translocator> * 4,
	[[<quark:sturdy_stone>, <thermalfoundation:material:512>, <quark:sturdy_stone>],
	 [<quark:sturdy_stone>, <waystones:warp_stone>, <quark:sturdy_stone>],
	 [<quark:sturdy_stone>, <thermalfoundation:material:512>, <quark:sturdy_stone>]]);
	 
recipes.addShaped(<transloc:block_translocator> * 1,
	[[<quark:sturdy_stone>, <thermalfoundation:material:512>, <quark:sturdy_stone>],
	 [<quark:sturdy_stone>, <terraqueous:item_main:51>, <quark:sturdy_stone>],
	 [<quark:sturdy_stone>, <thermalfoundation:material:512>, <quark:sturdy_stone>]]);

print("Completed translocationmod.zs");