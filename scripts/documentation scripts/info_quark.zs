import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

//and this is for adding a lot at once, use this in most cases, there is no real reason to use the former
val batch = {
  <quark:biotite_ore> : "A renewable ore that appears in patches on the main end island when the dragon dies.",
  <quark:black_ash> : "Can be placed like redstone. Mobs can't spawn on it. If a solid block is directly above the ash, mobs can't spawn there either. [ADD DIAGRAM RECIPE DESCRIPTION - ISSUE 111].",
  <quark:crystal:*> : "Found in rare crystal caves and used to craft runes. It can also be used as a fancy light source. Crystal caves are 4 times as common in Project Gear.",
  <quark:smoker> : "Spawn uncommonly on the border of lava lakes in the Nether. They emit smoke particles, unless there's a solid block directly above them. Furthermore, creating a 1x1 chimney surrounded by solid blocks, from the smoker block upward, will cause the smoke to propagate. Combine these two with a piston and you can turn the smoke off at will on your chimney.",
  <quark:iron_ladder> : "They work like normal ladders, except that they can stand by themselves as long as the top-most iron ladder is connected to a solid block.",
  <quark:candle:*> : "Dyable light sources that fall like sand. ",
  <quark:iron_rod> : "Pushing it into a block with a piston will break that block. It can't be pushed by slime blocks, and only works with blocks that could be pushed with a piston. Blocks like obsidian can't be broken, and the 12 block push limit still applies.",
  <quark:obsidian_pressure_plate> : "A pressure plate that only triggers when a player walks over it.",
  <quark:rain_detector> : "Puts out a full redstone signal if it's raining or snowing. Right click to invert.",
  <quark:arrow_ender> : "A ender pearl that can be shot with a bow. Arrows travel farther and are easier to aim. Incompatible with the infinity enchantment.",
  <quark:arrow_explosive> : "Creates a small explosion on impact. Add a dispenser for a cheap quarry. Incompatible with the infinity enchantment.",
  <quark:arrow_torch> : "Tries to place a torch on impact. If it can't, it drops the arrow so you can reuse it. Incompatible with the infinity enchantment.",
  <quark:slime_bucket> : "Made by right clicking on a slime while holding an empty bucket. If you're standing in a slime chunk, the slime inside bounces. It can also be used as a slime ball (you monster).",
  <quark:rune:*> : "Found as dungeon loot, made with crystals or crafted with a runic altar. Lets you change the color of the enchanted glint.",
  <quark:ancient_tome> : "Lets you get an enchanted book one level higher than is normally possible. This is done by combining it with a max level enchanted book of the same type. For example, combining an unbreaking 3 tome and an unbreaking 3 enchanted book gives you an unbreaking 4 book. Making it requires 35 levels, and applying it requires another 35.",
  <quark:soul_powder> : "Works like an eye of ender, but it seeks out nether fortresses.",
  <quark:enderdragon_scale> : "Dropped by the ender dragon after it is respawned with the vanilla ritual. It can be used to duplicate an elytra. [ADD DIAGRAM RECIPE DESCRIPTION - ISSUE 392]",
  <quark:trowel> : "Right clicking places a random block from your hotbar. Useful for making ruins or paths. 256 uses.",
  <quark:witch_hat> : "Rare drop from witches, with the same drop chance as a wither skull. Provides as much armor as a leather hat, is highly enchantable, and blocks 50% of damage from harming potions thrown by witches.",
  <quark:pirate_hat> : "Dropped by pirates, which can be found on rare pirate ships in ocean biomes.",
  <quark:soul_bead> : "Right clicking it will break it, and inflict a Curse potion effect on the player for 20 minutes. Mobs in a 64 block radius of a player with Curse will spawn ignoring light levels and other conditions (like slime chunk restrictions). Curse can not be cleansed with Milk.",
  <quark:biotite> : "Dropped from biotite ore.",
  <quark:tallow> : "Dropped by pigs, and used to craft candles.",
  //<quark:charcoal_block> : "It has the fuel value of 10 pieces of charcoal. Like netherrack, when lit on fire the fire will never go out." //This block is disabled to save block IDs
} as string[IItemStack];
addDescBatch(batch);

print("Documentation for quark loaded successfully");