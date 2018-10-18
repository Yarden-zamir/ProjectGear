import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
	//Disables coils - unneeded crafting component
	<ironjetpacks:basic_coil>,
	<ironjetpacks:advanced_coil>,
	//Disables cells - unneeded crafting component
	<ironjetpacks:survivalist_cell>,
	<ironjetpacks:basic_cell>,
	<ironjetpacks:architect_cell>,
	<ironjetpacks:cloudrider_cell>,
	<ironjetpacks:explorer_cell>,
	//Disables thrusters - unneeded crafting component
	<ironjetpacks:survivalist_thruster>,
	<ironjetpacks:basic_thruster>,
	<ironjetpacks:architect_thruster>,
	<ironjetpacks:cloudrider_thruster>,
	<ironjetpacks:explorer_thruster>,
	//Disables capacitors - unneeded crafting component
	<ironjetpacks:survivalist_capacitor>,
	<ironjetpacks:basic_capacitor>,
	<ironjetpacks:architect_capacitor>,
	<ironjetpacks:cloudrider_capacitor>,
	<ironjetpacks:explorer_capacitor>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);


//Disabled default recipes
recipes.removeShaped(<ironjetpacks:architect_jetpack>);
recipes.removeShaped(<ironjetpacks:cloudrider_jetpack>);
recipes.removeShaped(<ironjetpacks:explorer_jetpack>);
recipes.removeShaped(<ironjetpacks:basic_jetpack>);
recipes.removeShaped(<ironjetpacks:survivalist_jetpack>);

//Craft survivalist's jetpack
//Has full energy when crafter
recipes.addShaped(<ironjetpacks:survivalist_jetpack>.withTag({Energy: 10000}),
	[[<ore:plankWood>, <ore:dustRedstone>, <ore:plankWood>],
	 [<ore:plankWood>, <ironjetpacks:strap>, <ore:plankWood>],
	 [<valkyrienwarfareworld:etheriumcrystal>, null, <valkyrienwarfareworld:etheriumcrystal>]]);
	 
//Craft basic jetpack
recipes.addShaped(<ironjetpacks:basic_jetpack>,
	[[<ore:ingotTin>, <projectred-expansion:charged_battery>, <ore:ingotTin>],
	 [<ore:ingotTin>, <ironjetpacks:strap>, <ore:ingotTin>],
	 [<ore:dustAerotheum>, null, <ore:dustAerotheum>]]);
	
//Upgrade basic jetpack to architect jetpack
//Maintains the RF stored in the basic jetpack
recipes.addShapeless("gear_shapeless_architectJetpack", <ironjetpacks:architect_jetpack>, [<minecraft:potion>.withTag({Potion: "cofhcore:levitation"}), <ironjetpacks:basic_jetpack>.marked("basic_jetpack").noReturn()], function(out, ins, cInfo) {
    return out.withTag(ins.basic_jetpack.tag);
  }, null);
 
//Upgrade basic jetpack to cloudrider jetpack
//Maintains the RF stored in the basic jetpack 
recipes.addShapeless("gear_shapeless_cloudriderJetpack", <ironjetpacks:cloudrider_jetpack>, [<tconstruct:materials:13>, <ironjetpacks:basic_jetpack>.marked("basic_jetpack").noReturn()], function(out, ins, cInfo) {
    return out.withTag(ins.basic_jetpack.tag);
  }, null);
  
//Upgrade basic jetpack to explorer jetpack
//Maintains the RF stored in the basic jetpack
recipes.addShapeless("gear_shapeless_explorerJetpack", <ironjetpacks:explorer_jetpack>, [<tconstruct:materials:12>, <ironjetpacks:basic_jetpack>.marked("basic_jetpack").noReturn()], function(out, ins, cInfo) {
    return out.withTag(ins.basic_jetpack.tag);
  }, null);
  
//Repair survivalist jetpack with etherium
recipes.addShapeless(<ironjetpacks:survivalist_jetpack>.withTag({Energy: 10000}), [<ironjetpacks:survivalist_jetpack>, <valkyrienwarfareworld:etheriumcrystal>]);