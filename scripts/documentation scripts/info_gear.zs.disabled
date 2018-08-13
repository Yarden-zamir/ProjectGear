import crafttweaker.item.IItemStack;

// Tooltips to display the stats for Thermal (& some vanilla) Tools, Weapons & Armor!
// Information pulled from the CoFH wiki: https://teamcofh.com/docs/thermal-foundation/
// Unedited script: https://pastebin.com/n5ztwfs1
//
// Last updated: June 2018
// Author: Ligands

// String constants
val italic = "\u00A7o";
val reset = "\u00A7r\u00A77";
val emptyLine = "";
val sickleText = "Breaks a 7x7 area of plants or cobwebs";
val hammerText = "Breaks a 3x3 area";

// Order: copper, tin, silver, lead, aluminum, nickel, platinum, steel, electrum, invar, bronze, constantan, iron, diamond, gold (hmm, can't remember why I reversed diamond & gold... too late to change now!)
val enchantabilityPrefix = "Enchantability: ";
val enchantabilityText = ["7", "7", "25", "9", "14", "18", "16", "10", "30", "12", "10", "12", "14", "10", "22"] as string[];

val miningSpeedPrefix = "Mining Speed: ";
val miningSpeedText = ["4", "4.5", "6", "5", "10", "6.5", "9", "6.5", "14", "6.5", "6", "6", "6", "8", "12"] as string[];

val harvestLevelPrefix = "Harvest Level: ";
val harvestLevelText = ["1", "1", "1", "1", "1", "2", "4", "2", "0", "2", "2", "2", "2", "3", "0"] as string[];

val fishingLurePrefix = "Lure Bonus: ";
val fishingLureText = ["1", "2", "2", "2", "3", "2", "3", "2", "5", "2", "2", "2", "2", "3", "4"] as string[];
val fishingLuckPrefix = "Luck Bonus: ";
val fishingLuckText = ["1", "1", "1", "1", "1", "1", "2", "1", "0", "1", "1", "1", "1", "2", "0"] as string[];

val arrowDamagePrefix = "Arrow Damage: ";
val arrowDamageText = ["x1.25", "x1.25", "x1.25", "x1.25", "x1.25", "x1.63", "x1.88", "x1.63", "x1.13", "x1.63", "x1.5", "x1.38", "x1.5", "x1.75", "x1"] as string[];
val arrowSpeedPrefix = "Arrow Speed: ";
val arrowSpeedText = ["x1.2", "x1.23", "x1.3", "x1.25", "x1.5", "x1.33", "x1.45", "x1.33", "x1.7", "x1.33", "x1.3", "x1.3", "x1.3", "x1.4", "x1.6"] as string[];

val durabilityPrefix = "Durability: ";
val sickleDurabilityText = ["700", "600", "300", "400", "900", "1200", "5600", "1600", "400", "1700", "1300", "1100", "1000", "6244", "128"] as string[];
val swordDurabilityText = ["175", "150", "75", "100", "225", "300", "1400", "400", "100", "425", "325", "275", "250", "1561", "32"] as string[];
val shieldDurabilityText = ["450", "425", "350", "375", "500", "575", "1675", "675", "375", "700", "600", "550", "525", "1836", "307"] as string[];
val toolDurabilityText = ["175", "150", "75", "100", "225", "300", "1400", "400", "100", "425", "325", "275", "250", "1561", "32"] as string[];
val hammerDurabilityText = ["350", "300", "150", "200", "550", "600", "2800", "800", "200", "850", "650", "550", "500", "3122", "64"] as string[];
val bowDurabilityText = ["500", "475", "400", "425", "550", "625", "1725", "725", "425", "750", "650", "600", "575", "1886", "357"] as string[];
val rodDurabilityText = ["180", "155", "80", "105", "230", "305", "1405", "405", "105", "430", "330", "280", "255", "1566", "37"] as string[];
val shearDurabilityText = ["163", "138", "63", "88", "213", "288", "1388", "388", "88", "413", "313", "263", "238", "1549", "20"] as string[];

