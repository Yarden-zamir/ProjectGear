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
	
// ProjectRed Marble -> Earthworks Chalk
recipes.addShapeless(<projectred-exploration:stone>,
    [<earthworks:block_chalk>]);