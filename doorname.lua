if game:GetService("RunService"):IsStudio() then
	script:Destroy()
 end

local set = require(script.Parent.settings).Settings

script.Parent.Name = "a"..set.RoomNumber