// Armor - Durability & Enchantability (+ leather, chain)
val helmDurabilityText = ["110", "88", "88", "132", "132", "165", "385", "242", "88", "231", "198", "143", "165", "363", "77", "55", "165"] as string[];
val chestDurabilityText = ["160", "128", "128", "192", "192", "240", "560", "352", "128", "336", "288", "208", "240", "528", "112", "80", "240"] as string[];
val pantsDurabilityText = ["150", "120", "120", "180", "180", "223", "525", "330", "120", "315", "270", "195", "225", "495", "105", "75", "225"] as string[];
val bootsDurabilityText = ["130", "104", "104", "156", "156", "195", "455", "286", "104", "273", "234", "169", "195", "429", "91", "65", "195"] as string[];
val armorEnchantabilityText = ["8", "9", "25", "9", "14", "18", "16", "10", "30", "12", "10", "12", "9", "10", "25", "15", "12"] as string[];

// Horse armor - Durability only
val horseArmorLevel = ["4", "4", "8", "5", "5", "9", "12", "9", "8", "9", "8", "8", "5", "11", "7"] as string[];

/*

// Just enchantability:
// Sickle
var sickle = [
<thermalfoundation:tool.sickle_copper>,
<thermalfoundation:tool.sickle_tin>,
<thermalfoundation:tool.sickle_silver>,
<thermalfoundation:tool.sickle_lead>,
<thermalfoundation:tool.sickle_aluminum>,
<thermalfoundation:tool.sickle_nickel>,
<thermalfoundation:tool.sickle_platinum>,
<thermalfoundation:tool.sickle_steel>,
<thermalfoundation:tool.sickle_electrum>,
<thermalfoundation:tool.sickle_invar>,
<thermalfoundation:tool.sickle_bronze>,
<thermalfoundation:tool.sickle_constantan>,
<thermalfoundation:tool.sickle_iron>,
<thermalfoundation:tool.sickle_diamond>,
<thermalfoundation:tool.sickle_gold>
] as IItemStack[];

*/

// Sword
var sword = [
<thermalfoundation:tool.sword_copper>,
<thermalfoundation:tool.sword_tin>,
#<thermalfoundation:tool.sword_silver>,
#<thermalfoundation:tool.sword_lead>,
#<thermalfoundation:tool.sword_aluminum>,
<thermalfoundation:tool.sword_nickel>,
<thermalfoundation:tool.sword_platinum>,
<thermalfoundation:tool.sword_steel>,
#<thermalfoundation:tool.sword_electrum>,
<thermalfoundation:tool.sword_invar>,
<thermalfoundation:tool.sword_bronze>,
#<thermalfoundation:tool.sword_constantan>,
<minecraft:iron_sword>,
<minecraft:diamond_sword>,
<minecraft:golden_sword>
] as IItemStack[];
// Shield
var shield = [
<thermalfoundation:tool.shield_copper>,
<thermalfoundation:tool.shield_tin>,
#<thermalfoundation:tool.shield_silver>,
#<thermalfoundation:tool.shield_lead>,
#<thermalfoundation:tool.shield_aluminum>,
<thermalfoundation:tool.shield_nickel>,
#<thermalfoundation:tool.shield_platinum>,
<thermalfoundation:tool.shield_steel>,
#<thermalfoundation:tool.shield_electrum>,
<thermalfoundation:tool.shield_invar>,
<thermalfoundation:tool.shield_bronze>,
#<thermalfoundation:tool.shield_constantan>,
<thermalfoundation:tool.shield_iron>,
<thermalfoundation:tool.shield_diamond>,
<thermalfoundation:tool.shield_gold>
] as IItemStack[];

// + Mining Speed:
// Shovel
var shovel = [
<thermalfoundation:tool.shovel_copper>,
<thermalfoundation:tool.shovel_tin>,
#<thermalfoundation:tool.shovel_silver>,
#<thermalfoundation:tool.shovel_lead>,
#<thermalfoundation:tool.shovel_aluminum>,
<thermalfoundation:tool.shovel_nickel>,
#<thermalfoundation:tool.shovel_platinum>,
<thermalfoundation:tool.shovel_steel>,
<thermalfoundation:tool.shovel_electrum>,
<thermalfoundation:tool.shovel_invar>,
<thermalfoundation:tool.shovel_bronze>,
#<thermalfoundation:tool.shovel_constantan>,
<minecraft:iron_shovel>,
<minecraft:diamond_shovel>,
<minecraft:golden_shovel>
] as IItemStack[];
// Axe
var axe = [
<thermalfoundation:tool.axe_copper>,
<thermalfoundation:tool.axe_tin>,
#<thermalfoundation:tool.axe_silver>,
#<thermalfoundation:tool.axe_lead>,
#<thermalfoundation:tool.axe_aluminum>,
<thermalfoundation:tool.axe_nickel>,
#<thermalfoundation:tool.axe_platinum>,
<thermalfoundation:tool.axe_steel>,
#<thermalfoundation:tool.axe_electrum>,
<thermalfoundation:tool.axe_invar>,
<thermalfoundation:tool.axe_bronze>,
#<thermalfoundation:tool.axe_constantan>,
<minecraft:iron_axe>,
<minecraft:diamond_axe>,
<minecraft:golden_axe>
] as IItemStack[];

