#All recipes by DolphinBlaster

// Inserter recipe removal
recipes.remove(<magneticraft:inserter>);

// Inserter: Lead -> Tin
recipes.addShaped(<magneticraft:inserter>, 
	[[<minecraft:iron_ingot>, <ore:nuggetIron>, null],
	[<ore:nuggetIron>, <ore:ingotTin>, <ore:nuggetIron>], 
	[<magneticraft:light_plates>, <magneticraft:crafting:2>, <magneticraft:light_plates>]]);
	
// Motor recipe removal
recipes.remove(<magneticraft:crafting:2>);

// Motor: Lead -> Tin
recipes.addShaped(<magneticraft:inserter>, 
	[[<minecraft:iron_ingot>, <ore:nuggetIron>, null],
	[<ore:nuggetIron>, <ore:ingotTin>, <ore:nuggetIron>], 
	[<magneticraft:light_plates>, <magneticraft:crafting:2>, <magneticraft:light_plates>]]);

// Fluxmagnet (Basic) recipe removal
recipes.remove(<thermalinnovation:magnet>);

// Fluxmagnet: Lead -> Nickel
recipes.addShaped(<thermalinnovation:magnet>, 
	[[<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>],
	[<ore:ingotNickel>, <minecraft:iron_ingot>, <ore:ingotNickel>], 
	[null, <minecraft:redstone>, null]]);

// appliedengeristics2.zs Lines 60 - 75 Lead Plate -> Nickel Plate
var ingotSteel = <ore:ingotSteel>;
var plateTin = <ore:plateTin>;
var plateNickel = <ore:plateNickel>;
recipes.addShaped(<appliedenergistics2:material:13>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateNickel,<immersiveengineering:mold>,plateNickel],
  [ingotSteel,plateTin,ingotSteel]]);
recipes.addShaped(<appliedenergistics2:material:14>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateNickel,<immersiveengineering:mold:2>,plateNickel],
  [ingotSteel,plateTin,ingotSteel]]);
recipes.addShaped(<appliedenergistics2:material:15>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateNickel,<immersiveengineering:mold:1>,plateNickel],
  [ingotSteel,plateTin,ingotSteel]]);
recipes.addShaped(<appliedenergistics2:material:19>,
  [[ingotSteel,plateTin,ingotSteel],
  [plateNickel,<immersiveengineering:mold:7>,plateNickel],
  [ingotSteel,plateTin,ingotSteel]]);

 // nuclearcraft.zs Lines 23 - 34 Lead Plate -> Tin Plate
recipes.addShaped(<nuclearcraft:bin> * 1,
	[[<ore:plateTin>, <botania:manaresource>, <ore:plateTin>],
	 [<botania:manaresource>, null, <botania:manaresource>],
	 [<ore:plateTin>, <botania:manaresource>, <ore:plateTin>]]);
recipes.addShaped(<nuclearcraft:bin> * 1,
	[[<ore:plateTin>, <tconstruct:ingots:1>, <ore:plateTin>],
	 [<tconstruct:ingots:1>, null, <tconstruct:ingots:1>],
	 [<ore:plateTin>, <tconstruct:ingots:1>, <ore:plateTin>]]);
recipes.addShaped(<nuclearcraft:bin> * 1,
	[[<ore:plateTin>, <ore:ingotPlatinum>, <ore:plateTin>],
	 [<ore:ingotPlatinum>, null, <ore:ingotPlatinum>],
	 [<ore:plateTin>, <ore:ingotPlatinum>, <ore:plateTin>]]);
	
// Multimeter recipe removal
recipes.remove(<thermalfoundation:meter>);

// Multimeter: Lead -> Tin
recipes.addShaped(<thermalfoundation:meter>, 
	[[<ore:ingotCopper>, null, <ore:ingotCopper>],
	[<ore:ingotTin>, <thermalfoundation:material:515>, <ore:ingotTin>], 
	[null, <ore:gearGold>, null]]);
	
