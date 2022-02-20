script.Parent.ClickDetector.MouseClick:Connect(function(plr)
	local speler = game.Players:FindFirstChild(plr.Name)
	if not speler.PlayerGui:FindFirstChild("checkingui") then
		local dupli = game.ServerStorage.checkingui.checkingui:Clone()
		dupli.Parent = speler.PlayerGui

	end
end)
