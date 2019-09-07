import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

// Hides items from JEI
val itemsToDisable =[
  // Coils
  // Unneeded crafting component
  <ironjetpacks:basic_coil>,
  <ironjetpacks:advanced_coil>,
  <ironjetpacks:elite_coil>,
  <ironjetpacks:ultimate_coil>,
  // Cells
  // Unneeded crafting component
  <ironjetpacks:survivalist_cell>,
  <ironjetpacks:basic_cell>,
  <ironjetpacks:architect_cell>,
  <ironjetpacks:cloudrider_cell>,
  <ironjetpacks:explorer_cell>,
  <ironjetpacks:soldier_cell>,
  // Thrusters
  // Unneeded crafting component
  <ironjetpacks:survivalist_thruster>,
  <ironjetpacks:basic_thruster>,
  <ironjetpacks:architect_thruster>,
  <ironjetpacks:cloudrider_thruster>,
  <ironjetpacks:explorer_thruster>,
  <ironjetpacks:soldier_thruster>,
  // Capacitors
  // Unneeded crafting component
  <ironjetpacks:survivalist_capacitor>,
  <ironjetpacks:basic_capacitor>,
  <ironjetpacks:architect_capacitor>,
  <ironjetpacks:cloudrider_capacitor>,
  <ironjetpacks:explorer_capacitor>,
  <ironjetpacks:soldier_capacitor>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

// Disabes crafting recipes
val craftingToDisable =[
  // Coils
  <ironjetpacks:basic_coil>,
  <ironjetpacks:advanced_coil>,
  <ironjetpacks:elite_coil>,
  <ironjetpacks:ultimate_coil>,
  // Cells
  <ironjetpacks:survivalist_cell>,
  <ironjetpacks:basic_cell>,
  <ironjetpacks:architect_cell>,
  <ironjetpacks:cloudrider_cell>,
  <ironjetpacks:explorer_cell>,
  <ironjetpacks:soldier_cell>,
  // Thrusters
  <ironjetpacks:survivalist_thruster>,
  <ironjetpacks:basic_thruster>,
  <ironjetpacks:architect_thruster>,
  <ironjetpacks:cloudrider_thruster>,
  <ironjetpacks:explorer_thruster>,
  <ironjetpacks:soldier_thruster>,
  // Capacitors
  <ironjetpacks:survivalist_capacitor>,
  <ironjetpacks:basic_capacitor>,
  <ironjetpacks:architect_capacitor>,
  <ironjetpacks:cloudrider_capacitor>,
  <ironjetpacks:explorer_capacitor>,
  <ironjetpacks:soldier_capacitor>,
  // Leather strap
  <ironjetpacks:strap>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);


// Disabled default recipes
recipes.removeShaped(<ironjetpacks:architect_jetpack>);
recipes.removeShaped(<ironjetpacks:cloudrider_jetpack>);
recipes.removeShaped(<ironjetpacks:explorer_jetpack>);
recipes.removeShaped(<ironjetpacks:basic_jetpack>);
recipes.removeShaped(<ironjetpacks:survivalist_jetpack>);

// Leather strap recipe
recipes.addShaped(<ironjetpacks:strap>,
	[[<minecraft:leather>, <ore:ingotIron>, <minecraft:leather>]]);
	
recipes.addShaped(<ironjetpacks:strap>,
	[[<minecraft:leather>, <ore:ingotTin>, <minecraft:leather>]]);

// Craft survivalist's jetpack
// Has full energy when crafted
recipes.addShaped(<ironjetpacks:survivalist_jetpack>.withTag({Energy: 5000}),
	[[<botania:livingwood:1>, <ore:dustRedstone>, <botania:livingwood:1>],
	 [<botania:livingwood:1>, <ironjetpacks:strap>, <botania:livingwood:1>],
	 [<minecraft:blaze_powder>, null, <minecraft:blaze_powder>]]);
	 
recipes.addShaped(<ironjetpacks:survivalist_jetpack>.withTag({Energy: 5000}),
	[[<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>],
	 [<ore:plankTreatedWood>, <ironjetpacks:strap>, <ore:plankTreatedWood>],
	 [<minecraft:blaze_powder>, null, <minecraft:blaze_powder>]]);
	 
// Craft basic jetpack
recipes.addShaped(<ironjetpacks:basic_jetpack>,
	[[<ore:ingotTin>, <projectred-expansion:charged_battery>, <ore:ingotTin>],
	 [<ore:ingotTin>, <ironjetpacks:strap>, <ore:ingotTin>],
	 [<ore:dustBlaze>, null, <ore:dustBlaze>]]);
	
// Upgrade basic jetpack to architect jetpack
// Maintains the RF stored in the basic jetpack
recipes.addShapeless("gear_shapeless_architectJetpack", <ironjetpacks:architect_jetpack>, [<minecraft:potion>.withTag({Potion: "cofhcore:levitation"}), <ironjetpacks:basic_jetpack>.marked("basic_jetpack").noReturn()], function(out, ins, cInfo) {
    return out.withTag(ins.basic_jetpack.tag);
  }, null);
 
// Upgrade basic jetpack to cloudrider jetpack
// Maintains the RF stored in the basic jetpack 
recipes.addShapeless("gear_shapeless_cloudriderJetpack", <ironjetpacks:cloudrider_jetpack>, [<tconstruct:materials:13>, <ironjetpacks:basic_jetpack>.marked("basic_jetpack").noReturn()], function(out, ins, cInfo) {
    return out.withTag(ins.basic_jetpack.tag);
  }, null);
  
// Upgrade basic jetpack to explorer jetpack
// Maintains the RF stored in the basic jetpack
recipes.addShapeless("gear_shapeless_explorerJetpack", <ironjetpacks:explorer_jetpack>, [<tconstruct:materials:12>, <ironjetpacks:basic_jetpack>.marked("basic_jetpack").noReturn()], function(out, ins, cInfo) {
    return out.withTag(ins.basic_jetpack.tag);
  }, null);
  
// Upgrade basic jetpack to soldier jetpack
// Maintains the RF stored in the basic jetpack
recipes.addShapeless("gear_shapeless_soldierJetpack", <ironjetpacks:soldier_jetpack>, [<minecraft:diamond>, <minecraft:diamond>, <ironjetpacks:basic_jetpack>.marked("basic_jetpack").noReturn()], function(out, ins, cInfo) {
    return out.withTag(ins.basic_jetpack.tag);
  }, null);
  
// Repair survivalist jetpack with blaze powder
recipes.addShapeless(<ironjetpacks:survivalist_jetpack>.withTag({Energy: 5000}), [<ironjetpacks:survivalist_jetpack>, <minecraft:blaze_powder>]);