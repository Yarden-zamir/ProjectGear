import crafttweaker.item.IItemStack;
//disable applied energistics disc storage
val itemsToDisable =[
  <appliedenergistics2:storage_cell_1k>,
  <appliedenergistics2:storage_cell_4k>,
  <appliedenergistics2:storage_cell_16k>,
  <appliedenergistics2:storage_cell_64k>,
  <appliedenergistics2:drive>,
  //note: Disabled to encourage more complex storage solutions
  <appliedenergistics2:molecular_assembler>,
  //note: Disabled to encourage more interesting crafting setups
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable); 


val goldIngot = <ore:ingotGold>;
val nickelIngot = <ore:ingotNickel>;
val redstone = <ore:dustRedstone>;
val glass = <ore:blockGlass>;


//Replace iron with nickel
recipes.removeShaped(<appliedenergistics2:material:25>);
recipes.addShaped(<appliedenergistics2:material:25> * 2,
	[[goldIngot, nickelIngot, null],
	 [redstone, <appliedenergistics2:material:23>, nickelIngot],
	 [goldIngot, nickelIngot, null]]);


recipes.removeShaped(<appliedenergistics2:material:28>);
recipes.addShaped(<appliedenergistics2:material:28> * 2,
	[[<minecraft:diamond>, nickelIngot, null],
	 [redstone, <appliedenergistics2:material:23>, nickelIngot],
	 [<minecraft:diamond>, nickelIngot, null]]);

recipes.removeShaped(<appliedenergistics2:interface>);
recipes.addShaped(<appliedenergistics2:interface>,
	[[nickelIngot, glass, nickelIngot],
	 [<appliedenergistics2:material:44>, null, <appliedenergistics2:material:43>],
	 [nickelIngot, glass, nickelIngot]]);


recipes.removeShaped(<appliedenergistics2:part:240>);
recipes.addShaped(<appliedenergistics2:part:240>,
	[[null, null, null],
	 [null, <appliedenergistics2:material:44>, null],
	 [nickelIngot, <minecraft:sticky_piston>, nickelIngot]]);


recipes.removeShaped(<appliedenergistics2:part:260>);
recipes.addShaped(<appliedenergistics2:part:260>,
	[[null, null, null],
	 [nickelIngot, <appliedenergistics2:material:43>, nickelIngot],
	 [null, <minecraft:piston>, null]]);


//Press recipes
var ingotSteel = <ore:ingotSteel>;
var plateTin = <ore:plateTin>;
var plateLead = <ore:plateLead>;
recipes.addShaped(<appliedenergistics2:material:13>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateLead,<immersiveengineering:mold>,plateLead],
  [ingotSteel,plateTin,ingotSteel]]);
recipes.addShaped(<appliedenergistics2:material:14>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateLead,<immersiveengineering:mold:2>,plateLead],
  [ingotSteel,plateTin,ingotSteel]]);
recipes.addShaped(<appliedenergistics2:material:15>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateLead,<immersiveengineering:mold:1>,plateLead],
  [ingotSteel,plateTin,ingotSteel]]);
recipes.addShaped(<appliedenergistics2:material:19>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateLead,<immersiveengineering:mold:7>,plateLead],
  [ingotSteel,plateTin,ingotSteel]]);
