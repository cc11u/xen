local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer

local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
gui.Name = "xen"
gui.IgnoreGuiInset = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local main = Instance.new("Frame", gui)
main.Name = "Frame"
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.Position = UDim2.new(0.5, 0, 0.6, 0)
main.Size = UDim2.new(0, 750, 0, 379)
main.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
main.BorderSizePixel = 0

local title = Instance.new("Frame", main)
title.Name = "Title"
title.AnchorPoint = Vector2.new(0.5, 0.5)
title.Position = UDim2.new(0.5, 0, 0.03, 0)
title.Size = UDim2.new(0, 750, 0, 25)
title.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
title.BorderSizePixel = 0

Instance.new("UICorner", main)
Instance.new("UICorner", title)

local chats = Instance.new("Frame", main)
chats.Name = "Chats"
chats.AnchorPoint = Vector2.new(0.5, 0.5)
chats.Position = UDim2.new(0.275, 0, 0.593, 0)
chats.Size = UDim2.new(0, 375, 0, 275)
chats.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
chats.BorderSizePixel = 0
Instance.new("UICorner", chats)

local scroll = Instance.new("ScrollingFrame", chats)
scroll.Position = UDim2.new(0.5, 0, 0.6, 0)
scroll.Size = UDim2.new(0, 311, 0, 205)
scroll.AnchorPoint = Vector2.new(0.5, 0.5)
scroll.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
scroll.BorderSizePixel = 0
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
scroll.ScrollBarThickness = 0
scroll.Active = true
Instance.new("UICorner", scroll)

local template = Instance.new("TextLabel", scroll)
template.Name = "Text"
template.Size = UDim2.new(0, 311, 0, 25)
template.Position = UDim2.new(0.5, 0, 0.06, 0)
template.AnchorPoint = Vector2.new(0.5, 0.5)
template.Text = " DisplayName: Message"
template.BackgroundTransparency = 1
template.TextColor3 = Color3.fromRGB(255, 255, 255)
template.TextScaled = true
template.Font = Enum.Font.SourceSans
template.Visible = false

Instance.new("UIListLayout", scroll)

local toggleLabel = Instance.new("TextLabel", chats)
toggleLabel.Size = UDim2.new(0, 125, 0, 25)
toggleLabel.Position = UDim2.new(0.245, 0, 0.093, 0)
toggleLabel.AnchorPoint = Vector2.new(0.5, 0.5)
toggleLabel.Text = "Chat"
toggleLabel.BackgroundTransparency = 1
toggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleLabel.Font = Enum.Font.SourceSans
toggleLabel.TextSize = 33

local customization = Instance.new("Frame", main)
customization.Name = "Customization"
customization.AnchorPoint = Vector2.new(0.5, 0.5)
customization.Position = UDim2.new(0.833, 0, 0.593, 0)
customization.Size = UDim2.new(0, 200, 0, 275)
customization.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
customization.BorderSizePixel = 0
Instance.new("UICorner", customization)

local keybindButton = Instance.new("TextButton", customization)
keybindButton.Size = UDim2.new(0, 48, 0, 24)
keybindButton.Position = UDim2.new(0.8, 0, 0.52, 0)
keybindButton.AnchorPoint = Vector2.new(0.5, 0.5)
keybindButton.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
keybindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
keybindButton.TextScaled = true
keybindButton.Text = "V"
Instance.new("UICorner", keybindButton)

local toggleKey = Enum.KeyCode.V
local listening = false

keybindButton.MouseButton1Click:Connect(function()
	if listening then return end
	listening = true
	keybindButton.Text = "..."
	local conn
	conn = UserInputService.InputBegan:Connect(function(input, gp)
		if gp or input.UserInputType ~= Enum.UserInputType.Keyboard then return end
		toggleKey = input.KeyCode
		keybindButton.Text = toggleKey.Name
		listening = false
		conn:Disconnect()
	end)
end)

UserInputService.InputBegan:Connect(function(input, gp)
	if gp or listening then return end
	if input.KeyCode == toggleKey then
		gui.Enabled = not gui.Enabled
	end
end)

local function plrchat(plr, msg)
	local label = template:Clone()
	label.Text = " " .. plr.DisplayName .. ": " .. msg
	label.Visible = true
	label.Parent = scroll
end

for _, plr in ipairs(Players:GetPlayers()) do
	plr.Chatted:Connect(function(msg)
		plrchat(plr, msg)
	end)
end

Players.PlayerAdded:Connect(function(plr)
	plr.Chatted:Connect(function(msg)
		plrchat(plr, msg)
	end)
end)

local dragging, dragStart, startPos, dragInput
local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

title.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = main.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

title.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		local delta = input.Position - dragStart
		local goal = {
			Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		}
		TweenService:Create(main, tweenInfo, goal):Play()
	end
end)
