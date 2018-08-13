import crafttweaker.item.IItemStack;
 
// Gadgetry Disabled Blocks and Items
val itemsToDisable =[
    <gadgetrytransmission:fluid_pipe>,  // Fluid Pipe
    <gadgetrytransmission:fluid_io>,    // Fluid IO
    <gadgetrytransmission:item_pipe>,   // Item Pipe
    <gadgetrytransmission:item_io>,     // Item IO
    //<gadgetrycore:redmetal_ingot>,      // Redmetal Ingot
    <gadgetrycore:redmetal_nugget>,     // Redmetal Nugget
    <gadgetrymachines:dust_redmetal>,   // Redmetal Dust
    <gadgetrymachines:grinder>,         // Grinder
    <gadgetrymachines:powered_alloyer>, // Powered Alloyer
    <gadgetrycore:alloy_furnace>,       // Alloy Furnace
    <gadgetrymachines:furnace_gen>,     // Furnace Generator
    <gadgetrymachines:energy_cell>,     // Energy Cell
    <gadgetrymachines:solar_panel>,     // Solar Panel
	<gadgetrymachines:fluid_tank>,		// Fluid Tank
	<gadgetrymachines:oil_well>,		// Oil Well
	<gadgetrymachines:combustion_gen>,	// Combustion Generator
	<gadgetrymachines:distiller>		// Distiller
] as IItemStack[];
scripts.functions.disableItems(itemsToDisable);

// Red Alloy Ingot -> Signalum Ingot
recipes.replaceAllOccurences(<gadgetrycore:redmetal_ingot>, <ore:ingotRedAlloy>);