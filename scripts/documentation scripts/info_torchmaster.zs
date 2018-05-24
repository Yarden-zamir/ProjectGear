import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;



//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
  <torchmaster:mega_torch> : "Prevents natural spawning of hostile monsters in a decent radius around the torch.",
  <torchmaster:terrain_lighter> : "Automatically places torches. Needs torches, fuel and a redstone signal.",
  <torchmaster:dread_lamp> : "Prevents natural spawning of passive animals like squids, bats or ocelots in a big radius around the lamp.",
  <torchmaster:feral_flare_lantern> : "Slowly illuminates large area. Removing the lantern causes the lights to slowly decay.",
  <torchmaster:frozen_pearl> : "Clears residual lights from a feral fire lantern."
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for torchmaster loaded successfully");
