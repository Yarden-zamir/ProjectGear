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

//Crafting recipes:

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
	 
	//Thermoelectric generator
recipes.removeShaped(<immersiveengineering:metal_device1:3>);
recipes.addShaped(<immersiveengineering:metal_device1:3>,
	[[steelIngot, steelIngot, steelIngot],
	 [<ore:plateAluminum>, <immersiveengineering:metal_decoration0:0>, <ore:plateAluminum>],
	 [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);
	 
	//Bucket
recipes.addShaped(<minecraft:bucket>,
	[[aluminumIngot, null, aluminumIngot],
	 [null, aluminumIngot, null]]);
	 
	//Piston
recipes.addShaped(<minecraft:piston>,
	[[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	 [<minecraft:cobblestone>, aluminumIngot, <minecraft:cobblestone>],
	 [<minecraft:cobblestone>, redstone, <minecraft:cobblestone>]]);
	 
recipes.addShaped(<minecraft:hopper>,
	[[aluminumIngot, null, aluminumIngot],
	 [aluminumIngot, <ore:chestWood>, aluminumIngot],
	 [null, aluminumIngot, null]]);
	
	
	//Hopper ducts:
recipes.addShaped(<hopperducts:hopperduct>,
	[[aluminumIngot, <ore:plankWood>, aluminumIngot],
	 [null, aluminumIngot, null]]);
	 
	//Resonating Machine Frame
recipes.addShaped(<deepresonance:machine_frame>,
	[[tinIngot, <deepresonance:resonating_plate>, tinIngot],
	 [<deepresonance:resonating_plate>, <minecraft:stone>, <deepresonance:resonating_plate>],
	 [tinIngot, <deepresonance:resonating_plate>, tinIngot]]);
	 
	 //Deep Resonance Tank
recipes.addShaped(<deepresonance:tank>,
	[[tinIngot, <minecraft:obsidian>, tinIngot],
	 [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
	 [tinIngot, <deepresonance:resonating_plate>, tinIngot]]);
	 
	 //Conveyor belt
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8,
	[[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
	 [aluminumIngot, <minecraft:redstone>, aluminumIngot]]);
	 
	//Rails
recipes.addShaped(<minecraft:rail> * 24,
	[[steelIngot, null, steelIngot],
	 [steelIngot, <immersiveengineering:material:0>, steelIngot],
	 [steelIngot, null, steelIngot]]);
	 
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2,
	[[aluminumIngot, <immersiveengineering:material:8>, aluminumIngot],
	 [copperIngot, copperIngot, copperIngot],
	 [aluminumIngot, <immersiveengineering:material:8>, aluminumIngot]]);
	 
	//Funky Locomotion:
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
	 
	 
	 //Thermite TNT recipe:
/*
recipes.addShaped(<minecraft:tnt> * 8,
	[[<advancedrocketry:thermite>, <ore:sand>, <advancedrocketry:thermite>],
	 [<ore:sand>, <advancedrocketry:thermite>, <ore:sand>],
	 [<advancedrocketry:thermite>, <ore:sand>, <advancedrocketry:thermite>]]);
*/
	 
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

	//Tinkers alloying
mods.tconstruct.Alloy.removeRecipe(<liquid:electrum>);
mods.tconstruct.Alloy.addRecipe(<liquid:electrum> * 2, [<liquid:gold> * 1, <liquid:copper> * 1]);

//Prevent Integrated Dynamics squeezer from doubling ores

/*
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<immersiveengineering:metal:*>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<libvulpes:productdust:*>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<morebees:dustiron>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<morebees:dustcopper>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<morebees:dustgold>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<morebees:dusttin>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<gadgetrymachines:dust_iron>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<gadgetrymachines:dust_gold>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<terraqueous:item_main:203>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<terraqueous:item_main:205>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:blaze_powder>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:dye:*>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:sugar>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:string>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:sand:*>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:coal>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:emerald>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:diamond>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:glowstone_dust>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:gravel>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:flint>, null);
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:prismarine_crystals>, null);
*/




