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

#Change stack size of music discs:
val disc1 = <botania:recordgaia1>;
val disc2 = <botania:recordgaia2>;

disc1.maxStackSize = 16;
disc2.maxStackSize = 16;
