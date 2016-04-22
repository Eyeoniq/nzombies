//

function nz.QMenu.Functions.AddNewCategory( text, tooltip )
	if tooltip == nil then
		tooltip = true
	end
	nz.QMenu.Data.Categories[text] = tooltip
end

function nz.QMenu.Functions.AddNewModel( cat, model )
	table.insert(nz.QMenu.Data.Models, {cat, model})
end

function nz.QMenu.Functions.AddNewEntity( ent, icon, name )
	table.insert(nz.QMenu.Data.Entities, {ent, icon, name})
end

//QuickFunctions

PropMenuAddCat = nz.QMenu.Functions.AddNewCategory
PropMenuAddModel = nz.QMenu.Functions.AddNewModel
PropMenuAddEntity = nz.QMenu.Functions.AddNewEntity

//Use
PropMenuAddCat("Light Effects")
PropMenuAddModel("Light Effects", "models/effects/vol_light.mdl")
PropMenuAddModel("Light Effects", "models/effects/vol_light01.mdl")
PropMenuAddModel("Light Effects", "models/effects/vol_light02.mdl")
PropMenuAddModel("Light Effects", "models/effects/vol_light128x128.mdl")
PropMenuAddModel("Light Effects", "models/effects/vol_light128x256.mdl")
PropMenuAddModel("Light Effects", "models/effects/vol_light128x384.mdl")
PropMenuAddModel("Light Effects", "models/effects/vol_light128x512.mdl")
PropMenuAddModel("Light Effects", "models/effects/vol_light256x512.mdl")
PropMenuAddModel("Light Effects", "models/effects/vol_light64x128.mdl")
PropMenuAddModel("Light Effects", "models/effects/vol_light64x256.mdl")
PropMenuAddModel("Light Effects", "models/effects/lightshaft/lightshaft_2fortspawnext.mdl")
PropMenuAddModel("Light Effects", "models/effects/lightshaft/lightshaft_window01.mdl")
PropMenuAddModel("Light Effects", "models/lostcoast/effects/vollight_stainedglass.mdl")
PropMenuAddModel("Light Effects", "models/props/cs_militia/bridgelight.mdl")

PropMenuAddCat("Gates")
PropMenuAddModel("Gates", "models/props_c17/fence03a.mdl")
PropMenuAddModel("Gates", "models/props_c17/fence02b.mdl")
PropMenuAddModel("Gates", "models/props_c17/fence01b.mdl")
PropMenuAddModel("Gates", "models/props_c17/gate_door01a.mdl")
PropMenuAddModel("Gates", "models/props_c17/gate_door02a.mdl")
PropMenuAddModel("Gates", "models/props_building_details/Storefront_Template001a_Bars.mdl")
PropMenuAddModel("Gates", "models/props_borealis/borealis_door001a.mdl")
PropMenuAddModel("Gates", "models/props_wasteland/interior_fence001g.mdl")
PropMenuAddModel("Gates", "models/props_wasteland/interior_fence002d.mdl")
PropMenuAddModel("Gates", "models/props_wasteland/wood_fence01a.mdl")
PropMenuAddModel("Gates", "models/props_lab/blastdoor001a.mdl")
PropMenuAddModel("Gates", "models/props_lab/blastdoor001b.mdl")
PropMenuAddModel("Gates", "models/props_lab/blastdoor001c.mdl")
PropMenuAddModel("Gates", "models/props_wasteland/wood_fence02a.mdl")
PropMenuAddModel("Gates", "models/props_wasteland/prison_celldoor001b.mdl")
PropMenuAddModel("Gates", "models/props_interiors/ElevatorShaft_Door01a.mdl")

PropMenuAddModel("Gates", "models/props_debris/metal_panel01a.mdl")
PropMenuAddModel("Gates", "models/props_debris/metal_panel02a.mdl")
PropMenuAddModel("Gates", "models/props_doors/door03_slotted_left.mdl")
PropMenuAddModel("Gates", "models/props_interiors/VendingMachineSoda01a_door.mdl")
PropMenuAddModel("Gates", "models/props_wasteland/interior_fence002e.mdl")
PropMenuAddModel("Gates", "models/props_interiors/refrigeratorDoor01a.mdl")
PropMenuAddModel("Gates", "models/props_c17/door01_left.mdl")
PropMenuAddModel("Gates", "models/props_c17/door02_double.mdl")
PropMenuAddModel("Gates", "models/props_c17/gravestone_coffinpiece001a.mdl")
PropMenuAddModel("Gates", "models/props_c17/gravestone_coffinpiece002a.mdl")
PropMenuAddModel("Gates", "models/props_junk/TrashDumpster02b.mdl")

