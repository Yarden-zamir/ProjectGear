import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
//Sets the variable drawerBasic to refer to the ore dictionary tag with the same name
val drawerBasic = <ore:drawerBasic>;

// Adds every item in the mod to an array called AllUnlimitedStorageDrawers
val AllUnlimitedStorageDrawers = loadedMods["storagedrawersunlimited"].items as IItemStack[];
// Adds the drawerBasic ore dictionary tag to all items in the AllUnlimitedStorageDrawers array
for item in AllUnlimitedStorageDrawers {
    drawerBasic.add(item);
}
