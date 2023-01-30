local Character = workspace.SynnerXR
local Player = game.Players:GetPlayerFromCharacter(Character)

Player.Chatted:Connect(function(msg)

	local text = msg

	local thing = Instance.new("BillboardGui")
	thing.StudsOffset = Vector3.new(0,1.5,0)
	for i,v in pairs(Character.Head:GetChildren()) do

		if v:FindFirstChild("BillboardGui") then

			thing.StudsOffset += Vector3.new(0,1.5,0)

		end

	end
	if Character.Head:FindFirstChild("BillboardGui") then
		thing.StudsOffset = Character.Head:FindFirstChild("BillboardGui").StudsOffset + Vector3.new(0,1.5,0)
	end
	thing.MaxDistance = 99999999
	thing.Enabled = true
	thing.Active = true
	thing.Archivable = true
	thing.ClipsDescendants = true
	thing.AutoLocalize = true
	local textlavel = Instance.new("TextLabel")
	local gra = Instance.new("UIGradient")
	gra.Parent = textlavel
	textlavel.Text = ""
	textlavel.Font = Enum.Font.ArialBold
	textlavel.Rotation = -15
	thing.Size = UDim2.new(0, 90000, 0, 90000)
	textlavel.Size = UDim2.new(0, 90000, 0, 90000)
	textlavel.Visible = true
	textlavel.Parent = thing
	textlavel.BackgroundTransparency = 1
	textlavel.TextSize = 45
	local u = Instance.new("UIStroke")
	u.Parent = textlavel
	u.Thickness = 3
	thing.Parent = Player.Character.Head
	thing.AlwaysOnTop = true
	thing.Adornee = Player.Character.Head

	NS([[local RS = game:GetService("RunService")

		local rainbow = workspace.SynnerXR.Head.BillboardGui.TextLabel
		local grad = rainbow.UIGradient
		grad.Enabled = true
		
		local counter = 0
		local w = math.pi / 12
		local CS = {}           
		local num = 15 			
		local frames = 0		
		for i = 1,200 do
			if math.fmod(frames, 2) == 0 then
				for i = 0, num do
					local c = Color3.fromRGB(127 * math.sin(w*i + counter) + 128, 127 * math.sin(w*i + 2 * math.pi/3 + counter) + 128, 127*math.sin(w*i + 4*math.pi/3 + counter) + 128)
					table.insert(CS, i+1, ColorSequenceKeypoint.new(i/num, c))
				end
				grad.Color = ColorSequence.new(CS)
				CS = {}
				counter = counter + math.pi/40
				if (counter >= math.pi * 2) then
					counter = 0
				end
			end
			if frames >= 1000 then
				frames = 0
			end
			frames = frames + 1
			task.wait(0.005)
		end]], workspace)

	NS([[ game:GetService("TweenService"):Create(workspace.SynnerXR.Head.BillboardGui.TextLabel, TweenInfo.new(1), {Rotation = 15}):Play()
	
			task.wait(1)
			
			
			game:GetService("TweenService"):Create(workspace.SynnerXR.Head.BillboardGui.TextLabel, TweenInfo.new(1), {Rotation = -15}):Play()
			
			task.wait(1)
			
			game:GetService("TweenService"):Create(workspace.SynnerXR.Head.BillboardGui.TextLabel, TweenInfo.new(1), {Rotation = 15}):Play()
	
			task.wait(1)
			
			
			game:GetService("TweenService"):Create(workspace.SynnerXR.Head.BillboardGui.TextLabel, TweenInfo.new(1), {Rotation = -15}):Play()
			
			task.wait(1)
			
			game:GetService("TweenService"):Create(workspace.SynnerXR.Head.BillboardGui.TextLabel, TweenInfo.new(1), {Rotation = 15}):Play()
	
			task.wait(1)
			
			
			game:GetService("TweenService"):Create(workspace.SynnerXR.Head.BillboardGui.TextLabel, TweenInfo.new(1), {Rotation = -15}):Play()
			
			task.wait(1)
			
			]], workspace)

	for i = 1, #text do
		local sfx = Instance.new("Sound")
		sfx.SoundId = "rbxassetid://6312295116"
		sfx.Volume = 1
		sfx.Parent = Character.Torso
		sfx:Play()
		game.Debris:AddItem(sfx,3)
		textlavel.Text = string.sub(text, 1, i)
		wait(0.04)
	end
	textlavel.Text = msg

	task.wait(3)

	thing:Destroy()

end)
