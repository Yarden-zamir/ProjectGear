import crafttweaker.item.IItemStack;

# Recipes, altered to require machinery infrastructure
recipes.remove(<grapplemod:grapplinghook>);
recipes.addShapeless(
                    <grapplemod:grapplinghook>,
                    <thermalfoundation:partDrillHead>, <minecraft:lead>
                    ); // Altering recipe for grappling hook, iron pickaxe replaced by drill head
recipes.remove(<grapplemod:hookshot>);
recipes.addShapeless(
                    <grapplemod:hookshot>,
                    <grapplemod:grapplinghook>, <thermalfoundation:gearIron>, <thermalfoundation:partToolCasing>
                    ); // Altering recipe for motorized hook, piston replaced by toolcasing and gear (resembles drill recipe)
recipes.remove(<grapplemod:smarthook>);
recipes.addShapeless(
                    <grapplemod:smarthook>,
                    <grapplemod:hookshot>, <redstonearsenal:gearElectrumFlux>
                    ); // Altering recipe for smart motorized hook, redstone replaced by fluxed gear
recipes.remove(<grapplemod:multihook>);
recipes.addShapeless(
                    <grapplemod:multihook>,
                    <grapplemod:hookshot>, <redstonearsenal:gearElectrumFlux>, <grapplemod:hookshot>
                    ); // Altering recipe for dual motorized hook, iron replaced by fluxed gear ( has same feature as smarthook )
recipes.remove(<grapplemod:enderhook>);
recipes.addShapeless(
                    <grapplemod:enderhook>,
                    <grapplemod:grapplinghook>, <grapplemod:launcheritem>
                    ); // Make recipe shapeless
recipes.remove(<grapplemod:magnetbow>);
recipes.addShapeless(
                    <grapplemod:magnetbow>,
                    <grapplemod:grapplinghook>, <grapplemod:repeller>
                    ); // Make recipe shapeless
recipes.remove(<grapplemod:repeller>);
recipes.addShapeless(
                    <grapplemod:repeller>,
                    <thermalinnovation:magnetBasic>, <redstonearsenal:gemCrystalFlux>
                    ); // Make the magnetic forcefield from an actual magnet, with flux crystal for the force part
recipes.remove(<grapplemod:longfallboots>);
recipes.addShapeless(
                    <grapplemod:longfallboots>,
                    <minecraft:diamond_boots>, <minecraft:wool>
                    ); // Make shapeless
