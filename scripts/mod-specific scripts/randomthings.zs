import crafttweaker.item.IItemStack;

val itemsToDisable =[
  <randomthings:pitcherplant>,          //Pitcher Plant: Gives easy infinite water
  <randomthings:enderbridge>,           //Ender bridge: Makes long range item transport too easy
  <randomthings:prismarineenderbridge>, //Prismarine ender bridge: See above
  <randomthings:spectrecoil_normal>,    // Spectre Coil: Allows teleportation of energy
  <randomthings:spectrecoil_redstone>,  // Redstone Spectre Coil: Allows teleportation of energy
  <randomthings:spectrecoil_ender>,     // Ender Spectre Coil: Allows teleportation of energy
  <randomthings:spectrecoil_number>,    // Spectre Coil Nr: Allows teleportation of energy
  <randomthings:spectrecoil_genesis>,   // Genesis Spectre Coil: Allows teleportation of energy
  <randomthings:spectreenergyinjector>, // Spectre Energy Injector: Allows teleportation of energy
  <randomthings:ingredient:12>          // Spectre String: Crafting ingredient for disabled items. No longer needed.
] as IItemStack[];

scripts.functions.disableItems(itemsToDisable);