import crafttweaker.item.IItemStack;

val itemsToDisable =[
	// Bag storage
	// Disabled because it can convert bags into other bags. Loot bags in this pack are not tiered.
	<lootbags:loot_storage>,
	// Loot recycler
	// Disabled in order to prevent automatically creating loot bags. They should only be obtainable from Bountiful.
	<lootbags:loot_recycler>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
	// Bag storage
	<lootbags:loot_storage>,
	// Loot recycler
	<lootbags:loot_recycler>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);