// + Mining Speed & Level:
// Pick
var pick = [
<thermalfoundation:tool.pickaxe_copper>,
<thermalfoundation:tool.pickaxe_tin>,
#<thermalfoundation:tool.pickaxe_silver>,
#<thermalfoundation:tool.pickaxe_lead>,
#<thermalfoundation:tool.pickaxe_aluminum>,
<thermalfoundation:tool.pickaxe_nickel>,
<thermalfoundation:tool.pickaxe_platinum>,
<thermalfoundation:tool.pickaxe_steel>,
#<thermalfoundation:tool.pickaxe_electrum>,
<thermalfoundation:tool.pickaxe_invar>,
<thermalfoundation:tool.pickaxe_bronze>,
#<thermalfoundation:tool.pickaxe_constantan>,
<minecraft:iron_pickaxe>,
<minecraft:diamond_pickaxe>,
<minecraft:golden_pickaxe>
] as IItemStack[];
// Hammer

/*

var hammer = [
<thermalfoundation:tool.hammer_copper>,
<thermalfoundation:tool.hammer_tin>,
<thermalfoundation:tool.hammer_silver>,
<thermalfoundation:tool.hammer_lead>,
<thermalfoundation:tool.hammer_aluminum>,
<thermalfoundation:tool.hammer_nickel>,
<thermalfoundation:tool.hammer_platinum>,
<thermalfoundation:tool.hammer_steel>,
<thermalfoundation:tool.hammer_electrum>,
<thermalfoundation:tool.hammer_invar>,
<thermalfoundation:tool.hammer_bronze>,
<thermalfoundation:tool.hammer_constantan>,
<thermalfoundation:tool.hammer_iron>,
<thermalfoundation:tool.hammer_diamond>,
<thermalfoundation:tool.hammer_gold>
] as IItemStack[];

*/

// + Arrow Damage & Speed multiplier:
// Bow
var bow = [
<thermalfoundation:tool.bow_copper>,
<thermalfoundation:tool.bow_tin>,
#<thermalfoundation:tool.bow_silver>,
#<thermalfoundation:tool.bow_lead>,
#<thermalfoundation:tool.bow_aluminum>,
<thermalfoundation:tool.bow_nickel>,
#<thermalfoundation:tool.bow_platinum>,
<thermalfoundation:tool.bow_steel>,
#<thermalfoundation:tool.bow_electrum>,
<thermalfoundation:tool.bow_invar>,
<thermalfoundation:tool.bow_bronze>,
#<thermalfoundation:tool.bow_constantan>,
<thermalfoundation:tool.bow_iron>,
<thermalfoundation:tool.bow_diamond>,
<thermalfoundation:tool.bow_gold>
] as IItemStack[];



// + Fishing Luck & Lure:
// Fishing Rod
var rod = [
<thermalfoundation:tool.fishing_rod_copper>,
<thermalfoundation:tool.fishing_rod_tin>,
#<thermalfoundation:tool.fishing_rod_silver>,
#<thermalfoundation:tool.fishing_rod_lead>,
#<thermalfoundation:tool.fishing_rod_aluminum>,
<thermalfoundation:tool.fishing_rod_nickel>,
#<thermalfoundation:tool.fishing_rod_platinum>,
<thermalfoundation:tool.fishing_rod_steel>,
#<thermalfoundation:tool.fishing_rod_electrum>,
<thermalfoundation:tool.fishing_rod_invar>,
<thermalfoundation:tool.fishing_rod_bronze>,
#<thermalfoundation:tool.fishing_rod_constantan>,
<thermalfoundation:tool.fishing_rod_iron>,
<thermalfoundation:tool.fishing_rod_diamond>,
<thermalfoundation:tool.fishing_rod_gold>
] as IItemStack[];

