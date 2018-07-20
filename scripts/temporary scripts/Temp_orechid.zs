// Disabling unused ores generating from Orechid
mods.botania.Orechid.removeOre(<ore:oreAluminum>);
mods.botania.Orechid.removeOre(<ore:oreLead>);
mods.botania.Orechid.removeOre(<ore:oreSilver>);
mods.botania.Orechid.removeOre(<ore:oreTungsten>);
mods.botania.Orechid.removeOre(<ore:oreElectrotine>);
mods.botania.Orechid.removeOre(<ore:oreSapphire>);
mods.botania.Orechid.removeOre(<ore:oreRuby>);
mods.botania.Orechid.removeOre(<ore:orePeridot>);
mods.botania.Orechid.removeOre(<ore:oreCobalt>);
mods.botania.Orechid.removeOre(<ore:oreGalena>);

// Disabling certain other ores generating from Orechid
mods.botania.Orechid.removeOre(<ore:oreApatite>);
mods.botania.Orechid.removeOre(<ore:oreUranium>);
 
// Makes the oredict entry "blockMossyCobblestone" for only Moss Stone
val myEntry = <ore:blockMossyCobblestone>;
myEntry.add(<minecraft:mossy_cobblestone>);
 
// Orechid: Mossy Cobblestone generates about 50% of the time
mods.botania.Orechid.addOre(<ore:blockMossyCobblestone>, 80000);

//Orechid: Disable default nickel weight & add new weight
mods.botania.Orechid.removeOre(<ore:oreNickel>);
mods.botania.Orechid.addOre(<ore:oreNickel>, 6000);
