import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
  <storagedrawers:upgrade_template> : "Microcrafting part for upgrades",
  <storagedrawers:upgrade_storage> : "Increases storage to 2 times base value. Upgrades stack to 7.",
  <storagedrawers:upgrade_storage:1> : "Increases storage to 4 times base value. Upgrades stack to 7.",
  <storagedrawers:upgrade_storage:2> : "Increases storage to 8 times base value. Upgrades stack to 7.",
  <storagedrawers:upgrade_storage:3> : "Increases storage to 16 times base value. Upgrades stack to 7.",
  <storagedrawers:upgrade_storage:4> : "Increases storage to 32 times base value. Upgrades stack to 7.",
  <storagedrawers:upgrade_one_stack> : "Decreases storage to 1 stack.",
  <storagedrawers:upgrade_status> : "Adds indicator bar that lights up when drawer is full.",
  <storagedrawers:upgrade_status:1> : "Adds indicator bar that lights up proportionally to how full the drawer is. ",
  <storagedrawers:upgrade_void> : "Drawer will void all items it receives when full.",
  <storagedrawers:upgrade_conversion> : "Allows insertion of oredict items.",
  <storagedrawers:upgrade_creative> : "Near-infinitive storage space.",
  <storagedrawers:upgrade_creative:1> : "Allows infinite extraction of an item.",
  <storagedrawers:upgrade_redstone> : "Emits redstone signal with power that depends on how full is the drawer.",
  <storagedrawers:upgrade_redstone:1> : "Emits redstone signal with power that depends on how full is the least full slot.",
  <storagedrawers:upgrade_redstone:2> : "Emits redstone signal with power that depends on how full is the most full slot.",
  <storagedrawers:drawer_key> : "Lock/unlock drawer. When a drawer is locked, it will maintain its current item association even if the last item is removed. This will prevent pipes and other transport systems from re-filling that drawer with other items. Holding key in the off-hand will lock all new placed drawers.",
  <storagedrawers:shroud_key> : "Show/hide item labels",
  <storagedrawers:personal_key> : "Protect access from other players.",
  <storagedrawers:quantify_key> : "Show/hide stored quantity labels.",
  <storagedrawers:tape> : "Seals drawer for moving.",
  <storagedrawers:basicdrawers> : " Stores 32 stacks per drawer.",
  <storagedrawers:basicdrawers:1> : "Stores 16 stacks per drawer.",
  <storagedrawers:basicdrawers:2> : "Stores 8 stacks per drawer.",
  <storagedrawers:basicdrawers:3> : "Stores 8 stacks per drawer.",
  <storagedrawers:basicdrawers:4> : "Stores 4 stacks per drawer.",
  <storagedrawers:trim> : "Decorative wood paneled blocks similar to wooden drawers, but they can also be used to connect drawer blocks within a controller network.",
  <storagedrawers:keybutton:*> : "Button version of key. Must be placed on drawer controller or slave. Works on whole drawer network.",
  <storagedrawers:compdrawers> : "Special stone-colored drawer that auto-convert compressible items. The drawer will internally maintain a pool of the material, and let you insert or remove the material in any of the shown forms.",
  <storagedrawers:controllerslave> : "Act as an extension of a drawer controller, exposing more faces for attaching machines, pipes, or crafting frames. Controllers will bind to a slave when they find them on the network, and all slaves bound to the same controller will share the same inventory and range as that controller. Unlike drawers, slaves cannot be shared, and you should be careful to not put them in range of multiple controllers. Using controller slaves is better for performance than using multiple controllers.",
  <storagedrawers:controller> : "Drawer Controllers will search for any connected drawer within 12 blocks, and then expose all of those drawers as a large combined inventory. This lets you hook up a single pipe, tube, duct, spark, storage bus, etc. and interact with the entire bank of drawers. The second function of the controller is as a deposit-only interactive block. By right-clicking on the front face with an item, the item will be deposited into the connected network. By double-right clicking, it will attempt to dump your entire inventory. Items will only be dumped if they already exist in the network.",
  <storagedrawers:framingtable> : "Allows retexturing of frame drawers.",
  <storagedrawers:customdrawers:*> : "Custom drawers. You can decide the look in the framing table.",
  <storagedrawers:customtrim> : "Custom trim. You can decide the look in the framing table."
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for storage drawers loaded successfully");
