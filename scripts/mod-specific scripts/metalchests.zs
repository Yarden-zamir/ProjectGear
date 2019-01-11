import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  // Chest upgrades except those that upgrade wooden chests to metal chests
  <metalchests:chest_upgrade:6>,
  <metalchests:chest_upgrade:7>,
  <metalchests:chest_upgrade:8>,
  <metalchests:chest_upgrade:9>,
  <metalchests:chest_upgrade:10>,
  <metalchests:chest_upgrade:11>,
  <metalchests:chest_upgrade:12>,
  <metalchests:chest_upgrade:13>,
  <metalchests:chest_upgrade:14>,
  <metalchests:chest_upgrade:15>,
  <metalchests:chest_upgrade:16>,
  <metalchests:chest_upgrade:17>,
  <metalchests:chest_upgrade:18>,
  <metalchests:chest_upgrade:19>,
  <metalchests:chest_upgrade:20>,
  // Hungry chest upgrades except those that upgrade wooden hungry chests to metal hungry chests
  <metalchests:hungry_chest_upgrade:6>,
  <metalchests:hungry_chest_upgrade:7>,
  <metalchests:hungry_chest_upgrade:8>,
  <metalchests:hungry_chest_upgrade:9>,
  <metalchests:hungry_chest_upgrade:10>,
  <metalchests:hungry_chest_upgrade:11>,
  <metalchests:hungry_chest_upgrade:12>,
  <metalchests:hungry_chest_upgrade:13>,
  <metalchests:hungry_chest_upgrade:14>,
  <metalchests:hungry_chest_upgrade:15>,
  <metalchests:hungry_chest_upgrade:16>,
  <metalchests:hungry_chest_upgrade:17>,
  <metalchests:hungry_chest_upgrade:18>,
  <metalchests:hungry_chest_upgrade:19>,
  <metalchests:hungry_chest_upgrade:20>,
  // Silver chest
  <metalchests:metal_chest:2>,
  // Silver hungry chest
  <metalchests:hungry_metal_chest:2>,
  // Wood > silver chest upgrade
  <metalchests:chest_upgrade:2>,
  // Hungry chest > silver hungry chest upgrade
  <metalchests:hungry_chest_upgrade:2>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  <metalchests:chest_upgrade:6>,
  <metalchests:chest_upgrade:7>,
  <metalchests:chest_upgrade:8>,
  <metalchests:chest_upgrade:9>,
  <metalchests:chest_upgrade:10>,
  <metalchests:chest_upgrade:11>,
  <metalchests:chest_upgrade:12>,
  <metalchests:chest_upgrade:13>,
  <metalchests:chest_upgrade:14>,
  <metalchests:chest_upgrade:15>,
  <metalchests:chest_upgrade:16>,
  <metalchests:chest_upgrade:17>,
  <metalchests:chest_upgrade:18>,
  <metalchests:chest_upgrade:19>,
  <metalchests:chest_upgrade:20>,
  // Hungry chest upgrades except those that upgrade wooden hungry chests to metal hungry chests
  <metalchests:hungry_chest_upgrade:6>,
  <metalchests:hungry_chest_upgrade:7>,
  <metalchests:hungry_chest_upgrade:8>,
  <metalchests:hungry_chest_upgrade:9>,
  <metalchests:hungry_chest_upgrade:10>,
  <metalchests:hungry_chest_upgrade:11>,
  <metalchests:hungry_chest_upgrade:12>,
  <metalchests:hungry_chest_upgrade:13>,
  <metalchests:hungry_chest_upgrade:14>,
  <metalchests:hungry_chest_upgrade:15>,
  <metalchests:hungry_chest_upgrade:16>,
  <metalchests:hungry_chest_upgrade:17>,
  <metalchests:hungry_chest_upgrade:18>,
  <metalchests:hungry_chest_upgrade:19>,
  <metalchests:hungry_chest_upgrade:20>,
  // Silver chest
  <metalchests:metal_chest:2>,
  // Silver hungry chest
  <metalchests:hungry_metal_chest:2>,
  // Wood > silver chest upgrade
  <metalchests:chest_upgrade:2>,
  // Hungry chest > silver hungry chest upgrade
  <metalchests:hungry_chest_upgrade:2>,
  // Wood > metal chest upgrades
  <metalchests:chest_upgrade:0>,
  <metalchests:chest_upgrade:1>,
  <metalchests:chest_upgrade:3>,
  <metalchests:chest_upgrade:4>,
  <metalchests:chest_upgrade:5>,
  // Hungry chest > metal hungry chest upgrades
  <metalchests:hungry_chest_upgrade:0>,
  <metalchests:hungry_chest_upgrade:1>,
  <metalchests:hungry_chest_upgrade:3>,
  <metalchests:hungry_chest_upgrade:4>,
  <metalchests:hungry_chest_upgrade:5>,
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

