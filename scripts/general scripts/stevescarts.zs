import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

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
  <stevescarts:cartmodule:87>,
  <stevescarts:cartmodule:92>,
  //Note: Disables autocrafters. Use Buildcraft, Factory Tech or Charset for that.
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

	//Alternative lump of galgador recipe using ardite instead of diamond
recipes.addShaped(<stevescarts:modulecomponents:46> * 2,
	[[<minecraft:glowstone_dust>, <ore:blockArdite>, <minecraft:glowstone_dust>],
	 [<stevescarts:modulecomponents:45>, <minecraft:glowstone_dust>, <stevescarts:modulecomponents:45>],
	 [<stevescarts:modulecomponents:21>, <stevescarts:modulecomponents:45>, <stevescarts:modulecomponents:21>]]);

	//Alternative raw hardener recipe using cobalt instead of diamond
recipes.addShaped(<stevescarts:modulecomponents:18>,
	[[<minecraft:obsidian>, null, <minecraft:obsidian>],
	 [null, <ore:ingotCobalt>, null],
	 [<minecraft:obsidian>, null, <minecraft:obsidian>]]);

	//Alternative divine shield recipe using cobalt instead of dimaond
recipes.addShaped(<stevescarts:cartmodule:32>,
	[[<minecraft:obsidian>, <stevescarts:modulecomponents:19>, <minecraft:obsidian>],
	 [<stevescarts:modulecomponents:19>, <ore:blockCobalt>, <stevescarts:modulecomponents:19>],
	 [<minecraft:obsidian>, <stevescarts:modulecomponents:19>, <minecraft:obsidian>]]);

   //adding copper to the iron drill head recipe
recipes.remove(<stevescarts:cartmodule:42>.withTag({Data: 100 as byte}));
recipes.addShaped(<stevescarts:cartmodule:42>.withTag({Data: 100 as byte}),
	[[<minecraft:iron_ingot>, <minecraft:iron_ingot>, null],
	 [<ore:ingotCopper>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
	 [<minecraft:iron_ingot>, <minecraft:iron_ingot>, null]]);
   
   //add drill head to oredict
<ore:drillheadIron>.add(<stevescarts:cartmodule:42>.withTag({Data: 100 as byte}));