PropMenuAddCat("Scenery")
PropMenuAddModel("Scenery", "models/props_borealis/bluebarrel001.mdl")
PropMenuAddModel("Scenery", "models/props_interiors/Furniture_shelf01a.mdl")
PropMenuAddModel("Scenery", "models/props_junk/TrashDumpster02.mdl")
PropMenuAddModel("Scenery", "models/props_interiors/VendingMachineSoda01a.mdl")
PropMenuAddModel("Scenery", "models/props_wasteland/laundry_dryer001.mdl")
PropMenuAddModel("Scenery", "models/props_wasteland/laundry_dryer002.mdl")
PropMenuAddModel("Scenery", "models/props_wasteland/kitchen_stove002a.mdl")
PropMenuAddModel("Scenery", "models/props_wasteland/controlroom_storagecloset001b.mdl")
PropMenuAddModel("Scenery", "models/props_wasteland/medbridge_post01.mdl")
PropMenuAddModel("Scenery", "models/props_c17/signpole001.mdl")

PropMenuAddModel("Scenery", "models/props_trainstation/traincar_seats001.mdl")
PropMenuAddModel("Scenery", "models/props_vehicles/carparts_door01a.mdl")
PropMenuAddModel("Scenery", "models/props_lab/securitybank.mdl")
PropMenuAddModel("Scenery", "models/props_lab/reciever_cart.mdl")
PropMenuAddModel("Scenery", "models/props_lab/crematorcase.mdl")
PropMenuAddModel("Scenery", "models/props_lab/corkboard002.mdl")
PropMenuAddModel("Scenery", "models/props_lab/corkboard001.mdl")
PropMenuAddModel("Scenery", "models/props_lab/Cleaver.mdl")
PropMenuAddModel("Scenery", "models/props_lab/cactus.mdl")
PropMenuAddModel("Scenery", "models/props_trainstation/payphone001a.mdl")
PropMenuAddModel("Scenery", "models/props_lab/workspace003.mdl")
PropMenuAddModel("Scenery", "models/props_lab/workspace004.mdl")
PropMenuAddModel("Scenery", "models/props_lab/workspace002.mdl")
PropMenuAddModel("Scenery", "models/props_lab/workspace001.mdl")
PropMenuAddModel("Scenery", "models/props_lab/tpplugholder.mdl")
PropMenuAddModel("Scenery", "models/props_lab/tpplugholder_single.mdl")
PropMenuAddModel("Scenery", "models/props_lab/tpplug.mdl")
PropMenuAddModel("Scenery", "models/props_lab/servers.mdl")
PropMenuAddModel("Scenery", "models/props_vehicles/carparts_tire01a.mdl")
PropMenuAddModel("Scenery", "models/props_combine/combine_monitorbay.mdl")
PropMenuAddModel("Scenery", "models/props_combine/combine_interface001.mdl")
PropMenuAddModel("Scenery", "models/props_combine/combine_intmonitor001.mdl")
PropMenuAddModel("Scenery", "models/props_combine/CombineThumper002.mdl")
PropMenuAddModel("Scenery", "models/props_combine/CombineThumper001a.mdl")
PropMenuAddModel("Scenery", "models/props_combine/breendesk.mdl")
PropMenuAddModel("Scenery", "models/props_combine/combine_barricade_short02a.mdl")
PropMenuAddModel("Scenery", "models/props_combine/combine_bridge_b.mdl")
PropMenuAddModel("Scenery", "models/props_combine/combine_fence01a.mdl")
PropMenuAddModel("Scenery", "models/props_combine/combine_fence01b.mdl")
PropMenuAddModel("Scenery", "models/props_combine/weaponstripper.mdl")