// Decay Generator recipe removal
recipes.remove(<nuclearcraft:decay_generator>);

// Decay Generator: Lead -> Nickel
recipes.addShaped(<nuclearcraft:decay_generator>, 
	[[<ore:ingotNickel>, <minecraft:cobblestone>, <ore:ingotNickel>],
	[<minecraft:cobblestone>, <minecraft:redstone>, <minecraft:cobblestone>], 
	[<ore:ingotNickel>, <minecraft:cobblestone>, <ore:ingotNickel>]]);

// Machine Chassis recipe removal
recipes.remove(<nuclearcraft:part:10>);

// Machine chassis: Lead -> Nickel
recipes.addShaped(<nuclearcraft:part:10>, 
	[[<ore:ingotNickel>, <ore:ingotSteel>, <ore:ingotNickel>],
	[<ore:ingotSteel>, <nuclearcraft:alloy:1>, <ore:ingotSteel>], 
	[<ore:ingotNickel>, <ore:ingotSteel>, <ore:ingotNickel>]]);

// Fluxbore (Basic) recipe removal
recipes.remove(<thermalinnovation:drill>);

// Fluxbore (Basic): Silver -> Tin
recipes.addShaped(<thermalinnovation:drill>, 
	[[null, <ore:drillheadIron>, null],
	[<ore:ingotTin>, <thermalfoundation:material:640>, <ore:ingotTin>], 
	[<ore:ingotTin>, <ore:gearIron>, <ore:ingotTin>]]);
	
// Fluxsaw (Basic) recipe removal
recipes.remove(<thermalinnovation:saw>);

// Fluxsaw (Basic): Silver -> Tin
recipes.addShaped(<thermalinnovation:saw>, 
	[[null, <thermalfoundation:material:657>, null],
	[<ore:ingotTin>, <thermalfoundation:material:640>, <ore:ingotTin>], 
	[<ore:ingotTin>, <ore:gearIron>, <ore:ingotTin>]]);
	
// Hypoinfuser (Basic) recipe removal
recipes.remove(<thermalinnovation:injector>);

// Hypoinfuser (Basic): Silver -> Tin
recipes.addShaped(<thermalinnovation:injector>, 
	[[<minecraft:glass_bottle>, <minecraft:glowstone_dust>, <minecraft:glass_bottle>],
	[<ore:ingotCopper>, <minecraft:glass_bottle>, <ore:ingotCopper>], 
	[null, <ore:ingotTin>, null]]);
	
// Reinforced Upgrade Kit recipe removal
recipes.remove(<thermalfoundation:upgrade:1>);

// Reinforced Upgrade Kit: Silver Gear -> Nickel Gear
recipes.addShaped(<thermalfoundation:upgrade:1>, 
	[[null, <ore:ingotElectrum>, null],
	[<ore:ingotElectrum>, <ore:gearNickel>, <ore:ingotElectrum>], 
	[<ore:blockGlassHardened>, <ore:ingotElectrum>, <ore:blockGlassHardened>]]);
	
// Tesla Coil recipe removal
recipes.remove(<immersiveengineering:metal_device1:8>);

// Tesla Coil: Aluminum -> Tin
recipes.addShaped(<immersiveengineering:metal_device1:8>, 
	[[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
	[null, <immersiveengineering:metal_decoration0>, null], 
	[<immersiveengineering:metal_device0:2>, <immersiveengineering:metal_decoration0>, <immersiveengineering:metal_device0:2>]]);
	
// HV Wire Relay recipe removal
recipes.remove(<immersiveengineering:connector:5>);

// HV Wire Relay: Aluminum -> Nickel
recipes.addShaped(<immersiveengineering:connector:5> * 8, 
	[[null, <magneticraft:connector>, null],
	[<immersiveengineering:stone_decoration:8>, <ore:ingotNickel>, <immersiveengineering:stone_decoration:8>], 
	[<immersiveengineering:stone_decoration:8>, <ore:ingotNickel>, <immersiveengineering:stone_decoration:8>]]);
	
// HV Wire Connector recipe removal
recipes.remove(<immersiveengineering:connector:4>);

// HV Wire Connector: Aluminum -> Nickel
recipes.addShaped(<immersiveengineering:connector:4> * 4, 
	[[null, <magneticraft:connector>, null],
	[<minecraft:hardened_clay>, <ore:ingotNickel>, <minecraft:hardened_clay>], 
	[<minecraft:hardened_clay>, <ore:ingotNickel>, <minecraft:hardened_clay>]]);

// Engineer's Blueprint (Crafting Components) recipe removal
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));

