if game:GetService("RunService"):IsStudio() then
	script:Destroy()
end

game.Players.PlayerRemoving:Connect(function(plr)
	local folder = game.ReplicatedStorage:FindFirstChild("checking")

	if folder:FindFirstChild(plr.Name) then
		local find = folder:FindFirstChild(plr.Name)
		local vind =game.ReplicatedStorage.FreeRooms:FindFirstChild(find.Value)
		vind.Value = false
		find:Destroy()

	end
end)
