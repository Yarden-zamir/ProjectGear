// Adds recipe to carbon plate
// Note: This is the default recipe. UniDict removes plate recipes.
recipes.addShaped(<prodigytech:carbon_plate>,
	[[<ore:dustCoal>, <ore:dustCoal>, <ore:dustCoal>],
	 [<ore:dustCoal>, <ore:dustCoal>, <ore:dustCoal>],
	 [<ore:dustCoal>, <ore:dustCoal>, <ore:dustCoal>]]);
	 
// Fixes recipe conflict between crude circuit pattern and Magneticraft pneumatic press blueprint
recipes.removeByRecipeName("prodigytech:placeholder/pattern_circuit_crude_ini");
recipes.addShapeless(<prodigytech:pattern_circuit_crude>, [<ore:paper>, <ore:ingotIron>, <ore:dyeBlack>]);