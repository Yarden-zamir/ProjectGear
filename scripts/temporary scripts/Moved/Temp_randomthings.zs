import crafttweaker.item.IItemStack;
 
#Credit to DolphinBlaster for this script
 
// Disables Spectre Energy Stuff and its crafting materials
val itemsToDisable =[
    <randomthings:spectrecoil_normal>,    // Spectre Coil
    <randomthings:spectrecoil_redstone>,  // Redstone Spectre Coil
    <randomthings:spectrecoil_ender>,     // Ender Spectre Coil
    <randomthings:spectrecoil_number>,    // Spectre Coil Nr.
    <randomthings:spectrecoil_genesis>,   // Genesis Spectre Coil
    <randomthings:spectreenergyinjector>, // Spectre Energy Injector
    <randomthings:ingredient:12>          // Spectre String
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);