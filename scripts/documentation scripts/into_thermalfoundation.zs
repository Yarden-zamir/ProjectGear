import scripts.functions.addDesc;
import scripts.functions.addDescBatch;
import crafttweaker.item.IItemStack;

val batch = {
  <thermalfoundation:ore:0> : "Generates primarily on cave walls. Can also be found in rare, but massive rich ore veins containing thousands of ores.",
  <thermalfoundation:ore:1> : "Generates primarily on cave walls. Can also be found in rare, but massive rich ore veins containing thousands of ores.",
  <thermalfoundation:ore:5> : "Generates primarily on cave walls. Can also be found in rare, but massive rich ore veins containing thousands of ores.",
  <thermalfoundation:ore:2> : "Does NOT generate naturally. All recipes that use this metal have been changed. It can be made if you want to build with it, but it has no survival value.",
  <thermalfoundation:ore:3> : "Does NOT generate naturally. All recipes that use this metal have been changed. It can be made if you want to build with it, but it has no survival value.",
  <thermalfoundation:ore:4> : "Does NOT generate naturally. All recipes that use this metal have been changed. It can be made if you want to build with it, but it has no survival value.",
  <thermalfoundation:ore:6> : "Does NOT generate naturally. All recipes that use this metal have been changed. It can be made if you want to build with it, but it has no survival value.",
  <thermalfoundation:ore:7> : "Does NOT generate naturally. All recipes that use this metal have been changed. It can be made if you want to build with it, but it has no survival value.",
  <thermalfoundation:ore:8> : "Does NOT generate naturally. All recipes that use this metal have been changed. It can be made if you want to build with it, but it has no survival value.",
  
} as string[IItemStack];

addDescBatch(batch);

print("Documentation for akashictome loaded successfully");