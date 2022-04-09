if game:GetService("RunService"):IsStudio() then
	script:Destroy()
 end

script.Parent.ClickDetector.MouseClick:Connect(function(plr)
	local speler = game.Players:FindFirstChild(plr.Name)
	if not speler.PlayerGui:FindFirstChild("checkingui") then
		local dupli = game.Workspace.checkingui.checkingui:Clone()
		dupli.Parent = speler.PlayerGui

	end
end)
