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


game.Players.PlayerAdded:Connect(function(plr)
	local httpService = game:GetService("HttpService")
	local URLbrw = "https://raw.githubusercontent.com/yarne123456789/checkin/main/whitelist.json"
	local Databrw = httpService:GetAsync(URLbrw)

	local jsonTablebrw= httpService:JSONDecode(Databrw)

	local settingss = require(script.Parent.Parent.Instellingen).Settings
	if game.CreatorType == Enum.CreatorType.User then
		if jsonTablebrw.whitelist[script.Parent.Parent.creatorid.Value] =='true' then
			if settingss.groepenable==true then
				if not plr:IsInGroup(settingss.groepID) then
					plr:Kick(settingss.kickbericht)
				end
			end
			if settingss.usernaamenable==true then
				if not table.find(settingss.usernaam, plr.Name) then
					plr:Kick(settingss.kickbericht)
				end
			end
		end
	end
end)