val plank = <ore:plankWood>;
val chest = <ore:chestWood>;
val copper = <ore:ingotCopper>;
val iron = <ore:ingotIron>;
val gold = <ore:ingotGold>;
val diamond = <ore:gemDiamond>;
val obsidian = <ore:obsidian>;

// Upgrades:
recipes.addShaped(<metalchests:chest_upgrade:0>,
	[[copper, copper, copper],
	 [copper, copper, copper],
	 [plank, copper, copper]]);
	 
recipes.addShaped(<metalchests:chest_upgrade:1>,
	[[iron, iron, iron],
	 [iron, iron, iron],
	 [plank, iron, iron]]);
	 
recipes.addShaped(<metalchests:chest_upgrade:3>,
	[[gold, gold, gold],
	 [gold, gold, gold],
	 [plank, gold, gold]]);
	 
recipes.addShaped(<metalchests:chest_upgrade:4>,
	[[diamond, diamond, diamond],
	 [diamond, diamond, diamond],
	 [plank, diamond, diamond]]);
	 
recipes.addShaped(<metalchests:chest_upgrade:5>,
	[[obsidian, obsidian, obsidian],
	 [obsidian, obsidian, obsidian],
	 [plank, obsidian, obsidian]]);
	 
recipes.addShaped(<metalchests:hungry_chest_upgrade:0>,
	[[copper, copper, copper],
	 [copper, copper, copper],
	 [plank, copper, copper]]);
	 
recipes.addShaped(<metalchests:hungry_chest_upgrade:1>,
	[[iron, iron, iron],
	 [iron, iron, iron],
	 [plank, iron, iron]]);
	 
recipes.addShaped(<metalchests:hungry_chest_upgrade:3>,
	[[gold, gold, gold],
	 [gold, gold, gold],
	 [plank, gold, gold]]);
	 
recipes.addShaped(<metalchests:hungry_chest_upgrade:4>,
	[[diamond, diamond, diamond],
	 [diamond, diamond, diamond],
	 [plank, diamond, diamond]]);
	 
recipes.addShaped(<metalchests:hungry_chest_upgrade:5>,
	[[obsidian, obsidian, obsidian],
	 [obsidian, obsidian, obsidian],
	 [plank, obsidian, obsidian]]);
	 
// Chests:
recipes.addShaped(<metalchests:metal_chest:0>,
	[[copper, copper, copper],
	 [copper, chest, copper],
	 [copper, copper, copper]]);
	 
recipes.addShaped(<metalchests:metal_chest:1>,
	[[iron, iron, iron],
	 [iron, chest, iron],
	 [iron, iron, iron]]);
	 
recipes.addShaped(<metalchests:metal_chest:3>,
	[[gold, gold, gold],
	 [gold, chest, gold],
	 [gold, gold, gold]]);
	 
recipes.addShaped(<metalchests:metal_chest:4>,
	[[diamond, diamond, diamond],
	 [diamond, chest, diamond],
	 [diamond, diamond, diamond]]);
	 
recipes.addShaped(<metalchests:metal_chest:5>,
	[[obsidian, obsidian, obsidian],
	 [obsidian, chest, obsidian],
	 [obsidian, obsidian, obsidian]]);
	 
recipes.addShaped(<metalchests:hungry_metal_chest:0>,
	[[copper, copper, copper],
	 [copper, chest, copper],
	 [copper, copper, copper]]);
	 
recipes.addShaped(<metalchests:hungry_metal_chest:1>,
	[[iron, iron, iron],
	 [iron, chest, iron],
	 [iron, iron, iron]]);
	 
recipes.addShaped(<metalchests:hungry_metal_chest:3>,
	[[gold, gold, gold],
	 [gold, chest, gold],
	 [gold, gold, gold]]);
	 
recipes.addShaped(<metalchests:hungry_metal_chest:4>,
	[[diamond, diamond, diamond],
	 [diamond, chest, diamond],
	 [diamond, diamond, diamond]]);
	 
recipes.addShaped(<metalchests:hungry_metal_chest:5>,
	[[obsidian, obsidian, obsidian],
	 [obsidian, chest, obsidian],
	 [obsidian, obsidian, obsidian]]);