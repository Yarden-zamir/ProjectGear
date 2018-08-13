// Copper Solenoid Nickel recipe
recipes.addShapedMirrored(<nuclearcraft:part:4> * 2,
    [[<ore:ingotCopper>, <ore:ingotCopper>, null],
    [<ore:ingotNickel>, <ore:ingotNickel>, null],
    [<ore:ingotCopper>, <ore:ingotCopper>, null]]);
   
// Fluix Coil Block Nickel recipe
recipes.addShaped(<immersivecables:coil_block>,
    [[<immersivecables:wire_coil>, <immersivecables:wire_coil>, <immersivecables:wire_coil>],
    [<immersivecables:wire_coil>, <ore:ingotNickel>, <immersivecables:wire_coil>],
    [<immersivecables:wire_coil>, <immersivecables:wire_coil>, <immersivecables:wire_coil>]]);
   
// Dense Fluix Coil Block Nickel recipe
recipes.addShaped(<immersivecables:coil_block:1>,
    [[<immersivecables:wire_coil:1>, <immersivecables:wire_coil:1>, <immersivecables:wire_coil:1>],
    [<immersivecables:wire_coil:1>, <ore:ingotNickel>, <immersivecables:wire_coil:1>],
    [<immersivecables:wire_coil:1>, <immersivecables:wire_coil:1>, <immersivecables:wire_coil:1>]]);
 
// Quartz Fiber Coil Block Nickel recipe
recipes.addShaped(<immersivecables:coil_block:2>,
    [[<immersivecables:wire_coil:2>, <immersivecables:wire_coil:2>, <immersivecables:wire_coil:2>],
    [<immersivecables:wire_coil:2>, <ore:ingotNickel>, <immersivecables:wire_coil:2>],
    [<immersivecables:wire_coil:2>, <immersivecables:wire_coil:2>, <immersivecables:wire_coil:2>]]);
   
// Refined Fiber Coil Block Nickel recipe
recipes.addShaped(<immersivecables:coil_block:3>,
    [[<immersivecables:wire_coil:3>, <immersivecables:wire_coil:3>, <immersivecables:wire_coil:3>],
    [<immersivecables:wire_coil:3>, <ore:ingotNickel>, <immersivecables:wire_coil:3>],
    [<immersivecables:wire_coil:3>, <immersivecables:wire_coil:3>, <immersivecables:wire_coil:3>]]);
   
// Fluix Transformer Nickel recipe
recipes.addShaped(<immersivecables:transformer_fluix>,
    [[null, <immersivecables:relay_fluix>, null],
    [<ore:ingotNickel>, <immersivecables:coil_block>, <ore:ingotNickel>],
    [<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>]]);
   
// Dense Fluix Transformer Nickel recipe
recipes.addShaped(<immersivecables:transformer_fluix:1>,
    [[null, <immersivecables:relay_fluix:1>, null],
    [<ore:ingotNickel>, <immersivecables:coil_block:1>, <ore:ingotNickel>],
    [<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>]]);
   
// Item Translocator Nickel recipe
recipes.addShaped(<translocators:translocator_part> * 2,
    [[<minecraft:redstone>, <minecraft:ender_pearl>, <minecraft:redstone>],
    [<ore:ingotNickel>, <minecraft:piston>, <ore:ingotNickel>],
    [<minecraft:redstone>, <minecraft:gold_ingot>, <minecraft:redstone>]]);
   
// Liquid Translocator Nickel recipe
recipes.addShaped(<translocators:translocator_part:1> * 2,
    [[<minecraft:redstone>, <minecraft:ender_pearl>, <minecraft:redstone>],
    [<ore:ingotNickel>, <minecraft:piston>, <ore:ingotNickel>],
    [<minecraft:redstone>, <minecraft:dye:4>, <minecraft:redstone>]]);
   
// Piston Nickel recipes
// Essentials recipe
recipes.addShaped(<minecraft:piston>,
    [[<ore:cobblestone>, <ore:ingotNickel>],
    [<minecraft:redstone>, <ore:logWood>]]);
// Minecraft recipe
recipes.addShaped(<minecraft:piston>,
    [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:cobblestone>, <ore:ingotNickel>, <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]]);
   
// Minecart Nickel recipe
recipes.addShapedMirrored(<minecraft:minecart>,
    [[null, null, null],
    [<ore:ingotNickel>, null, <ore:ingotNickel>],
    [<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>]]);
   