// Just Durability
// Shears
var shear = [
<thermalfoundation:tool.shears_copper>,
<thermalfoundation:tool.shears_tin>,
#<thermalfoundation:tool.shears_silver>,
#<thermalfoundation:tool.shears_lead>,
#<thermalfoundation:tool.shears_aluminum>,
<thermalfoundation:tool.shears_nickel>,
#<thermalfoundation:tool.shears_platinum>,
<thermalfoundation:tool.shears_steel>,
#<thermalfoundation:tool.shears_electrum>,
<thermalfoundation:tool.shears_invar>,
<thermalfoundation:tool.shears_bronze>,
#<thermalfoundation:tool.shears_constantan>,
<minecraft:shears>,
<thermalfoundation:tool.shears_diamond>,
<thermalfoundation:tool.shears_gold>
] as IItemStack[];

// Hoes
var hoe = [
<thermalfoundation:tool.hoe_copper>,
<thermalfoundation:tool.hoe_tin>,
#<thermalfoundation:tool.hoe_silver>,
#<thermalfoundation:tool.hoe_lead>,
#<thermalfoundation:tool.hoe_aluminum>,
<thermalfoundation:tool.hoe_nickel>,
#<thermalfoundation:tool.hoe_platinum>,
<thermalfoundation:tool.hoe_steel>,
#<thermalfoundation:tool.hoe_electrum>,
<thermalfoundation:tool.hoe_invar>,
<thermalfoundation:tool.hoe_bronze>,
#<thermalfoundation:tool.hoe_constantan>,
<minecraft:iron_hoe>,
<minecraft:diamond_hoe>,
<minecraft:golden_hoe>
] as IItemStack[];

// TODO Armors
// Helm



var helm = [
/*
<thermalfoundation:armor.helmet_copper>,
<thermalfoundation:armor.helmet_tin>,
<thermalfoundation:armor.helmet_silver>,
<thermalfoundation:armor.helmet_lead>,
<thermalfoundation:armor.helmet_aluminum>,
<thermalfoundation:armor.helmet_nickel>,
<thermalfoundation:armor.helmet_platinum>,
<thermalfoundation:armor.helmet_steel>,
<thermalfoundation:armor.helmet_electrum>,
<thermalfoundation:armor.helmet_invar>,
<thermalfoundation:armor.helmet_bronze>,
<thermalfoundation:armor.helmet_constantan>,
*/
<minecraft:iron_helmet>,
<minecraft:diamond_helmet>,
<minecraft:golden_helmet>,
<minecraft:leather_helmet>,
<minecraft:chainmail_helmet>
] as IItemStack[];
// Chest
var chest = [
<thermalfoundation:armor.plate_copper>,
<thermalfoundation:armor.plate_tin>,
<thermalfoundation:armor.plate_silver>,
<thermalfoundation:armor.plate_lead>,
<thermalfoundation:armor.plate_aluminum>,
<thermalfoundation:armor.plate_nickel>,
<thermalfoundation:armor.plate_platinum>,
<thermalfoundation:armor.plate_steel>,
<thermalfoundation:armor.plate_electrum>,
<thermalfoundation:armor.plate_invar>,
<thermalfoundation:armor.plate_bronze>,
<thermalfoundation:armor.plate_constantan>,
/*
<minecraft:iron_chestplate>,
<minecraft:diamond_chestplate>,
<minecraft:golden_chestplate>,
<minecraft:leather_chestplate>,
<minecraft:chainmail_chestplate>
*/
] as IItemStack[];
// Pants
var pants = [
/*
<thermalfoundation:armor.legs_copper>,
<thermalfoundation:armor.legs_tin>,
<thermalfoundation:armor.legs_silver>,
<thermalfoundation:armor.legs_lead>,
<thermalfoundation:armor.legs_aluminum>,
<thermalfoundation:armor.legs_nickel>,
<thermalfoundation:armor.legs_platinum>,
<thermalfoundation:armor.legs_steel>,
<thermalfoundation:armor.legs_electrum>,
<thermalfoundation:armor.legs_invar>,
<thermalfoundation:armor.legs_bronze>,
<thermalfoundation:armor.legs_constantan>,
*/
<minecraft:iron_leggings>,
<minecraft:diamond_leggings>,
<minecraft:golden_leggings>,
<minecraft:leather_leggings>,
<minecraft:chainmail_leggings>
] as IItemStack[];
// Boots
var boots = [
/*
<thermalfoundation:armor.boots_copper>,
<thermalfoundation:armor.boots_tin>,
<thermalfoundation:armor.boots_silver>,
<thermalfoundation:armor.boots_lead>,
<thermalfoundation:armor.boots_aluminum>,
<thermalfoundation:armor.boots_nickel>,
<thermalfoundation:armor.boots_platinum>,
<thermalfoundation:armor.boots_steel>,
<thermalfoundation:armor.boots_electrum>,
<thermalfoundation:armor.boots_invar>,
<thermalfoundation:armor.boots_bronze>,
<thermalfoundation:armor.boots_constantan>,
*/
<minecraft:iron_boots>,
<minecraft:diamond_boots>,
<minecraft:golden_boots>,
<minecraft:leather_boots>,
<minecraft:chainmail_boots>
] as IItemStack[];

