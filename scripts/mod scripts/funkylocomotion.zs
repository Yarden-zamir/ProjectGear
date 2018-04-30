import crafttweaker.item.IItemStack;

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val invarIngot = <ore:ingotInvar>;
val electrumIngot = <ore:ingotElectrum>;


recipes.removeShaped(<funkylocomotion:frame_0:0>);
recipes.addShaped(<funkylocomotion:frame_0:0> * 8,
	[[nickelIngot, nickelIngot, nickelIngot],
	 [<ore:nuggetInvar>, null, <ore:nuggetInvar>],
	 [nickelIngot, nickelIngot, nickelIngot]]);

recipes.removeShaped(<funkylocomotion:booster>);
recipes.addShaped(<funkylocomotion:booster>,
	[[electrumIngot, electrumIngot, electrumIngot],
	 [nickelIngot, <minecraft:piston>, nickelIngot],
	 [nickelIngot, <funkylocomotion:pusher:0>, nickelIngot]]);

recipes.removeShaped(<funkylocomotion:frame_projector>);
recipes.addShaped(<funkylocomotion:frame_projector>,
	[[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>],
	 [nickelIngot, <minecraft:piston>, nickelIngot],
	 [nickelIngot, <funkylocomotion:pusher:1>, nickelIngot]]);

recipes.removeShaped(<funkylocomotion:pusher:0>);
recipes.addShaped(<funkylocomotion:pusher:0>,
	[[<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>],
	 [nickelIngot, <minecraft:piston>, nickelIngot],
	 [nickelIngot, <minecraft:diamond>, nickelIngot]]);

recipes.removeShaped(<funkylocomotion:wrench:2>);
recipes.addShaped(<funkylocomotion:wrench:2>,
	[[<funkylocomotion:wrench:0>, nickelIngot, <funkylocomotion:wrench:0>],
	[null, nickelIngot, null],
	[null, nickelIngot, null]]);
