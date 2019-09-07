recipes.addShapeless(<practicallogistics2:sapphire> * 2, [<minecraft:dye:4>, <ore:crystalCertusQuartz> | <ore:crystalPureCertusQuartz>]);
recipes.addShapeless(<practicallogistics2:sapphire> * 2, [<minecraft:dye:4>, <ore:gemRuby>]);

// <ore:gemSapphire> in Factory Tech drill grinder, Immersive Engineering crusher or Integrated Dynamics squeezer = <practicallogistics2:sapphiredust>

    // Third argument is whether the recipe works in a machine with stone parts.
    mods.factorytech.DrillGrinder.addRecipe(<practicallogistics2:sapphiredust>, <ore:gemSapphire>, true);

    // Third argument is how much power the Crusher will use for this recipe.
    mods.immersiveengineering.Crusher.addRecipe(<practicallogistics2:sapphiredust>, <ore:gemSapphire>, 2048);


 for item in <ore:gemSapphire>.items{
    mods.integrateddynamics.Squeezer.addRecipe(item, <practicallogistics2:sapphiredust>);
}