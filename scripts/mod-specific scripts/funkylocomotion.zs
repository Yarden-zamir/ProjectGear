import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

// Hides items from JEI
val itemsToDisable =[
	// Frame teleporter
	<funkylocomotion:teleporter>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

// Disabes crafting recipes
val craftingToDisable =[
	// Frame teleporter
	<funkylocomotion:teleporter>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

val invarIngot = <ore:ingotInvar>;
val electrumIngot = <ore:ingotElectrum>;

recipes.removeShaped(<funkylocomotion:frame_0:0>);
recipes.addShaped(<funkylocomotion:frame_0:0> * 8,
	[[invarIngot, invarIngot, invarIngot],
	 [<ore:nuggetInvar>, null, <ore:nuggetInvar>],
	 [invarIngot, invarIngot, invarIngot]]);

recipes.removeShaped(<funkylocomotion:booster>);
recipes.addShaped(<funkylocomotion:booster>,
	[[electrumIngot, electrumIngot, electrumIngot],
	 [invarIngot, <minecraft:piston>, invarIngot],
	 [invarIngot, <funkylocomotion:pusher:0>, invarIngot]]);

recipes.removeShaped(<funkylocomotion:frame_projector>);
recipes.addShaped(<funkylocomotion:frame_projector>,
	[[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>],
	 [invarIngot, <minecraft:piston>, invarIngot],
	 [invarIngot, <funkylocomotion:pusher:1>, invarIngot]]);

recipes.removeShaped(<funkylocomotion:pusher:0>);
recipes.addShaped(<funkylocomotion:pusher:0>,
	[[<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>],
	 [invarIngot, <minecraft:piston>, invarIngot],
	 [invarIngot, <minecraft:diamond>, invarIngot]]);

recipes.removeShaped(<funkylocomotion:wrench:2>);
recipes.addShaped(<funkylocomotion:wrench:2>,
	[[<funkylocomotion:wrench:0>, invarIngot, <funkylocomotion:wrench:0>],
	[null, invarIngot, null],
	[null, invarIngot, null]]);
