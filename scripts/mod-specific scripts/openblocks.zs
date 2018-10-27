import crafttweaker.item.IItemStack;

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);


recipes.removeShaped(<openblocks:sponge>);
recipes.removeShapeless(<openblocks:sponge>);

// The elevator and rotating elevators are disable in the config.
// I recommend using an RFTools elevator, slime blocks, or Random Things' compressed clouds instead

// Craft open blocks sponges with vanilla sponges and pipe sealant:
recipes.addShapedMirrored(<openblocks:sponge>,
	[[<minecraft:sponge>, <thermalfoundation:rockwool:*>],
	 [<thermalfoundation:rockwool:*>, <minecraft:sponge>]]);

// rename sponge to something more interesting
<openblocks:sponge>.displayName = "Hydrophilic Sponge";
