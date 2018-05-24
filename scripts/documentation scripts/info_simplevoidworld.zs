import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
	<simplevoidworld:portal>: "When right clicked the portal will teleport player to small platform in void dimension. To get back click the portal again and you will be taken to the last bed you slept in or world spawn."
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for simple void world loaded successfully");
