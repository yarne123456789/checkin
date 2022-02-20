if game:GetService("RunService"):IsStudio() and not game.CreatorId == "302146585"  then
	script:Destroy()
 end

local set = require(script.Parent.settings).Settings

script.Parent.Name = "a"..set.RoomNumber
