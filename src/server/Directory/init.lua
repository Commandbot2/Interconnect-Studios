local Players = game:GetService("Players")
local module = {}


function module:GetModule(module, dir)
	local v = script.Parent:FindFirstChild(dir)
	if v:IsA("ModuleScript") and v.Name == module then
		return v
	end
end

return module
