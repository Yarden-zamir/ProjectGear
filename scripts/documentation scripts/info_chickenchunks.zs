import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
	<chickenchunks:chunk_loader> : "It is used to keep a given area of chunks constantly loaded into memory, allowing for the game's processes to go on, regardless of players presence. A Redstone signal will deactivate the Loader, shown by the orb coming to a rest. Right-click the Chunk Loader to open the GUI, that allows access to the options and features:\nRadius, adjust the size using the − and + buttons.\nShow Lasers, displays an animated laser beam of the loaded area's boundary.\nShape, Square. Circle or Line (X or Z axis).",
	<chickenchunks:chunk_loader:1> : "The Spot Loader keeps the chunk it is in loaded into memory constantly, allowing for all the game's processes to run normally in that single chunk, regardless of players presence. A redstone signal will turn this block off. When off, the orb will come to a rest."
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for chicken chunks loaded successfully");
