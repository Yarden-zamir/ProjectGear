/*
*The name of the file has to be _[modName].zs

*In this file there should be only recipes added / removed for items in the mod,
 even by other mod's machines / processes.

*If you remove a recipe it is recommended to add a comment saying why.

*Try to use variables or a value effected by a variable that was initiated
 beforehand.

*Add variables in area categories, for example items, fluids,
 modifiers(eg timeModifier), etc...

*Use as many new lines as you need to make the file look cozy and easy to read, they are free.

*Any function you need to use that MIGHT be useful in some other script, needs to
 be added into the functions.zs file and used as an external call.
 eg: scripts.functions.exampleFunction(text as String),
     scripts.functions.exampleFunction2(newName as String, item as IItemStack),
     etc...

*To get item id's, use the /ct hand command in game

*Use the command /ct syntax to check for syntax errors without reopening the game.
*/


//----------example
#modifiers
var timeModifier = 1.0;

receipes.addShapeless(<modName:item>, [<minecraft:stone>, <minecraft:clock>]);         //making an item from THIS mod with vanila shapeless crafting
receipes.addShapeless(<modName:item>, [<minecraft:stone>, <minecraft:clock>, <minecraft:stone>]);  //making an item from THIS mod with vanila shapeless crafting

mods.botania.ManaInfusion.addAlchemy(<modName:item>, <minecraft:stone>, 100*timeModifier); //making an item from THIS mod using botania ManaInfusion, and including a modifier for easier balance tweaking if later needed

mods.forestry.Still.addRecipe(<modName:Fluid:2>, <minecraft:water>, 200*timeModifier); //making an item from THIS mod using forestry's still

scripts.functions.exampleFunction2("new name for item",<modName:item>);
//----------

//----------example of what NOT to do
#items

mods.modName.coolCrafting.add(<minecraft:stone>, <modName:item>, <minecraft:clock>, <modName:item>); // <--- that's wrong, this should be placed in the _vanilla.zs file instead, because the output is from vanilla
//----------
obvious