PropMenuAddEntity("edit_fog", "entities/edit_fog.png", "Base Fog Editor")
PropMenuAddEntity("edit_fog_special", "entities/edit_fog.png", "Special Round Fog Editor")
PropMenuAddEntity("edit_sky", "entities/edit_sky.png", "Sky Editor")
PropMenuAddEntity("edit_sun", "entities/edit_sun.png", "Sun Editor")
PropMenuAddEntity("edit_color", "gmod/demo.png", "Color Correction Editor")
PropMenuAddEntity("nz_fire_effect", "icon16/fire.png", "Fire Effect")

PropMenuAddModel("Scenery", "models/nzprops/zombies_power_lever.mdl")
PropMenuAddModel("Scenery", "models/nzprops/zombies_power_lever_handle.mdl")
PropMenuAddModel("Scenery", "models/nzprops/zombies_power_lever_short.mdl")

--Random Assortment of Crap (Thanks to Logan)
PropMenuAddModel("Scenery", "models/props_c17/canister01a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/canister02a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/canister_propane01a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/bench01a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/chair02a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/concrete_barrier001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/FurnitureChair001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/FurnitureCouch001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/FurnitureCouch002a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/FurnitureCupboard001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/FurnitureDrawer001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/FurnitureDrawer002a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/FurnitureDresser001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/FurnitureFridge001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/FurnitureRadiator001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/FurnitureShelf001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/furnitureStove001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/FurnitureWashingmachine001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/gravestone_cross001b.mdl")
PropMenuAddModel("Scenery", "models/props_c17/gravestone_statue001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/Lockers001a.mdl")
PropMenuAddModel("Scenery", "models/props_c17/oildrum001.mdl")
PropMenuAddModel("Scenery", "models/props_c17/shelfunit01a.mdl")
PropMenuAddModel("Scenery", "models/props_combine/breenchair.mdl")
PropMenuAddModel("Scenery", "models/props_interiors/Furniture_Couch01a.mdl")
PropMenuAddModel("Scenery", "models/props_interiors/Furniture_Couch02a.mdl")
PropMenuAddModel("Scenery", "models/props_junk/MetalBucket02a.mdl")
PropMenuAddModel("Scenery", "models/props_junk/metalgascan.mdl")
PropMenuAddModel("Scenery", "models/props_junk/PushCart01a.mdl")
PropMenuAddModel("Scenery", "models/props_junk/sawblade001a.mdl")
PropMenuAddModel("Scenery", "models/props_junk/TrashBin01a.mdl")
PropMenuAddModel("Scenery", "models/props_junk/TrashDumpster01a.mdl")
PropMenuAddModel("Scenery", "models/props_junk/wood_crate001a.mdl")
PropMenuAddModel("Scenery", "models/props_junk/wood_crate002a.mdl")
PropMenuAddModel("Scenery", "models/props_junk/wood_pallet001a.mdl")
PropMenuAddModel("Scenery", "models/props_lab/filecabinet02.mdl")
PropMenuAddModel("Scenery", "models/props_trainstation/trashcan_indoor001a.mdl")
PropMenuAddModel("Scenery", "models/props_trainstation/trashcan_indoor001b.mdl")
PropMenuAddModel("Scenery", "models/props_vehicles/tire001a_tractor.mdl")
PropMenuAddModel("Scenery", "models/props_vehicles/tire001b_truck.mdl")
PropMenuAddModel("Scenery", "models/props_vehicles/tire001c_car.mdl")
PropMenuAddModel("Scenery", "models/props_vehicles/apc_tire001.mdl")
PropMenuAddModel("Scenery", "models/props_wasteland/barricade001a.mdl")
PropMenuAddModel("Scenery", "models/props_wasteland/barricade002a.mdl")
PropMenuAddModel("Scenery", "models/props_wasteland/cargo_container01.mdl")
PropMenuAddModel("Scenery", "models/props_wasteland/cargo_container01b.mdl")
PropMenuAddModel("Scenery", "models/props_wasteland/laundry_washer003.mdl")
PropMenuAddModel("Scenery", "models/props_junk/garbage128_composite001a.mdl")
PropMenuAddModel("Scenery", "models/props_junk/garbage128_composite001b.mdl")
PropMenuAddModel("Scenery", "models/props_junk/garbage128_composite001c.mdl")
PropMenuAddModel("Scenery", "models/props_junk/garbage128_composite001d.mdl")
PropMenuAddModel("Scenery", "models/props_junk/garbage256_composite001a.mdl")
PropMenuAddModel("Scenery", "models/props_junk/garbage256_composite001b.mdl")
PropMenuAddModel("Scenery", "models/props_junk/garbage256_composite002a.mdl")
PropMenuAddModel("Scenery", "models/props_junk/garbage256_composite002b.mdl")

