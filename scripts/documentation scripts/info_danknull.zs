import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;



val batch = {
  <danknull:dank_null:0> : "9 slots. Stores 128 items per slot. It will pick up any item that matches an item inside it. If it picks up more of that item than it can store, it will destroy them instead of cluttering your inventory. Hover over an item in the GUI to see how to change the extraction mode. Position/extraction settings are maintained even if you take all the items out and put them back in.",
  <danknull:dank_null:1> : "18 slots. Stores 512 items per slot.It will pick up any item that matches an item inside it. If it picks up more of that item than it can store, it will destroy them instead of cluttering your inventory. Hover over an item in the GUI to see how to change the extraction mode. Position/extraction settings are maintained even if you take all the items out and put them back in.",
  <danknull:dank_null:2> : "27 slots. Stores 1152 items per slot.It will pick up any item that matches an item inside it. If it picks up more of that item than it can store, it will destroy them instead of cluttering your inventory. Hover over an item in the GUI to see how to change the extraction mode. Position/extraction settings are maintained even if you take all the items out and put them back in.",
  <danknull:dank_null:3> : "36 slots. Stores 2048 items per slot.It will pick up any item that matches an item inside it. If it picks up more of that item than it can store, it will destroy them instead of cluttering your inventory. Hover over an item in the GUI to see how to change the extraction mode. Position/extraction settings are maintained even if you take all the items out and put them back in.",
  <danknull:dank_null:4> : "45 slots. Stores 3200 items per slot.It will pick up any item that matches an item inside it. If it picks up more of that item than it can store, it will destroy them instead of cluttering your inventory. Hover over an item in the GUI to see how to change the extraction mode. Position/extraction settings are maintained even if you take all the items out and put them back in.",
  <danknull:dank_null:5> : "54 slots. Stores 2.14 billion items per slot.It will pick up any item that matches an item inside it. If it picks up more of that item than it can store, it will destroy them instead of cluttering your inventory. Hover over an item in the GUI to see how to change the extraction mode. Position/extraction settings are maintained even if you take all the items out and put them back in.",
  <danknull:dank_null:6> : "Stores an infinite amount of each item contained. Creative only. Unlike the others, this one automatically exports items.",
  <danknull:danknull_dock> : "Hold a dank null and right click this station to dock it. This is the only way to open a dank null inventory or extract items from one. Items cannot be inserted with pipes."
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for dank null loaded successfully");