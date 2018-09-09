import crafttweaker.item.IIngredient;
 
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearWood>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearWood>, <liquid:alubrass>, 144, true);
 
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearStone>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearStone>, <liquid:alubrass>, 144, true);

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

// Change the recipes of the Immersive Engineering steel fence, steel scaffolding and steel fence gate to require steel tool rods from Tinkers
 
  //Steel Fence Gate
recipes.removeShaped(<engineersdoors:fencegate_steel>);
recipes.addShaped(<engineersdoors:fencegate_steel> * 2,
    [[null, null, null],
     [<tconstruct:tool_rod>.withTag({Material: "steel"}), <thermalfoundation:material:160> , <tconstruct:tool_rod>.withTag({Material: "steel"}) ],
     [<tconstruct:tool_rod>.withTag({Material: "steel"}), <thermalfoundation:material:160> , <tconstruct:tool_rod>.withTag({Material: "steel"}) ]]);
     
  //Steel Fence
recipes.removeShaped(<immersiveengineering:metal_decoration1>);
recipes.addShaped(<immersiveengineering:metal_decoration1> * 6,
    [[null, null, null],
     [<thermalfoundation:material:160>, <tconstruct:tool_rod>.withTag({Material: "steel"}) , <thermalfoundation:material:160>],
     [<thermalfoundation:material:160>, <tconstruct:tool_rod>.withTag({Material: "steel"}) , <thermalfoundation:material:160>]]);
     
  //Steel Scaffolding  
recipes.removeShaped(<immersiveengineering:metal_decoration1:1>);
recipes.addShaped(<immersiveengineering:metal_decoration1:1> * 12,
    [[<thermalfoundation:material:160>, <thermalfoundation:material:160>, <thermalfoundation:material:160>],
     [null, <tconstruct:tool_rod>.withTag({Material: "steel"}), null],
     [<tconstruct:tool_rod>.withTag({Material: "steel"}), null, <tconstruct:tool_rod>.withTag({Material: "steel"})]]);
	 
#Script by Dr.Marx
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <liquid:gold> * 228, <projectred-core:resource_item>, true, 60);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <liquid:alubrass> * 228, <projectred-core:resource_item>, true, 60);