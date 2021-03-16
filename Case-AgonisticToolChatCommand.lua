local Players = game:GetService("Players") -- Local variable to grab "Players" in a game session
local ServerStorage = game:GetService("ServerStorage") -- Local variable to look at the contents of ServerStorage

local cmd = "bb" -- Local variable string for "bb"
--
Players.PlayerAdded:Connect(function(GetPlayerBall) -- Create a Function that works when a player joins the game 
	GetPlayerBall.Chatted:Connect(function(msg) -- Create another function that works when a players chats in the game
		if string.lower(msg) == cmd then -- If a player chats "bb","Bb","bB", or "BB" do the following
			local Ball = ServerStorage:FindFirstChild("Ball"):Clone() -- Looks for a part in ServerStorage called "Ball" and clones it
			Ball.Parent = game.Workspace -- - Moves ball from Server.Storage into Game Workspace
			local Character = GetPlayerBall.Character -- Gives ball to characther
			if Character then -- If a character is present then do the following
				Ball.CFrame = Character.HumanoidRootPart.CFrame -- Give ball to the character's humand root part location
			end

		end
	end)
end)
