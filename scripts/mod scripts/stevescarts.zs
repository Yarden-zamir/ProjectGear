import crafttweaker.item.IItemStack;

val itemsToDisable =[
  <stevescarts:modulecomponents:17>,
  <stevescarts:cartmodule:15>,
  <stevescarts:cartmodule:79>,
  <stevescarts:cartmodule:80>,
  <stevescarts:cartmodule:14>,
  <stevescarts:cartmodule:84>,
  <stevescarts:cartmodule:89>,
  //Note: Disables Steve's Carts crop/wood farms, as well as the wood cutting core and planter range extended (now useless)
  //note: Disabled to encourage more complex farms
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);
