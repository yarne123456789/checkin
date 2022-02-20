script.Parent.Changed:Connect(function()
	local vindValue = game.ReplicatedStorage.FreeRooms:FindFirstChild(script.Parent.Parent.Name:sub(2))
	if script.Parent.Value==true then
		vindValue.Value = true
	else
		vindValue.Value = false
	end
end)
