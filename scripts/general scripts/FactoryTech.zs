import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

//adding OreDict
<ore:wireCopper>.add(<factorytech:machinepart:20>);
<ore:gearIron>.add(<factorytech:machinepart:3>);
<ore:magnet>.add(<magneticraft:crafting:4>);

scripts.functions.rename(<factorytech:machinepart:180>,"Water Mesh");
//recipes.removeShaped(<factorytech:machinepart:33>); will remove recipe when adding the alternative that's in the diagram.
