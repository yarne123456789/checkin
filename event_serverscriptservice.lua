if game:GetService("RunService"):IsStudio() then
	script:Destroy()
 end

local folder = Instance.new('Folder')
folder.Name='checking'
folder.Parent=game.ReplicatedStorage



local folderfree=Instance.new('Folder')
folderfree.Parent=game.ReplicatedStorage
folderfree.Name="FreeRooms"


game.ReplicatedStorage.checkin.OnServerEvent:Connect(function(naam, spelernaam, value)
	print(spelernaam, value)
	if value == "ja" then 

		local naam = Instance.new('NumberValue')
		naam.Parent=folder
		naam.Name=spelernaam
		local count = 0
		for _, a in pairs(game.ReplicatedStorage.FreeRooms:GetChildren()) do
			if a.Value == false then
				local plr = game.Players:FindFirstChild(spelernaam)
				local tool = Instance.new('Tool')
				tool.Name=a.Name
				tool.Parent = plr.StarterGear
				tool:Clone().Parent = plr.Backpack
				tool.CanBeDropped=false
				tool.Enabled=true
					
				local naa = a.Name
				naam.Value=naa
				a.Value = true return
				
			end
			end
		
			
	else
		if value=="nee" then
			local find = folder:FindFirstChild(spelernaam)
			local find2 = game.Players:FindFirstChild(spelernaam)
			local vind =game.ReplicatedStorage.FreeRooms:FindFirstChild(find.Value)
			vind.Value = false
			find:Destroy()
				
			find2.Backpack:FindFirstChild(vind.Name):Destroy()
			find2.Backpack:FindFirstChild(vind.Name):Destroy()
		end
	end
	
end)



