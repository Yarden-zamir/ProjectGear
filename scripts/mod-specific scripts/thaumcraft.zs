import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.events.IEventManager;

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
  if(event.block.definition.id == "thaumcraft:leaves_greatwood") { //Checks if block broken is a greatwood leaf
    if(event.silkTouch) //Checks if block was broken with silk touch
      return;
    event.addItem(<thaumcraft:amber>.weight(0.01)); //adds amber to the drop list with a 1% chance
  }
});