import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Beginning graplemod.zs");
recipes.remove(<grapplemod:grapplinghook>);
recipes.addShapeless(
                    <grapplemod:grapplinghook>,
                    [<ore:drillheadIron>, <minecraft:lead>]
                    ); // Altering recipe for grappling hook, iron pickaxe replaced by drill head
recipes.remove(<grapplemod:hookshot>);
recipes.addShapeless(
                    <grapplemod:hookshot>,
                    [<grapplemod:grapplinghook>, <ore:gearIron>, <thermalfoundation:material:640>]
                    ); // Altering recipe for motorized hook, piston replaced by toolcasing and gear (resembles drill recipe)
recipes.remove(<grapplemod:smarthook>);
recipes.addShapeless(
                    <grapplemod:smarthook>,
                    [<grapplemod:hookshot>, <ore:gearElectrumFlux>]
                    ); // Altering recipe for smart motorized hook, redstone replaced by fluxed gear
recipes.remove(<grapplemod:multihook>);
recipes.addShapeless(
                    <grapplemod:multihook>,
                    [<grapplemod:hookshot>, <ore:gearElectrumFlux>, <grapplemod:hookshot>]
                    ); // Altering recipe for dual motorized hook, iron replaced by fluxed gear ( has same feature as smarthook )
recipes.remove(<grapplemod:enderhook>);
recipes.addShapeless(
                    <grapplemod:enderhook>,
                    [<grapplemod:grapplinghook>, <grapplemod:launcheritem>]
                    ); // Make recipe shapeless
recipes.remove(<grapplemod:magnetbow>);
recipes.addShapeless(
                    <grapplemod:magnetbow>,
                    [<grapplemod:grapplinghook>, <grapplemod:repeller>]
                    ); // Make recipe shapeless
recipes.remove(<grapplemod:repeller>);
recipes.addShapeless(
                    <grapplemod:repeller>,
                    [<ore:magnet>, <ore:gemCrystalFlux>]
                    ); // Make the magnetic forcefield from an actual magnet, with flux crystal for the force part
					
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
	 

	 
