import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[

] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Faraday suit (new recipe added below)
  <immersiveengineering:faraday_suit_head>,
  <immersiveengineering:faraday_suit_chest>,
  <immersiveengineering:faraday_suit_legs>,
  <immersiveengineering:faraday_suit_feet>,
  // Thermoelectric generator
  <immersiveengineering:metal_device1:3>,
  // Water wheel
  <immersiveengineering:wooden_device1>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

val ironIngot = <ore:ingotIron>;
val goldIngot = <ore:ingotGold>;
val copperIngot = <ore:ingotCopper>;
val tinIngot = <ore:ingotTin>;
val leadIngot = <ore:ingotLead>;
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


// Faraday Armor (Aluminum plate replaced with Tin plate) recipes
// Faraday Helmut
recipes.addShapedMirrored(<immersiveengineering:faraday_suit_head>,
    [[null, null, null],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>]]);
// Faraday Chestplate
recipes.addShaped(<immersiveengineering:faraday_suit_chest>,
    [[<ore:plateTin>, null, <ore:plateTin>],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
    [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
// Faraday Leggings
recipes.addShaped(<immersiveengineering:faraday_suit_legs>,
    [[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>]]);
// Faraday Boots
recipes.addShapedMirrored(<immersiveengineering:faraday_suit_feet>,
    [[null, null, null],
    [<ore:plateTin>, null, <ore:plateTin>],
    [<ore:plateTin>, null, <ore:plateTin>]]);

// Change aluminum items to tin:
	// Adds stickTin ore dictionary tag to aluminium rod
var stickTin = <ore:stickTin>; //Declares new ore dictionary tag
stickTin.add(<immersiveengineering:material:3>);

	// Scaffolding
recipes.removeByRecipeName("immersiveengineering:metal_decoration/aluminum_scaffolding");
recipes.addShaped(<immersiveengineering:metal_decoration1:5> * 6, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>], [null, <ore:stickAluminum>, null], [<ore:stickAluminum>, null, <ore:stickAluminum>]]);

	// Fence
recipes.removeByRecipeName("immersiveengineering:metal_decoration/aluminum_fence");
recipes.addShaped(<immersiveengineering:metal_decoration1:4> * 3, [[<ore:ingotTin>, <ore:stickAluminum>, <ore:ingotTin>], [<ore:ingotTin>, <ore:stickAluminum>, <ore:ingotTin>]]);

	// Sheet metal
recipes.removeByRecipeName("immersiveengineering:sheetmetal/aluminum_sheetmetal");
recipes.addShaped(<immersiveengineering:sheetmetal:1> * 4, [[null, <ore:plateTin>, null], [<ore:plateTin>, null, <ore:plateTin>], [null, <ore:plateTin>, null]]);

	// Wall mount
recipes.removeByRecipeName("immersiveengineering:metal_decoration/aluminum_wallmount");
recipes.addShaped(<immersiveengineering:metal_decoration2:3> * 4, [[<ore:ingotTin>, <ore:ingotTin>], [<ore:ingotTin>, <ore:stickAluminum>]]);

	// Rod
recipes.removeByRecipeName("immersiveengineering:material/stick_aluminum");
recipes.addShaped(<immersiveengineering:material:3> * 4, [[<ore:ingotTin>], [<ore:ingotTin>]]);
 
// Steel:

// Removes the metal press recipe for the steel rod
// Note: Steel tool rods from Tinkers' are used instead
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:2>);

val steelStickOrRod = <ore:stickSteel> | <tconstruct:tool_rod>.withTag({Material: "steel"});

	// Fence
recipes.addShaped(<immersiveengineering:metal_decoration1> * 3, [[<ore:ingotSteel>, steelStickOrRod, <ore:ingotSteel>], [<ore:ingotSteel>, steelStickOrRod, <ore:ingotSteel>]]);

	// Scaffolding
recipes.addShaped(<immersiveengineering:metal_decoration1:1> * 6, [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], [null, steelStickOrRod, null], [steelStickOrRod, null, steelStickOrRod]]);

	// Wallmound
recipes.addShaped(<immersiveengineering:metal_decoration2:1> * 4, [[<ore:ingotSteel>, <ore:ingotSteel>], [<ore:ingotSteel>, steelStickOrRod]]);

	// Amplifier electron tube
recipes.addShaped(<immersiveengineering:toolupgrade:6>, [[<immersiveengineering:material:26>, <immersiveengineering:material:26>, <immersiveengineering:material:26>], [steelStickOrRod, <ore:wireCopper>, steelStickOrRod]]);

	// Metal laddar
