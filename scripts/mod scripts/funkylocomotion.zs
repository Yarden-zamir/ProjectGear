import crafttweaker.item.IItemStack;

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val aluminumIngot = <ore:ingotAluminum>;
val electrumIngot = <ore:ingotElectrum>;


recipes.removeShaped(<funkylocomotion:frame_0:0>);
recipes.addShaped(<funkylocomotion:frame_0:0> * 8,
	[[aluminumIngot, aluminumIngot, aluminumIngot],
	 [<ore:nuggetAluminum>, null, <ore:nuggetAluminum>],
	 [aluminumIngot, aluminumIngot, aluminumIngot]]);

recipes.removeShaped(<funkylocomotion:booster>);
recipes.addShaped(<funkylocomotion:booster>,
	[[electrumIngot, electrumIngot, electrumIngot],
	 [aluminumIngot, <minecraft:piston>, aluminumIngot],
	 [aluminumIngot, <funkylocomotion:pusher:0>, aluminumIngot]]);

recipes.removeShaped(<funkylocomotion:frame_projector>);
recipes.addShaped(<funkylocomotion:frame_projector>,
	[[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>],
	 [aluminumIngot, <minecraft:piston>, aluminumIngot],
	 [aluminumIngot, <funkylocomotion:pusher:1>, aluminumIngot]]);

recipes.removeShaped(<funkylocomotion:pusher:0>);
recipes.addShaped(<funkylocomotion:pusher:0>,
	[[<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>],
	 [aluminumIngot, <minecraft:piston>, aluminumIngot],
	 [aluminumIngot, <minecraft:diamond>, aluminumIngot]]);

recipes.removeShaped(<funkylocomotion:wrench:2>);
recipes.addShaped(<funkylocomotion:wrench:2>,
	[[<funkylocomotion:wrench:0>, aluminumIngot, <funkylocomotion:wrench:0>],
	[null, aluminumIngot, null],
	[null, aluminumIngot, null]]);