// Engineer's Blueprint (Crafting Components) Aluminum -> Tin
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), 
	[[<ore:ingotCopper>, <ore:ingotTin>, <minecraft:iron_ingot>],
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], 
	[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);
	
// Casull Cartridge Blueprint recipe removal
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "casull"}));

// Casull Cartridge: Lead Nugget -> Copper Nugget
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "casull"}), 
	[<immersiveengineering:bullet>, <minecraft:gunpowder>, <ore:nuggetCopper>, <ore:nuggetCopper>]);

// Silver Cartridge Blueprint recipe removal
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "silver"}));

// Silver Cartridge: Lead Nugget -> Gold Nugget
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "silver"}), 
	[<immersiveengineering:bullet>, <minecraft:gunpowder>, <ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>]);

<immersiveengineering:bullet:2>.withTag({bullet: "silver"}).displayName = "Holy Cartridge";

var dustBurnium = <terraqueous:item_main:251>;

// Dragon's Breath Cartridge Blueprint recipe removal
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "dragonsbreath"}));

// Dragon's Breath Cartridge: Aluminum Dust -> Tin Dust
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "dragonsbreath"}), 
	[<immersiveengineering:bullet:1>, <minecraft:gunpowder>, dustBurnium, dustBurnium]);
	
// Flare Cartridge Blueprint recipe removal
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({flareColour: 16777090, bullet: "flare"}));
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({flareColour: 2925323, bullet: "flare"}));
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({flareColour: 13381126, bullet: "flare"}));

// Flare Cartridge: Aluminum Dust -> Tin Dust
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "flare"}).withTag({flareColour: 16777090, bullet: "flare"}), 
	[<immersiveengineering:bullet:1>, <minecraft:gunpowder>, dustBurnium, <ore:dyeRed>]);
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "flare"}).withTag({flareColour: 2925323, bullet: "flare"}), 
	[<immersiveengineering:bullet:1>, <minecraft:gunpowder>, dustBurnium, <ore:dyeGreen>]);
mods.immersiveengineering.Blueprint.addRecipe("Common Projectiles", <immersiveengineering:bullet:2>.withTag({bullet: "flare"}).withTag({flareColour: 13381126, bullet: "flare"}), 
	[<immersiveengineering:bullet:1>, <minecraft:gunpowder>, dustBurnium, <ore:dyeYellow>]);

// Napalm recipe removal
mods.immersiveengineering.Mixer.removeRecipe(<liquid:napalm>);

// Napalm: Aluminum Dust -> Tin Dust
mods.immersiveengineering.Mixer.addRecipe(<liquid:napalm>, <liquid:gasoline>, [<ore:dustTin>, <ore:dustTin>, <ore:dustTin>], 2048);
	
// Piston (Aluminum Recipe) recipe removal
recipes.removeShaped(<minecraft:piston>, 
	[[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<minecraft:cobblestone>, <ore:ingotAluminum>, <minecraft:cobblestone>], 
	[<minecraft:cobblestone>, <minecraft:redstone>, <minecraft:cobblestone>]]);
	
// Bucket (Aluminum Recipe) recipe removal
recipes.removeShaped(<minecraft:bucket>, 
	[[null, null, null],
	[<ore:ingotAluminum>, null, <ore:ingotAluminum>], 
	[null, <ore:ingotAluminum>, null]]);
