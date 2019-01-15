#Change alloys to use accessible metals:
mods.tconstruct.Alloy.removeRecipe(<liquid:osgloglas>);
mods.tconstruct.Alloy.addRecipe(<liquid:osgloglas>, [<liquid:refinedobsidian>, <liquid:refinedglowstone>, <liquid:boron>]);
mods.tconstruct.Alloy.removeRecipe(<liquid:osmiridium>);
mods.tconstruct.Alloy.addRecipe(<liquid:osmiridium> * 2, [<liquid:tin>, <liquid:boron>]);