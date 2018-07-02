import crafttweaker.item.IIngredient;

// plates

recipes.replaceAllOccurences(<magneticraft:heavy_plates:0>, <ore:plateIron>);
recipes.replaceAllOccurences(<magneticraft:heavy_plates:1>, <ore:plateGold>);
recipes.replaceAllOccurences(<magneticraft:heavy_plates:2>, <ore:plateCopper>);
recipes.replaceAllOccurences(<magneticraft:heavy_plates:6>, <ore:plateSteel>);

// striped machine block

val inkSac = <minecraft:dye:0>;
val goldPlate = <ore:plateGold>;

recipes.remove(<magneticraft:multiblock_parts:3>);
recipes.addShaped("multiblock_part_striped_ink_sac", <magneticraft:multiblock_parts:3>,
    [[inkSac, goldPlate, inkSac],
    [goldPlate, <minecraft:stone:0>, goldPlate],
    [inkSac, goldPlate, inkSac]]);