import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
	<thermalinnovation:drill:*> : "Is a tool that mines blocks using RF. It functions as both pickaxe and a shovel.",
	<thermalinnovation:saw:*> : "Is a tool that cuts blocks using RF. It functions as an axe and shears.",
	<thermalinnovation:magnet:*> : "Is a tool that attracts dropped items using RF. Use while sneaking for filter settings. Can be used as bauble.",
	<thermalinnovation:injector:*> : "Is a tool that stores and injects fluid potions. Can be used as bauble.",
	<thermalinnovation:quiver:*> : "Is an item that stores arrows and can automatically imbue them with fluid potions."
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for thermal innovation loaded successfully");
