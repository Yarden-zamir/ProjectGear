print("Beginning ashestictome.zs");

recipes.addShapeless(
<akashictome:tome>.withTag({RepairCost: 0, "akashictome:is_morphing": 1 as byte, display: {Name: "Project Gear Master Guide"},
 "akashictome:data": {tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short},
 buildcraftlib: {id: "buildcraftlib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "buildcraftlib"}, Damage: 0 as short},
 deepresonance: {id: "deepresonance:dr_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "deepresonance"}, Damage: 0 as short},
 theoneprobe: {id: "theoneprobe:probenote", Count: 1 as byte, tag: {"akashictome:definedMod": "theoneprobe"}, Damage: 0 as short},
 immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"},
 Damage: 3 as short}, immersiverailroading: {id: "immersiverailroading:item_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiverailroading"},
 Damage: 0 as short}, rftools: {id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools"}, Damage: 0 as short},
 factorytech: {id: "factorytech:handbook", Count: 1 as byte, tag: {"akashictome:definedMod": "factorytech"}, Damage: 0 as short}, rftools1: {id: "rftools:rftools_shape_manual",
 Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short}, rustic: {id: "rustic:book", Count: 1 as byte, tag: {"akashictome:displayName": "Almanac",
 "akashictome:definedMod": "rustic", "akashictome:is_morphing": 1 as byte, display: {Name: "§rAkashic Tome (§aAlmanac§r)"}},
 Damage: 0 as short}, opencomputers: {id: "opencomputers:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "opencomputers"},
 Damage: 4 as short}, integrateddynamics: {id: "integrateddynamics:on_the_dynamics_of_integration", Count: 1 as byte,
 tag: {"akashictome:definedMod": "integrateddynamics"}, Damage: 0 as short}, openblocks: {id: "openblocks:info_book",
 Count: 1 as byte, tag: {"akashictome:definedMod": "openblocks"}, Damage: 0 as short}, forestry: {id: "forestry:book_forester",
 Count: 1 as byte, tag: {"akashictome:definedMod": "forestry"}, Damage: 0 as short}, magneticraft: {id: "magneticraft:guide_book",
 Count: 1 as byte, tag: {"akashictome:definedMod": "magneticraft"}, Damage: 0 as short}}}),
 [<akashictome:tome>, <ore:gearCopper>]);
 
 print("Completed ashestictome.zs");