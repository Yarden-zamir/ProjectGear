//Script by DolphinBlaster

// Applied Energistics 2 Inscriber recipes
 
// Open Computers Transistor recipe removal
recipes.remove(<opencomputers:material:6>);
 
// Transistor: (Tin ingot + Printed Logic Circuit + Silicon)
mods.appliedenergistics2.Inscriber.addRecipe(<opencomputers:material:6>, <appliedenergistics2:material:18>, false,
                                             <thermalfoundation:material:193>, <appliedenergistics2:material:5>);
                                             
// Microchip (Tier 1) recipe removal
recipes.remove(<opencomputers:material:7>);
 
// Microchip (Tier 1): (Transistor + Redstone + Transistor)
mods.appliedenergistics2.Inscriber.addRecipe(<opencomputers:material:7>, <minecraft:redstone>, false,
                                             <opencomputers:material:6>, <opencomputers:material:6>);
                                             
// Microchip (Tier 2) recipe removal
recipes.remove(<opencomputers:material:8>);
 
// Microchip (Tier 2): (Tin ingot + Microchip (Tier 1) + Gold ingot)
mods.appliedenergistics2.Inscriber.addRecipe(<opencomputers:material:8>, <opencomputers:material:7>, false,
                                             <thermalfoundation:material:193>, <minecraft:gold_ingot>);
                                             
// Microchip (Tier 3) recipe removal
recipes.remove(<opencomputers:material:9>);
 
// Microchip (Tier 3): (Tin Ingot + Microchip (Tier 2) + Engineering Circuit)
mods.appliedenergistics2.Inscriber.addRecipe(<opencomputers:material:9>, <opencomputers:material:8>, false,
                                             <thermalfoundation:material:129>, <appliedenergistics2:material:24>);
                                             
// Cable (Open Computers) recipe removal
recipes.remove(<opencomputers:cable>);
 
// Cable (Open Computers):
mods.appliedenergistics2.Inscriber.addRecipe(<opencomputers:cable>, <minecraft:redstone>, false,
                                             <thermalfoundation:material:193>, <ore:nuggetTin>);
// Printed Circuit Board (Open Computers) recipe removal
furnace.remove(<opencomputers:material:4>);
 
// Printed Citcuit Board (Open Computers): (Microchip (Tier 1) + Circuit Plate + Microchip (Tier 1))
mods.appliedenergistics2.Inscriber.addRecipe(<opencomputers:material:4>, <projectred-core:resource_item>, false,
                                             <opencomputers:material:7>, <opencomputers:material:7>);
                                             
// Disk Platter recipe removal
recipes.remove(<opencomputers:material:12>);
 
// Disk Platter: (Tin ingot + Printed Calculation Circuit + Cobalt nugget)
mods.appliedenergistics2.Inscriber.addRecipe(<opencomputers:material:12>, <appliedenergistics2:material:16>, false,
                                             <thermalfoundation:material:129>, <tconstruct:nuggets>);