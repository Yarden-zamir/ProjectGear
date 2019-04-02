import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
 
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearWood>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearWood>, <liquid:alubrass>, 144, true);
 
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearStone>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearStone>, <liquid:alubrass>, 144, true);

// Make melting grout in a smeltery give 4 ingots instead of 1
mods.tconstruct.Melting.removeRecipe(<liquid:stone> * 144, <tconstruct:soil>);
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 576, <tconstruct:soil>, 442);


#Script by DolphinBlaster
// Metal Press: Ingot -> Tinkers' Tool Rod
	// Iron
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "iron"}), <minecraft:iron_ingot>, <immersiveengineering:mold:2>, 2048);
	// Manasteel
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "manasteel"}), <botania:manaresource>, <immersiveengineering:mold:2>, 2048);
	// Terrasteel
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "terrasteel"}), <botania:manaresource:4>, <immersiveengineering:mold:2>, 2048);
	// Elementium
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "elementium"}), <botania:manaresource:7>, <immersiveengineering:mold:2>, 2048);
	// Cobalt
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "cobalt"}), <tconstruct:ingots>, <immersiveengineering:mold:2>, 2048);
	// Ardite
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "ardite"}), <tconstruct:ingots:1>, <immersiveengineering:mold:2>, 2048);
	// Manyullyn
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "manyullyn"}), <tconstruct:ingots:2>, <immersiveengineering:mold:2>, 2048);
	// Copper
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "copper"}), <ore:ingotCopper>, <immersiveengineering:mold:2>, 2048);
	// Tin
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "tin"}), <ore:ingotTin>, <immersiveengineering:mold:2>, 2048);
	// Nickel
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "nickel"}), <ore:ingotNickel>, <immersiveengineering:mold:2>, 2048);
	// Steel
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "steel"}), <ore:ingotSteel>, <immersiveengineering:mold:2>, 2048);
	// Electrum
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "electrum"}), <ore:ingotElectrum>, <immersiveengineering:mold:2>, 2048);
	// Invar
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "invar"}), <ore:ingotInvar>, <immersiveengineering:mold:2>, 2048);
	// Bronze
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "bronze"}), <ore:ingotBronze>, <immersiveengineering:mold:2>, 2048);
	// Constantan
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "signalum"}), <ore:ingotSignalum>, <immersiveengineering:mold:2>, 2048);
	// Lumium
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "lumium"}), <ore:ingotLumium>, <immersiveengineering:mold:2>, 2048);
	// Enderium
mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "enderium"}), <ore:ingotEnderium>, <immersiveengineering:mold:2>, 2048);

#Script by Dylan
// Engineer's Hammer + 2 Steel Ingot -> Steel Tool Rod

recipes.addShapeless(<tconstruct:tool_rod>.withTag({Material: "steel"}), [<immersiveengineering:tool>, <thermalfoundation:material:160>, <thermalfoundation:material:160>]);


	 
#Script by Dr.Marx
// Craft plate molds using Project Red stone plates
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <projectred-core:resource_item>, <liquid:gold>, 228, true, 60);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <projectred-core:resource_item>, <liquid:alubrass>, 228, true, 60);

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

// new electrum recipe
mods.tconstruct.Alloy.removeRecipe(<liquid:electrum>);
mods.tconstruct.Alloy.addRecipe(<liquid:electrum> * 2, [<liquid:gold> * 1, <liquid:copper> * 1]);

// Make necrotic bones in a coke oven
// Note: These no longer drop from wither skeletons
mods.immersiveengineering.CokeOven.addRecipe(<tconstruct:materials:17>, 2, <minecraft:bone>, 200);

// Pyrotheum + Plank to Lavawood
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:firewood:0>, <ore:plankWood>, <liquid:pyrotheum>, 9, true, 100);


// Make aluminum brass an alloy of gold and copper. Rename it to gold brass.
	// localizations
game.setLocalization("tile.tconstruct.metal.alubrass.name","Gold Brass Block");
game.setLocalization("item.tconstruct.ingots.alubrass.name","Gold Brass Ingot");
game.setLocalization("item.tconstruct.nuggets.alubrass.name","Gold Brass Nugget");
game.setLocalization("fluid.tconstruct.alubrass.name","Molten Gold Brass");
 
	// TiC smeltery
mods.tconstruct.Alloy.removeRecipe(<liquid:alubrass>);
mods.tconstruct.Alloy.addRecipe(<liquid:alubrass> * 4, [<liquid:gold> * 3, <liquid:tin> * 1]);
 
	// ie kiln
mods.immersiveengineering.AlloySmelter.removeRecipe(<tconstruct:ingots:5>);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:ingots:5>*4, <ore:ingotGold>, <ore:ingotCopper>*3, 100);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:ingots:5>*4, <ore:ingotGold>, <ore:dustCopper>*3, 100);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:ingots:5>*4, <ore:dustGold>, <ore:dustCopper>*3, 100);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:ingots:5>*4, <ore:dustGold>, <ore:ingotCopper>*3, 100);
 
	// ie arc furnace
mods.immersiveengineering.ArcFurnace.removeRecipe(<tconstruct:ingots:5>*4);
mods.immersiveengineering.ArcFurnace.addRecipe(<tconstruct:ingots:5>*4, <ore:ingotGold>, null, 100, 512, [<ore:ingotCopper>*3]);
mods.immersiveengineering.ArcFurnace.addRecipe(<tconstruct:ingots:5>*4, <ore:ingotGold>, null, 100, 512, [<ore:dustCopper>*3]);
mods.immersiveengineering.ArcFurnace.addRecipe(<tconstruct:ingots:5>*4, <ore:dustGold>, null, 100, 512, [<ore:dustCopper>*3]);
mods.immersiveengineering.ArcFurnace.addRecipe(<tconstruct:ingots:5>*4, <ore:dustGold>, null, 100, 512, [<ore:ingotCopper>*3]);



// Make aluminum brass and brass equivilant
<ore:nuggetBrass>.add(<tconstruct:nuggets:5>);
<ore:ingotBrass>.add(<tconstruct:ingots:5>);
<ore:blockBrass>.add(<tconstruct:metal:5>);
<ore:plateBrass>.add(<contenttweaker:aluminum_brass_plate>);
<ore:gearBrass>.add(<contenttweaker:aluminum_brass_gear>);

// recipes for melting ardite dust/chunks
mods.tconstruct.Melting.addRecipe(<liquid:ardite> * 288,<contenttweaker:ardite_rocky_chunk>);
mods.tconstruct.Melting.addRecipe(<liquid:ardite> * 288,<contenttweaker:ardite_chunk>);