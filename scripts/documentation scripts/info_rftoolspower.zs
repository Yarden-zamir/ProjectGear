import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
	<rftoolspower:information_screen> : "Place screen on block that supports FE and it will show power info.",
	<rftoolspower:power_core3> : "Microcrafting item for RFTools Power powercells.",
	<rftoolspower:power_core2> : "Microcrafting item for RFTools Power powercells.",
	<rftoolspower:power_core1> : "Microcrafting item for RFTools Power powercells.",
	<rftoolspower:cell3> : "This block can store power (20'000'000 RF) and can be combined with other cells of same type in a big multiblock. Use wrench to toggle input/output for a side. Staring in/out is 4000 RF/t and it rises with each additional cell by 1000.",
	<rftoolspower:cell2> : "This block can store power (4'000'000 RF) and can be combined with other cells of same type in a big multiblock. Use wrench to toggle input/output for a side. Staring in/out is 1000 RF/t and it rises with each additional cell by 250.",
	<rftoolspower:cell1> : "This block can store power (500'000 RF) and can be combined with other cells of same type in a big multiblock. Use wrench to toggle input/output for a side. Staring in/out is 2500 RF/t and it rises with each additional cell by 72.5."
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for rftools power loaded successfully");
