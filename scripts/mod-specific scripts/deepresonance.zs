#Script by JoJo reference
// Adds Nether and End Resonating ore to oredictionary
<ore:oreResonating>.add(<deepresonance:resonating_ore:1>);
<ore:oreResonating>.add(<deepresonance:resonating_ore:2>);
 
// Arc Furnace: Resonating ore -> 16 Resonating Plates
mods.immersiveengineering.ArcFurnace.addRecipe(<deepresonance:resonating_plate> * 16, <ore:oreResonating>, null, 2000, 2048);

mods.tconstruct.Casting.addBasinRecipe(<deepresonance:resonating_ore>, <ore:stone>, <liquid:redstone>, 250, true);

//Adds ore dictionary entry to resonating ore:
val oreResonatingCrystal = <ore:oreResonatingCrystal>;
oreResonatingCrystal.add(<deepresonance:resonating_crystal>);

// Alternate recipes that use nickel instead of iron
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