import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

<ore:wireCopper>.add(<factorytech:machinepart:6>);
<ore:gearIron>.add(<factorytech:machinepart:3>);
scripts.functions.rename(<factorytech:machinepart:33>,"Water Mesh");
