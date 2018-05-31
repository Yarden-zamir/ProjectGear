import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
  <akashictome:tome> : "Allows you to store multiple books in one item. Combine it with books in a crafting grid to add them. Right click to select the book you want to read. Left click to turn it back into an akashic tome.",
  //<akashictome:tome>.onlyWithTag({display: {Name: "Universal Guide"}}) : "This contains the guide books added by every mod in the pack. You get it when you start the world. It can also be crafted."
} as string[IItemStack];

addDescBatch(batch);

print("Documentation for akashictome loaded successfully");
