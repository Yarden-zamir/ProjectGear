//Convert aluminum into uranium, lead and nickel
//Aesthetic use only

val aluminum = <thermalfoundation:material:132>;
val uranium = <immersiveengineering:metal:5>;
val lead = <thermalfoundation:material:131>;
val nickel = <thermalfoundation:material:133>;
val silver = <thermalfoundation:material:130>;


mods.botania.ManaInfusion.addAlchemy(aluminum, uranium, 100);
mods.botania.ManaInfusion.addAlchemy(uranium, lead, 100);
mods.botania.ManaInfusion.addAlchemy(lead, nickel, 100);
mods.botania.ManaInfusion.addAlchemy(nickel, silver, 100);
mods.botania.ManaInfusion.addAlchemy(silver, aluminum, 100);

//this is a test comment
//Use pure daisy to get bog oak:

//recipes.addShapeless(<advancedrocketry:charcoallog>, [<ore:logWood>, <forestry:ash>]);



val log0 = <rockhounding_surface:bog_logs:0>;
val log1 = <rockhounding_surface:bog_logs:1>;
val log2 = <rockhounding_surface:bog_logs:2>;
val log3 = <rockhounding_surface:bog_logs:3>;

val log4 = <rockhounding_surface:fossil_logs:0>;
val log5 = <rockhounding_surface:fossil_logs:1>;
val log6 = <rockhounding_surface:fossil_logs:2>;
val log7 = <rockhounding_surface:fossil_logs:3>;

val log8 = <rockhounding_surface:petrified_logs:0>;
val log9 = <rockhounding_surface:petrified_logs:1>;
val log10 = <rockhounding_surface:petrified_logs:2>;
val log11 = <rockhounding_surface:petrified_logs:3>;

val log12 = <rockhounding_surface:cold_logs:0>;
val log13 = <rockhounding_surface:cold_logs:1>;
val log14 = <rockhounding_surface:cold_logs:2>;
val log15 = <rockhounding_surface:cold_logs:3>;


mods.botania.PureDaisy.addRecipe(<immersiveengineering:treated_wood>, log0, 60);
mods.botania.PureDaisy.addRecipe(log0, log1, 60);
mods.botania.PureDaisy.addRecipe(log1, log2, 60);
mods.botania.PureDaisy.addRecipe(log2, log3, 60);
mods.botania.PureDaisy.addRecipe(log3, log4, 60);
mods.botania.PureDaisy.addRecipe(log4, log5, 60);
mods.botania.PureDaisy.addRecipe(log5, log6, 60);
mods.botania.PureDaisy.addRecipe(log6, log7, 60);
mods.botania.PureDaisy.addRecipe(log7, log8, 60);
mods.botania.PureDaisy.addRecipe(log8, log9, 60);
mods.botania.PureDaisy.addRecipe(log9, log10, 60);
mods.botania.PureDaisy.addRecipe(log10, log11, 60);
mods.botania.PureDaisy.addRecipe(log11, log12, 60);
mods.botania.PureDaisy.addRecipe(log12, log13, 60);
mods.botania.PureDaisy.addRecipe(log13, log14, 60);
mods.botania.PureDaisy.addRecipe(log14, log15, 60);
mods.botania.PureDaisy.addRecipe(log15, log0, 60);
