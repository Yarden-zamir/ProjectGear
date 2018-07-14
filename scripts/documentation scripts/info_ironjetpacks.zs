import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
	<ironjetpacks:survivalist_jetpack> : "Cheap, efficient, but with terrible stats. Craft with an Etherium shard to recharge.",
	<ironjetpacks:basic_jetpack> : "Has roughly average stats. Can be upgraded to three other jetpack types. Choose the upgraded jetpack that best suites how you use it.",
	<ironjetpacks:cloudrider_jetpack> : "Faster vertical speed, ideal for mountain climbing or people with very vertical bases.",
	<ironjetpacks:explorer_jetpack> : "Faster horizontal speed, ideal for exploring.",
	<ironjetpacks:architect_jetpack> : "Perfect hover mode, ideal for builders."
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for iron jetpacks loaded successfully");