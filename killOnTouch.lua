function onTouched(h)
	local h = h.Parent:FindFirstChild("Humanoid")
	if h ~= nil then
		h.Health = 0
	end
end			
