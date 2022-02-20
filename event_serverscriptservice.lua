local folder = Instance.new('Folder')
folder.Name='checking'
folder.Parent=game.ReplicatedStorage
script.number.Value=0



local folderfree=Instance.new('Folder')
folderfree.Parent=game.ReplicatedStorage
folderfree.Name="FreeRooms"

local count = script.number
game.ReplicatedStorage.checkin.OnServerEvent:Connect(function(naam, spelernaam, value)
	print(spelernaam, value)
	if value == "ja" then 

		local naam = Instance.new('NumberValue')
		naam.Parent=folder
		naam.Name=spelernaam
		local count = 0
		for _, a in pairs(game.ReplicatedStorage.FreeRooms:GetChildren()) do
			if a.Value == false then
				local naa = a.Name
				naam.Value=naa
				a.Value = true return
				
			end
			end
		
			
	else
		if value=="nee" then
			local find = folder:FindFirstChild(spelernaam)
			local vind =game.ReplicatedStorage.FreeRooms:FindFirstChild(find.Value)
			vind.Value = false
			find:Destroy()
		end
	end
	
end)