recipes.addShaped(<immersiveengineering:metal_ladder> * 3, [[steelStickOrRod, null, steelStickOrRod], [steelStickOrRod, steelStickOrRod, steelStickOrRod], [steelStickOrRod, null, steelStickOrRod]]);

	// Structural Cable Connector
recipes.addShaped(<immersiveengineering:connector:6> * 8, [[<ore:ingotSteel>, steelStickOrRod, <ore:ingotSteel>], [<ore:ingotSteel>, null, <ore:ingotSteel>]]);

	// Fence gate
recipes.addShaped(<engineersdoors:fencegate_steel>, [[steelStickOrRod, <ore:ingotSteel>, steelStickOrRod], [steelStickOrRod, <ore:ingotSteel>, steelStickOrRod]]);

	// Strip curtain
recipes.addShaped(<immersiveengineering:cloth_device:2> * 3, [[steelStickOrRod, steelStickOrRod, steelStickOrRod], [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>], [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);

	// Revolver barrel
recipes.addShaped(<immersiveengineering:material:14>, [[steelStickOrRod, steelStickOrRod]]);

// Napalm recipe removal
mods.immersiveengineering.Mixer.removeRecipe(<liquid:napalm>);

// Napalm: Aluminum Dust -> Tin Dust
mods.immersiveengineering.Mixer.addRecipe(<liquid:napalm>, <liquid:gasoline>, [<ore:dustTin>, <ore:dustTin>, <ore:dustTin>], 2048);

// Change water wheel recipe to not require steel
recipes.addShaped(<immersiveengineering:wooden_device1>, 
	[[null, <immersiveengineering:material:10>, null], 
	 [<immersiveengineering:material:10>, <ore:ingotIron>, <immersiveengineering:material:10>], 
	  [null, <immersiveengineering:material:10>, null]]);
	  
// Change thermoelectric generator recipe to not require steel
recipes.addShaped(<immersiveengineering:metal_device1:3>, 
	[[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], 
	 [<ore:plateConstantan>, <immersiveengineering:metal_decoration0>, <ore:plateConstantan>], 
	 [<ore:plateConstantan>, <ore:plateConstantan>, <ore:plateConstantan>]]);
	 
// HV Wire Relay recipe removal
recipes.remove(<immersiveengineering:connector:5>);

// HV Wire Relay: Aluminum -> Nickel
recipes.addShaped(<immersiveengineering:connector:5> * 8, 
	[[null, <projectred-core:resource_item:103>, null],
	[<immersiveengineering:stone_decoration:8>, <ore:ingotNickel>, <immersiveengineering:stone_decoration:8>], 
	[<immersiveengineering:stone_decoration:8>, <ore:ingotNickel>, <immersiveengineering:stone_decoration:8>]]);
	
// HV Wire Connector recipe removal
recipes.remove(<immersiveengineering:connector:4>);

// HV Wire Connector: Aluminum -> Nickel
recipes.addShaped(<immersiveengineering:connector:4> * 4, 
	[[null, <projectred-core:resource_item:103>, null],
	[<minecraft:hardened_clay>, <ore:ingotNickel>, <minecraft:hardened_clay>], 
	[<minecraft:hardened_clay>, <ore:ingotNickel>, <minecraft:hardened_clay>]]);
	
// Engineer's Blueprint (Crafting Components) recipe removal
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));

// Engineer's Blueprint (Crafting Components) Aluminum -> Tin
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), 
	[[<ore:ingotCopper>, <ore:ingotTin>, <minecraft:iron_ingot>],
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], 
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);
	
// Tesla Coil Aluminum > Tin
recipes.removeByRecipeName("immersiveengineering:metal_devices/tesla_coil");
recipes.addShaped("gear_shaped_tesla_coil", <immersiveengineering:metal_device1:8>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>], [null, <immersiveengineering:metal_decoration0>, null], [<immersiveengineering:metal_device0:2>, <immersiveengineering:metal_decoration0>, <immersiveengineering:metal_device0:2>]]);

// Capacitors
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
 [nickelIngot, <ore:blockGold>, nickelIngot],
 [treatedWood, redstoneBlock, treatedWood]]);

// Conveyor belt
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8,
[[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
 [nickelIngot, <minecraft:redstone>, nickelIngot]]);

// Light engineering block
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2,
[[nickelIngot, <immersiveengineering:material:8>, nickelIngot],
 [copperIngot, copperIngot, copperIngot],
 [nickelIngot, <immersiveengineering:material:8>, nickelIngot]]);