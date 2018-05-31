import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
  <randomthings:filteredsuperlubricentplatform> : "You can place an item filter in the GUI. Items that match the filter will fall through, all other entities will slide across it and experience no friction.",
  <randomthings:superlubricentplatform> : "Entities slide across it and experience no friction. Mobs and players that sneak will fall through it.",
  <randomthings:spectreplank> : "A blue plank with a transparent texture.",
  <randomthings:spectrelog> : "A blue log with a transparent texture.",
  <randomthings:naturecore> : "Spawns jungle leaves and logs in a 3x3x3 are around it. Spreads grass, long grass and flowers. Can be harvested with an axe with an obsidian mining level such as diamond.",
  <randomthings:ingredient:1> : "Can be used to create an artificial end portal. Mischief of Mice has a good tutorial explaining how this works.",
  <randomthings:ingredient:4> : "Displays the biome you're standing in. Primarily used to craft the biome sensor."
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for examplemod loaded successfully");