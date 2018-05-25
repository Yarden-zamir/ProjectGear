	import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
  <waystones:waystone> : "Allows you to teleport to any other waystone you've activated. Can be crafted or found in any village. Creative players can set it to public, which means any player can teleport to it even without activating it themselves.",
  <waystones:return_scroll> : "Returns to the last waystone teleported to. Hold right click to activate. Consumed on use.",
  <waystones:warp_scroll> : "Teleport to any waystone you have activated. Acts as a portable waystone. Consumed on use.",
  <waystones:warp_stone> : "Teleport to any waystone you have activated. Acts as a portable waystone. It is not consumed, but has a long cooldown after each use."
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for waystones loaded successfully");
