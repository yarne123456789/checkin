wait(1)

if not game.ReplicatedStorage.FreeRooms:FindFirstChild(script.Parent.Name:sub(2)) then
	local instance = Instance.new('BoolValue')
	instance.Parent=game.ReplicatedStorage.FreeRooms
	instance.Name = script.Parent.Name:sub(2) 
end
