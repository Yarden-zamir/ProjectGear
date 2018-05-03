val iron = <ore:ingotIron>;
val redstone = <ore:dustRedstone>;
val piston = <minecraft:piston>;
val steel = <ore:ingotSteel>;

recipes.removeShaped(<bedrockores:bedrock_miner>);

	//Craft bedrock miner with Forestry ingredients
recipes.addShaped(<bedrockores:bedrock_miner>,
	[[iron, redstone, iron],
	 [<forestry:thermionic_tubes:0>, <forestry:impregnated_casing>, <forestry:thermionic_tubes:0>],
	 [iron, piston, iron]]);

	//Craft bedrock miner with Immersive Engineering ingredients	 
recipes.addShaped(<bedrockores:bedrock_miner>,
	[[steel, redstone, steel],
	 [<immersiveengineering:wirecoil:0>, <immersiveengineering:metal_decoration0:4>, <immersiveengineering:wirecoil:0>],
	 [steel, piston, steel]]);

	//Craft bedrock miner with Factory Tech ingredients
recipes.addShaped(<bedrockores:bedrock_miner>,
	[[iron, redstone, iron],
	 [<factorytech:machinepart:12>, <minecraft:dropper>, <factorytech:machinepart:12>],
	 [iron, <factorytech:machinepart:15>, iron]]);