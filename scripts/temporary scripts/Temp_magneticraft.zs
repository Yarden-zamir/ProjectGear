import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;


//Disable Mekanism machines

val itemsToDisable =[
  <magneticraft:small_tank>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

// plates

recipes.replaceAllOccurences(<magneticraft:light_plates>, <ore:plateIron>);
recipes.replaceAllOccurences(<magneticraft:light_plates:1>, <ore:plateGold>);
recipes.replaceAllOccurences(<magneticraft:light_plates:2>, <ore:plateCopper>);
recipes.replaceAllOccurences(<magneticraft:light_plates:6>, <ore:plateSteel>);

recipes.replaceAllOccurences(<magneticraft:heavy_plates>, <ore:plateIron>);
recipes.replaceAllOccurences(<magneticraft:heavy_plates:1>, <ore:plateGold>);
recipes.replaceAllOccurences(<magneticraft:heavy_plates:2>, <ore:plateCopper>);
recipes.replaceAllOccurences(<magneticraft:heavy_plates:6>, <ore:plateSteel>);

recipes.replaceAllOccurences(<ore:lightPlateTungsten>, <ore:plateNickel>);
recipes.replaceAllOccurences(<ore:lightPlateLead>, <ore:plateTin>);
recipes.replaceAllOccurences(<magneticraft:ingots:5>, <ore:ingotNickel>);

//Electric heater
recipes.removeShaped(<magneticraft:electric_heater>);
recipes.addShaped(<magneticraft:electric_heater>,
	[[<ore:ingotIron>, <magneticraft:crafting:3>, <ore:ingotIron>],
	 [<ore:ingotIron>, <ore:ingotNickel>, <ore:ingotIron>],
	 [<ore:ingotIron>, <magneticraft:crafting:3>, <ore:ingotIron>]]);


// striped machine block

val inkSac = <minecraft:dye:0>;
val goldPlate = <ore:plateGold>;
	
// Electric Connector Iron and Nickel Thermionic Fabricator recipe
// Iron recipe
mods.forestry.ThermionicFabricator.addCast(<magneticraft:connector> * 8,
    [[null,null,null],
    [null,<minecraft:iron_ingot>,null],
    [<ore:stone>,<ore:ingotCopper>,<ore:stone>]],
    <liquid: glass> * 500);
// Nickel recipe
mods.forestry.ThermionicFabricator.addCast(<magneticraft:connector> * 8,
    [[null,null,null],
    [null,<ore:ingotNickel>,null],
    [<ore:stone>,<ore:ingotCopper>,<ore:stone>]],
    <liquid: glass> * 500);
	
#Script segment by boblovepsi
 
// misc
 
val plateIron = <ore:plateIron>;
val copperPlate = <ore:plateCopper>;
val batteryLow = <magneticraft:battery_item_low>;
 
recipes.remove(<magneticraft:multiblock_parts:3>);
recipes.addShaped("multiblock_part_striped_ink_sac", <magneticraft:multiblock_parts:3>,
    [[inkSac, goldPlate, inkSac],
    [goldPlate, <minecraft:stone:0>, goldPlate],
    [inkSac, goldPlate, inkSac]]);
 
recipes.remove(<magneticraft:solar_tower>);
recipes.addShaped("solar_tower_tin", <magneticraft:solar_tower>,
    [[null, null],
    [<minecraft:paper>, <ore:plateTin>]]);
 
recipes.remove(<magneticraft:multiblock_parts:1>);
recipes.addShaped("gear_multiblock_part_electrical_iron", <magneticraft:multiblock_parts:1>*2,
    [[plateIron, <ore:blockLapis>, inkSac],
    [<ore:blockLapis>, <ore:blockQuartz>, <ore:blockLapis>],
    [inkSac, <ore:blockLapis>, inkSac]]);
 
recipes.remove(<magneticraft:crafting:2>);
recipes.addShaped("motor_copper", <magneticraft:crafting:2>*2,
    [[<ore:ingotCopper>, plateIron, <ore:nuggetCopper>],
    [<magneticraft:copper_coil>, <ore:dustRedstone>, <ore:ingotIron>],
    [<ore:ingotCopper>, plateIron, <ore:nuggetCopper>]]);
 
recipes.remove(<magneticraft:battery_item_medium>);
recipes.addShaped("battery_medium_copper", <magneticraft:battery_item_medium>,
    [[null, <ore:nuggetCopper>, null],
    [batteryLow, copperPlate, batteryLow],
    [batteryLow, copperPlate, batteryLow]]);
 
recipes.remove(batteryLow);
recipes.addShaped("battery_low_copper", batteryLow,
    [[<ore:nuggetIron>, <ore:nuggetCopper>, <ore:nuggetIron>],
    [copperPlate, <ore:dustSulfur>, copperPlate],
    [copperPlate, <ore:dustSulfur>, copperPlate]]);
 
recipes.remove(<magneticraft:multiblock_parts:1>);
recipes.addShaped("multiblock_part_electrical_iron", <magneticraft:multiblock_parts:1>*2,
    [[plateIron, <ore:blockLapis>, plateIron],
    [<ore:blockLapis>, <ore:blockQuartz>, <ore:blockLapis>],
    [plateIron, <ore:blockLapis>, plateIron]]);
 
 
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:iron_ingot>);
mods.magneticraft.CrushingTable.addRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:32>, false);
 
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:gold_ingot>);
mods.magneticraft.CrushingTable.addRecipe(<minecraft:gold_ingot>, <thermalfoundation:material:33>, false);
 
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ingots:2>);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:320>, false);
 
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ingots:3>);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:131>, <thermalfoundation:material:323>, false);

mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ingots:6>);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:160>, <thermalfoundation:material:320>, false);
 
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ingots:5>);


recipes.removeShaped(<magneticraft:nuggets:5>);
recipes.removeShaped(<magneticraft:storage_blocks:3>);
recipes.removeShaped(<magneticraft:tungsten_gear>);

// Electric Connector craft 4 instead of 8
recipes.addShapedMirrored(<magneticraft:connector> * 2,
    [[null, null, null],
    [null, <ore:ingotIron>, null],
    [<ore:stone>, <ore:ingotCopper>, <ore:stone>]]);

recipes.addShapedMirrored(<magneticraft:connector> * 2,
    [[null, null, null],
    [null, <ore:ingotNickel>, null],
    [<ore:stone>, <ore:ingotCopper>, <ore:stone>]]);