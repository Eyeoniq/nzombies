nzMapping.Version = 400 --Note to Ali; Any time you make an update to the way this is saved, increment this.

local savemodules = savemodules or {}

function nzMapping:AddSaveModule(id, tbl)
	savemodules[id] = tbl
end

function nzMapping:SaveConfig(name)

	local main = {}

	--Check if the nz folder exists
	if !file.Exists( "nz/", "DATA" ) then
		file.CreateDir( "nz" )
	end

	main.version = self.Version
	
	-- Loop through our savemodules
	for id, funcs in pairs(savemodules) do
		print("[nZ] Saving module ["..id.."]...")
		local succ, err = pcall(funcs.savefunc) -- Run their save function and get the returned table
		if succ then -- If it didn't error
			local tbl = err -- Second argument becomes the table
			main[id] = tbl -- Saves the table under the ID
		else
			print("[ERROR] in nZ Save Module ["..id.."]:")
			ErrorNoHalt(err) -- We make sure these errors don't halt the save process!
			print("\n")
			print(debug.traceback())
			print("Skipped save module ["..id.."]...")
		end
	end

	-- These are hardcoded and run after any modules, meaning they can't be overwritten
	main["NavTable"] = nzNav.Locks
	main["MapSettings"] = self.Settings
	main["RemoveProps"] = self.MarkedProps

	local configname
	if name and name != "" then
		configname = "nz/nz_" .. game.GetMap() .. ";" .. name .. ".txt"
	else
		configname = "nz/nz_" .. game.GetMap() .. ";" .. os.date("%H_%M_%j") .. ".txt"
	end

	file.Write( configname, util.TableToJSON( main ) ) -- Save it all in a JSON format
	PrintMessage( HUD_PRINTTALK, "[nZ] Saved to garrysmod/data/" .. configname) -- And write it to our file! >:D

end

function nzMapping:ClearConfig(noclean)
	print("[nZ] Clearing current map")

	-- ALWAYS do this first!
	nzMapping:UnloadScript()

	-- Some default entities to clear:
	local entClasses = {
		["edit_fog"] = true,
		["edit_fog_special"] = true,
		["edit_sky"] = true,
		["edit_color"] = true,
		["edit_sun"] = true,
		["edit_dynlight"] = true,
		["nz_triggerzone"] = true,
		["nz_script_triggerzone"] = true,
		["nz_script_prop"] = true,
	}
	
	-- Now loop through our savemodules
	for id, funcs in pairs(savemodules) do
		print("[nZ] Clearing config for module ["..id.."]...")
		if funcs.cleanents then -- If the module has a table of entities
			for k,v in pairs(funcs.cleanents) do
				entClasses[v] = true -- Then mark these to also be cleared
			end
		end
		if funcs.cleanfunc then -- If we have a clean func
			local succ, err = pcall(funcs.cleanfunc) -- Then run it!
			if !succ then
				print("[ERROR] in nZ Save Module ["..id.."]:")
				ErrorNoHalt(err) -- Print the error, but don't stop the rest of the modules!
				print("\n")
				print(debug.traceback())
				print("\nSkipped clean for module ["..id.."]...") -- It doesn't actually quite skip it, rather it stops mid-func
			end
		end
	end

	-- Now loop over all marked entities and remove them all in one single loop
	for k,v in pairs(ents.GetAll()) do
		if entClasses[v:GetClass()] then
			v:Remove()
		end
	end

	--Reset Navigation table, Settings and MarkedProps (Hardcoded modules)
	nzNav.Locks = {}
	nzMapping.Settings = {}
	nzMapping.MarkedProps = {}
	
	for k,v in pairs(player.GetAll()) do
		nzMapping:SendMapData(v)
	end

	-- Sync
	FullSyncModules["Round"]()

	-- Clear out the item objects creating with this config (if any)
	nzItemCarry:CleanUp()

	nzMapping.CurrentConfig = nil

	if !noclean then
		game.CleanUpMap() -- No need for restorative measures (nzMapping:CleanUpMap())
	end
end

