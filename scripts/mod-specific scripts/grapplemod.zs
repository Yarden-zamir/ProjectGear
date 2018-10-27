import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Beginning graplemod.zs");
// Altering recipe for grappling hook, iron pickaxe replaced by drill head
recipes.remove(<grapplemod:grapplinghook>);
recipes.addShapeless(<grapplemod:grapplinghook>, [<ore:drillheadIron>, <minecraft:lead>]);

// Make the magnetic forcefield from an actual magnet, with flux crystal for the force part
recipes.remove(<grapplemod:repeller>);
recipes.addShapeless(<grapplemod:repeller>,[<ore:magnet>, <ore:gemCrystalFlux>]); 
					
recipes.remove(<grapplemod:launcheritem>);
recipes.addShapedMirrored(<grapplemod:launcheritem>,
	[[null, <minecraft:ender_pearl>],
	 [<tconstruct:tough_tool_rod>.withTag({Material: "steel"}), null]]);

recipes.addShapedMirrored(<grapplemod:launcheritem>,
	[[null, null, <botania:manaresource:1>],
	 [null, <botania:manaresource:0>, null],
	 [<botania:manaresource:0>, null, null]]);
	 
recipes.remove(<grapplemod:longfallboots>);
recipes.addShaped(<grapplemod:longfallboots>,
	[[<minecraft:feather>, null, <minecraft:feather>],
	 [<ore:plateIron>, <minecraft:leather_boots>, <ore:plateIron>]]);
	 
// Changes all upgrade recipes to use the Gendustry upgrade frame. All upgrades/augments use this item for the base. 
recipes.replaceAllOccurences(<grapplemod:baseupgradeitem>, <gendustry:upgrade_frame>);
	 

	 
