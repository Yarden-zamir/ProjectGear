import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
  <waterworks:groundwater_pump> : "Water is finite unless you're in a swamp, beach, ocean or river biome. This block lets you extract water from below the bedrock. Requires a direct view of bedrock below it. Generates 100mb of water per second at a cost of 500 RF per second. It needs a line of water pipes to bedrock, but it can place them itself if you want at the cost of additional RF.",
  <waterworks:rain_tank_wood> : "Creates 100mb of water per second while in the rain. Cannot be upgraded.",
  <waterworks:rain_collector_controller> : "Creates 500mb per second of water, plus an additional 20 for each collector block. Collector blocks must be placed in a flat 7x7 area around the controller as a free-form multiblock. Right click with a pipe wrench to activate the multiblock.",
  //<waterworks:water_pipe> : "Used for the water pump.",
  <waterworks:materials:0> : "A crafting ingredient for the water pump.",
  <waterworks:materials:1> : "A crafting ingredient for the rain collector controllers.",
  //<waterworks:firework_rain> : "The entire world starts raining for about 5 minutes. The more ghast tears you add, the longer it lasts.",
  //<waterworks:firework_anti_rain> : "Stops rain for the entire world. The more sponges you add, the longer it lasts."
  //Note: The mod's tooltips for these items are solid. We can use those instead. The others are pretty brief.
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for waterworks loaded successfully");