function nzMapping:LoadConfig( name, loader )

	local filepath = "nz/" .. name
	local location = "DATA"

	if string.GetExtensionFromFilename(name) == "lua" then
		if file.Exists("gamemodes/nzombies/officialconfigs/"..name, "GAME") then
			location, filepath = "GAME", "gamemodes/nzombies/officialconfigs/"..name
		else
			location = "LUA"
		end
	end

	if file.Exists( filepath, location )then
		print("[NZ] MAP CONFIG FOUND!")
		
		-- BUT WAIT! Is it another map? :O
		local map = string.sub(string.Explode(";", string.StripExtension(name))[1], 4)
		if map and map != game.GetMap() then
			file.Write("nz/autoload.txt", loader and name.."@"..loader:SteamID() or name.."@INVALIDPLAYER")
			RunConsoleCommand("changelevel", map)
			return
		end

		-- Load a lua file for a specific map
		-- Make sure all hooks are removed before adding the new ones
		nzMapping:UnloadScript()

		local data = util.JSONToTable( file.Read( filepath, location ) )

		local version = data.version

		-- Check the version of the config.
		if version == nil then
			print("This map config is too out of date to be used. Sorry about that!")
			return
		end

		if version < nzMapping.Version then
			print("Warning: This map config was made with an older version of nZombies. After this has loaded, use the save command to save a newer version.")
		end

		if version < 300 then
			print("Warning: Inital Version: No changes have been made.")
		end

		if version < 350 then
			print("Warning: This map config does not contain any set barricades.")
		end

		self:ClearConfig(true) -- We pass true to not clean up the map
		
		-- Then we can load if entity extensions are to be used
		if data.MapSettings then
			nzMapping.Settings = data.MapSettings
			-- That way, the gamemode entities will spawn without getting removed during the map clean up
		end
		-- That we then manually call here
		nzMapping:CleanUpMap()
		

		print("[NZ] Loading " .. filepath .. "...")


		-- Start sorting the data
		for id, funcs in pairs(savemodules) do
			if data[id] then -- If data was saved by this module's ID
				print("[nZ] Loading module ["..id.."]...") -- Load for it
				local succ, err = pcall(funcs.loadfunc, data[id]) -- Call the load function with the data as argument
				if !succ then
					print("[ERROR] in nZ Load Module ["..id.."]:")
					ErrorNoHalt(err) -- Let's not let it stop us!
					print("\n")
					print(debug.traceback())
					print("Skipped load module ["..id.."]...")
				end
			end
		end

		-- NavTable, Map Settings, Removed Props (Hardcoded modules)
		if data.NavTable then
			nzNav.Locks = data.NavTable
		end
		
		for k,v in pairs(player.GetAll()) do
			nzMapping:SendMapData(v)
		end

		if data.RemoveProps then
			nzMapping.MarkedProps = data.RemoveProps
			if !nzRound:InState( ROUND_CREATE ) then
				for k,v in pairs(nzMapping.MarkedProps) do
					local ent = ents.GetMapCreatedEntity(k)
					if IsValid(ent) then ent:Remove() end
				end
			else
				for k,v in pairs(nzMapping.MarkedProps) do
					local ent = ents.GetMapCreatedEntity(k)
					if IsValid(ent) then ent:SetColor(Color(200,0,0)) end
				end
			end
		end

		nzMapping:CheckMismatch( loader )

		-- Set the current config name, we will use this to load scripts via mismatch window
		nzMapping.CurrentConfig = name

		print("[NZ] Finished loading map config.")
	else
		print(filepath)
		print("[NZ] Warning: NO MAP CONFIG FOUND! Make a config in game using the /create command, then use /save to save it all!")
	end

end

-- The function to clean up the map but not the config!
function nzMapping:CleanUpMap()
	
	-- Some default entities to spare:
	local entClasses = {
		--["edit_fog"] = true,
		["edit_fog_special"] = true,
		["edit_sky"] = true,
		["edit_color"] = true,
		["edit_sun"] = true,
		["edit_dynlight"] = true,
		["nz_triggerzone"] = true,
		["nz_script_triggerzone"] = true,
		["nz_script_prop"] = true,
	}
	
	-- Prepare to save module data
	local module_savetable = {}
	
	-- Loop through modules
	for id, funcs in pairs(savemodules) do
		if funcs.cleanents then
			for k,v in pairs(funcs.cleanents) do
				entClasses[v] = true -- All entities marked will this time be SPARED from the map cleanup
			end
		end
		if funcs.prerestorefunc then -- If we have a pre-restore function (before map cleanup)
			print("[nZ] Preparing map cleanup restore data for module ["..id.."]...")
			local succ, err = pcall(funcs.prerestorefunc) -- Then call it and get the data (if any)
			if succ then
				local tbl = err
				if tbl then
					module_savetable[id] = tbl -- Save it in our temporary table
				end
			else
				print("[ERROR] in nZ Save Module ["..id.."]:")
				ErrorNoHalt(err)
				print("\n")
				print(debug.traceback())
				print("Skipped pre-restore for module ["..id.."]...")
			end
		end
	end
	
	-- Now we clean up the map, sparing the marked entities!
	game.CleanUpMap(false, table.GetKeys(entClasses))

	-- And we come back to our save modules
	for id, funcs in pairs(savemodules) do
		if funcs.postrestorefunc then -- Because if they have a restoration function
			print("[nZ] Executing post-map cleanup restoration for module ["..id.."]...")
			local succ, err = pcall(funcs.postrestorefunc, module_savetable[id]) -- Then we need to run it with the data
			if !succ then
				print("[ERROR] in nZ Save Module ["..id.."]:")
				ErrorNoHalt(err)
				print("Skipped pre-restore for module ["..id.."]...")
			end
		end
	end

	-- These are from the the hardcoded modules
	if self.MarkedProps then
		if !nzRound:InState( ROUND_CREATE ) then
			for k,v in pairs(self.MarkedProps) do
				local ent = ents.GetMapCreatedEntity(k)
				if IsValid(ent) then ent:Remove() end
			end
		else
			for k,v in pairs(self.MarkedProps) do
				local ent = ents.GetMapCreatedEntity(k)
				if IsValid(ent) then ent:SetColor(Color(200,0,0)) end
			end
		end
	end
end

hook.Add("Initialize", "nz_Loadmaps", function()
	timer.Simple(3, function()
		local autoload
		if file.Exists("nz/autoload.txt", "DATA") then
			local data = string.Explode("@", file.Read("nz/autoload.txt", "DATA"))
			if data then
				autoload, loader = data[1], data[2]
				if loader then
					loader = game.SinglePlayer() and Entity(1) or player.GetBySteamID(loader)
				end
			end
		end
		if !autoload then autoload = "nz_"..game.GetMap()..".txt" end
		
		local map = string.sub(string.Explode(";", string.StripExtension(autoload))[1], 4)
		if map and map != game.GetMap() then
			file.Write("nz/autoload.txt", "")
			return
		end
		
		nzMapping:LoadConfig( autoload, IsValid(loader) and loader or nil )
	end)
end)
