import crafttweaker.item.IItemStack;

val itemsToDisable =[
  <immersiveengineering:metal_device1:13>,
  //note: Disabled to encourage more complex farms
] as IItemStack[];

scripts.functions.disableItems(itemsToDisable);
//
scripts.functions.applyOreDict(<immersiveengineering:material:18>,<ore:dustGraphite>,true);
//

val ironIngot = <ore:ingotIron>;
val goldIngot = <ore:ingotGold>;
val copperIngot = <ore:ingotCopper>;
val tinIngot = <ore:ingotTin>;
val leadIngot = <ore:ingotLead>;
val aluminumIngot = <ore:ingotAluminum>;
val nickelIngot = <ore:ingotNickel>;
val electrumIngot = <ore:ingotElectrum>;
val steelIngot = <ore:ingotSteel>;

val treatedWood = <ore:plankTreatedWood>;

val redstone = <ore:dustRedstone>;
val redstoneBlock = <ore:blockRedstone>;

val electrumDust = <thermalfoundation:material:97>;
val copperDust = <ore:dustCopper>;
val goldDust = <ore:dustGold>;
val tinNugget = <thermalfoundation:material:193>;
val glass = <ore:blockGlass>;

//Immersive Engineering capacitors
recipes.removeShaped(<immersiveengineering:metal_device0:0>);
recipes.addShaped(<immersiveengineering:metal_device0:0>,
[[ironIngot, ironIngot, ironIngot],
 [copperIngot, goldIngot, copperIngot],
 [treatedWood, redstone, treatedWood]]);

recipes.removeShaped(<immersiveengineering:metal_device0:1>);
recipes.addShaped(<immersiveengineering:metal_device0:1>,
[[ironIngot, ironIngot, ironIngot],
 [electrumIngot, goldIngot, electrumIngot],
 [treatedWood, redstoneBlock, treatedWood]]);

recipes.removeShaped(<immersiveengineering:metal_device0:2>);
recipes.addShaped(<immersiveengineering:metal_device0:2>,
[[ironIngot, ironIngot, ironIngot],
 [aluminumIngot, <ore:blockGold>, aluminumIngot],
 [treatedWood, redstoneBlock, treatedWood]]);

//Conveyor belt
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8,
[[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
 [aluminumIngot, <minecraft:redstone>, aluminumIngot]]);

//
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2,
[[aluminumIngot, <immersiveengineering:material:8>, aluminumIngot],
 [copperIngot, copperIngot, copperIngot],
 [aluminumIngot, <immersiveengineering:material:8>, aluminumIngot]]);


 //Electrum -> Corinthian Bronze

	//Crafting electrum grit
recipes.removeShapeless(<immersiveengineering:metal:16>);
recipes.addShapeless(<immersiveengineering:metal:16> * 2,
	[<ore:dustGold>, <ore:dustCopper>]);

	//Alloy smelter
mods.immersiveengineering.AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>, goldIngot, copperIngot, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>, goldDust, copperDust, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>, goldIngot, copperDust, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:7>, goldDust, copperIngot, 200);

	//Arc furnace
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:7>);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:7>, copperIngot, null, 100, 512, [goldIngot]);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:7>, copperDust, null, 100, 512, [goldDust]);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:7>, copperDust, null, 100, 512, [goldIngot]);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:7>, copperIngot, null, 100, 512, [goldDust]);

#renames:
scripts.functions.rename(<immersiveengineering:ore:5>,"Uraninite Ore");
