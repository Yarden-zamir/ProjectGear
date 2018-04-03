val aluminum = <thermalfoundation:material:132>;
val lead = <thermalfoundation:material:131>;
val nickel = <thermalfoundation:material:133>;
val silver = <thermalfoundation:material:130>;

mods.botania.ManaInfusion.addAlchemy(aluminum, lead, 100);
mods.botania.ManaInfusion.addAlchemy(lead, nickel, 100);
mods.botania.ManaInfusion.addAlchemy(nickel, silver, 100);
mods.botania.ManaInfusion.addAlchemy(silver, aluminum, 100);
