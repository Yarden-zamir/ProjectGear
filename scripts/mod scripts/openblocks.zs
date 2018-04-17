import crafttweaker.item.IItemStack;

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);


recipes.removeShaped(<openblocks:sponge>);
recipes.removeShapeless(<openblocks:sponge>);

//## disabled through config:
//Elevator - there are alot of other ways to 'elevate' yourself

//Craft open blocks sponges with vanilla sponges and pipe sealant:
recipes.addShapedMirrored(<openblocks:sponge>,
	[[<minecraft:sponge>, <thermalfoundation:rockwool:*>],
	 [<thermalfoundation:rockwool:*>, <minecraft:sponge>]]);
