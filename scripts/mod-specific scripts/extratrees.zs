//Add sawdust to the dustWood ore dictionary entry
val sawdust = <ore:dustWood>;
sawdust.add(<extratrees:misc:0>);

// You can also craft the lumber mill with an iron axe head instead of an iron axe. The head conveniently stacks to 64.
recipes.addShaped(<extratrees:machine>,
    [[<extratrees:misc:2>, <tconstruct:axe_head>.withTag({Material: "iron"}), <extratrees:misc:2>],
    [<minecraft:glass>, <forestry:sturdy_machine>, <ore:blockGlassColorless>],
    [<extratrees:misc:2>, <ore:gearBronze>, <extratrees:misc:2>]]);