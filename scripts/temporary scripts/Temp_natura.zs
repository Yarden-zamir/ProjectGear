#Script by DolphinBlaster		
import crafttweaker.item.IItemStack;

val itemsToDisable =[
    // Ghostwood Tools
    <natura:ghostwood_pickaxe>,
    <natura:ghostwood_sword>,
    <natura:ghostwood_axe>,
    <natura:ghostwood_shovel>,
    <natura:ghostwood_kama>,
    // Bloodwood Tools
    <natura:bloodwood_pickaxe>,
    <natura:bloodwood_sword>,
    <natura:bloodwood_axe>,
    <natura:bloodwood_shovel>,
    <natura:bloodwood_kama>,
    // Darkwood Tools
    <natura:darkwood_pickaxe>,
    <natura:darkwood_sword>,
    <natura:darkwood_axe>,
    <natura:darkwood_shovel>,
    <natura:darkwood_kama>,
    // Fusewood Tools
    <natura:fusewood_pickaxe>,
    <natura:fusewood_sword>,
    <natura:fusewood_axe>,
    <natura:fusewood_shovel>,
    <natura:fusewood_kama>,
    // Quartz Tools (Natura)
    <natura:netherquartz_pickaxe>,
    <natura:netherquartz_sword>,
    <natura:netherquartz_axe>,
    <natura:netherquartz_shovel>,
    <natura:netherquartz_kama>,
    // Natura sticks
    <natura:sticks>,
    <natura:sticks:1>,
    <natura:sticks:2>,
    <natura:sticks:3>,
    <natura:sticks:4>,
    <natura:sticks:5>,
    <natura:sticks:6>,
    <natura:sticks:7>,
    <natura:sticks:8>,
    <natura:sticks:9>,
    <natura:sticks:10>,
    <natura:sticks:11>,
    <natura:sticks:12>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);
 
// Replaces all Natura nether tree sticks with regular sticks
recipes.replaceAllOccurences(<natura:sticks>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:1>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:2>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:3>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:4>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:5>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:6>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:7>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:8>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:9>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:10>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:11>, <ore:stickWood>);
recipes.replaceAllOccurences(<natura:sticks:12>, <ore:stickWood>);
 
// Natura Bow Vanilla Stick recipe removal
// Fusewood Bow
recipes.removeShaped(<natura:fusewood_bow>,
[[<natura:materials:7>, <ore:stickWood>, null],
[<natura:materials:7>, null, <ore:stickWood>],
[<natura:materials:7>, <ore:stickWood>, null]]);
// Darkwood Bow
recipes.removeShaped(<natura:darkwood_bow>,
[[<natura:materials:7>, <ore:stickWood>, null],
[<natura:materials:7>, null, <ore:stickWood>],
[<natura:materials:7>, <ore:stickWood>, null]]);
// Bloodwood Bow
recipes.removeShaped(<natura:bloodwood_bow>,
[[<natura:materials:7>, <ore:stickWood>, null],
[<natura:materials:7>, null, <ore:stickWood>],
[<natura:materials:7>, <ore:stickWood>, null]]);
// Ghostwood Bow
recipes.removeShaped(<natura:ghostwood_bow>,
[[<natura:materials:7>, <ore:stickWood>, null],
[<natura:materials:7>, null, <ore:stickWood>],
[<natura:materials:7>, <ore:stickWood>, null]]);
 
// Natura Bow recipe (Natura Sticks -> Corresponding Natura Wooden Plank)
// Fusewood Bow
recipes.addShaped(<natura:fusewood_bow>,
[[<natura:materials:7>, <natura:nether_planks:3>, null],
[<natura:materials:7>, null, <natura:nether_planks:3>],
[<natura:materials:7>, <natura:nether_planks:3>, null]]);
// Darkwood Bow
recipes.addShaped(<natura:darkwood_bow>,
[[<natura:materials:7>, <natura:nether_planks:2>, null],
[<natura:materials:7>, null, <natura:nether_planks:2>],
[<natura:materials:7>, <natura:nether_planks:2>, null]]);
// Bloodwood Bow
recipes.addShaped(<natura:bloodwood_bow>,
[[<natura:materials:7>, <natura:nether_planks:1>, null],
[<natura:materials:7>, null, <natura:nether_planks:1>],
[<natura:materials:7>, <natura:nether_planks:1>, null]]);
// Ghostwood Bow
recipes.addShaped(<natura:ghostwood_bow>,
[[<natura:materials:7>, <natura:nether_planks>, null],
[<natura:materials:7>, null, <natura:nether_planks>],
[<natura:materials:7>, <natura:nether_planks>, null]]);	