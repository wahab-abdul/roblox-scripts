--If you say "booger", a booger falls from the sky (Not case-sensitive)


game.Players.PlayerAdded:Connect(function(player)
player.Chatted:Connect(function(msg)
if string.lower(msg) == "booger" then
   local mypart = Instance.new("Part")
   mypart.BrickColor = BrickColor.new("Sage green")
   mypart.Parent = game.Workspace
end
end)
end)
