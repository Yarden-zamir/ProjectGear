import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  <immersiveengineering:metal_device1:13>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Garden cloche
  <immersiveengineering:metal_device1:13>,
  <immersiveengineering:material:5>
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

// Alternate conveyor belt recipe which requires more iron, but paper instead of leather
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 4,
	[[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
	 [<ore:dustRedstone>, <ore:gearIron>, <ore:dustRedstone>]]);
	 
// Changes windmill sail recipe to require less hemp (384 > 64), but more treated wood (40 > 64)
recipes.addShaped(<immersiveengineering:material:5>,
	[[null, <immersiveengineering:material>, <immersiveengineering:material>],
	 [<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>],
	 [<immersiveengineering:material>, <immersiveengineering:material>, null]]);


// Makes Immersive Engineering relays and wire connectors require red alloy ingots. These must be made in the Thermionic Fabricator.

// MV Wire Connector recipe removal
recipes.remove(<immersiveengineering:connector:2>);
 
// MV Wire Connector Electric Connector recipe
recipes.addShaped(<immersiveengineering:connector:2> * 4,
    [[null, <projectred-core:resource_item:103>, null],
    [<minecraft:hardened_clay>, <minecraft:iron_ingot>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <minecraft:iron_ingot>, <minecraft:hardened_clay>]]);
 
// MV Wire Relay recipe removal
recipes.remove(<immersiveengineering:connector:3>);
 
// MV Wire Relay Electric Connector recipe
recipes.addShapedMirrored(<immersiveengineering:connector:3> * 8,
    [[null, null, null],
    [null, <projectred-core:resource_item:103>, null],
    [<minecraft:hardened_clay>, <minecraft:iron_ingot>, <minecraft:hardened_clay>]]);
	
// Removing Industrial Squeezer Leather Recipe
mods.immersiveengineering.Squeezer.removeItemRecipe(<minecraft:leather>);

// Change aluminum wire to tin wire
<immersiveengineering:material:22>.displayName = "Tin Wire";
recipes.addShapeless(<immersiveengineering:material:22>, [<ore:plateTin>, <minecraft:shears:*>.transformDamage()]);
recipes.addShapeless(<immersiveengineering:material:22>, [<ore:plateTin>, <immersiveengineering:tool:1>]);

mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:22>);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:22> * 2, <ore:ingotTin>, <immersiveengineering:mold:4>, 2000);
	
// Crusher: Nickel ore recipe removal
mods.immersiveengineering.Crusher.removeRecipesForInput(<thermalfoundation:ore:5>);
 
// Crusher: Nickel ore (without Platinum dust) recipe
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:69> * 2, <ore:oreNickel>, 2048);

#Script by DolphinBlaster
// Removes Gold ore -> 2 Gold dust Crusher recipe
mods.immersiveengineering.Crusher.removeRecipe(<thermalfoundation:material:1>);

// Crusher: Gold ore -> 2 Gold dust (without cinnabar) recipe
mods.immersiveengineering.Crusher.addRecipe(<thermalfoundation:material:1> * 2, <ore:oreGold>, 2048);

// Change the recipes of the Immersive Engineering steel fence, steel scaffolding and steel fence gate to require steel tool rods from Tinkers
 
 val steelRod = <tconstruct:tool_rod>.withTag({Material: "steel"});
 

	
#Script by DeviantCrafter
//Prevents hammers from creating lightning rods, functionally disabling the multiblock
recipes.removeShaped(<immersiveengineering:tool>);
val hammer = <immersiveengineering:tool>.withTag({multiblockInterdiction: ["IE:Lightningrod"]});

recipes.addShaped(hammer, [[null, <ore:ingotIron>, <ore:string>], [null, <ore:stickWood>, <ore:ingotIron>], [<ore:stickWood>, null, null]]);



scripts.functions.applyOreDict(<immersiveengineering:material:18>,<ore:dustGraphite>,true);


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

// 
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2,
[[nickelIngot, <immersiveengineering:material:8>, nickelIngot],
 [copperIngot, copperIngot, copperIngot],
 [nickelIngot, <immersiveengineering:material:8>, nickelIngot]]);



#renames:
scripts.functions.rename(<immersiveengineering:ore:5>,"Uraninite Ore");

// Excavator

mods.immersiveengineering.Excavator.removeMineral("Bauxite");
mods.immersiveengineering.Excavator.removeMineral("Galena");
mods.immersiveengineering.Excavator.removeMineral("Lead");
mods.immersiveengineering.Excavator.removeMineral("Nickel");
mods.immersiveengineering.Excavator.removeMineral("Platinum");
mods.immersiveengineering.Excavator.removeMineral("Silver");
mods.immersiveengineering.Excavator.removeMineral("Uranium");

// You can also craft a bayonet with an iron sword blade, which conveniently stacks to 64
recipes.addShaped(<immersiveengineering:toolupgrade:4>,
    [[<tconstruct:sword_blade>.withTag({Material: "iron"}), <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:plankTreatedWood>]]);
	
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



// ardite crusher recipes
mods.immersiveengineering.Crusher.addRecipe(<contenttweaker:ardite_dust>, <ore:ingotArdite>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<contenttweaker:ardite_dust> * 2, <contenttweaker:ardite_chunk>, 2048, <tconstruct:nuggets:0> * 9, 0.25);
mods.immersiveengineering.Crusher.addRecipe(<contenttweaker:ardite_dust> * 2, <ore:oreArdite>, 2048);

// Gives hemp seeds the `listAllSeeds` ore dictionary tag
// Note: This allows you to use it in an Ex Nihilo Creatio compost barrel
val listAllSeed = <ore:listAllSeed>;
listAllSeed.add(<immersiveengineering:seed>);
