local module = {}

local setting = {

	["NightLighting"] = {

		Disabled = true,

		["0"] = function()
			local n = game.Lighting 
			n.ClockTime = 4
			n.EnvironmentDiffuseScale = 0
			n.EnvironmentSpecularScale = 0
			n.Brightness = 1.15
		end
	},

	["DayLighting"] = {

		Disabled = false,

		["0"] = function()
			local n = game.Lighting 
			n.ClockTime = 8.1
			n.EnvironmentDiffuseScale = 0
			n.EnvironmentSpecularScale = 0
			n.Brightness = 2.47
		end
	}

}

for i, v in pairs(setting) do
	if v.Disabled == true then continue end
	v["0"]()
	for i, v in pairs(game.Lighting.Temp:GetChildren()) do
		v.Parent = game.Lighting
	end
	game.Lighting.Temp:Destroy()
end

function module:generateWater()
	
end


return module
