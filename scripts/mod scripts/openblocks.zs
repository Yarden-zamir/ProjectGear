import crafttweaker.item.IItemStack;

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);


recipes.removeShaped(<openblocks:sponge>);
recipes.removeShapeless(<openblocks:sponge>);

//## disabled through config:
//Elevator - there are alot of other ways to 'elevate' yourself

//Craft open blocks sponges with vanilla sponges and pipe sealant:
recipes.addShaped(<openblocks:sponge>,
	[[<minecraft:sponge>, <buildcrafttransport:waterproof>],
	 [<buildcrafttransport:waterproof>, <minecraft:sponge>]]);
