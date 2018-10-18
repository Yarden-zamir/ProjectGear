import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

val itemsToDisable =[
  <rustic:elixir>,
  <rustic:aloe_vera>,
  <rustic:blood_orchid>,
  <rustic:chamomile>,
  <rustic:cohosh>,
  <rustic:deathstalk_mushroom>,
  <rustic:horsetail>,
  <rustic:mooncap_mushroom>,
  <rustic:wind_thistle>,
  <rustic:cloudsbluff>,
  <rustic:core_root>,
  <rustic:ginseng>,
  <rustic:marsh_mallow>
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

//Fixed recipe conflict
recipes.removeShaped(<rustic:slate_roof>);
recipes.addShaped(<rustic:slate_roof>,
	[[<rustic:slate_brick>, <rustic:slate_brick>],
	 [<rustic:slate_brick>, <rustic:slate_brick>]]);

//Fix recipe conflict with Quark's stained planks

val treatedWood = <immersiveengineering:treated_wood>;
val livingWood = <botania:livingwood:1>;

recipes.removeShaped(<rustic:painted_wood_white>);
recipes.removeShaped(<rustic:painted_wood_orange>);
recipes.removeShaped(<rustic:painted_wood_magenta>);
recipes.removeShaped(<rustic:painted_wood_light_blue>);
recipes.removeShaped(<rustic:painted_wood_yellow>);
recipes.removeShaped(<rustic:painted_wood_lime>);
recipes.removeShaped(<rustic:painted_wood_pink>);
recipes.removeShaped(<rustic:painted_wood_gray>);
recipes.removeShaped(<rustic:painted_wood_silver>);
recipes.removeShaped(<rustic:painted_wood_cyan>);
recipes.removeShaped(<rustic:painted_wood_purple>);
recipes.removeShaped(<rustic:painted_wood_blue>);
recipes.removeShaped(<rustic:painted_wood_brown>);
recipes.removeShaped(<rustic:painted_wood_green>);
recipes.removeShaped(<rustic:painted_wood_red>);
recipes.removeShaped(<rustic:painted_wood_black>);

recipes.addShaped(<rustic:painted_wood_white> * 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeWhite>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_orange>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeOrange>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_magenta>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeMagenta>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_light_blue>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeLightBlue>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_yellow>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeYellow>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_lime>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeLime>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_pink>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyePink>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_gray>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeGray>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_silver>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeLightGray>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_cyan>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeCyan>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_purple>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyePurple>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_blue>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeBlue>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_brown>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeBrown>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_green>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeGreen>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_red>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeRed>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
recipes.addShaped(<rustic:painted_wood_black>* 8,
	[[treatedWood, treatedWood, treatedWood],
	 [treatedWood, <ore:dyeBlack>, treatedWood],
	 [treatedWood, treatedWood, treatedWood]]);
	 
	 //Craft with livingwood
	 
recipes.addShaped(<rustic:painted_wood_white>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeWhite>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_orange>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeOrange>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_magenta>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeMagenta>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_light_blue>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeLightBlue>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_yellow>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeYellow>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_lime>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeLime>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_pink>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyePink>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_gray>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeGray>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_silver>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeLightGray>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_cyan>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeCyan>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_purple>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyePurple>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_blue>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeBlue>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_brown>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeBrown>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_green>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeGreen>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_red>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeRed>, livingWood],
	 [livingWood, livingWood, livingWood]]);
	 
recipes.addShaped(<rustic:painted_wood_black>* 8,
	[[livingWood, livingWood, livingWood],
	 [livingWood, <ore:dyeBlack>, livingWood],
	 [livingWood, livingWood, livingWood]]);