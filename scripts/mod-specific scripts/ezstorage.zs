import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

print("Beginning ezstorage.zs");


val itemsToDisable =[

] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);
	// Extraction, output and input ports
	// Note: EZStorage is intended to be an early game option. It's supposed to be a giant chest with a search bar.
	// Note: With these items disabled, it can't interact with hoppers or pipes. It's manual only.
	// Note: Use Logistics Pipes, Corporea or RFTools for more high tech storage
	<ezstorage:extract_port>,
	<ezstorage:output_port>,
	<ezstorage:input_port>
val craftingToDisable =[

] as IItemStack[];
scripts.functions.disableCraftings(craftingToDisable);
	// Extraction, output and input ports
	<ezstorage:extract_port>,
	<ezstorage:output_port>,
	<ezstorage:input_port>
print("Completed ezstorage.zs");
