#Script by JoJo reference
// Adds Nether and End Resonating ore to oredictionary
<ore:oreResonating>.add(<deepresonance:resonating_ore:1>);
<ore:oreResonating>.add(<deepresonance:resonating_ore:2>);
 
// Arc Furnace: Resonating ore -> 16 Resonating Plates
mods.immersiveengineering.ArcFurnace.addRecipe(<deepresonance:resonating_plate> * 16, <ore:oreResonating>, null, 2000, 2048);