--Destoyed boats/vehicles
PropMenuAddCat("Vehicles")
PropMenuAddModel("Vehicles", "models/props_canal/boat001a.mdl")
PropMenuAddModel("Vehicles", "models/props_canal/boat001b.mdl")
PropMenuAddModel("Vehicles", "models/props_canal/boat002b.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/car002a_physics.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/car001b_hatchback.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/car001a_hatchback.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/apc001.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/car002b_physics.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/car003a_physics.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/car003b_physics.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/car004a_physics.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/car004b_physics.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/car005a_physics.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/car005b_physics.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/tanker001a.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/generatortrailer01.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/trailer002a.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/truck001a.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/truck002a_cab.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/truck003a.mdl")
PropMenuAddModel("Vehicles", "models/props_vehicles/van001a_physics.mdl")

--Foliage
PropMenuAddCat("Foliage")
PropMenuAddModel("Foliage", "models/props_foliage/tree_springers_01a-lod.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/tree_springers_01a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/tree_springers_card_01_skybox.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/bramble001a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/cattails.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/driftwood_01a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/driftwood_02a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/driftwood_03a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/driftwood_clump_01a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/driftwood_clump_02a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/driftwood_clump_03a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/ivy_01.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/oak_tree01.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/shrub_01a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/tree_cliff_01a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/tree_cliff_02a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/tree_deciduous_01a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/tree_deciduous_03a.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/tree_deciduous_03b.mdl")
PropMenuAddModel("Foliage", "models/props_foliage/tree_poplar_01.mdl")

PropMenuAddCat("Wall Pieces")
PropMenuAddModel("Wall Pieces", "models/props_debris/plaster_wall001a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/plaster_wall002a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/walldestroyed06b.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/walldestroyed07b.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/walldestroyed05a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/tile_wall001a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/tile_wall001a_base.mdl")
PropMenuAddModel("Wall Pieces", "models/lostcoast/props_monastery/destroyed_walls02.mdl")
PropMenuAddModel("Wall Pieces", "models/lostcoast/props_monastery/destroyed_walls03.mdl")
PropMenuAddModel("Wall Pieces", "models/props_buildings/collapsedbuilding01awall.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/concrete_section128wall001a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/concrete_section128wall001b.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/concrete_section128wall001c.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/concrete_section128wall002a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/concrete_wall01a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/concrete_wall02a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/tile_wall001a_core.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/wall001a_base.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/walldestroyed01a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/walldestroyed02a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/walldestroyed03a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/walldestroyed08a.mdl")
PropMenuAddModel("Wall Pieces", "models/props/cs_militia/bathroomwallhole01_tile.mdl")
PropMenuAddModel("Wall Pieces", "models/props/cs_militia/bathroomwallhole01_wood_broken_01.mdl")
PropMenuAddModel("Wall Pieces", "models/props/cs_militia/bathroomwallhole01_wood_broken.mdl")
PropMenuAddModel("Wall Pieces", "models/props/cs_militia/wallconcretehole.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/building_brokenexterior001a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/building_brokenexterior001b.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/building_brokenexterior001c.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/building_brokenexterior002a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/building_brokenexterior002b.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/building_brokenexterior002c.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/concrete_spawnhole001a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/concrete_spawnplug001a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/concrete_wall01a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/concrete_wall02a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/destroyedceiling01a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/destroyedceiling01b.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/destroyedceiling01c.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/destroyedceiling01d.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/broken_floor001a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/broken_pile001a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/barricade_short01a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/barricade_short02a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/barricade_short03a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/barricade_short04a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/barricade_tall01a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/barricade_tall02a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/barricade_tall03a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/barricade_tall04a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/building_brokenwindow001a.mdl")
PropMenuAddModel("Wall Pieces", "models/props_debris/building_brokenwindow001b.mdl")