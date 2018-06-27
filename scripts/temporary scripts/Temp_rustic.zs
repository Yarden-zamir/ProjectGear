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