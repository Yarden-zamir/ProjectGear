// Enderium recipe removal
recipes.remove(<thermalfoundation:material:167>);

// Enderium Smeltery Alloying recipe removal
mods.tconstruct.Alloy.removeRecipe(<liquid:enderium>);

// Enderium: Lead -> Nickel, Platinum -> Electrum (Smeltery Alloying)
mods.tconstruct.Alloy.addRecipe(<liquid:enderium> * 576, [<liquid:nickel> * 432, <liquid:electrum> * 144, <liquid:ender> * 1000]);

// Lumium recipe removal
recipes.remove(<thermalfoundation:material:166>);

// Lumium Smeltery Alloying recipe removal
mods.tconstruct.Alloy.removeRecipe(<liquid:lumium>);

// Lumium: Silver -> Nickel (Smeltery Alloying)
mods.tconstruct.Alloy.addRecipe(<liquid:lumium> * 576, [<liquid:tin> * 432, <liquid:nickel> * 144, <liquid:glowstone> * 1000]);

// Signalum recipe removal
recipes.remove(<thermalfoundation:material:165>);

// Signalum Smeltery Alloying removal
mods.tconstruct.Alloy.removeRecipe(<liquid:signalum>);

// Signalum: Silver -> Nickel (Smeltery Alloying)
mods.tconstruct.Alloy.addRecipe(<liquid:signalum> * 576, [<liquid:copper> * 432, <liquid:ardite> * 144, <liquid:redstone> * 1000]);
