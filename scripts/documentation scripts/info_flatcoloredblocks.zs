import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
	<flatcoloredblocks:coloredcraftingitem> : "Use with cobblestone, glass or glowstone and dyes in inventory to craft colored blocks."
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for flat colored blocks loaded successfully");
