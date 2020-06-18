print("Beginning morphtool.zs");
	
	
val universalwrench = <morphtool:tool>.withTag({"morphtool:is_morphing": 1 as byte, "morphtool:data": {funkylocomotion: {id: "funkylocomotion:wrench", Count: 1 as byte, Damage: 1 as short}, 
	immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, Damage: 0 as short}, 
	rs_ctr: {id: "rs_ctr:wrench", Count: 1 as byte, Damage: 0 as short}, 
	rftools: {id: "rftools:smartwrench", Count: 1 as byte, Damage: 0 as short}, 
	factorytech: {id: "factorytech:wrench", Count: 1 as byte, Damage: 0 as short}, 
	waterworks: {id: "waterworks:pipe_wrench", Count: 1 as byte, Damage: 0 as short}, 
	crossroads: {id: "crossroads:liech_wrench", Count: 1 as byte, Damage: 0 as short}, 
	thermalfoundation: {id: "thermalfoundation:wrench", Count: 1 as byte, Damage: 0 as short}, 
	"projectred-core": {id: "projectred-core:screwdriver", Count: 1 as byte, Damage: 0 as short}, 
	chiselsandbits: {id: "chiselsandbits:wrench_wood", Count: 1 as byte, Damage: 0 as short}, 
	opencomputers: {id: "opencomputers:wrench", Count: 1 as byte, Damage: 0 as short}, 
	essentials: {id: "essentials:wrench", Count: 1 as byte, Damage: 0 as short}, 
	integrateddynamics: {id: "integrateddynamics:wrench", Count: 1 as byte, Damage: 0 as short}, 
	buildcraftcore: {id: "buildcraftcore:wrench", Count: 1 as byte, tag: {"morphtool:is_morphing": 1 as byte, display: {Name: "§rMorphing Tool (§aWrench§r)"}, "morphtool:displayName": "Wrench"}, Damage: 0 as short}, 
	forestry: {id: "forestry:wrench", Count: 1 as byte, Damage: 0 as short}, 
	openblocks: {id: "openblocks:wrench", Count: 1 as byte, tag: {"morphtool:is_morphing": 1 as byte, display: {Name: "§rMorphing Tool (§aBig Metal Bar§r)"}, "morphtool:displayName": "Big Metal Bar"}, Damage: 0 as short}, 
	extratrees: {id: "extratrees:durable_hammer", Count: 1 as byte, Damage: 0 as short}, 
	magneticraft: {id: "magneticraft:wrench", Count: 1 as byte, tag: {"morphtool:is_morphing": 1 as byte, display: {Name: "§rMorphing Tool (§aWrench§r)"}, "morphtool:displayName": "Wrench"}, Damage: 0 as short}}
});

recipes.addShapeless(universalwrench,
 [<morphtool:tool>, <ore:gearStone>]);
 
mods.jei.JEI.addItem(universalwrench);
 
print("Completed morphtool.zs");