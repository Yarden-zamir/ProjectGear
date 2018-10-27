import crafttweaker.item.IItemStack;

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

val dyeWhite = <ore:dyeWhite>;
val dyeOrange = <ore:dyeOrange>;
val dyeMagenta = <ore:dyeMagenta>;
val dyeLightBlue = <ore:dyeLightBlue>;
val dyeYellow = <ore:dyeYellow>;
val dyeLime = <ore:dyeLime>;
val dyePink = <ore:dyePink>;
val dyeGray = <ore:dyeGray>;
val dyeLightGray = <ore:dyeLightGray>;
val dyeCyan = <ore:dyeCyan>;
val dyePurple = <ore:dyePurple>;
val dyeBlue = <ore:dyeBlue>;
val dyeBrown = <ore:dyeBrown>;
val dyeGreen = <ore:dyeGreen>;
val dyeRed = <ore:dyeRed>;
val dyeBlack = <ore:dyeBlack>;

val dye = <ore:dye>;

// Prevent Botania's petal powder from working as dye
// Note: Vanilla dye farms are recommended. You can also use bees.
dyeWhite.remove(<botania:dye:0>);
dyeOrange.remove(<botania:dye:1>);
dyeMagenta.remove(<botania:dye:2>);
dyeLightBlue.remove(<botania:dye:3>);
dyeYellow.remove(<botania:dye:4>);
dyeLime.remove(<botania:dye:5>);
dyePink.remove(<botania:dye:6>);
dyeGray.remove(<botania:dye:7>);
dyeLightGray.remove(<botania:dye:8>);
dyeCyan.remove(<botania:dye:9>);
dyePurple.remove(<botania:dye:10>);
dyeBlue.remove(<botania:dye:11>);
dyeBrown.remove(<botania:dye:12>);
dyeGreen.remove(<botania:dye:13>);
dyeRed.remove(<botania:dye:14>);
dyeBlack.remove(<botania:dye:15>);

dye.remove(<botania:dye:*>);


// Smokey Quartz from wither ash
val Quartz = <ore:gemQuartz>;
recipes.remove(<botania:quartz:0>);
recipes.addShaped(<botania:quartz:0> * 8,
 [[Quartz, Quartz, Quartz],
  [Quartz, <quark:black_ash>, Quartz],
  [Quartz, Quartz, Quartz]]);

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
mods.botania.Orechid.removeOre(<ore:oreApatite>);
mods.botania.Orechid.removeOre(<ore:orePlatinum>);
mods.botania.Orechid.removeOre(<ore:oreUranium>);

// Removes Cobaltite ore from Cobalt oredictionary
<ore:oreCobalt>.remove(<magneticraft:ores:2>);

// Increased Nickel chance in orechid
mods.botania.Orechid.addOre(<ore:oreNickel>, 12000);

// Makes the oredict entry "blockMossyCobblestone" which only contains mossy cobblestone
val myEntry = <ore:blockMossyCobblestone>;
myEntry.add(<minecraft:mossy_cobblestone>);
 
// Orechid: Mossy Cobblestone generates about 50% of the time
mods.botania.Orechid.addOre(<ore:blockMossyCobblestone>, 80000);
