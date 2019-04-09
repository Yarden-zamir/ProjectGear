import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.events.IEventManager;

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
  if(event.block.definition.id == "thaumcraft:leaves_greatwood") { //Checks if block broken is a greatwood leaf
    if(event.silkTouch) //Checks if block was broken with silk touch
      return;
    event.addItem(<thaumcraft:amber>.weight(0.05)); //adds amber to the drop list with a 5% chance
  }
});

// Craft ambient grass
recipes.addShapeless(<thaumcraft:grass_ambient>, [<minecraft:grass>, <thaumcraft:crystal_essence>]);

// Craft ContentTweaker aluminum brass plates into Thaumcraft brass plates
recipes.addShapeless(<thaumcraft:plate>, [<contenttweaker:aluminum_brass_plate>]);