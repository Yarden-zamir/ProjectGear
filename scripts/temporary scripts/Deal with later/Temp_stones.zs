#Script by DolphinBlaster

// Earthworks Blue Slate recipe
recipes.addShaped(<earthworks:block_slate> * 8,
    [[<rustic:slate>, <rustic:slate>, <rustic:slate>],
    [<rustic:slate>, <ore:nuggetCobalt>, <rustic:slate>],
    [<rustic:slate>, <rustic:slate>, <rustic:slate>]]);
 
// Earthworks Purple Slate recipe
recipes.addShaped(<earthworks:block_slate_purple> * 8,
    [[<rustic:slate>, <rustic:slate>, <rustic:slate>],
    [<rustic:slate>, <ore:nuggetRefinedObsidian>, <rustic:slate>],
    [<rustic:slate>, <rustic:slate>, <rustic:slate>]]);
   
// Earthworks Green Slate recipe
recipes.addShaped(<earthworks:block_slate_green> * 8,
    [[<rustic:slate>, <rustic:slate>, <rustic:slate>],
    [<rustic:slate>, <ore:nuggetEnderium>, <rustic:slate>],
    [<rustic:slate>, <rustic:slate>, <rustic:slate>]]);
	
// Quark Marble -> ProjectRed Marble
recipes.addShapeless(<quark:marble>,
    [<projectred-exploration:stone>]);
 
// ProjectRed Marble -> Earthworks Chalk
recipes.addShapeless(<projectred-exploration:stone>,
    [<earthworks:block_chalk>]);
 
// Earthworks Chalk -> ProjectRed Marble
recipes.addShapeless(<earthworks:block_chalk>,
    [<quark:marble>]);
   
 
// Quark Basalt -> ProjectRed Basalt
recipes.addShapeless(<quark:basalt>,
    [<projectred-exploration:stone:3>]);
   
// ProjectRed Basalt -> Quark Basalt
recipes.addShapeless(<projectred-exploration:stone:3>,
    [<quark:basalt>]);