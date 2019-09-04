#modloaded translocators

import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;


//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
  <translocators:translocator_part:0> : "Place two or more item translocators in the same block space. They must be attached to an item inventory, such as a chest. Right click the middle of one with an open hand and items from the iattached inventories will be sent to that inventory. Right click with an iron nugget to filter items.",
  <translocators:translocator_part:1> : "Place two or more liquid translocators in the same block space. They must be attached to a liquid inventory, such as a tank. Right click the middle of one with an open hand and liquids from the attached inventories will be sent to that inventory. Right click with an iron nugget to filter items."
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for translocators loaded successfully");