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
  <forestry:peat_bog:*>,
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
var metalObjects as IOreDictEntry[string][string] = {
    iron: {
        gear: <ore:gearIron>,
        ingot: <ore:ingotIron>
    },
    gold: {
        gear: <ore:gearGold>,
        ingot: <ore:ingotGold>
    },
    copper: {
        gear: <ore:gearCopper>,
        ingot: <ore:ingotCopper>
    },
    tin: {
        gear: <ore:gearTin>,
        ingot: <ore:ingotTin>
    },
    bronze: {
        gear: <ore:gearBronze>,
        ingot: <ore:ingotBronze>
    },
	nickel: {
        gear: <ore:gearNickel>,
        ingot: <ore:ingotNickel>
    }
};

for key, value in metalObjects {
    mods.forestry.ThermionicFabricator.addCast(value.gear.firstItem,
        [[null, value.ingot, null],
        [value.ingot, gearStone, value.ingot],
        [null, value.ingot, null]],
        <liquid: glass> * 200
    ); 
}