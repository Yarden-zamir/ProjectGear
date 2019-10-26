import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

// Disable forestry multifarms
val itemsToDisable =[
  // Multifarm blocks
  <forestry:ffarm:*>,
  // One-block farm machines
  <forestry:arboretum:*>,
  <forestry:farm_crops:*>,
  <forestry:farm_mushroom:*>,
  <forestry:farm_gourd:*>,
  <forestry:farm_nether:*>,
  <forestry:farm_ender:*>,
  <forestry:peat_bog:*>
] as IItemStack[];  //note: Disabled to encourage more complex farms
scripts.functions.disableItems(itemsToDisable);

val craftingToDisable =[
  // Multifarm blocks
  <forestry:ffarm:*>,
  // One-block farm machines
  <forestry:arboretum:*>,
  <forestry:farm_crops:*>,
  <forestry:farm_mushroom:*>,
  <forestry:farm_gourd:*>,
  <forestry:farm_nether:*>,
  <forestry:farm_ender:*>,
  <forestry:peat_bog:*>,
  <forestry:gear_copper>,
  <forestry:gear_bronze>,
  <forestry:gear_tin>
] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);

// Foresty log piles
recipes.removeShaped(<forestry:wood_pile>);
recipes.addShaped(<forestry:wood_pile>,
[[<ore:logWood>,<ore:string>],
[<ore:logWood>,<ore:string>]]);

// Turn ash and menril crystals into Forestry fertilizer
recipes.addShaped("menril_to_fertilizer", <forestry:fertilizer_compound> * 16, 
	[[<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>], 
	 [<ore:dustAsh>, <integrateddynamics:crystalized_menril_chunk>, <ore:dustAsh>], 
	 [<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>]]);

// Craft iron, gold, copper, tin, bronze and nickel gears in the thermionic fabricator.
val gearStone = <ore:gearStone>;
var metalObjects as IOreDictEntry[IItemStack]= {
	// Gear Iron
    <thermalfoundation:material:24> : <ore:ingotIron>,
	// Gear Gold
    <thermalfoundation:material:25> : <ore:ingotGold>,
	// Gear Copper
    <thermalfoundation:material:256> : <ore:ingotCopper>,
	// Gear Tin
    <thermalfoundation:material:257> : <ore:ingotTin>,
	// Gear Bronze
	<thermalfoundation:material:291> : <ore:ingotBronze>,
	// Gear Nickel
    <thermalfoundation:material:261> : <ore:ingotNickel>
};

// For every gear, create the corresponding ThermFabri recipe.
for gear, ingot in metalObjects {
    mods.forestry.ThermionicFabricator.addCast(gear,
        [[null, ingot, null],
        [ingot, gearStone, ingot],
        [null, ingot, null]],
        <liquid: glass> * 200
    ); 
}