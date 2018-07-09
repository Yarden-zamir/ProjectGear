//Script by DolphinBlaster
//Makes Immersive Engineering relays and wire connectors require Magneticraft wire connectors. These must be made in the Thermionic Fabricator.

// LV Wire Connector recipe removal
recipes.remove(<immersiveengineering:connector>);
 
// LV Wire Connector Electric Connector recipe
recipes.addShaped(<immersiveengineering:connector> * 4,
    [[null, <magneticraft:connector>, null],
    [<minecraft:hardened_clay>, <ore:ingotCopper>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <ore:ingotCopper>, <minecraft:hardened_clay>]]);
 
// LV Wire Relay recipe removal
recipes.remove(<immersiveengineering:connector:1>);
 
// LV Wire Relay Electric Connector recipe
recipes.addShapedMirrored(<immersiveengineering:connector:1> * 8,
    [[null, null, null],
    [null, <magneticraft:connector>, null],
    [<minecraft:hardened_clay>, <ore:ingotCopper>, <minecraft:hardened_clay>]]);
 
// MV Wire Connector recipe removal
recipes.remove(<immersiveengineering:connector:2>);
 
// MV Wire Connector Electric Connector recipe
recipes.addShaped(<immersiveengineering:connector:2> * 4,
    [[null, <magneticraft:connector>, null],
    [<minecraft:hardened_clay>, <minecraft:iron_ingot>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <minecraft:iron_ingot>, <minecraft:hardened_clay>]]);
 
// MV Wire Relay recipe removal
recipes.remove(<immersiveengineering:connector:3>);
 
// MV Wire Relay Electric Connector recipe
recipes.addShapedMirrored(<immersiveengineering:connector:3> * 8,
    [[null, null, null],
    [null, <magneticraft:connector>, null],
    [<minecraft:hardened_clay>, <minecraft:iron_ingot>, <minecraft:hardened_clay>]]);