// Horse Armor
var horsearmor = [
<thermalfoundation:horse_armor_copper>,
<thermalfoundation:horse_armor_tin>,
<thermalfoundation:horse_armor_silver>,
<thermalfoundation:horse_armor_lead>,
<thermalfoundation:horse_armor_aluminum>,
<thermalfoundation:horse_armor_nickel>,
<thermalfoundation:horse_armor_platinum>,
<thermalfoundation:horse_armor_steel>,
<thermalfoundation:horse_armor_electrum>,
<thermalfoundation:horse_armor_invar>,
<thermalfoundation:horse_armor_bronze>,
<thermalfoundation:horse_armor_constantan>,
<minecraft:iron_horse_armor>,
<minecraft:diamond_horse_armor>,
<minecraft:golden_horse_armor>
] as IItemStack[];



// Main loop
for i in 0 to 15 {

/*
	// Sickle
	sickle[i].addTooltip(sickleText);
	sickle[i].addTooltip(emptyLine);
	sickle[i].addTooltip(italic + enchantabilityPrefix + reset + enchantabilityText[i]);
	sickle[i].addTooltip(italic + durabilityPrefix + reset + sickleDurabilityText[i]);
	
*/
	
	// Sword
	sword[i].addTooltip(emptyLine);
	sword[i].addTooltip(italic + enchantabilityPrefix + reset + enchantabilityText[i]);
	sword[i].addTooltip(italic + durabilityPrefix + reset + swordDurabilityText[i]);
	
	// Shield
	shield[i].addTooltip(emptyLine);
	shield[i].addTooltip(italic + durabilityPrefix + reset + shieldDurabilityText[i]);
	
	// Shovel
	shovel[i].addTooltip(emptyLine);
	shovel[i].addTooltip(italic + miningSpeedPrefix + reset + miningSpeedText[i]);
	shovel[i].addTooltip(italic + enchantabilityPrefix + reset + enchantabilityText[i]);
	shovel[i].addTooltip(italic + durabilityPrefix + reset + toolDurabilityText[i]);
	
	// Axe
	axe[i].addTooltip(emptyLine);
	axe[i].addTooltip(italic + miningSpeedPrefix + reset + miningSpeedText[i]);
	axe[i].addTooltip(italic + enchantabilityPrefix + reset + enchantabilityText[i]);
	axe[i].addTooltip(italic + durabilityPrefix + reset + toolDurabilityText[i]);
	
	// Pick
	pick[i].addTooltip(emptyLine);
	pick[i].addTooltip(italic + miningSpeedPrefix + reset + miningSpeedText[i]);
	pick[i].addTooltip(italic + harvestLevelPrefix + reset + harvestLevelText[i]);
	pick[i].addTooltip(italic + enchantabilityPrefix + reset + enchantabilityText[i]);
	pick[i].addTooltip(italic + durabilityPrefix + reset + toolDurabilityText[i]);
	
/*
	
	// Hammer
	hammer[i].addTooltip(hammerText);
	hammer[i].addTooltip(emptyLine);
	hammer[i].addTooltip(italic + miningSpeedPrefix + reset + miningSpeedText[i]);
	hammer[i].addTooltip(italic + harvestLevelPrefix + reset + harvestLevelText[i]);
	hammer[i].addTooltip(italic + enchantabilityPrefix + reset + enchantabilityText[i]);
	hammer[i].addTooltip(italic + durabilityPrefix + reset + hammerDurabilityText[i]);
	
*/
	
	// Bow
	bow[i].addTooltip(emptyLine);
	bow[i].addTooltip(italic + arrowDamagePrefix + reset + arrowDamageText[i]);
	bow[i].addTooltip(italic + arrowSpeedPrefix + reset + arrowSpeedText[i]);
	bow[i].addTooltip(italic + enchantabilityPrefix + reset + enchantabilityText[i]);
	bow[i].addTooltip(italic + durabilityPrefix + reset + bowDurabilityText[i]);
	
	// Fishing Rod
	rod[i].addTooltip(emptyLine);
	rod[i].addTooltip(italic + fishingLurePrefix + reset + fishingLureText[i]);
	rod[i].addTooltip(italic + fishingLuckPrefix + reset + fishingLuckText[i]);
	rod[i].addTooltip(italic + enchantabilityPrefix + reset + enchantabilityText[i]);
	rod[i].addTooltip(italic + durabilityPrefix + reset + rodDurabilityText[i]);
	
	// Shear
	shear[i].addTooltip(emptyLine);
	shear[i].addTooltip(italic + durabilityPrefix + reset + shearDurabilityText[i]);
	
	// Hoe
	hoe[i].addTooltip(emptyLine);
	hoe[i].addTooltip(italic + durabilityPrefix + reset + toolDurabilityText[i]);
	
	
	// Armors
	helm[i].addTooltip(emptyLine);
	helm[i].addTooltip(italic + enchantabilityPrefix + reset + armorEnchantabilityText[i]);
	helm[i].addTooltip(italic + durabilityPrefix + reset + helmDurabilityText[i]);
	
	chest[i].addTooltip(emptyLine);
	chest[i].addTooltip(italic + enchantabilityPrefix + reset + armorEnchantabilityText[i]);
	chest[i].addTooltip(italic + durabilityPrefix + reset + chestDurabilityText[i]);
	
	pants[i].addTooltip(emptyLine);
	pants[i].addTooltip(italic + enchantabilityPrefix + reset + armorEnchantabilityText[i]);
	pants[i].addTooltip(italic + durabilityPrefix + reset + pantsDurabilityText[i]);
	
	boots[i].addTooltip(emptyLine);
	boots[i].addTooltip(italic + enchantabilityPrefix + reset + armorEnchantabilityText[i]);
	boots[i].addTooltip(italic + durabilityPrefix + reset + bootsDurabilityText[i]);
	
	
	// Horse Armor
	horsearmor[i].addTooltip(emptyLine);
	horsearmor[i].addTooltip(italic + "Armor Rating: " + reset + horseArmorLevel[i]);
}

// Supplementary loop
for i in 15 to 17 {
	// Leather & chainmail armor
	helm[i].addTooltip(emptyLine);
	helm[i].addTooltip(italic + enchantabilityPrefix + reset + armorEnchantabilityText[i]);
	helm[i].addTooltip(italic + durabilityPrefix + reset + helmDurabilityText[i]);
	
	chest[i].addTooltip(emptyLine);
	chest[i].addTooltip(italic + enchantabilityPrefix + reset + armorEnchantabilityText[i]);
	chest[i].addTooltip(italic + durabilityPrefix + reset + chestDurabilityText[i]);
	
	pants[i].addTooltip(emptyLine);
	pants[i].addTooltip(italic + enchantabilityPrefix + reset + armorEnchantabilityText[i]);
	pants[i].addTooltip(italic + durabilityPrefix + reset + pantsDurabilityText[i]);
	
	boots[i].addTooltip(emptyLine);
	boots[i].addTooltip(italic + enchantabilityPrefix + reset + armorEnchantabilityText[i]);
	boots[i].addTooltip(italic + durabilityPrefix + reset + bootsDurabilityText[i]);
}