// Hopper Nickel recipe
recipes.addShaped(<minecraft:hopper>,
    [[<ore:ingotNickel>, null, <ore:ingotNickel>],
    [<ore:ingotNickel>, <ore:chestWood>, <ore:ingotNickel>],
    [null, <ore:ingotNickel>, null]]);
   
// Bithop Nickel recipe
recipes.addShapedMirrored(<bithop:bithop>,
    [[null, null, null],
    [<ore:ingotNickel>, <ore:chestWood>, <ore:ingotNickel>],
    [null, <ore:ingotNickel>, null]]);
   
// FluxHop Nickel recipe
recipes.addShaped(<bithop:fluxhop> * 5,
    [[<ore:ingotNickel>, <minecraft:redstone>, <ore:ingotNickel>],
    [<ore:ingotNickel>, <ore:chestWood>, <ore:ingotNickel>],
    [<minecraft:redstone>, <ore:ingotNickel>, <minecraft:redstone>]]);
   
// ScrewHop Nickel recipe
recipes.addShaped(<bithop:screwhop>,
    [[null, null, <ore:ingotNickel>],
    [<ore:ingotNickel>, <ore:ingotNickel>, null],
    [<ore:chestWood>, <ore:ingotNickel>, null]]);
   
// PullHop Nickel recipe
recipes.addShaped(<bithop:pullhop>,
    [[<ore:ingotNickel>, <ore:chestWood>, <ore:ingotNickel>],
    [<ore:ingotNickel>, null, <ore:ingotNickel>],
    [null, <ore:ingotNickel>, null]]);
   
// Simple PCB Nickel recipe
recipes.addShaped(<stevescarts:modulecomponents:9>,
    [[<ore:ingotNickel>, <minecraft:redstone>, <ore:ingotNickel>],
    [<minecraft:redstone>, <minecraft:gold_ingot>, <minecraft:redstone>],
    [<ore:ingotNickel>, <minecraft:redstone>, <ore:ingotNickel>]]);
recipes.addShaped(<stevescarts:modulecomponents:9>,
    [[<minecraft:redstone>, <ore:ingotNickel>, <minecraft:redstone>],
    [<ore:ingotNickel>, <minecraft:gold_ingot>, <ore:ingotNickel>],
    [<minecraft:redstone>, <ore:ingotNickel>, <minecraft:redstone>]]);
   
// Advanced PCB Nickel recipe
recipes.addShaped(<stevescarts:modulecomponents:16>,
    [[<minecraft:redstone>, <ore:ingotNickel>, <minecraft:redstone>],
    [<stevescarts:modulecomponents:9>, <ore:ingotNickel>, <stevescarts:modulecomponents:9>],
    [<minecraft:redstone>, <ore:ingotNickel>, <minecraft:redstone>]]);
   
// Excavate Modifier Nickel recipe
recipes.addShaped(<oeintegration:excavatemodifier>,
    [[<ore:ingotNickel>, <ore:slimeball>, <ore:ingotNickel>],
    [<minecraft:redstone>, <ore:ingotManyullyn>, <minecraft:redstone>],
    [<ore:ingotNickel>, <ore:slimeball>, <ore:ingotNickel>]]);
   
// Small Copper Coil Nickel recipe
recipes.addShaped(<magneticraft:crafting:3>,
    [[<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>],
    [null, <magneticraft:copper_coil>, null],
    [<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>]]);
   
// Resonating Machine Frame Nickel recipe
recipes.addShaped(<deepresonance:machine_frame>,
    [[<ore:ingotNickel>, <deepresonance:resonating_plate>, <ore:ingotNickel>],
    [<deepresonance:resonating_plate>, <minecraft:stone>, <deepresonance:resonating_plate>],
    [<ore:ingotNickel>, <deepresonance:resonating_plate>, <ore:ingotNickel>]]);
   
// Tank (Deep Resonance) Nickel recipe
recipes.addShaped(<deepresonance:tank>,
    [[<ore:ingotNickel>, <minecraft:obsidian>, <ore:ingotNickel>],
    [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
    [<ore:ingotNickel>, <deepresonance:resonating_plate>, <ore:ingotNickel>]]);
	
// Copper Solenoid Nickel recipe
recipes.addShapedMirrored(<nuclearcraft:part:4> * 2,
    [[<ore:ingotCopper>, <ore:ingotCopper>, null],
    [<ore:ingotNickel>, <ore:ingotNickel>, null],
    [<ore:ingotCopper>, <ore:ingotCopper>, null]]);